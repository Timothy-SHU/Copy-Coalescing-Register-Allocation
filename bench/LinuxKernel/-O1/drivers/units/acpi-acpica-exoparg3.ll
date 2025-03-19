; ModuleID = 'drivers/acpi/acpica/exoparg3.c'
source_filename = "drivers/acpi/acpica/exoparg3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_signal_fatal_info = type { i32, i32, i32 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_string = type { ptr, i8, i8, i16, i8, ptr, i32 }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }

@_acpi_module_name = internal constant [9 x i8] c"exoparg3\00", align 1, !dbg !0
@.str = private unnamed_addr constant [21 x i8] c"Executed External Op\00", align 1, !dbg !36
@.str.1 = private unnamed_addr constant [24 x i8] c"Unknown AML opcode 0x%X\00", align 1, !dbg !42
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !47

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_opcode_3A_0T_0R(ptr noundef %walk_state) #0 align 16 !dbg !62 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %operand = alloca ptr, align 8
  %fatal = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !828, metadata !DIExpression()), !dbg !840
  call void @llvm.lifetime.start.p0(i64 8, ptr %operand) #14, !dbg !841
  call void @llvm.dbg.declare(metadata ptr %operand, metadata !829, metadata !DIExpression()), !dbg !842
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !843
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 28, !dbg !844
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !843
  store ptr %arrayidx, ptr %operand, align 8, !dbg !842
  call void @llvm.lifetime.start.p0(i64 8, ptr %fatal) #14, !dbg !845
  call void @llvm.dbg.declare(metadata ptr %fatal, metadata !830, metadata !DIExpression()), !dbg !846
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !847
  call void @llvm.dbg.declare(metadata ptr %status, metadata !838, metadata !DIExpression()), !dbg !848
  store i32 0, ptr %status, align 4, !dbg !848
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !849
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 3, !dbg !850
  %2 = load i16, ptr %opcode, align 2, !dbg !850
  %conv = zext i16 %2 to i32, !dbg !849
  switch i32 %conv, label %sw.default [
    i32 23346, label %sw.bb
    i32 21, label %sw.bb10
  ], !dbg !851

sw.bb:                                            ; preds = %entry
  %call = call ptr @acpi_os_allocate(i64 noundef 12) #15, !dbg !852
  store ptr %call, ptr %fatal, align 8, !dbg !854
  %3 = load ptr, ptr %fatal, align 8, !dbg !855
  %tobool = icmp ne ptr %3, null, !dbg !855
  br i1 %tobool, label %if.then, label %if.end, !dbg !857

if.then:                                          ; preds = %sw.bb
  %4 = load ptr, ptr %operand, align 8, !dbg !858
  %arrayidx1 = getelementptr ptr, ptr %4, i64 0, !dbg !858
  %5 = load ptr, ptr %arrayidx1, align 8, !dbg !858
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %5, i32 0, i32 6, !dbg !860
  %6 = load i64, ptr %value, align 8, !dbg !860
  %conv2 = trunc i64 %6 to i32, !dbg !861
  %7 = load ptr, ptr %fatal, align 8, !dbg !862
  %type = getelementptr inbounds %struct.acpi_signal_fatal_info, ptr %7, i32 0, i32 0, !dbg !863
  store i32 %conv2, ptr %type, align 4, !dbg !864
  %8 = load ptr, ptr %operand, align 8, !dbg !865
  %arrayidx3 = getelementptr ptr, ptr %8, i64 1, !dbg !865
  %9 = load ptr, ptr %arrayidx3, align 8, !dbg !865
  %value4 = getelementptr inbounds %struct.acpi_object_integer, ptr %9, i32 0, i32 6, !dbg !866
  %10 = load i64, ptr %value4, align 8, !dbg !866
  %conv5 = trunc i64 %10 to i32, !dbg !867
  %11 = load ptr, ptr %fatal, align 8, !dbg !868
  %code = getelementptr inbounds %struct.acpi_signal_fatal_info, ptr %11, i32 0, i32 1, !dbg !869
  store i32 %conv5, ptr %code, align 4, !dbg !870
  %12 = load ptr, ptr %operand, align 8, !dbg !871
  %arrayidx6 = getelementptr ptr, ptr %12, i64 2, !dbg !871
  %13 = load ptr, ptr %arrayidx6, align 8, !dbg !871
  %value7 = getelementptr inbounds %struct.acpi_object_integer, ptr %13, i32 0, i32 6, !dbg !872
  %14 = load i64, ptr %value7, align 8, !dbg !872
  %conv8 = trunc i64 %14 to i32, !dbg !873
  %15 = load ptr, ptr %fatal, align 8, !dbg !874
  %argument = getelementptr inbounds %struct.acpi_signal_fatal_info, ptr %15, i32 0, i32 2, !dbg !875
  store i32 %conv8, ptr %argument, align 4, !dbg !876
  br label %if.end, !dbg !877

if.end:                                           ; preds = %if.then, %sw.bb
  %16 = load ptr, ptr %fatal, align 8, !dbg !878
  %call9 = call i32 @acpi_os_signal(i32 noundef 0, ptr noundef %16) #15, !dbg !879
  store i32 %call9, ptr %status, align 4, !dbg !880
  %17 = load ptr, ptr %fatal, align 8, !dbg !881
  call void @acpi_os_free(ptr noundef %17) #15, !dbg !881
  br label %cleanup, !dbg !882

sw.bb10:                                          ; preds = %entry
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 95, ptr noundef @.str) #15, !dbg !883
  store i32 0, ptr %status, align 4, !dbg !884
  br label %cleanup, !dbg !885

sw.default:                                       ; preds = %entry
  %18 = load ptr, ptr %walk_state.addr, align 8, !dbg !886
  %opcode11 = getelementptr inbounds %struct.acpi_walk_state, ptr %18, i32 0, i32 3, !dbg !886
  %19 = load i16, ptr %opcode11, align 2, !dbg !886
  %conv12 = zext i16 %19 to i32, !dbg !886
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 101, ptr noundef @.str.1, i32 noundef %conv12) #15, !dbg !886
  store i32 12289, ptr %status, align 4, !dbg !887
  br label %cleanup, !dbg !888

cleanup:                                          ; preds = %sw.default, %sw.bb10, %if.end
  call void @llvm.dbg.label(metadata !839), !dbg !889
  %20 = load i32, ptr %status, align 4, !dbg !890
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !891
  call void @llvm.lifetime.end.p0(i64 8, ptr %fatal) #14, !dbg !891
  call void @llvm.lifetime.end.p0(i64 8, ptr %operand) #14, !dbg !891
  ret i32 %20, !dbg !890
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate(i64 noundef %size) #3 align 16 !dbg !892 {
entry:
  %size.addr = alloca i64, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !897, metadata !DIExpression()), !dbg !908
  %0 = load i64, ptr %size.addr, align 8, !dbg !909
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #14, !dbg !910
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !898, metadata !DIExpression()), !dbg !910
  br label %do.body, !dbg !910

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !911
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !900, metadata !DIExpression()), !dbg !911
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !911
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !903, metadata !DIExpression()), !dbg !911
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !911
  %conv = zext i1 %cmp to i32, !dbg !911
  store i32 1, ptr %tmp, align 4, !dbg !911
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !912
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !912
  %1 = load i32, ptr %tmp, align 4, !dbg !911
  %call = call i64 @arch_local_save_flags() #15, !dbg !912
  store i64 %call, ptr %_flags, align 8, !dbg !912
  br label %do.cond, !dbg !912

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !912

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #14, !dbg !913
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !904, metadata !DIExpression()), !dbg !913
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #14, !dbg !913
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !907, metadata !DIExpression()), !dbg !913
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !913
  %conv6 = zext i1 %cmp5 to i32, !dbg !913
  store i32 1, ptr %tmp7, align 4, !dbg !913
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #14, !dbg !914
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #14, !dbg !914
  %2 = load i32, ptr %tmp7, align 4, !dbg !913
  %3 = load i64, ptr %_flags, align 8, !dbg !914
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #15, !dbg !914
  store i32 %call9, ptr %tmp8, align 4, !dbg !914
  %4 = load i32, ptr %tmp8, align 4, !dbg !914
  store i32 %4, ptr %tmp1, align 4, !dbg !912
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #14, !dbg !915
  %5 = load i32, ptr %tmp1, align 4, !dbg !910
  %tobool = icmp ne i32 %5, 0, !dbg !915
  %6 = zext i1 %tobool to i64, !dbg !915
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !915
  %call10 = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %cond) #16, !dbg !916
  ret ptr %call10, !dbg !917
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !918 dso_local i32 @acpi_os_signal(i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #3 align 16 !dbg !921 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !925, metadata !DIExpression()), !dbg !926
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !927
  call void @kfree(ptr noundef %0) #15, !dbg !928
  ret void, !dbg !929
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !930 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_opcode_3A_1T_1R(ptr noundef %walk_state) #0 align 16 !dbg !935 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %operand = alloca ptr, align 8
  %return_desc = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %status = alloca i32, align 4
  %index = alloca i64, align 8
  %length = alloca i64, align 8
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !937, metadata !DIExpression()), !dbg !945
  call void @llvm.lifetime.start.p0(i64 8, ptr %operand) #14, !dbg !946
  call void @llvm.dbg.declare(metadata ptr %operand, metadata !938, metadata !DIExpression()), !dbg !947
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !948
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 28, !dbg !949
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !948
  store ptr %arrayidx, ptr %operand, align 8, !dbg !947
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_desc) #14, !dbg !950
  call void @llvm.dbg.declare(metadata ptr %return_desc, metadata !939, metadata !DIExpression()), !dbg !951
  store ptr null, ptr %return_desc, align 8, !dbg !951
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #14, !dbg !952
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !940, metadata !DIExpression()), !dbg !953
  store ptr null, ptr %buffer, align 8, !dbg !953
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !954
  call void @llvm.dbg.declare(metadata ptr %status, metadata !941, metadata !DIExpression()), !dbg !955
  store i32 0, ptr %status, align 4, !dbg !955
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #14, !dbg !956
  call void @llvm.dbg.declare(metadata ptr %index, metadata !942, metadata !DIExpression()), !dbg !957
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #14, !dbg !958
  call void @llvm.dbg.declare(metadata ptr %length, metadata !943, metadata !DIExpression()), !dbg !959
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !960
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 3, !dbg !961
  %2 = load i16, ptr %opcode, align 2, !dbg !961
  %conv = zext i16 %2 to i32, !dbg !960
  switch i32 %conv, label %sw.default49 [
    i32 158, label %sw.bb
  ], !dbg !962

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %operand, align 8, !dbg !963
  %arrayidx1 = getelementptr ptr, ptr %3, i64 0, !dbg !963
  %4 = load ptr, ptr %arrayidx1, align 8, !dbg !963
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %4, i32 0, i32 2, !dbg !963
  %5 = load i8, ptr %type, align 1, !dbg !963
  %conv2 = zext i8 %5 to i32, !dbg !963
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 144, i32 noundef 128, i32 noundef %conv2) #15, !dbg !963
  store ptr %call, ptr %return_desc, align 8, !dbg !965
  %6 = load ptr, ptr %return_desc, align 8, !dbg !966
  %tobool = icmp ne ptr %6, null, !dbg !966
  br i1 %tobool, label %if.end, label %if.then, !dbg !968

if.then:                                          ; preds = %sw.bb
  store i32 4, ptr %status, align 4, !dbg !969
  br label %cleanup, !dbg !971

if.end:                                           ; preds = %sw.bb
  %7 = load ptr, ptr %operand, align 8, !dbg !972
  %arrayidx3 = getelementptr ptr, ptr %7, i64 1, !dbg !972
  %8 = load ptr, ptr %arrayidx3, align 8, !dbg !972
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %8, i32 0, i32 6, !dbg !973
  %9 = load i64, ptr %value, align 8, !dbg !973
  store i64 %9, ptr %index, align 8, !dbg !974
  %10 = load ptr, ptr %operand, align 8, !dbg !975
  %arrayidx4 = getelementptr ptr, ptr %10, i64 2, !dbg !975
  %11 = load ptr, ptr %arrayidx4, align 8, !dbg !975
  %value5 = getelementptr inbounds %struct.acpi_object_integer, ptr %11, i32 0, i32 6, !dbg !976
  %12 = load i64, ptr %value5, align 8, !dbg !976
  store i64 %12, ptr %length, align 8, !dbg !977
  %13 = load i64, ptr %index, align 8, !dbg !978
  %14 = load ptr, ptr %operand, align 8, !dbg !980
  %arrayidx6 = getelementptr ptr, ptr %14, i64 0, !dbg !980
  %15 = load ptr, ptr %arrayidx6, align 8, !dbg !980
  %length7 = getelementptr inbounds %struct.acpi_object_string, ptr %15, i32 0, i32 6, !dbg !981
  %16 = load i32, ptr %length7, align 8, !dbg !981
  %conv8 = zext i32 %16 to i64, !dbg !980
  %cmp = icmp uge i64 %13, %conv8, !dbg !982
  br i1 %cmp, label %if.then10, label %if.else, !dbg !983

if.then10:                                        ; preds = %if.end
  store i64 0, ptr %length, align 8, !dbg !984
  br label %if.end21, !dbg !986

if.else:                                          ; preds = %if.end
  %17 = load i64, ptr %index, align 8, !dbg !987
  %18 = load i64, ptr %length, align 8, !dbg !989
  %add = add i64 %17, %18, !dbg !990
  %19 = load ptr, ptr %operand, align 8, !dbg !991
  %arrayidx11 = getelementptr ptr, ptr %19, i64 0, !dbg !991
  %20 = load ptr, ptr %arrayidx11, align 8, !dbg !991
  %length12 = getelementptr inbounds %struct.acpi_object_string, ptr %20, i32 0, i32 6, !dbg !992
  %21 = load i32, ptr %length12, align 8, !dbg !992
  %conv13 = zext i32 %21 to i64, !dbg !991
  %cmp14 = icmp ugt i64 %add, %conv13, !dbg !993
  br i1 %cmp14, label %if.then16, label %if.end20, !dbg !994

if.then16:                                        ; preds = %if.else
  %22 = load ptr, ptr %operand, align 8, !dbg !995
  %arrayidx17 = getelementptr ptr, ptr %22, i64 0, !dbg !995
  %23 = load ptr, ptr %arrayidx17, align 8, !dbg !995
  %length18 = getelementptr inbounds %struct.acpi_object_string, ptr %23, i32 0, i32 6, !dbg !997
  %24 = load i32, ptr %length18, align 8, !dbg !997
  %conv19 = zext i32 %24 to i64, !dbg !998
  %25 = load i64, ptr %index, align 8, !dbg !999
  %sub = sub i64 %conv19, %25, !dbg !1000
  store i64 %sub, ptr %length, align 8, !dbg !1001
  br label %if.end20, !dbg !1002

if.end20:                                         ; preds = %if.then16, %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then10
  %26 = load ptr, ptr %operand, align 8, !dbg !1003
  %arrayidx22 = getelementptr ptr, ptr %26, i64 0, !dbg !1003
  %27 = load ptr, ptr %arrayidx22, align 8, !dbg !1003
  %type23 = getelementptr inbounds %struct.acpi_object_common, ptr %27, i32 0, i32 2, !dbg !1004
  %28 = load i8, ptr %type23, align 1, !dbg !1004
  %conv24 = zext i8 %28 to i32, !dbg !1005
  switch i32 %conv24, label %sw.default [
    i32 2, label %sw.bb25
    i32 3, label %sw.bb31
  ], !dbg !1006

sw.bb25:                                          ; preds = %if.end21
  %29 = load i64, ptr %length, align 8, !dbg !1007
  %add26 = add i64 %29, 1, !dbg !1007
  %call27 = call ptr @acpi_os_allocate_zeroed(i64 noundef %add26) #15, !dbg !1007
  store ptr %call27, ptr %buffer, align 8, !dbg !1009
  %30 = load ptr, ptr %buffer, align 8, !dbg !1010
  %tobool28 = icmp ne ptr %30, null, !dbg !1010
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !1012

if.then29:                                        ; preds = %sw.bb25
  store i32 4, ptr %status, align 4, !dbg !1013
  br label %cleanup, !dbg !1015

if.end30:                                         ; preds = %sw.bb25
  br label %sw.epilog, !dbg !1016

sw.bb31:                                          ; preds = %if.end21
  %31 = load i64, ptr %length, align 8, !dbg !1017
  %cmp32 = icmp ugt i64 %31, 0, !dbg !1019
  br i1 %cmp32, label %if.then34, label %if.end39, !dbg !1020

if.then34:                                        ; preds = %sw.bb31
  %32 = load i64, ptr %length, align 8, !dbg !1021
  %call35 = call ptr @acpi_os_allocate_zeroed(i64 noundef %32) #15, !dbg !1021
  store ptr %call35, ptr %buffer, align 8, !dbg !1023
  %33 = load ptr, ptr %buffer, align 8, !dbg !1024
  %tobool36 = icmp ne ptr %33, null, !dbg !1024
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !1026

if.then37:                                        ; preds = %if.then34
  store i32 4, ptr %status, align 4, !dbg !1027
  br label %cleanup, !dbg !1029

if.end38:                                         ; preds = %if.then34
  br label %if.end39, !dbg !1030

if.end39:                                         ; preds = %if.end38, %sw.bb31
  br label %sw.epilog, !dbg !1031

sw.default:                                       ; preds = %if.end21
  store i32 12291, ptr %status, align 4, !dbg !1032
  br label %cleanup, !dbg !1033

sw.epilog:                                        ; preds = %if.end39, %if.end30
  %34 = load ptr, ptr %buffer, align 8, !dbg !1034
  %tobool40 = icmp ne ptr %34, null, !dbg !1034
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !1036

if.then41:                                        ; preds = %sw.epilog
  %35 = load ptr, ptr %buffer, align 8, !dbg !1037
  %36 = load ptr, ptr %operand, align 8, !dbg !1039
  %arrayidx42 = getelementptr ptr, ptr %36, i64 0, !dbg !1039
  %37 = load ptr, ptr %arrayidx42, align 8, !dbg !1039
  %pointer = getelementptr inbounds %struct.acpi_object_string, ptr %37, i32 0, i32 5, !dbg !1040
  %38 = load ptr, ptr %pointer, align 8, !dbg !1040
  %39 = load i64, ptr %index, align 8, !dbg !1041
  %add.ptr = getelementptr i8, ptr %38, i64 %39, !dbg !1042
  %40 = load i64, ptr %length, align 8, !dbg !1043
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %35, ptr align 1 %add.ptr, i64 %40, i1 false), !dbg !1044
  br label %if.end43, !dbg !1045

if.end43:                                         ; preds = %if.then41, %sw.epilog
  %41 = load ptr, ptr %buffer, align 8, !dbg !1046
  %42 = load ptr, ptr %return_desc, align 8, !dbg !1047
  %pointer44 = getelementptr inbounds %struct.acpi_object_string, ptr %42, i32 0, i32 5, !dbg !1048
  store ptr %41, ptr %pointer44, align 8, !dbg !1049
  %43 = load i64, ptr %length, align 8, !dbg !1050
  %conv45 = trunc i64 %43 to i32, !dbg !1051
  %44 = load ptr, ptr %return_desc, align 8, !dbg !1052
  %length46 = getelementptr inbounds %struct.acpi_object_string, ptr %44, i32 0, i32 6, !dbg !1053
  store i32 %conv45, ptr %length46, align 8, !dbg !1054
  %45 = load ptr, ptr %return_desc, align 8, !dbg !1055
  %flags = getelementptr inbounds %struct.acpi_object_buffer, ptr %45, i32 0, i32 4, !dbg !1056
  %46 = load i8, ptr %flags, align 4, !dbg !1057
  %conv47 = zext i8 %46 to i32, !dbg !1057
  %or = or i32 %conv47, 4, !dbg !1057
  %conv48 = trunc i32 %or to i8, !dbg !1057
  store i8 %conv48, ptr %flags, align 4, !dbg !1057
  br label %sw.epilog52, !dbg !1058

sw.default49:                                     ; preds = %entry
  %47 = load ptr, ptr %walk_state.addr, align 8, !dbg !1059
  %opcode50 = getelementptr inbounds %struct.acpi_walk_state, ptr %47, i32 0, i32 3, !dbg !1059
  %48 = load i16, ptr %opcode50, align 2, !dbg !1059
  %conv51 = zext i16 %48 to i32, !dbg !1059
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 227, ptr noundef @.str.1, i32 noundef %conv51) #15, !dbg !1059
  store i32 12289, ptr %status, align 4, !dbg !1060
  br label %cleanup, !dbg !1061

sw.epilog52:                                      ; preds = %if.end43
  %49 = load ptr, ptr %return_desc, align 8, !dbg !1062
  %50 = load ptr, ptr %operand, align 8, !dbg !1063
  %arrayidx53 = getelementptr ptr, ptr %50, i64 3, !dbg !1063
  %51 = load ptr, ptr %arrayidx53, align 8, !dbg !1063
  %52 = load ptr, ptr %walk_state.addr, align 8, !dbg !1064
  %call54 = call i32 @acpi_ex_store(ptr noundef %49, ptr noundef %51, ptr noundef %52) #15, !dbg !1065
  store i32 %call54, ptr %status, align 4, !dbg !1066
  br label %cleanup, !dbg !1067

cleanup:                                          ; preds = %sw.epilog52, %sw.default49, %sw.default, %if.then37, %if.then29, %if.then
  call void @llvm.dbg.label(metadata !944), !dbg !1068
  %53 = load i32, ptr %status, align 4, !dbg !1069
  %tobool55 = icmp ne i32 %53, 0, !dbg !1069
  br i1 %tobool55, label %if.then57, label %lor.lhs.false, !dbg !1071

lor.lhs.false:                                    ; preds = %cleanup
  %54 = load ptr, ptr %walk_state.addr, align 8, !dbg !1072
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, ptr %54, i32 0, i32 43, !dbg !1073
  %55 = load ptr, ptr %result_obj, align 8, !dbg !1073
  %tobool56 = icmp ne ptr %55, null, !dbg !1072
  br i1 %tobool56, label %if.then57, label %if.else59, !dbg !1074

if.then57:                                        ; preds = %lor.lhs.false, %cleanup
  %56 = load ptr, ptr %return_desc, align 8, !dbg !1075
  call void @acpi_ut_remove_reference(ptr noundef %56) #15, !dbg !1077
  %57 = load ptr, ptr %walk_state.addr, align 8, !dbg !1078
  %result_obj58 = getelementptr inbounds %struct.acpi_walk_state, ptr %57, i32 0, i32 43, !dbg !1079
  store ptr null, ptr %result_obj58, align 8, !dbg !1080
  br label %if.end61, !dbg !1081

if.else59:                                        ; preds = %lor.lhs.false
  %58 = load ptr, ptr %return_desc, align 8, !dbg !1082
  %59 = load ptr, ptr %walk_state.addr, align 8, !dbg !1084
  %result_obj60 = getelementptr inbounds %struct.acpi_walk_state, ptr %59, i32 0, i32 43, !dbg !1085
  store ptr %58, ptr %result_obj60, align 8, !dbg !1086
  br label %if.end61

if.end61:                                         ; preds = %if.else59, %if.then57
  %60 = load i32, ptr %status, align 4, !dbg !1087
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #14, !dbg !1088
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #14, !dbg !1088
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !1088
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #14, !dbg !1088
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_desc) #14, !dbg !1088
  call void @llvm.lifetime.end.p0(i64 8, ptr %operand) #14, !dbg !1088
  ret i32 %60, !dbg !1087
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1089 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #3 align 16 !dbg !1094 {
entry:
  %size.addr = alloca i64, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1096, metadata !DIExpression()), !dbg !1107
  %0 = load i64, ptr %size.addr, align 8, !dbg !1108
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #14, !dbg !1109
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1097, metadata !DIExpression()), !dbg !1109
  br label %do.body, !dbg !1109

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !1110
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1099, metadata !DIExpression()), !dbg !1110
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !1110
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1102, metadata !DIExpression()), !dbg !1110
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1110
  %conv = zext i1 %cmp to i32, !dbg !1110
  store i32 1, ptr %tmp, align 4, !dbg !1110
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !1111
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !1111
  %1 = load i32, ptr %tmp, align 4, !dbg !1110
  %call = call i64 @arch_local_save_flags() #15, !dbg !1111
  store i64 %call, ptr %_flags, align 8, !dbg !1111
  br label %do.cond, !dbg !1111

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1111

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #14, !dbg !1112
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1103, metadata !DIExpression()), !dbg !1112
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #14, !dbg !1112
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1106, metadata !DIExpression()), !dbg !1112
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1112
  %conv6 = zext i1 %cmp5 to i32, !dbg !1112
  store i32 1, ptr %tmp7, align 4, !dbg !1112
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #14, !dbg !1113
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #14, !dbg !1113
  %2 = load i32, ptr %tmp7, align 4, !dbg !1112
  %3 = load i64, ptr %_flags, align 8, !dbg !1113
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #15, !dbg !1113
  store i32 %call9, ptr %tmp8, align 4, !dbg !1113
  %4 = load i32, ptr %tmp8, align 4, !dbg !1113
  store i32 %4, ptr %tmp1, align 4, !dbg !1111
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #14, !dbg !1114
  %5 = load i32, ptr %tmp1, align 4, !dbg !1109
  %tobool = icmp ne i32 %5, 0, !dbg !1114
  %6 = zext i1 %tobool to i64, !dbg !1114
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1114
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #16, !dbg !1115
  ret ptr %call10, !dbg !1116
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1117 dso_local i32 @acpi_ex_store(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1121 dso_local void @acpi_ut_remove_reference(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !1124 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1132, metadata !DIExpression()), !dbg !1137
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1133, metadata !DIExpression()), !dbg !1138
  %0 = load i64, ptr %size.addr, align 8, !dbg !1139
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1140
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1141

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1142
  %tobool = icmp ne i64 %2, 0, !dbg !1142
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1143

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !1144
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1134, metadata !DIExpression()), !dbg !1145
  %3 = load i64, ptr %size.addr, align 8, !dbg !1146
  %cmp = icmp ugt i64 %3, 8192, !dbg !1148
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1149

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1150
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1151
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !1152
  store ptr %call, ptr %retval, align 8, !dbg !1153
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1153

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1154
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !1154
  store i32 %call2, ptr %index, align 4, !dbg !1155
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1156
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1157
  %9 = ptrtoint ptr %8 to i64, !dbg !1157
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !1158
  %idxprom = zext i32 %call3 to i64, !dbg !1159
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1159
  %10 = load i32, ptr %index, align 4, !dbg !1160
  %idxprom4 = zext i32 %10 to i64, !dbg !1159
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1159
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1159
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1161
  %13 = load i64, ptr %size.addr, align 8, !dbg !1162
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !1163
  store ptr %call6, ptr %retval, align 8, !dbg !1164
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1164

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !1165
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1166
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1167
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !1168
  store ptr %call8, ptr %retval, align 8, !dbg !1169
  br label %return, !dbg !1169

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1170
  ret ptr %16, !dbg !1170
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #7 align 16 !dbg !1171 {
entry:
  %call = call i64 @native_save_fl() #15, !dbg !1175
  ret i64 %call, !dbg !1176
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #7 align 16 !dbg !1177 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1182, metadata !DIExpression()), !dbg !1183
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1184
  %and = and i64 %0, 512, !dbg !1185
  %tobool = icmp ne i64 %and, 0, !dbg !1186
  %lnot = xor i1 %tobool, true, !dbg !1186
  %lnot.ext = zext i1 %lnot to i32, !dbg !1186
  ret i32 %lnot.ext, !dbg !1187
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1188 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !1189 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1195, metadata !DIExpression()), !dbg !1197
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1196, metadata !DIExpression()), !dbg !1198
  %0 = load i64, ptr %size.addr, align 8, !dbg !1199
  %tobool = icmp ne i64 %0, 0, !dbg !1199
  br i1 %tobool, label %if.end, label %if.then, !dbg !1201

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1202
  br label %return, !dbg !1202

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1203
  %cmp = icmp ule i64 %1, 8, !dbg !1205
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1206

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1207
  br label %return, !dbg !1207

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1208
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1210
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1211

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1212
  %cmp4 = icmp ule i64 %3, 96, !dbg !1213
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1214

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1215
  br label %return, !dbg !1215

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1216
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1218
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1219

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1220
  %cmp9 = icmp ule i64 %5, 192, !dbg !1221
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1222

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1223
  br label %return, !dbg !1223

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1224
  %cmp12 = icmp ule i64 %6, 8, !dbg !1226
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1227

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1228
  br label %return, !dbg !1228

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1229
  %cmp15 = icmp ule i64 %7, 16, !dbg !1231
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1232

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1233
  br label %return, !dbg !1233

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1234
  %cmp18 = icmp ule i64 %8, 32, !dbg !1236
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1237

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1238
  br label %return, !dbg !1238

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1239
  %cmp21 = icmp ule i64 %9, 64, !dbg !1241
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1242

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1243
  br label %return, !dbg !1243

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1244
  %cmp24 = icmp ule i64 %10, 128, !dbg !1246
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1247

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1248
  br label %return, !dbg !1248

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1249
  %cmp27 = icmp ule i64 %11, 256, !dbg !1251
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1252

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1253
  br label %return, !dbg !1253

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1254
  %cmp30 = icmp ule i64 %12, 512, !dbg !1256
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1257

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1258
  br label %return, !dbg !1258

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1259
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1261
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1262

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1263
  br label %return, !dbg !1263

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1264
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1266
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1267

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1268
  br label %return, !dbg !1268

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1269
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1271
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1272

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1273
  br label %return, !dbg !1273

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1274
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1276
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1277

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1278
  br label %return, !dbg !1278

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1279
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1281
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1282

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1283
  br label %return, !dbg !1283

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1284
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1286
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1287

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1288
  br label %return, !dbg !1288

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1289
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1291
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1292

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1293
  br label %return, !dbg !1293

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1294
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1296
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1297

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1298
  br label %return, !dbg !1298

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1299
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1301
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1302

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1303
  br label %return, !dbg !1303

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1304
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1306
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1307

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1308
  br label %return, !dbg !1308

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1309
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1311
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1312

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1313
  br label %return, !dbg !1313

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1314
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1316
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1317

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1318
  br label %return, !dbg !1318

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1319, !range !1321, !noundef !1322
  %tobool69 = trunc i8 %25 to i1, !dbg !1319
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1323

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1324

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #18, !dbg !1325, !srcloc !1328
  unreachable, !dbg !1325

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1329

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1330

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1331

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1333

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1331

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #14, !dbg !1335, !srcloc !1337
  br label %do.end75, !dbg !1335

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1331

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1338
  br label %return, !dbg !1338

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1339
  ret i32 %26, !dbg !1339
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1340 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !1346 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1350, metadata !DIExpression()), !dbg !1352
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1351, metadata !DIExpression()), !dbg !1353
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1354
  %and = and i32 %0, 17, !dbg !1354
  %cmp = icmp eq i32 %and, 0, !dbg !1354
  %lnot = xor i1 %cmp, true, !dbg !1354
  %lnot1 = xor i1 %lnot, true, !dbg !1354
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1354
  %conv = sext i32 %lnot.ext to i64, !dbg !1354
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1354
  %tobool = icmp ne i64 %expval, 0, !dbg !1354
  br i1 %tobool, label %if.then, label %if.end, !dbg !1356

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1357
  br label %return, !dbg !1357

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1358
  %and2 = and i32 %1, 1, !dbg !1360
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1360
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1361

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1362
  br label %return, !dbg !1362

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1363
  br label %return, !dbg !1363

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1365
  ret i32 %2, !dbg !1365
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1366 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1367 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #7 align 16 !dbg !1370 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !1373
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1372, metadata !DIExpression()), !dbg !1374
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #14, !dbg !1375, !srcloc !1376
  %0 = load i64, ptr %flags, align 8, !dbg !1377
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !1378
  ret i64 %0, !dbg !1379
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1380 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #13 align 16 !dbg !1385 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1387, metadata !DIExpression()), !dbg !1389
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1388, metadata !DIExpression()), !dbg !1390
  %0 = load i64, ptr %size.addr, align 8, !dbg !1391
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1392
  %or = or i32 %1, 256, !dbg !1393
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !1394
  ret ptr %call, !dbg !1395
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !49, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exoparg3.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exoparg3\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exoparg3.ll drivers/acpi/acpica/exoparg3.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !35, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exoparg3.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9459348a5858848a4522302ce4b498e7")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !12, line: 364, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!13 = !{!14, !15, !16, !17, !18, !19, !20}
!14 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!15 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!16 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!17 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!18 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!19 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!20 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!21 = !{!22, !28, !24, !32, !34}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !23, line: 421, baseType: !24)
!23 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !7)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !23, line: 127, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !31)
!31 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !33, line: 154, baseType: !7)
!33 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !{!36, !42, !47, !0}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !3, line: 95, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 168, elements: !40)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !{!41}
!41 = !DISubrange(count: 21)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !3, line: 101, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 192, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 24)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !38, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 72, elements: !51)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!51 = !{!52}
!52 = !DISubrange(count: 9)
!53 = !{i32 7, !"Dwarf Version", i32 5}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 8, !"cf-protection-branch", i32 1}
!57 = !{i32 4, !"function_return_thunk_extern", i32 1}
!58 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!59 = !{i32 1, !"Code Model", i32 2}
!60 = !{i32 1, !"override-stack-alignment", i32 8}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = distinct !DISubprogram(name: "acpi_ex_opcode_3A_0T_0R", scope: !3, file: !3, line: 51, type: !63, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !827)
!63 = !DISubroutineType(types: !64)
!64 = !{!22, !65}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !67, line: 37, size: 9024, elements: !68)
!67 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!68 = !{!69, !70, !74, !75, !79, !80, !81, !82, !84, !85, !86, !87, !88, !89, !90, !91, !92, !94, !95, !96, !97, !98, !776, !777, !778, !779, !780, !784, !786, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !811, !812, !813, !814, !815, !816, !817, !818, !819, !825}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !66, file: !67, line: 38, baseType: !65, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !66, file: !67, line: 39, baseType: !71, size: 8, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !25, line: 17, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !73)
!73 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !66, file: !67, line: 40, baseType: !71, size: 8, offset: 72)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !66, file: !67, line: 41, baseType: !76, size: 16, offset: 80)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !78)
!78 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !66, file: !67, line: 42, baseType: !71, size: 8, offset: 96)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !66, file: !67, line: 43, baseType: !71, size: 8, offset: 104)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !66, file: !67, line: 44, baseType: !71, size: 8, offset: 112)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !66, file: !67, line: 45, baseType: !83, size: 16, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !23, line: 445, baseType: !76)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !66, file: !67, line: 46, baseType: !71, size: 8, offset: 144)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !66, file: !67, line: 47, baseType: !71, size: 8, offset: 152)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !66, file: !67, line: 48, baseType: !71, size: 8, offset: 160)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !66, file: !67, line: 49, baseType: !71, size: 8, offset: 168)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !66, file: !67, line: 50, baseType: !71, size: 8, offset: 176)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !66, file: !67, line: 51, baseType: !71, size: 8, offset: 184)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !66, file: !67, line: 52, baseType: !71, size: 8, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !66, file: !67, line: 53, baseType: !71, size: 8, offset: 200)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !66, file: !67, line: 54, baseType: !93, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !66, file: !67, line: 55, baseType: !24, size: 32, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !66, file: !67, line: 56, baseType: !24, size: 32, offset: 352)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !66, file: !67, line: 57, baseType: !24, size: 32, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !66, file: !67, line: 58, baseType: !24, size: 32, offset: 416)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !66, file: !67, line: 60, baseType: !99, size: 640, offset: 448)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !100, line: 909, size: 640, elements: !101)
!100 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!101 = !{!102, !103, !104, !105, !106, !107, !673, !674, !774, !775}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !99, file: !100, line: 910, baseType: !93, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !99, file: !100, line: 911, baseType: !93, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !99, file: !100, line: 912, baseType: !93, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !99, file: !100, line: 913, baseType: !93, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !99, file: !100, line: 914, baseType: !93, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !99, file: !100, line: 915, baseType: !108, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !100, line: 891, size: 1600, elements: !110)
!110 = !{!111, !616, !632}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !109, file: !100, line: 892, baseType: !112, size: 448)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !100, line: 844, size: 448, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119, !120, !606, !615}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !112, file: !100, line: 845, baseType: !108, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !112, file: !100, line: 845, baseType: !71, size: 8, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !112, file: !100, line: 845, baseType: !71, size: 8, offset: 72)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !112, file: !100, line: 845, baseType: !76, size: 16, offset: 80)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !112, file: !100, line: 845, baseType: !93, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !100, line: 845, baseType: !108, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !112, file: !100, line: 845, baseType: !121, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !100, line: 133, size: 384, elements: !123)
!123 = !{!124, !590, !591, !592, !593, !602, !603, !604, !605}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !122, file: !100, line: 134, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !127, line: 369, size: 576, elements: !128)
!127 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!128 = !{!129, !137, !150, !161, !174, !188, !198, !222, !251, !267, !280, !359, !371, !385, !395, !413, !435, !454, !473, !492, !509, !536, !553, !566, !580, !589}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !126, file: !127, line: 370, baseType: !130, size: 128)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !127, line: 73, size: 128, elements: !131)
!131 = !{!132, !133, !134, !135, !136}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !130, file: !127, line: 74, baseType: !125, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !130, file: !127, line: 74, baseType: !71, size: 8, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !127, line: 74, baseType: !71, size: 8, offset: 72)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !130, file: !127, line: 74, baseType: !76, size: 16, offset: 80)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !127, line: 74, baseType: !71, size: 8, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !126, file: !127, line: 371, baseType: !138, size: 192)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !127, line: 76, size: 192, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145, !149}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !138, file: !127, line: 77, baseType: !125, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !138, file: !127, line: 77, baseType: !71, size: 8, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !138, file: !127, line: 77, baseType: !71, size: 8, offset: 72)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !138, file: !127, line: 77, baseType: !76, size: 16, offset: 80)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !127, line: 77, baseType: !71, size: 8, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !138, file: !127, line: 77, baseType: !146, size: 24, offset: 104)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 24, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 3)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !138, file: !127, line: 78, baseType: !29, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !126, file: !127, line: 372, baseType: !151, size: 256)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !127, line: 93, size: 256, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !158, !160}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !151, file: !127, line: 94, baseType: !125, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !151, file: !127, line: 94, baseType: !71, size: 8, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !151, file: !127, line: 94, baseType: !71, size: 8, offset: 72)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !151, file: !127, line: 94, baseType: !76, size: 16, offset: 80)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !151, file: !127, line: 94, baseType: !71, size: 8, offset: 96)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !151, file: !127, line: 94, baseType: !159, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !151, file: !127, line: 94, baseType: !24, size: 32, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !126, file: !127, line: 373, baseType: !162, size: 384)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !127, line: 97, size: 384, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !162, file: !127, line: 98, baseType: !125, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !162, file: !127, line: 98, baseType: !71, size: 8, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !162, file: !127, line: 98, baseType: !71, size: 8, offset: 72)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !162, file: !127, line: 98, baseType: !76, size: 16, offset: 80)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !162, file: !127, line: 98, baseType: !71, size: 8, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !162, file: !127, line: 98, baseType: !93, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !162, file: !127, line: 98, baseType: !24, size: 32, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !162, file: !127, line: 99, baseType: !24, size: 32, offset: 224)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !162, file: !127, line: 100, baseType: !93, size: 64, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !162, file: !127, line: 101, baseType: !121, size: 64, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !126, file: !127, line: 374, baseType: !175, size: 384)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !127, line: 104, size: 384, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182, !183, !185, !186, !187}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !175, file: !127, line: 105, baseType: !125, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !175, file: !127, line: 105, baseType: !71, size: 8, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !175, file: !127, line: 105, baseType: !71, size: 8, offset: 72)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !175, file: !127, line: 105, baseType: !76, size: 16, offset: 80)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !175, file: !127, line: 105, baseType: !71, size: 8, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !175, file: !127, line: 105, baseType: !121, size: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !175, file: !127, line: 106, baseType: !184, size: 64, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !175, file: !127, line: 107, baseType: !93, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !175, file: !127, line: 108, baseType: !24, size: 32, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !175, file: !127, line: 109, baseType: !24, size: 32, offset: 352)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !126, file: !127, line: 375, baseType: !189, size: 192)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !127, line: 118, size: 192, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !189, file: !127, line: 119, baseType: !125, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !189, file: !127, line: 119, baseType: !71, size: 8, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !189, file: !127, line: 119, baseType: !71, size: 8, offset: 72)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !189, file: !127, line: 119, baseType: !76, size: 16, offset: 80)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !189, file: !127, line: 119, baseType: !71, size: 8, offset: 96)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !189, file: !127, line: 119, baseType: !197, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !126, file: !127, line: 376, baseType: !199, size: 448)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !127, line: 144, size: 448, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !219, !220, !221}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !199, file: !127, line: 145, baseType: !125, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !199, file: !127, line: 145, baseType: !71, size: 8, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !199, file: !127, line: 145, baseType: !71, size: 8, offset: 72)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !199, file: !127, line: 145, baseType: !76, size: 16, offset: 80)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !127, line: 145, baseType: !71, size: 8, offset: 96)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !199, file: !127, line: 145, baseType: !71, size: 8, offset: 104)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !199, file: !127, line: 146, baseType: !71, size: 8, offset: 112)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !199, file: !127, line: 147, baseType: !71, size: 8, offset: 120)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !199, file: !127, line: 148, baseType: !125, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !199, file: !127, line: 149, baseType: !125, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !199, file: !127, line: 150, baseType: !93, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !199, file: !127, line: 154, baseType: !213, size: 64, offset: 320)
!213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !199, file: !127, line: 151, size: 64, elements: !214)
!214 = !{!215, !218}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !213, file: !127, line: 152, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !100, line: 248, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !213, file: !127, line: 153, baseType: !125, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !199, file: !127, line: 156, baseType: !24, size: 32, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !199, file: !127, line: 157, baseType: !83, size: 16, offset: 416)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !199, file: !127, line: 158, baseType: !71, size: 8, offset: 432)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !126, file: !127, line: 377, baseType: !223, size: 576)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !127, line: 122, size: 576, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !247, !248, !249, !250}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !223, file: !127, line: 123, baseType: !125, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !223, file: !127, line: 123, baseType: !71, size: 8, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !223, file: !127, line: 123, baseType: !71, size: 8, offset: 72)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !223, file: !127, line: 123, baseType: !76, size: 16, offset: 80)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !223, file: !127, line: 123, baseType: !71, size: 8, offset: 96)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !223, file: !127, line: 123, baseType: !71, size: 8, offset: 104)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !223, file: !127, line: 124, baseType: !76, size: 16, offset: 112)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !223, file: !127, line: 125, baseType: !197, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !223, file: !127, line: 126, baseType: !29, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !223, file: !127, line: 127, baseType: !235, size: 64, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !100, line: 634, size: 320, elements: !237)
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245, !246}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !236, file: !100, line: 635, baseType: !197, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !236, file: !100, line: 635, baseType: !71, size: 8, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !236, file: !100, line: 635, baseType: !71, size: 8, offset: 72)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !236, file: !100, line: 635, baseType: !76, size: 16, offset: 80)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !236, file: !100, line: 635, baseType: !76, size: 16, offset: 96)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !236, file: !100, line: 636, baseType: !71, size: 8, offset: 112)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !236, file: !100, line: 637, baseType: !65, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !236, file: !100, line: 638, baseType: !125, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !236, file: !100, line: 639, baseType: !29, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !223, file: !127, line: 128, baseType: !125, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !223, file: !127, line: 129, baseType: !125, size: 64, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !223, file: !127, line: 130, baseType: !121, size: 64, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !223, file: !127, line: 131, baseType: !71, size: 8, offset: 512)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !126, file: !127, line: 378, baseType: !252, size: 512)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !127, line: 134, size: 512, elements: !253)
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !265, !266}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !252, file: !127, line: 135, baseType: !125, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !252, file: !127, line: 135, baseType: !71, size: 8, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !252, file: !127, line: 135, baseType: !71, size: 8, offset: 72)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !252, file: !127, line: 135, baseType: !76, size: 16, offset: 80)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !252, file: !127, line: 135, baseType: !71, size: 8, offset: 96)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !252, file: !127, line: 135, baseType: !71, size: 8, offset: 104)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !252, file: !127, line: 136, baseType: !121, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !252, file: !127, line: 137, baseType: !125, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !252, file: !127, line: 138, baseType: !125, size: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !252, file: !127, line: 139, baseType: !264, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !23, line: 129, baseType: !29)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !252, file: !127, line: 140, baseType: !24, size: 32, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !252, file: !127, line: 141, baseType: !197, size: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !126, file: !127, line: 379, baseType: !268, size: 320)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !127, line: 185, size: 320, elements: !269)
!269 = !{!270, !271, !272, !273, !274, !275, !279}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !268, file: !127, line: 186, baseType: !125, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !268, file: !127, line: 186, baseType: !71, size: 8, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !268, file: !127, line: 186, baseType: !71, size: 8, offset: 72)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !268, file: !127, line: 186, baseType: !76, size: 16, offset: 80)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !268, file: !127, line: 186, baseType: !71, size: 8, offset: 96)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !268, file: !127, line: 186, baseType: !276, size: 128, offset: 128)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 128, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 2)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !268, file: !127, line: 186, baseType: !125, size: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !126, file: !127, line: 380, baseType: !281, size: 384)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !127, line: 188, size: 384, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !281, file: !127, line: 189, baseType: !125, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !281, file: !127, line: 189, baseType: !71, size: 8, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !281, file: !127, line: 189, baseType: !71, size: 8, offset: 72)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !281, file: !127, line: 189, baseType: !76, size: 16, offset: 80)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !281, file: !127, line: 189, baseType: !71, size: 8, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !281, file: !127, line: 190, baseType: !276, size: 128, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !281, file: !127, line: 190, baseType: !125, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !281, file: !127, line: 190, baseType: !291, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !100, line: 480, size: 576, elements: !293)
!293 = !{!294, !295, !296, !297, !305, !320, !353, !354, !355, !356, !357, !358}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !292, file: !100, line: 481, baseType: !121, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !292, file: !100, line: 482, baseType: !291, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !100, line: 483, baseType: !291, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !292, file: !100, line: 484, baseType: !298, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !100, line: 497, size: 256, elements: !300)
!300 = !{!301, !302, !303, !304}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !299, file: !100, line: 498, baseType: !298, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !299, file: !100, line: 499, baseType: !298, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !299, file: !100, line: 500, baseType: !291, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !299, file: !100, line: 501, baseType: !24, size: 32, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !292, file: !100, line: 485, baseType: !306, size: 64, offset: 256)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !100, line: 466, size: 320, elements: !308)
!308 = !{!309, !314, !315, !316, !317, !318, !319}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !307, file: !100, line: 467, baseType: !310, size: 128)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !100, line: 459, size: 128, elements: !311)
!311 = !{!312, !313}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !310, file: !100, line: 460, baseType: !71, size: 8)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !310, file: !100, line: 461, baseType: !29, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !307, file: !100, line: 468, baseType: !310, size: 128, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !307, file: !100, line: 469, baseType: !76, size: 16, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !307, file: !100, line: 470, baseType: !71, size: 8, offset: 272)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !307, file: !100, line: 471, baseType: !71, size: 8, offset: 280)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !307, file: !100, line: 472, baseType: !71, size: 8, offset: 288)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !307, file: !100, line: 473, baseType: !71, size: 8, offset: 296)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !292, file: !100, line: 486, baseType: !321, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !100, line: 448, size: 192, elements: !323)
!323 = !{!324, !348, !349, !350, !351, !352}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !322, file: !100, line: 449, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !100, line: 438, size: 64, elements: !326)
!326 = !{!327, !328, !342}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !325, file: !100, line: 439, baseType: !121, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !325, file: !100, line: 440, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !100, line: 419, size: 256, elements: !331)
!331 = !{!332, !338, !339, !340, !341}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !330, file: !100, line: 420, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !23, line: 1058, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!24, !337, !24, !197}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !23, line: 424, baseType: !197)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !330, file: !100, line: 421, baseType: !197, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !330, file: !100, line: 422, baseType: !121, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !330, file: !100, line: 423, baseType: !71, size: 8, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !330, file: !100, line: 424, baseType: !71, size: 8, offset: 200)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !325, file: !100, line: 441, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !100, line: 429, size: 128, elements: !345)
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !344, file: !100, line: 430, baseType: !121, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !344, file: !100, line: 431, baseType: !343, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !322, file: !100, line: 450, baseType: !306, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !100, line: 451, baseType: !71, size: 8, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !322, file: !100, line: 452, baseType: !71, size: 8, offset: 136)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !322, file: !100, line: 453, baseType: !71, size: 8, offset: 144)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !322, file: !100, line: 454, baseType: !71, size: 8, offset: 152)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !292, file: !100, line: 487, baseType: !29, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !292, file: !100, line: 488, baseType: !24, size: 32, offset: 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !292, file: !100, line: 489, baseType: !76, size: 16, offset: 480)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !292, file: !100, line: 490, baseType: !76, size: 16, offset: 496)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !292, file: !100, line: 491, baseType: !71, size: 8, offset: 512)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !292, file: !100, line: 492, baseType: !71, size: 8, offset: 520)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !126, file: !127, line: 381, baseType: !360, size: 384)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !127, line: 193, size: 384, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !360, file: !127, line: 194, baseType: !125, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !360, file: !127, line: 194, baseType: !71, size: 8, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !360, file: !127, line: 194, baseType: !71, size: 8, offset: 72)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !360, file: !127, line: 194, baseType: !76, size: 16, offset: 80)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !360, file: !127, line: 194, baseType: !71, size: 8, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !360, file: !127, line: 194, baseType: !276, size: 128, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !360, file: !127, line: 194, baseType: !125, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !360, file: !127, line: 194, baseType: !24, size: 32, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !360, file: !127, line: 195, baseType: !24, size: 32, offset: 352)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !126, file: !127, line: 382, baseType: !372, size: 384)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !127, line: 198, size: 384, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381, !382, !383}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !372, file: !127, line: 199, baseType: !125, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !372, file: !127, line: 199, baseType: !71, size: 8, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !372, file: !127, line: 199, baseType: !71, size: 8, offset: 72)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !372, file: !127, line: 199, baseType: !76, size: 16, offset: 80)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !372, file: !127, line: 199, baseType: !71, size: 8, offset: 96)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !372, file: !127, line: 201, baseType: !71, size: 8, offset: 104)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !372, file: !127, line: 202, baseType: !71, size: 8, offset: 112)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !372, file: !127, line: 203, baseType: !276, size: 128, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !372, file: !127, line: 203, baseType: !125, size: 64, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !372, file: !127, line: 203, baseType: !384, size: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !23, line: 128, baseType: !29)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !126, file: !127, line: 383, baseType: !386, size: 320)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !127, line: 206, size: 320, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393, !394}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !386, file: !127, line: 207, baseType: !125, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !386, file: !127, line: 207, baseType: !71, size: 8, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !386, file: !127, line: 207, baseType: !71, size: 8, offset: 72)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !386, file: !127, line: 207, baseType: !76, size: 16, offset: 80)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !127, line: 207, baseType: !71, size: 8, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !386, file: !127, line: 207, baseType: !276, size: 128, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !386, file: !127, line: 207, baseType: !125, size: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !126, file: !127, line: 384, baseType: !396, size: 384)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !127, line: 234, size: 384, elements: !397)
!397 = !{!398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !396, file: !127, line: 235, baseType: !125, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !396, file: !127, line: 235, baseType: !71, size: 8, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !396, file: !127, line: 235, baseType: !71, size: 8, offset: 72)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !396, file: !127, line: 235, baseType: !76, size: 16, offset: 80)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !396, file: !127, line: 235, baseType: !71, size: 8, offset: 96)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !396, file: !127, line: 235, baseType: !71, size: 8, offset: 104)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !396, file: !127, line: 235, baseType: !71, size: 8, offset: 112)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !396, file: !127, line: 235, baseType: !71, size: 8, offset: 120)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !396, file: !127, line: 235, baseType: !121, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !396, file: !127, line: 235, baseType: !24, size: 32, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !396, file: !127, line: 235, baseType: !24, size: 32, offset: 224)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !396, file: !127, line: 235, baseType: !24, size: 32, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !396, file: !127, line: 235, baseType: !71, size: 8, offset: 288)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !396, file: !127, line: 235, baseType: !71, size: 8, offset: 296)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !396, file: !127, line: 235, baseType: !125, size: 64, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !126, file: !127, line: 385, baseType: !414, size: 576)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !127, line: 238, size: 576, elements: !415)
!415 = !{!416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !414, file: !127, line: 239, baseType: !125, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !414, file: !127, line: 239, baseType: !71, size: 8, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !414, file: !127, line: 239, baseType: !71, size: 8, offset: 72)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !414, file: !127, line: 239, baseType: !76, size: 16, offset: 80)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !127, line: 239, baseType: !71, size: 8, offset: 96)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !414, file: !127, line: 239, baseType: !71, size: 8, offset: 104)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !414, file: !127, line: 239, baseType: !71, size: 8, offset: 112)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !414, file: !127, line: 239, baseType: !71, size: 8, offset: 120)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !414, file: !127, line: 239, baseType: !121, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !414, file: !127, line: 239, baseType: !24, size: 32, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !414, file: !127, line: 239, baseType: !24, size: 32, offset: 224)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !414, file: !127, line: 239, baseType: !24, size: 32, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !414, file: !127, line: 239, baseType: !71, size: 8, offset: 288)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !414, file: !127, line: 239, baseType: !71, size: 8, offset: 296)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !414, file: !127, line: 239, baseType: !76, size: 16, offset: 304)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !414, file: !127, line: 240, baseType: !125, size: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !414, file: !127, line: 241, baseType: !93, size: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !414, file: !127, line: 242, baseType: !76, size: 16, offset: 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !414, file: !127, line: 243, baseType: !93, size: 64, offset: 512)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !126, file: !127, line: 386, baseType: !436, size: 384)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !127, line: 263, size: 384, elements: !437)
!437 = !{!438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !436, file: !127, line: 264, baseType: !125, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !436, file: !127, line: 264, baseType: !71, size: 8, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !436, file: !127, line: 264, baseType: !71, size: 8, offset: 72)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !436, file: !127, line: 264, baseType: !76, size: 16, offset: 80)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !436, file: !127, line: 264, baseType: !71, size: 8, offset: 96)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !436, file: !127, line: 264, baseType: !71, size: 8, offset: 104)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !436, file: !127, line: 264, baseType: !71, size: 8, offset: 112)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !436, file: !127, line: 264, baseType: !71, size: 8, offset: 120)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !436, file: !127, line: 264, baseType: !121, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !436, file: !127, line: 264, baseType: !24, size: 32, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !436, file: !127, line: 264, baseType: !24, size: 32, offset: 224)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !436, file: !127, line: 264, baseType: !24, size: 32, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !436, file: !127, line: 264, baseType: !71, size: 8, offset: 288)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !436, file: !127, line: 264, baseType: !71, size: 8, offset: 296)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !436, file: !127, line: 264, baseType: !71, size: 8, offset: 304)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !436, file: !127, line: 265, baseType: !125, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !126, file: !127, line: 387, baseType: !455, size: 448)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !127, line: 246, size: 448, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !455, file: !127, line: 247, baseType: !125, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !455, file: !127, line: 247, baseType: !71, size: 8, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !455, file: !127, line: 247, baseType: !71, size: 8, offset: 72)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !455, file: !127, line: 247, baseType: !76, size: 16, offset: 80)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !127, line: 247, baseType: !71, size: 8, offset: 96)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !455, file: !127, line: 247, baseType: !71, size: 8, offset: 104)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !455, file: !127, line: 247, baseType: !71, size: 8, offset: 112)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !455, file: !127, line: 247, baseType: !71, size: 8, offset: 120)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !455, file: !127, line: 247, baseType: !121, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !455, file: !127, line: 247, baseType: !24, size: 32, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !455, file: !127, line: 247, baseType: !24, size: 32, offset: 224)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !455, file: !127, line: 247, baseType: !24, size: 32, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !455, file: !127, line: 247, baseType: !71, size: 8, offset: 288)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !455, file: !127, line: 247, baseType: !71, size: 8, offset: 296)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !455, file: !127, line: 247, baseType: !125, size: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !455, file: !127, line: 248, baseType: !125, size: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !126, file: !127, line: 388, baseType: !474, size: 448)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !127, line: 251, size: 448, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !474, file: !127, line: 252, baseType: !125, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !474, file: !127, line: 252, baseType: !71, size: 8, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !474, file: !127, line: 252, baseType: !71, size: 8, offset: 72)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !474, file: !127, line: 252, baseType: !76, size: 16, offset: 80)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !127, line: 252, baseType: !71, size: 8, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !474, file: !127, line: 252, baseType: !71, size: 8, offset: 104)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !474, file: !127, line: 252, baseType: !71, size: 8, offset: 112)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !474, file: !127, line: 252, baseType: !71, size: 8, offset: 120)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !474, file: !127, line: 252, baseType: !121, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !474, file: !127, line: 252, baseType: !24, size: 32, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !474, file: !127, line: 252, baseType: !24, size: 32, offset: 224)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !474, file: !127, line: 252, baseType: !24, size: 32, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !474, file: !127, line: 252, baseType: !71, size: 8, offset: 288)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !474, file: !127, line: 252, baseType: !71, size: 8, offset: 296)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !474, file: !127, line: 257, baseType: !125, size: 64, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !474, file: !127, line: 258, baseType: !125, size: 64, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !126, file: !127, line: 389, baseType: !493, size: 512)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !127, line: 274, size: 512, elements: !494)
!494 = !{!495, !496, !497, !498, !499, !500, !501, !502, !507, !508}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !493, file: !127, line: 275, baseType: !125, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !493, file: !127, line: 275, baseType: !71, size: 8, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !493, file: !127, line: 275, baseType: !71, size: 8, offset: 72)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !493, file: !127, line: 275, baseType: !76, size: 16, offset: 80)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !127, line: 275, baseType: !71, size: 8, offset: 96)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !493, file: !127, line: 275, baseType: !121, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !493, file: !127, line: 276, baseType: !24, size: 32, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !493, file: !127, line: 277, baseType: !503, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !23, line: 1061, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !337, !24, !197}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !493, file: !127, line: 278, baseType: !197, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !493, file: !127, line: 279, baseType: !276, size: 128, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !126, file: !127, line: 390, baseType: !510, size: 576)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !127, line: 282, size: 576, elements: !511)
!511 = !{!512, !513, !514, !515, !516, !517, !518, !519, !525, !526, !527, !528, !534, !535}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !510, file: !127, line: 283, baseType: !125, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !510, file: !127, line: 283, baseType: !71, size: 8, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !510, file: !127, line: 283, baseType: !71, size: 8, offset: 72)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !510, file: !127, line: 283, baseType: !76, size: 16, offset: 80)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !510, file: !127, line: 283, baseType: !71, size: 8, offset: 96)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !510, file: !127, line: 283, baseType: !71, size: 8, offset: 104)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !510, file: !127, line: 284, baseType: !71, size: 8, offset: 112)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !510, file: !127, line: 285, baseType: !520, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !23, line: 1093, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!22, !24, !264, !24, !524, !197, !197}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !510, file: !127, line: 286, baseType: !121, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !510, file: !127, line: 287, baseType: !197, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !510, file: !127, line: 288, baseType: !197, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !510, file: !127, line: 289, baseType: !529, size: 64, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !23, line: 1126, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!22, !337, !24, !197, !533}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !510, file: !127, line: 290, baseType: !125, size: 64, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !510, file: !127, line: 291, baseType: !125, size: 64, offset: 512)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !126, file: !127, line: 391, baseType: !537, size: 512)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !127, line: 309, size: 512, elements: !538)
!538 = !{!539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !537, file: !127, line: 310, baseType: !125, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !537, file: !127, line: 310, baseType: !71, size: 8, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !537, file: !127, line: 310, baseType: !71, size: 8, offset: 72)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !537, file: !127, line: 310, baseType: !76, size: 16, offset: 80)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !537, file: !127, line: 310, baseType: !71, size: 8, offset: 96)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !537, file: !127, line: 310, baseType: !71, size: 8, offset: 104)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !537, file: !127, line: 311, baseType: !71, size: 8, offset: 112)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !537, file: !127, line: 312, baseType: !71, size: 8, offset: 120)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !537, file: !127, line: 313, baseType: !197, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !537, file: !127, line: 314, baseType: !121, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !537, file: !127, line: 315, baseType: !184, size: 64, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !537, file: !127, line: 316, baseType: !93, size: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !537, file: !127, line: 317, baseType: !93, size: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !537, file: !127, line: 318, baseType: !24, size: 32, offset: 448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !126, file: !127, line: 392, baseType: !554, size: 448)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !127, line: 342, size: 448, elements: !555)
!555 = !{!556, !557, !558, !559, !560, !561, !562, !563, !564, !565}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !554, file: !127, line: 343, baseType: !125, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !554, file: !127, line: 343, baseType: !71, size: 8, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !554, file: !127, line: 343, baseType: !71, size: 8, offset: 72)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !554, file: !127, line: 343, baseType: !76, size: 16, offset: 80)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !554, file: !127, line: 343, baseType: !71, size: 8, offset: 96)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !554, file: !127, line: 343, baseType: !121, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !554, file: !127, line: 344, baseType: !121, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !554, file: !127, line: 345, baseType: !197, size: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !554, file: !127, line: 346, baseType: !93, size: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !554, file: !127, line: 347, baseType: !24, size: 32, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !126, file: !127, line: 393, baseType: !567, size: 256)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !127, line: 352, size: 256, elements: !568)
!568 = !{!569, !570, !571, !572, !573, !574, !579}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !567, file: !127, line: 353, baseType: !125, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !567, file: !127, line: 353, baseType: !71, size: 8, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !567, file: !127, line: 353, baseType: !71, size: 8, offset: 72)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !567, file: !127, line: 353, baseType: !76, size: 16, offset: 80)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !567, file: !127, line: 353, baseType: !71, size: 8, offset: 96)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !567, file: !127, line: 353, baseType: !575, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !23, line: 1064, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !337, !197}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !567, file: !127, line: 354, baseType: !197, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !126, file: !127, line: 394, baseType: !581, size: 192)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !127, line: 359, size: 192, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !588}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !581, file: !127, line: 360, baseType: !125, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !581, file: !127, line: 360, baseType: !71, size: 8, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !581, file: !127, line: 360, baseType: !71, size: 8, offset: 72)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !581, file: !127, line: 360, baseType: !76, size: 16, offset: 80)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !581, file: !127, line: 360, baseType: !71, size: 8, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !581, file: !127, line: 360, baseType: !125, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !126, file: !127, line: 401, baseType: !122, size: 384)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !122, file: !100, line: 135, baseType: !71, size: 8, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !122, file: !100, line: 136, baseType: !71, size: 8, offset: 72)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !122, file: !100, line: 137, baseType: !76, size: 16, offset: 80)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !122, file: !100, line: 138, baseType: !594, size: 32, offset: 96)
!594 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !595, line: 328, size: 32, elements: !596)
!595 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!596 = !{!597, !598}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !594, file: !595, line: 329, baseType: !24, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !594, file: !595, line: 330, baseType: !599, size: 32)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 32, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 4)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !122, file: !100, line: 139, baseType: !121, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !122, file: !100, line: 140, baseType: !121, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !122, file: !100, line: 141, baseType: !121, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !122, file: !100, line: 142, baseType: !83, size: 16, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !112, file: !100, line: 845, baseType: !607, size: 64, offset: 320)
!607 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !100, line: 732, size: 64, elements: !608)
!608 = !{!609, !610, !611, !612, !613, !614}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !607, file: !100, line: 733, baseType: !29, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !607, file: !100, line: 734, baseType: !24, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !607, file: !100, line: 735, baseType: !159, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !607, file: !100, line: 736, baseType: !93, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !607, file: !100, line: 737, baseType: !159, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !607, file: !100, line: 738, baseType: !108, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !112, file: !100, line: 845, baseType: !71, size: 8, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !109, file: !100, line: 893, baseType: !617, size: 640)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !100, line: 851, size: 640, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !617, file: !100, line: 852, baseType: !108, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !617, file: !100, line: 852, baseType: !71, size: 8, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !617, file: !100, line: 852, baseType: !71, size: 8, offset: 72)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !617, file: !100, line: 852, baseType: !76, size: 16, offset: 80)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !617, file: !100, line: 852, baseType: !93, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !617, file: !100, line: 852, baseType: !108, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !617, file: !100, line: 852, baseType: !121, size: 64, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !617, file: !100, line: 852, baseType: !607, size: 64, offset: 320)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !617, file: !100, line: 852, baseType: !71, size: 8, offset: 384)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !617, file: !100, line: 852, baseType: !159, size: 64, offset: 448)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !617, file: !100, line: 853, baseType: !93, size: 64, offset: 512)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !617, file: !100, line: 854, baseType: !24, size: 32, offset: 576)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !617, file: !100, line: 855, baseType: !24, size: 32, offset: 608)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !109, file: !100, line: 894, baseType: !633, size: 1600)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !100, line: 862, size: 1600, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !633, file: !100, line: 863, baseType: !108, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !633, file: !100, line: 863, baseType: !71, size: 8, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !100, line: 863, baseType: !71, size: 8, offset: 72)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !633, file: !100, line: 863, baseType: !76, size: 16, offset: 80)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !633, file: !100, line: 863, baseType: !93, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !633, file: !100, line: 863, baseType: !108, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !633, file: !100, line: 863, baseType: !121, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !633, file: !100, line: 863, baseType: !607, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !633, file: !100, line: 863, baseType: !71, size: 8, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !633, file: !100, line: 863, baseType: !108, size: 64, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !633, file: !100, line: 864, baseType: !108, size: 64, offset: 512)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !633, file: !100, line: 865, baseType: !159, size: 64, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !633, file: !100, line: 866, baseType: !71, size: 8, offset: 640)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !633, file: !100, line: 867, baseType: !159, size: 64, offset: 704)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !633, file: !100, line: 868, baseType: !159, size: 64, offset: 768)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !633, file: !100, line: 869, baseType: !159, size: 64, offset: 832)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !633, file: !100, line: 870, baseType: !599, size: 32, offset: 896)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !633, file: !100, line: 871, baseType: !24, size: 32, offset: 928)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !633, file: !100, line: 872, baseType: !24, size: 32, offset: 960)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !633, file: !100, line: 873, baseType: !24, size: 32, offset: 992)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !633, file: !100, line: 874, baseType: !24, size: 32, offset: 1024)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !633, file: !100, line: 875, baseType: !24, size: 32, offset: 1056)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !633, file: !100, line: 876, baseType: !24, size: 32, offset: 1088)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !633, file: !100, line: 877, baseType: !24, size: 32, offset: 1120)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !633, file: !100, line: 878, baseType: !24, size: 32, offset: 1152)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !633, file: !100, line: 879, baseType: !24, size: 32, offset: 1184)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !633, file: !100, line: 880, baseType: !24, size: 32, offset: 1216)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !633, file: !100, line: 881, baseType: !24, size: 32, offset: 1248)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !633, file: !100, line: 882, baseType: !24, size: 32, offset: 1280)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !633, file: !100, line: 883, baseType: !24, size: 32, offset: 1312)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !633, file: !100, line: 884, baseType: !76, size: 16, offset: 1344)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !633, file: !100, line: 885, baseType: !71, size: 8, offset: 1360)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !633, file: !100, line: 886, baseType: !71, size: 8, offset: 1368)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !633, file: !100, line: 887, baseType: !71, size: 8, offset: 1376)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !633, file: !100, line: 888, baseType: !670, size: 160, offset: 1384)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 160, elements: !671)
!671 = !{!672}
!672 = !DISubrange(count: 20)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !99, file: !100, line: 916, baseType: !121, size: 64, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !99, file: !100, line: 917, baseType: !675, size: 64, offset: 448)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !100, line: 679, size: 640, elements: !677)
!677 = !{!678, !686, !699, !708, !717, !730, !744, !745, !757}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !676, file: !100, line: 680, baseType: !679, size: 128)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !100, line: 575, size: 128, elements: !680)
!680 = !{!681, !682, !683, !684, !685}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !679, file: !100, line: 576, baseType: !197, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !679, file: !100, line: 576, baseType: !71, size: 8, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !679, file: !100, line: 576, baseType: !71, size: 8, offset: 72)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !679, file: !100, line: 576, baseType: !76, size: 16, offset: 80)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !679, file: !100, line: 576, baseType: !76, size: 16, offset: 96)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !676, file: !100, line: 681, baseType: !687, size: 384)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !100, line: 604, size: 384, elements: !688)
!688 = !{!689, !690, !691, !692, !693, !694, !695, !696, !697, !698}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !687, file: !100, line: 605, baseType: !197, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !687, file: !100, line: 605, baseType: !71, size: 8, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !687, file: !100, line: 605, baseType: !71, size: 8, offset: 72)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !687, file: !100, line: 605, baseType: !76, size: 16, offset: 80)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !687, file: !100, line: 605, baseType: !76, size: 16, offset: 96)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !687, file: !100, line: 606, baseType: !76, size: 16, offset: 112)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !687, file: !100, line: 607, baseType: !108, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !687, file: !100, line: 608, baseType: !93, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !687, file: !100, line: 609, baseType: !93, size: 64, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !687, file: !100, line: 610, baseType: !29, size: 64, offset: 320)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !676, file: !100, line: 682, baseType: !700, size: 192)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !100, line: 582, size: 192, elements: !701)
!701 = !{!702, !703, !704, !705, !706, !707}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !700, file: !100, line: 583, baseType: !197, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !700, file: !100, line: 583, baseType: !71, size: 8, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !700, file: !100, line: 583, baseType: !71, size: 8, offset: 72)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !700, file: !100, line: 583, baseType: !76, size: 16, offset: 80)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !700, file: !100, line: 583, baseType: !76, size: 16, offset: 96)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !700, file: !100, line: 584, baseType: !125, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !676, file: !100, line: 683, baseType: !709, size: 192)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !100, line: 616, size: 192, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !100, line: 617, baseType: !197, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !100, line: 617, baseType: !71, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !100, line: 617, baseType: !71, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !709, file: !100, line: 617, baseType: !76, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !709, file: !100, line: 617, baseType: !76, size: 16, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !100, line: 618, baseType: !121, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !676, file: !100, line: 684, baseType: !718, size: 448)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !100, line: 621, size: 448, elements: !719)
!719 = !{!720, !721, !722, !723, !724, !725, !726, !727, !728, !729}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !100, line: 622, baseType: !197, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !718, file: !100, line: 622, baseType: !71, size: 8, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !718, file: !100, line: 622, baseType: !71, size: 8, offset: 72)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !718, file: !100, line: 622, baseType: !76, size: 16, offset: 80)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !718, file: !100, line: 622, baseType: !76, size: 16, offset: 96)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !718, file: !100, line: 623, baseType: !24, size: 32, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !718, file: !100, line: 624, baseType: !108, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !718, file: !100, line: 625, baseType: !93, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !718, file: !100, line: 626, baseType: !93, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !718, file: !100, line: 627, baseType: !24, size: 32, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !676, file: !100, line: 685, baseType: !731, size: 512)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !100, line: 590, size: 512, elements: !732)
!732 = !{!733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !731, file: !100, line: 591, baseType: !197, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !731, file: !100, line: 591, baseType: !71, size: 8, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !731, file: !100, line: 591, baseType: !71, size: 8, offset: 72)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !731, file: !100, line: 591, baseType: !76, size: 16, offset: 80)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !731, file: !100, line: 591, baseType: !76, size: 16, offset: 96)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !731, file: !100, line: 592, baseType: !24, size: 32, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !731, file: !100, line: 593, baseType: !125, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !731, file: !100, line: 594, baseType: !125, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !731, file: !100, line: 595, baseType: !65, size: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !731, file: !100, line: 596, baseType: !197, size: 64, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !731, file: !100, line: 597, baseType: !24, size: 32, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !676, file: !100, line: 686, baseType: !236, size: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !676, file: !100, line: 687, baseType: !746, size: 640)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !100, line: 646, size: 640, elements: !747)
!747 = !{!748, !749, !750, !751, !752, !753}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !746, file: !100, line: 647, baseType: !197, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !746, file: !100, line: 647, baseType: !71, size: 8, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !746, file: !100, line: 647, baseType: !71, size: 8, offset: 72)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !746, file: !100, line: 647, baseType: !76, size: 16, offset: 80)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !746, file: !100, line: 647, baseType: !76, size: 16, offset: 96)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !746, file: !100, line: 648, baseType: !754, size: 512, offset: 128)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 512, elements: !755)
!755 = !{!756}
!756 = !DISubrange(count: 8)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !676, file: !100, line: 688, baseType: !758, size: 320)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !100, line: 669, size: 320, elements: !759)
!759 = !{!760, !761, !762, !763, !764, !765, !766, !767, !768}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !758, file: !100, line: 670, baseType: !197, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !758, file: !100, line: 670, baseType: !71, size: 8, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !758, file: !100, line: 670, baseType: !71, size: 8, offset: 72)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !758, file: !100, line: 670, baseType: !76, size: 16, offset: 80)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !758, file: !100, line: 670, baseType: !76, size: 16, offset: 96)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !758, file: !100, line: 671, baseType: !71, size: 8, offset: 112)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !758, file: !100, line: 672, baseType: !121, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !758, file: !100, line: 673, baseType: !125, size: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !758, file: !100, line: 674, baseType: !769, size: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !100, line: 660, size: 128, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !770, file: !100, line: 661, baseType: !503, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !770, file: !100, line: 662, baseType: !197, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !99, file: !100, line: 918, baseType: !108, size: 64, offset: 512)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !99, file: !100, line: 919, baseType: !24, size: 32, offset: 576)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !66, file: !67, line: 61, baseType: !24, size: 32, offset: 1088)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !66, file: !67, line: 62, baseType: !24, size: 32, offset: 1120)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !66, file: !67, line: 63, baseType: !76, size: 16, offset: 1152)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !66, file: !67, line: 64, baseType: !71, size: 8, offset: 1168)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !66, file: !67, line: 66, baseType: !781, size: 2688, offset: 1216)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 2688, elements: !782)
!782 = !{!783}
!783 = !DISubrange(count: 7)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !66, file: !67, line: 67, baseType: !785, size: 3072, offset: 3904)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 3072, elements: !755)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !66, file: !67, line: 68, baseType: !787, size: 576, offset: 6976)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 576, elements: !51)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !66, file: !67, line: 69, baseType: !184, size: 64, offset: 7552)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !66, file: !67, line: 71, baseType: !93, size: 64, offset: 7616)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !66, file: !67, line: 72, baseType: !184, size: 64, offset: 7680)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !66, file: !67, line: 73, baseType: !675, size: 64, offset: 7744)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !66, file: !67, line: 74, baseType: !121, size: 64, offset: 7808)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !66, file: !67, line: 75, baseType: !125, size: 64, offset: 7872)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !66, file: !67, line: 76, baseType: !121, size: 64, offset: 7936)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !66, file: !67, line: 77, baseType: !108, size: 64, offset: 8000)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !66, file: !67, line: 78, baseType: !125, size: 64, offset: 8064)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !66, file: !67, line: 79, baseType: !121, size: 64, offset: 8128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !66, file: !67, line: 80, baseType: !159, size: 64, offset: 8192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !66, file: !67, line: 81, baseType: !108, size: 64, offset: 8256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !66, file: !67, line: 82, baseType: !801, size: 64, offset: 8320)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !803)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !100, line: 718, size: 128, elements: !804)
!804 = !{!805, !806, !807, !808, !809, !810}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !803, file: !100, line: 722, baseType: !24, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !803, file: !100, line: 723, baseType: !24, size: 32, offset: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !803, file: !100, line: 724, baseType: !76, size: 16, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !803, file: !100, line: 725, baseType: !71, size: 8, offset: 80)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !803, file: !100, line: 726, baseType: !71, size: 8, offset: 88)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !803, file: !100, line: 727, baseType: !71, size: 8, offset: 96)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !66, file: !67, line: 83, baseType: !108, size: 64, offset: 8384)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !66, file: !67, line: 84, baseType: !125, size: 64, offset: 8448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !66, file: !67, line: 85, baseType: !675, size: 64, offset: 8512)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !66, file: !67, line: 86, baseType: !125, size: 64, offset: 8576)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !66, file: !67, line: 87, baseType: !675, size: 64, offset: 8640)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !66, file: !67, line: 88, baseType: !108, size: 64, offset: 8704)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !66, file: !67, line: 89, baseType: !108, size: 64, offset: 8768)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !66, file: !67, line: 90, baseType: !235, size: 64, offset: 8832)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !66, file: !67, line: 91, baseType: !820, size: 64, offset: 8896)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !100, line: 652, baseType: !821)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!22, !65, !824}
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !66, file: !67, line: 92, baseType: !826, size: 64, offset: 8960)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !100, line: 656, baseType: !217)
!827 = !{!828, !829, !830, !838, !839}
!828 = !DILocalVariable(name: "walk_state", arg: 1, scope: !62, file: !3, line: 51, type: !65)
!829 = !DILocalVariable(name: "operand", scope: !62, file: !3, line: 53, type: !184)
!830 = !DILocalVariable(name: "fatal", scope: !62, file: !3, line: 54, type: !831)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_signal_fatal_info", file: !833, line: 38, size: 96, elements: !834)
!833 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!834 = !{!835, !836, !837}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !832, file: !833, line: 39, baseType: !24, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !832, file: !833, line: 40, baseType: !24, size: 32, offset: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "argument", scope: !832, file: !833, line: 41, baseType: !24, size: 32, offset: 64)
!838 = !DILocalVariable(name: "status", scope: !62, file: !3, line: 55, type: !22)
!839 = !DILabel(scope: !62, name: "cleanup", file: !3, line: 108)
!840 = !DILocation(line: 51, column: 61, scope: !62)
!841 = !DILocation(line: 53, column: 2, scope: !62)
!842 = !DILocation(line: 53, column: 30, scope: !62)
!843 = !DILocation(line: 53, column: 41, scope: !62)
!844 = !DILocation(line: 53, column: 53, scope: !62)
!845 = !DILocation(line: 54, column: 2, scope: !62)
!846 = !DILocation(line: 54, column: 33, scope: !62)
!847 = !DILocation(line: 55, column: 2, scope: !62)
!848 = !DILocation(line: 55, column: 14, scope: !62)
!849 = !DILocation(line: 60, column: 10, scope: !62)
!850 = !DILocation(line: 60, column: 22, scope: !62)
!851 = !DILocation(line: 60, column: 2, scope: !62)
!852 = !DILocation(line: 70, column: 11, scope: !853)
!853 = distinct !DILexicalBlock(scope: !62, file: !3, line: 60, column: 30)
!854 = !DILocation(line: 70, column: 9, scope: !853)
!855 = !DILocation(line: 71, column: 7, scope: !856)
!856 = distinct !DILexicalBlock(scope: !853, file: !3, line: 71, column: 7)
!857 = !DILocation(line: 71, column: 7, scope: !853)
!858 = !DILocation(line: 72, column: 24, scope: !859)
!859 = distinct !DILexicalBlock(scope: !856, file: !3, line: 71, column: 14)
!860 = !DILocation(line: 72, column: 44, scope: !859)
!861 = !DILocation(line: 72, column: 18, scope: !859)
!862 = !DILocation(line: 72, column: 4, scope: !859)
!863 = !DILocation(line: 72, column: 11, scope: !859)
!864 = !DILocation(line: 72, column: 16, scope: !859)
!865 = !DILocation(line: 73, column: 24, scope: !859)
!866 = !DILocation(line: 73, column: 44, scope: !859)
!867 = !DILocation(line: 73, column: 18, scope: !859)
!868 = !DILocation(line: 73, column: 4, scope: !859)
!869 = !DILocation(line: 73, column: 11, scope: !859)
!870 = !DILocation(line: 73, column: 16, scope: !859)
!871 = !DILocation(line: 74, column: 28, scope: !859)
!872 = !DILocation(line: 74, column: 48, scope: !859)
!873 = !DILocation(line: 74, column: 22, scope: !859)
!874 = !DILocation(line: 74, column: 4, scope: !859)
!875 = !DILocation(line: 74, column: 11, scope: !859)
!876 = !DILocation(line: 74, column: 20, scope: !859)
!877 = !DILocation(line: 75, column: 3, scope: !859)
!878 = !DILocation(line: 79, column: 46, scope: !853)
!879 = !DILocation(line: 79, column: 12, scope: !853)
!880 = !DILocation(line: 79, column: 10, scope: !853)
!881 = !DILocation(line: 83, column: 3, scope: !853)
!882 = !DILocation(line: 84, column: 3, scope: !853)
!883 = !DILocation(line: 95, column: 3, scope: !853)
!884 = !DILocation(line: 96, column: 10, scope: !853)
!885 = !DILocation(line: 97, column: 3, scope: !853)
!886 = !DILocation(line: 101, column: 3, scope: !853)
!887 = !DILocation(line: 104, column: 10, scope: !853)
!888 = !DILocation(line: 105, column: 3, scope: !853)
!889 = !DILocation(line: 108, column: 1, scope: !62)
!890 = !DILocation(line: 110, column: 2, scope: !62)
!891 = !DILocation(line: 111, column: 1, scope: !62)
!892 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !893, file: !893, line: 50, type: !894, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !896)
!893 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!894 = !DISubroutineType(types: !895)
!895 = !{!197, !28}
!896 = !{!897, !898, !900, !903, !904, !907}
!897 = !DILocalVariable(name: "size", arg: 1, scope: !892, file: !893, line: 50, type: !28)
!898 = !DILocalVariable(name: "_flags", scope: !899, file: !893, line: 52, type: !34)
!899 = distinct !DILexicalBlock(scope: !892, file: !893, line: 52, column: 23)
!900 = !DILocalVariable(name: "__dummy", scope: !901, file: !893, line: 52, type: !34)
!901 = distinct !DILexicalBlock(scope: !902, file: !893, line: 52, column: 23)
!902 = distinct !DILexicalBlock(scope: !899, file: !893, line: 52, column: 23)
!903 = !DILocalVariable(name: "__dummy2", scope: !901, file: !893, line: 52, type: !34)
!904 = !DILocalVariable(name: "__dummy", scope: !905, file: !893, line: 52, type: !34)
!905 = distinct !DILexicalBlock(scope: !906, file: !893, line: 52, column: 23)
!906 = distinct !DILexicalBlock(scope: !899, file: !893, line: 52, column: 23)
!907 = !DILocalVariable(name: "__dummy2", scope: !905, file: !893, line: 52, type: !34)
!908 = !DILocation(line: 50, column: 48, scope: !892)
!909 = !DILocation(line: 52, column: 17, scope: !892)
!910 = !DILocation(line: 52, column: 23, scope: !899)
!911 = !DILocation(line: 52, column: 23, scope: !901)
!912 = !DILocation(line: 52, column: 23, scope: !902)
!913 = !DILocation(line: 52, column: 23, scope: !905)
!914 = !DILocation(line: 52, column: 23, scope: !906)
!915 = !DILocation(line: 52, column: 23, scope: !892)
!916 = !DILocation(line: 52, column: 9, scope: !892)
!917 = !DILocation(line: 52, column: 2, scope: !892)
!918 = !DISubprogram(name: "acpi_os_signal", scope: !833, file: !833, line: 322, type: !919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!919 = !DISubroutineType(types: !920)
!920 = !{!22, !24, !197}
!921 = distinct !DISubprogram(name: "acpi_os_free", scope: !893, file: !893, line: 60, type: !922, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !924)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !197}
!924 = !{!925}
!925 = !DILocalVariable(name: "memory", arg: 1, scope: !921, file: !893, line: 60, type: !197)
!926 = !DILocation(line: 60, column: 39, scope: !921)
!927 = !DILocation(line: 62, column: 8, scope: !921)
!928 = !DILocation(line: 62, column: 2, scope: !921)
!929 = !DILocation(line: 63, column: 1, scope: !921)
!930 = !DISubprogram(name: "acpi_error", scope: !931, file: !931, line: 901, type: !932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!931 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!932 = !DISubroutineType(types: !933)
!933 = !{null, !934, !24, !934, null}
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!935 = distinct !DISubprogram(name: "acpi_ex_opcode_3A_1T_1R", scope: !3, file: !3, line: 125, type: !63, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !936)
!936 = !{!937, !938, !939, !940, !941, !942, !943, !944}
!937 = !DILocalVariable(name: "walk_state", arg: 1, scope: !935, file: !3, line: 125, type: !65)
!938 = !DILocalVariable(name: "operand", scope: !935, file: !3, line: 127, type: !184)
!939 = !DILocalVariable(name: "return_desc", scope: !935, file: !3, line: 128, type: !125)
!940 = !DILocalVariable(name: "buffer", scope: !935, file: !3, line: 129, type: !159)
!941 = !DILocalVariable(name: "status", scope: !935, file: !3, line: 130, type: !22)
!942 = !DILocalVariable(name: "index", scope: !935, file: !3, line: 131, type: !29)
!943 = !DILocalVariable(name: "length", scope: !935, file: !3, line: 132, type: !28)
!944 = !DILabel(scope: !935, name: "cleanup", file: !3, line: 238)
!945 = !DILocation(line: 125, column: 61, scope: !935)
!946 = !DILocation(line: 127, column: 2, scope: !935)
!947 = !DILocation(line: 127, column: 30, scope: !935)
!948 = !DILocation(line: 127, column: 41, scope: !935)
!949 = !DILocation(line: 127, column: 53, scope: !935)
!950 = !DILocation(line: 128, column: 2, scope: !935)
!951 = !DILocation(line: 128, column: 29, scope: !935)
!952 = !DILocation(line: 129, column: 2, scope: !935)
!953 = !DILocation(line: 129, column: 8, scope: !935)
!954 = !DILocation(line: 130, column: 2, scope: !935)
!955 = !DILocation(line: 130, column: 14, scope: !935)
!956 = !DILocation(line: 131, column: 2, scope: !935)
!957 = !DILocation(line: 131, column: 6, scope: !935)
!958 = !DILocation(line: 132, column: 2, scope: !935)
!959 = !DILocation(line: 132, column: 12, scope: !935)
!960 = !DILocation(line: 137, column: 10, scope: !935)
!961 = !DILocation(line: 137, column: 22, scope: !935)
!962 = !DILocation(line: 137, column: 2, scope: !935)
!963 = !DILocation(line: 143, column: 17, scope: !964)
!964 = distinct !DILexicalBlock(scope: !935, file: !3, line: 137, column: 30)
!965 = !DILocation(line: 143, column: 15, scope: !964)
!966 = !DILocation(line: 145, column: 8, scope: !967)
!967 = distinct !DILexicalBlock(scope: !964, file: !3, line: 145, column: 7)
!968 = !DILocation(line: 145, column: 7, scope: !964)
!969 = !DILocation(line: 146, column: 11, scope: !970)
!970 = distinct !DILexicalBlock(scope: !967, file: !3, line: 145, column: 21)
!971 = !DILocation(line: 147, column: 4, scope: !970)
!972 = !DILocation(line: 152, column: 11, scope: !964)
!973 = !DILocation(line: 152, column: 31, scope: !964)
!974 = !DILocation(line: 152, column: 9, scope: !964)
!975 = !DILocation(line: 153, column: 23, scope: !964)
!976 = !DILocation(line: 153, column: 43, scope: !964)
!977 = !DILocation(line: 153, column: 10, scope: !964)
!978 = !DILocation(line: 159, column: 7, scope: !979)
!979 = distinct !DILexicalBlock(scope: !964, file: !3, line: 159, column: 7)
!980 = !DILocation(line: 159, column: 16, scope: !979)
!981 = !DILocation(line: 159, column: 35, scope: !979)
!982 = !DILocation(line: 159, column: 13, scope: !979)
!983 = !DILocation(line: 159, column: 7, scope: !964)
!984 = !DILocation(line: 160, column: 11, scope: !985)
!985 = distinct !DILexicalBlock(scope: !979, file: !3, line: 159, column: 43)
!986 = !DILocation(line: 161, column: 3, scope: !985)
!987 = !DILocation(line: 165, column: 13, scope: !988)
!988 = distinct !DILexicalBlock(scope: !979, file: !3, line: 165, column: 12)
!989 = !DILocation(line: 165, column: 21, scope: !988)
!990 = !DILocation(line: 165, column: 19, scope: !988)
!991 = !DILocation(line: 165, column: 31, scope: !988)
!992 = !DILocation(line: 165, column: 50, scope: !988)
!993 = !DILocation(line: 165, column: 29, scope: !988)
!994 = !DILocation(line: 165, column: 12, scope: !979)
!995 = !DILocation(line: 167, column: 19, scope: !996)
!996 = distinct !DILexicalBlock(scope: !988, file: !3, line: 165, column: 58)
!997 = !DILocation(line: 167, column: 38, scope: !996)
!998 = !DILocation(line: 167, column: 8, scope: !996)
!999 = !DILocation(line: 168, column: 19, scope: !996)
!1000 = !DILocation(line: 167, column: 45, scope: !996)
!1001 = !DILocation(line: 166, column: 11, scope: !996)
!1002 = !DILocation(line: 169, column: 3, scope: !996)
!1003 = !DILocation(line: 173, column: 12, scope: !964)
!1004 = !DILocation(line: 173, column: 32, scope: !964)
!1005 = !DILocation(line: 173, column: 11, scope: !964)
!1006 = !DILocation(line: 173, column: 3, scope: !964)
!1007 = !DILocation(line: 178, column: 13, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !964, file: !3, line: 173, column: 38)
!1009 = !DILocation(line: 178, column: 11, scope: !1008)
!1010 = !DILocation(line: 179, column: 9, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 179, column: 8)
!1012 = !DILocation(line: 179, column: 8, scope: !1008)
!1013 = !DILocation(line: 180, column: 12, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 179, column: 17)
!1015 = !DILocation(line: 181, column: 5, scope: !1014)
!1016 = !DILocation(line: 183, column: 4, scope: !1008)
!1017 = !DILocation(line: 189, column: 8, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 189, column: 8)
!1019 = !DILocation(line: 189, column: 15, scope: !1018)
!1020 = !DILocation(line: 189, column: 8, scope: !1008)
!1021 = !DILocation(line: 193, column: 14, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 189, column: 20)
!1023 = !DILocation(line: 193, column: 12, scope: !1022)
!1024 = !DILocation(line: 194, column: 10, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 194, column: 9)
!1026 = !DILocation(line: 194, column: 9, scope: !1022)
!1027 = !DILocation(line: 195, column: 13, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 194, column: 18)
!1029 = !DILocation(line: 196, column: 6, scope: !1028)
!1030 = !DILocation(line: 198, column: 4, scope: !1022)
!1031 = !DILocation(line: 199, column: 4, scope: !1008)
!1032 = !DILocation(line: 203, column: 11, scope: !1008)
!1033 = !DILocation(line: 204, column: 4, scope: !1008)
!1034 = !DILocation(line: 207, column: 7, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !964, file: !3, line: 207, column: 7)
!1036 = !DILocation(line: 207, column: 7, scope: !964)
!1037 = !DILocation(line: 211, column: 11, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 207, column: 15)
!1039 = !DILocation(line: 212, column: 11, scope: !1038)
!1040 = !DILocation(line: 212, column: 30, scope: !1038)
!1041 = !DILocation(line: 212, column: 40, scope: !1038)
!1042 = !DILocation(line: 212, column: 38, scope: !1038)
!1043 = !DILocation(line: 212, column: 47, scope: !1038)
!1044 = !DILocation(line: 211, column: 4, scope: !1038)
!1045 = !DILocation(line: 213, column: 3, scope: !1038)
!1046 = !DILocation(line: 217, column: 33, scope: !964)
!1047 = !DILocation(line: 217, column: 3, scope: !964)
!1048 = !DILocation(line: 217, column: 23, scope: !964)
!1049 = !DILocation(line: 217, column: 31, scope: !964)
!1050 = !DILocation(line: 218, column: 38, scope: !964)
!1051 = !DILocation(line: 218, column: 32, scope: !964)
!1052 = !DILocation(line: 218, column: 3, scope: !964)
!1053 = !DILocation(line: 218, column: 23, scope: !964)
!1054 = !DILocation(line: 218, column: 30, scope: !964)
!1055 = !DILocation(line: 222, column: 3, scope: !964)
!1056 = !DILocation(line: 222, column: 23, scope: !964)
!1057 = !DILocation(line: 222, column: 29, scope: !964)
!1058 = !DILocation(line: 223, column: 3, scope: !964)
!1059 = !DILocation(line: 227, column: 3, scope: !964)
!1060 = !DILocation(line: 230, column: 10, scope: !964)
!1061 = !DILocation(line: 231, column: 3, scope: !964)
!1062 = !DILocation(line: 236, column: 25, scope: !935)
!1063 = !DILocation(line: 236, column: 38, scope: !935)
!1064 = !DILocation(line: 236, column: 50, scope: !935)
!1065 = !DILocation(line: 236, column: 11, scope: !935)
!1066 = !DILocation(line: 236, column: 9, scope: !935)
!1067 = !DILocation(line: 236, column: 2, scope: !935)
!1068 = !DILocation(line: 238, column: 1, scope: !935)
!1069 = !DILocation(line: 242, column: 6, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !935, file: !3, line: 242, column: 6)
!1071 = !DILocation(line: 242, column: 27, scope: !1070)
!1072 = !DILocation(line: 242, column: 30, scope: !1070)
!1073 = !DILocation(line: 242, column: 42, scope: !1070)
!1074 = !DILocation(line: 242, column: 6, scope: !935)
!1075 = !DILocation(line: 243, column: 28, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 242, column: 54)
!1077 = !DILocation(line: 243, column: 3, scope: !1076)
!1078 = !DILocation(line: 244, column: 3, scope: !1076)
!1079 = !DILocation(line: 244, column: 15, scope: !1076)
!1080 = !DILocation(line: 244, column: 26, scope: !1076)
!1081 = !DILocation(line: 245, column: 2, scope: !1076)
!1082 = !DILocation(line: 248, column: 28, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 245, column: 9)
!1084 = !DILocation(line: 248, column: 3, scope: !1083)
!1085 = !DILocation(line: 248, column: 15, scope: !1083)
!1086 = !DILocation(line: 248, column: 26, scope: !1083)
!1087 = !DILocation(line: 251, column: 2, scope: !935)
!1088 = !DILocation(line: 252, column: 1, scope: !935)
!1089 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !1090, file: !1090, line: 436, type: !1091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1090 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!125, !934, !24, !24, !1093}
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !23, line: 644, baseType: !24)
!1094 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !893, file: !893, line: 55, type: !894, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1095)
!1095 = !{!1096, !1097, !1099, !1102, !1103, !1106}
!1096 = !DILocalVariable(name: "size", arg: 1, scope: !1094, file: !893, line: 55, type: !28)
!1097 = !DILocalVariable(name: "_flags", scope: !1098, file: !893, line: 57, type: !34)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !893, line: 57, column: 23)
!1099 = !DILocalVariable(name: "__dummy", scope: !1100, file: !893, line: 57, type: !34)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !893, line: 57, column: 23)
!1101 = distinct !DILexicalBlock(scope: !1098, file: !893, line: 57, column: 23)
!1102 = !DILocalVariable(name: "__dummy2", scope: !1100, file: !893, line: 57, type: !34)
!1103 = !DILocalVariable(name: "__dummy", scope: !1104, file: !893, line: 57, type: !34)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !893, line: 57, column: 23)
!1105 = distinct !DILexicalBlock(scope: !1098, file: !893, line: 57, column: 23)
!1106 = !DILocalVariable(name: "__dummy2", scope: !1104, file: !893, line: 57, type: !34)
!1107 = !DILocation(line: 55, column: 55, scope: !1094)
!1108 = !DILocation(line: 57, column: 17, scope: !1094)
!1109 = !DILocation(line: 57, column: 23, scope: !1098)
!1110 = !DILocation(line: 57, column: 23, scope: !1100)
!1111 = !DILocation(line: 57, column: 23, scope: !1101)
!1112 = !DILocation(line: 57, column: 23, scope: !1104)
!1113 = !DILocation(line: 57, column: 23, scope: !1105)
!1114 = !DILocation(line: 57, column: 23, scope: !1094)
!1115 = !DILocation(line: 57, column: 9, scope: !1094)
!1116 = !DILocation(line: 57, column: 2, scope: !1094)
!1117 = !DISubprogram(name: "acpi_ex_store", scope: !1118, file: !1118, line: 407, type: !1119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1118 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!22, !125, !125, !65}
!1121 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1090, file: !1090, line: 369, type: !1122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{null, !125}
!1124 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !1125, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1131)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!197, !1127, !32}
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 61, baseType: !1128)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1129, line: 72, baseType: !1130)
!1129 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1129, line: 16, baseType: !34)
!1131 = !{!1132, !1133, !1134}
!1132 = !DILocalVariable(name: "size", arg: 1, scope: !1124, file: !12, line: 591, type: !1127)
!1133 = !DILocalVariable(name: "flags", arg: 2, scope: !1124, file: !12, line: 591, type: !32)
!1134 = !DILocalVariable(name: "index", scope: !1135, file: !12, line: 594, type: !7)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !12, line: 593, column: 42)
!1136 = distinct !DILexicalBlock(scope: !1124, file: !12, line: 593, column: 6)
!1137 = !DILocation(line: 591, column: 61, scope: !1124)
!1138 = !DILocation(line: 591, column: 73, scope: !1124)
!1139 = !DILocation(line: 593, column: 27, scope: !1136)
!1140 = !DILocation(line: 593, column: 6, scope: !1136)
!1141 = !DILocation(line: 593, column: 33, scope: !1136)
!1142 = !DILocation(line: 593, column: 36, scope: !1136)
!1143 = !DILocation(line: 593, column: 6, scope: !1124)
!1144 = !DILocation(line: 594, column: 3, scope: !1135)
!1145 = !DILocation(line: 594, column: 16, scope: !1135)
!1146 = !DILocation(line: 596, column: 7, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1135, file: !12, line: 596, column: 7)
!1148 = !DILocation(line: 596, column: 12, scope: !1147)
!1149 = !DILocation(line: 596, column: 7, scope: !1135)
!1150 = !DILocation(line: 597, column: 25, scope: !1147)
!1151 = !DILocation(line: 597, column: 31, scope: !1147)
!1152 = !DILocation(line: 597, column: 11, scope: !1147)
!1153 = !DILocation(line: 597, column: 4, scope: !1147)
!1154 = !DILocation(line: 599, column: 11, scope: !1135)
!1155 = !DILocation(line: 599, column: 9, scope: !1135)
!1156 = !DILocation(line: 601, column: 33, scope: !1135)
!1157 = !DILocation(line: 601, column: 40, scope: !1135)
!1158 = !DILocation(line: 601, column: 20, scope: !1135)
!1159 = !DILocation(line: 601, column: 5, scope: !1135)
!1160 = !DILocation(line: 601, column: 51, scope: !1135)
!1161 = !DILocation(line: 602, column: 5, scope: !1135)
!1162 = !DILocation(line: 602, column: 12, scope: !1135)
!1163 = !DILocation(line: 600, column: 10, scope: !1135)
!1164 = !DILocation(line: 600, column: 3, scope: !1135)
!1165 = !DILocation(line: 603, column: 2, scope: !1136)
!1166 = !DILocation(line: 604, column: 19, scope: !1124)
!1167 = !DILocation(line: 604, column: 25, scope: !1124)
!1168 = !DILocation(line: 604, column: 9, scope: !1124)
!1169 = !DILocation(line: 604, column: 2, scope: !1124)
!1170 = !DILocation(line: 605, column: 1, scope: !1124)
!1171 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1172, file: !1172, line: 65, type: !1173, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1172 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!34}
!1175 = !DILocation(line: 67, column: 9, scope: !1171)
!1176 = !DILocation(line: 67, column: 2, scope: !1171)
!1177 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1172, file: !1172, line: 120, type: !1178, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1181)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!1180, !34}
!1180 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1181 = !{!1182}
!1182 = !DILocalVariable(name: "flags", arg: 1, scope: !1177, file: !1172, line: 120, type: !34)
!1183 = !DILocation(line: 120, column: 67, scope: !1177)
!1184 = !DILocation(line: 122, column: 11, scope: !1177)
!1185 = !DILocation(line: 122, column: 17, scope: !1177)
!1186 = !DILocation(line: 122, column: 9, scope: !1177)
!1187 = !DILocation(line: 122, column: 2, scope: !1177)
!1188 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !1125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1189 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !1190, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1194)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!7, !1127, !1192}
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !33, line: 35, baseType: !1193)
!1193 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1194 = !{!1195, !1196}
!1195 = !DILocalVariable(name: "size", arg: 1, scope: !1189, file: !12, line: 444, type: !1127)
!1196 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1189, file: !12, line: 445, type: !1192)
!1197 = !DILocation(line: 444, column: 60, scope: !1189)
!1198 = !DILocation(line: 445, column: 16, scope: !1189)
!1199 = !DILocation(line: 447, column: 7, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 447, column: 6)
!1201 = !DILocation(line: 447, column: 6, scope: !1189)
!1202 = !DILocation(line: 448, column: 3, scope: !1200)
!1203 = !DILocation(line: 450, column: 6, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 450, column: 6)
!1205 = !DILocation(line: 450, column: 11, scope: !1204)
!1206 = !DILocation(line: 450, column: 6, scope: !1189)
!1207 = !DILocation(line: 451, column: 3, scope: !1204)
!1208 = !DILocation(line: 453, column: 32, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 453, column: 6)
!1210 = !DILocation(line: 453, column: 37, scope: !1209)
!1211 = !DILocation(line: 453, column: 42, scope: !1209)
!1212 = !DILocation(line: 453, column: 45, scope: !1209)
!1213 = !DILocation(line: 453, column: 50, scope: !1209)
!1214 = !DILocation(line: 453, column: 6, scope: !1189)
!1215 = !DILocation(line: 454, column: 3, scope: !1209)
!1216 = !DILocation(line: 455, column: 32, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 455, column: 6)
!1218 = !DILocation(line: 455, column: 37, scope: !1217)
!1219 = !DILocation(line: 455, column: 43, scope: !1217)
!1220 = !DILocation(line: 455, column: 46, scope: !1217)
!1221 = !DILocation(line: 455, column: 51, scope: !1217)
!1222 = !DILocation(line: 455, column: 6, scope: !1189)
!1223 = !DILocation(line: 456, column: 3, scope: !1217)
!1224 = !DILocation(line: 457, column: 6, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 457, column: 6)
!1226 = !DILocation(line: 457, column: 11, scope: !1225)
!1227 = !DILocation(line: 457, column: 6, scope: !1189)
!1228 = !DILocation(line: 457, column: 26, scope: !1225)
!1229 = !DILocation(line: 458, column: 6, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 458, column: 6)
!1231 = !DILocation(line: 458, column: 11, scope: !1230)
!1232 = !DILocation(line: 458, column: 6, scope: !1189)
!1233 = !DILocation(line: 458, column: 26, scope: !1230)
!1234 = !DILocation(line: 459, column: 6, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 459, column: 6)
!1236 = !DILocation(line: 459, column: 11, scope: !1235)
!1237 = !DILocation(line: 459, column: 6, scope: !1189)
!1238 = !DILocation(line: 459, column: 26, scope: !1235)
!1239 = !DILocation(line: 460, column: 6, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 460, column: 6)
!1241 = !DILocation(line: 460, column: 11, scope: !1240)
!1242 = !DILocation(line: 460, column: 6, scope: !1189)
!1243 = !DILocation(line: 460, column: 26, scope: !1240)
!1244 = !DILocation(line: 461, column: 6, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 461, column: 6)
!1246 = !DILocation(line: 461, column: 11, scope: !1245)
!1247 = !DILocation(line: 461, column: 6, scope: !1189)
!1248 = !DILocation(line: 461, column: 26, scope: !1245)
!1249 = !DILocation(line: 462, column: 6, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 462, column: 6)
!1251 = !DILocation(line: 462, column: 11, scope: !1250)
!1252 = !DILocation(line: 462, column: 6, scope: !1189)
!1253 = !DILocation(line: 462, column: 26, scope: !1250)
!1254 = !DILocation(line: 463, column: 6, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 463, column: 6)
!1256 = !DILocation(line: 463, column: 11, scope: !1255)
!1257 = !DILocation(line: 463, column: 6, scope: !1189)
!1258 = !DILocation(line: 463, column: 26, scope: !1255)
!1259 = !DILocation(line: 464, column: 6, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 464, column: 6)
!1261 = !DILocation(line: 464, column: 11, scope: !1260)
!1262 = !DILocation(line: 464, column: 6, scope: !1189)
!1263 = !DILocation(line: 464, column: 26, scope: !1260)
!1264 = !DILocation(line: 465, column: 6, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 465, column: 6)
!1266 = !DILocation(line: 465, column: 11, scope: !1265)
!1267 = !DILocation(line: 465, column: 6, scope: !1189)
!1268 = !DILocation(line: 465, column: 26, scope: !1265)
!1269 = !DILocation(line: 466, column: 6, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 466, column: 6)
!1271 = !DILocation(line: 466, column: 11, scope: !1270)
!1272 = !DILocation(line: 466, column: 6, scope: !1189)
!1273 = !DILocation(line: 466, column: 26, scope: !1270)
!1274 = !DILocation(line: 467, column: 6, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 467, column: 6)
!1276 = !DILocation(line: 467, column: 11, scope: !1275)
!1277 = !DILocation(line: 467, column: 6, scope: !1189)
!1278 = !DILocation(line: 467, column: 26, scope: !1275)
!1279 = !DILocation(line: 468, column: 6, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 468, column: 6)
!1281 = !DILocation(line: 468, column: 11, scope: !1280)
!1282 = !DILocation(line: 468, column: 6, scope: !1189)
!1283 = !DILocation(line: 468, column: 26, scope: !1280)
!1284 = !DILocation(line: 469, column: 6, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 469, column: 6)
!1286 = !DILocation(line: 469, column: 11, scope: !1285)
!1287 = !DILocation(line: 469, column: 6, scope: !1189)
!1288 = !DILocation(line: 469, column: 26, scope: !1285)
!1289 = !DILocation(line: 470, column: 6, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 470, column: 6)
!1291 = !DILocation(line: 470, column: 11, scope: !1290)
!1292 = !DILocation(line: 470, column: 6, scope: !1189)
!1293 = !DILocation(line: 470, column: 26, scope: !1290)
!1294 = !DILocation(line: 471, column: 6, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 471, column: 6)
!1296 = !DILocation(line: 471, column: 11, scope: !1295)
!1297 = !DILocation(line: 471, column: 6, scope: !1189)
!1298 = !DILocation(line: 471, column: 26, scope: !1295)
!1299 = !DILocation(line: 472, column: 6, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 472, column: 6)
!1301 = !DILocation(line: 472, column: 11, scope: !1300)
!1302 = !DILocation(line: 472, column: 6, scope: !1189)
!1303 = !DILocation(line: 472, column: 26, scope: !1300)
!1304 = !DILocation(line: 473, column: 6, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 473, column: 6)
!1306 = !DILocation(line: 473, column: 11, scope: !1305)
!1307 = !DILocation(line: 473, column: 6, scope: !1189)
!1308 = !DILocation(line: 473, column: 26, scope: !1305)
!1309 = !DILocation(line: 474, column: 6, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 474, column: 6)
!1311 = !DILocation(line: 474, column: 11, scope: !1310)
!1312 = !DILocation(line: 474, column: 6, scope: !1189)
!1313 = !DILocation(line: 474, column: 27, scope: !1310)
!1314 = !DILocation(line: 475, column: 6, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 475, column: 6)
!1316 = !DILocation(line: 475, column: 11, scope: !1315)
!1317 = !DILocation(line: 475, column: 6, scope: !1189)
!1318 = !DILocation(line: 475, column: 32, scope: !1315)
!1319 = !DILocation(line: 477, column: 50, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1189, file: !12, line: 477, column: 6)
!1321 = !{i8 0, i8 2}
!1322 = !{}
!1323 = !DILocation(line: 477, column: 6, scope: !1189)
!1324 = !DILocation(line: 478, column: 3, scope: !1320)
!1325 = !DILocation(line: 478, column: 3, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !12, line: 478, column: 3)
!1327 = distinct !DILexicalBlock(scope: !1320, file: !12, line: 478, column: 3)
!1328 = !{i32 -2143042920}
!1329 = !DILocation(line: 478, column: 3, scope: !1327)
!1330 = !DILocation(line: 480, column: 3, scope: !1320)
!1331 = !DILocation(line: 480, column: 3, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1320, file: !12, line: 480, column: 3)
!1333 = !DILocation(line: 480, column: 3, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1332, file: !12, line: 480, column: 3)
!1335 = !DILocation(line: 480, column: 3, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1332, file: !12, line: 480, column: 3)
!1337 = !{i64 2151924579, i64 2151924608, i64 2151924654, i64 2151924712, i64 2151924766, i64 2151924820, i64 2151924875, i64 2151924906}
!1338 = !DILocation(line: 483, column: 2, scope: !1189)
!1339 = !DILocation(line: 484, column: 1, scope: !1189)
!1340 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !1341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!197, !1343, !32, !1127}
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1345, line: 11, flags: DIFlagFwdDecl)
!1345 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1346 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !1347, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1349)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!11, !32, !34}
!1349 = !{!1350, !1351}
!1350 = !DILocalVariable(name: "flags", arg: 1, scope: !1346, file: !12, line: 401, type: !32)
!1351 = !DILocalVariable(name: "caller", arg: 2, scope: !1346, file: !12, line: 401, type: !34)
!1352 = !DILocation(line: 401, column: 67, scope: !1346)
!1353 = !DILocation(line: 401, column: 88, scope: !1346)
!1354 = !DILocation(line: 407, column: 6, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1346, file: !12, line: 407, column: 6)
!1356 = !DILocation(line: 407, column: 6, scope: !1346)
!1357 = !DILocation(line: 413, column: 3, scope: !1355)
!1358 = !DILocation(line: 423, column: 38, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1346, file: !12, line: 423, column: 6)
!1360 = !DILocation(line: 423, column: 44, scope: !1359)
!1361 = !DILocation(line: 423, column: 6, scope: !1346)
!1362 = !DILocation(line: 424, column: 3, scope: !1359)
!1363 = !DILocation(line: 426, column: 3, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1346, file: !12, line: 425, column: 6)
!1365 = !DILocation(line: 429, column: 1, scope: !1346)
!1366 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !1125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1367 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !1368, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{null}
!1370 = distinct !DISubprogram(name: "native_save_fl", scope: !1172, file: !1172, line: 17, type: !1173, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1371)
!1371 = !{!1372}
!1372 = !DILocalVariable(name: "flags", scope: !1370, file: !1172, line: 19, type: !34)
!1373 = !DILocation(line: 19, column: 2, scope: !1370)
!1374 = !DILocation(line: 19, column: 16, scope: !1370)
!1375 = !DILocation(line: 26, column: 2, scope: !1370)
!1376 = !{i64 1514498, i64 1514519}
!1377 = !DILocation(line: 32, column: 9, scope: !1370)
!1378 = !DILocation(line: 33, column: 1, scope: !1370)
!1379 = !DILocation(line: 32, column: 2, scope: !1370)
!1380 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !1381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !1383}
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1385 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !1125, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1386)
!1386 = !{!1387, !1388}
!1387 = !DILocalVariable(name: "size", arg: 1, scope: !1385, file: !12, line: 719, type: !1127)
!1388 = !DILocalVariable(name: "flags", arg: 2, scope: !1385, file: !12, line: 719, type: !32)
!1389 = !DILocation(line: 719, column: 52, scope: !1385)
!1390 = !DILocation(line: 719, column: 64, scope: !1385)
!1391 = !DILocation(line: 721, column: 17, scope: !1385)
!1392 = !DILocation(line: 721, column: 23, scope: !1385)
!1393 = !DILocation(line: 721, column: 29, scope: !1385)
!1394 = !DILocation(line: 721, column: 9, scope: !1385)
!1395 = !DILocation(line: 721, column: 2, scope: !1385)
