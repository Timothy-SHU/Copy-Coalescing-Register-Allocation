; ModuleID = 'drivers/acpi/acpica/exoparg2.c'
source_filename = "drivers/acpi/acpica/exoparg2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }
%struct.acpi_object_string = type { ptr, i8, i8, i16, i8, ptr, i32 }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_package = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, i32, i32 }

@_acpi_module_name = internal constant [9 x i8] c"exoparg2\00", align 1, !dbg !0
@.str = private unnamed_addr constant [35 x i8] c"Unexpected notify object type [%s]\00", align 1, !dbg !794
@.str.1 = private unnamed_addr constant [24 x i8] c"Unknown AML opcode 0x%X\00", align 1, !dbg !799
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid object type: %X\00", align 1, !dbg !804
@.str.3 = private unnamed_addr constant [56 x i8] c"Index (0x%X%8.8X) is beyond end of object (length 0x%X)\00", align 1, !dbg !806

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_opcode_2A_0T_0R(ptr noundef %walk_state) #0 align 16 !dbg !822 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %operand = alloca ptr, align 8
  %node = alloca ptr, align 8
  %value = alloca i32, align 4
  %status = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !824, metadata !DIExpression()), !dbg !829
  call void @llvm.lifetime.start.p0(i64 8, ptr %operand) #5, !dbg !830
  call void @llvm.dbg.declare(metadata ptr %operand, metadata !825, metadata !DIExpression()), !dbg !831
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !832
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 28, !dbg !833
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !832
  store ptr %arrayidx, ptr %operand, align 8, !dbg !831
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #5, !dbg !834
  call void @llvm.dbg.declare(metadata ptr %node, metadata !826, metadata !DIExpression()), !dbg !835
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #5, !dbg !836
  call void @llvm.dbg.declare(metadata ptr %value, metadata !827, metadata !DIExpression()), !dbg !837
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !838
  call void @llvm.dbg.declare(metadata ptr %status, metadata !828, metadata !DIExpression()), !dbg !839
  store i32 0, ptr %status, align 4, !dbg !839
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !840
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 3, !dbg !841
  %2 = load i16, ptr %opcode, align 2, !dbg !841
  %conv = zext i16 %2 to i32, !dbg !840
  switch i32 %conv, label %sw.default [
    i32 134, label %sw.bb
  ], !dbg !842

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %operand, align 8, !dbg !843
  %arrayidx1 = getelementptr ptr, ptr %3, i64 0, !dbg !843
  %4 = load ptr, ptr %arrayidx1, align 8, !dbg !843
  store ptr %4, ptr %node, align 8, !dbg !845
  %5 = load ptr, ptr %operand, align 8, !dbg !846
  %arrayidx2 = getelementptr ptr, ptr %5, i64 1, !dbg !846
  %6 = load ptr, ptr %arrayidx2, align 8, !dbg !846
  %value3 = getelementptr inbounds %struct.acpi_object_integer, ptr %6, i32 0, i32 6, !dbg !847
  %7 = load i64, ptr %value3, align 8, !dbg !847
  %conv4 = trunc i64 %7 to i32, !dbg !848
  store i32 %conv4, ptr %value, align 4, !dbg !849
  %8 = load ptr, ptr %node, align 8, !dbg !850
  %call = call zeroext i8 @acpi_ev_is_notify_object(ptr noundef %8) #6, !dbg !852
  %tobool = icmp ne i8 %call, 0, !dbg !852
  br i1 %tobool, label %if.end, label %if.then, !dbg !853

if.then:                                          ; preds = %sw.bb
  %9 = load ptr, ptr %node, align 8, !dbg !854
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %9, i32 0, i32 2, !dbg !854
  %10 = load i8, ptr %type, align 1, !dbg !854
  %conv5 = zext i8 %10 to i32, !dbg !854
  %call6 = call ptr @acpi_ut_get_type_name(i32 noundef %conv5) #6, !dbg !854
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 81, ptr noundef @.str, ptr noundef %call6) #6, !dbg !854
  store i32 12291, ptr %status, align 4, !dbg !856
  br label %sw.epilog, !dbg !857

if.end:                                           ; preds = %sw.bb
  %11 = load ptr, ptr %node, align 8, !dbg !858
  %12 = load i32, ptr %value, align 4, !dbg !859
  %call7 = call i32 @acpi_ev_queue_notify_request(ptr noundef %11, i32 noundef %12) #6, !dbg !860
  store i32 %call7, ptr %status, align 4, !dbg !861
  br label %sw.epilog, !dbg !862

sw.default:                                       ; preds = %entry
  %13 = load ptr, ptr %walk_state.addr, align 8, !dbg !863
  %opcode8 = getelementptr inbounds %struct.acpi_walk_state, ptr %13, i32 0, i32 3, !dbg !863
  %14 = load i16, ptr %opcode8, align 2, !dbg !863
  %conv9 = zext i16 %14 to i32, !dbg !863
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 101, ptr noundef @.str.1, i32 noundef %conv9) #6, !dbg !863
  store i32 12289, ptr %status, align 4, !dbg !864
  br label %sw.epilog, !dbg !865

sw.epilog:                                        ; preds = %sw.default, %if.end, %if.then
  %15 = load i32, ptr %status, align 4, !dbg !866
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !867
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #5, !dbg !867
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #5, !dbg !867
  call void @llvm.lifetime.end.p0(i64 8, ptr %operand) #5, !dbg !867
  ret i32 %15, !dbg !866
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !868 dso_local zeroext i8 @acpi_ev_is_notify_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !872 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !877 dso_local ptr @acpi_ut_get_type_name(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !882 dso_local i32 @acpi_ev_queue_notify_request(ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_opcode_2A_2T_1R(ptr noundef %walk_state) #0 align 16 !dbg !885 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %operand = alloca ptr, align 8
  %return_desc1 = alloca ptr, align 8
  %return_desc2 = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !887, metadata !DIExpression()), !dbg !893
  call void @llvm.lifetime.start.p0(i64 8, ptr %operand) #5, !dbg !894
  call void @llvm.dbg.declare(metadata ptr %operand, metadata !888, metadata !DIExpression()), !dbg !895
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !896
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 28, !dbg !897
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !896
  store ptr %arrayidx, ptr %operand, align 8, !dbg !895
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_desc1) #5, !dbg !898
  call void @llvm.dbg.declare(metadata ptr %return_desc1, metadata !889, metadata !DIExpression()), !dbg !899
  store ptr null, ptr %return_desc1, align 8, !dbg !899
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_desc2) #5, !dbg !900
  call void @llvm.dbg.declare(metadata ptr %return_desc2, metadata !890, metadata !DIExpression()), !dbg !901
  store ptr null, ptr %return_desc2, align 8, !dbg !901
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !902
  call void @llvm.dbg.declare(metadata ptr %status, metadata !891, metadata !DIExpression()), !dbg !903
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !904
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 3, !dbg !905
  %2 = load i16, ptr %opcode, align 2, !dbg !905
  %conv = zext i16 %2 to i32, !dbg !904
  switch i32 %conv, label %sw.default [
    i32 120, label %sw.bb
  ], !dbg !906

sw.bb:                                            ; preds = %entry
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 140, i32 noundef 128, i32 noundef 1) #6, !dbg !907
  store ptr %call, ptr %return_desc1, align 8, !dbg !909
  %3 = load ptr, ptr %return_desc1, align 8, !dbg !910
  %tobool = icmp ne ptr %3, null, !dbg !910
  br i1 %tobool, label %if.end, label %if.then, !dbg !912

if.then:                                          ; preds = %sw.bb
  store i32 4, ptr %status, align 4, !dbg !913
  br label %cleanup, !dbg !915

if.end:                                           ; preds = %sw.bb
  %call1 = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 147, i32 noundef 128, i32 noundef 1) #6, !dbg !916
  store ptr %call1, ptr %return_desc2, align 8, !dbg !917
  %4 = load ptr, ptr %return_desc2, align 8, !dbg !918
  %tobool2 = icmp ne ptr %4, null, !dbg !918
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !920

if.then3:                                         ; preds = %if.end
  store i32 4, ptr %status, align 4, !dbg !921
  br label %cleanup, !dbg !923

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %operand, align 8, !dbg !924
  %arrayidx5 = getelementptr ptr, ptr %5, i64 0, !dbg !924
  %6 = load ptr, ptr %arrayidx5, align 8, !dbg !924
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %6, i32 0, i32 6, !dbg !925
  %7 = load i64, ptr %value, align 8, !dbg !925
  %8 = load ptr, ptr %operand, align 8, !dbg !926
  %arrayidx6 = getelementptr ptr, ptr %8, i64 1, !dbg !926
  %9 = load ptr, ptr %arrayidx6, align 8, !dbg !926
  %value7 = getelementptr inbounds %struct.acpi_object_integer, ptr %9, i32 0, i32 6, !dbg !927
  %10 = load i64, ptr %value7, align 8, !dbg !927
  %11 = load ptr, ptr %return_desc1, align 8, !dbg !928
  %value8 = getelementptr inbounds %struct.acpi_object_integer, ptr %11, i32 0, i32 6, !dbg !929
  %12 = load ptr, ptr %return_desc2, align 8, !dbg !930
  %value9 = getelementptr inbounds %struct.acpi_object_integer, ptr %12, i32 0, i32 6, !dbg !931
  %call10 = call i32 @acpi_ut_divide(i64 noundef %7, i64 noundef %10, ptr noundef %value8, ptr noundef %value9) #6, !dbg !932
  store i32 %call10, ptr %status, align 4, !dbg !933
  %13 = load i32, ptr %status, align 4, !dbg !934
  %tobool11 = icmp ne i32 %13, 0, !dbg !934
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !936

if.then12:                                        ; preds = %if.end4
  br label %cleanup, !dbg !937

if.end13:                                         ; preds = %if.end4
  br label %sw.epilog, !dbg !939

sw.default:                                       ; preds = %entry
  %14 = load ptr, ptr %walk_state.addr, align 8, !dbg !940
  %opcode14 = getelementptr inbounds %struct.acpi_walk_state, ptr %14, i32 0, i32 3, !dbg !940
  %15 = load i16, ptr %opcode14, align 2, !dbg !940
  %conv15 = zext i16 %15 to i32, !dbg !940
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 166, ptr noundef @.str.1, i32 noundef %conv15) #6, !dbg !940
  store i32 12289, ptr %status, align 4, !dbg !941
  br label %cleanup, !dbg !942

sw.epilog:                                        ; preds = %if.end13
  %16 = load ptr, ptr %return_desc2, align 8, !dbg !943
  %17 = load ptr, ptr %operand, align 8, !dbg !944
  %arrayidx16 = getelementptr ptr, ptr %17, i64 2, !dbg !944
  %18 = load ptr, ptr %arrayidx16, align 8, !dbg !944
  %19 = load ptr, ptr %walk_state.addr, align 8, !dbg !945
  %call17 = call i32 @acpi_ex_store(ptr noundef %16, ptr noundef %18, ptr noundef %19) #6, !dbg !946
  store i32 %call17, ptr %status, align 4, !dbg !947
  %20 = load i32, ptr %status, align 4, !dbg !948
  %tobool18 = icmp ne i32 %20, 0, !dbg !948
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !950

if.then19:                                        ; preds = %sw.epilog
  br label %cleanup, !dbg !951

if.end20:                                         ; preds = %sw.epilog
  %21 = load ptr, ptr %return_desc1, align 8, !dbg !953
  %22 = load ptr, ptr %operand, align 8, !dbg !954
  %arrayidx21 = getelementptr ptr, ptr %22, i64 3, !dbg !954
  %23 = load ptr, ptr %arrayidx21, align 8, !dbg !954
  %24 = load ptr, ptr %walk_state.addr, align 8, !dbg !955
  %call22 = call i32 @acpi_ex_store(ptr noundef %21, ptr noundef %23, ptr noundef %24) #6, !dbg !956
  store i32 %call22, ptr %status, align 4, !dbg !957
  %25 = load i32, ptr %status, align 4, !dbg !958
  %tobool23 = icmp ne i32 %25, 0, !dbg !958
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !960

if.then24:                                        ; preds = %if.end20
  br label %cleanup, !dbg !961

if.end25:                                         ; preds = %if.end20
  br label %cleanup, !dbg !958

cleanup:                                          ; preds = %if.end25, %if.then24, %if.then19, %sw.default, %if.then12, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !892), !dbg !963
  %26 = load ptr, ptr %return_desc2, align 8, !dbg !964
  call void @acpi_ut_remove_reference(ptr noundef %26) #6, !dbg !965
  %27 = load i32, ptr %status, align 4, !dbg !966
  %tobool26 = icmp ne i32 %27, 0, !dbg !966
  br i1 %tobool26, label %if.then27, label %if.else, !dbg !968

if.then27:                                        ; preds = %cleanup
  %28 = load ptr, ptr %return_desc1, align 8, !dbg !969
  call void @acpi_ut_remove_reference(ptr noundef %28) #6, !dbg !971
  br label %if.end28, !dbg !972

if.else:                                          ; preds = %cleanup
  %29 = load ptr, ptr %return_desc1, align 8, !dbg !973
  %30 = load ptr, ptr %walk_state.addr, align 8, !dbg !975
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, ptr %30, i32 0, i32 43, !dbg !976
  store ptr %29, ptr %result_obj, align 8, !dbg !977
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then27
  %31 = load i32, ptr %status, align 4, !dbg !978
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !979
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_desc2) #5, !dbg !979
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_desc1) #5, !dbg !979
  call void @llvm.lifetime.end.p0(i64 8, ptr %operand) #5, !dbg !979
  ret i32 %31, !dbg !978
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !980 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !983 dso_local i32 @acpi_ut_divide(i64 noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !986 dso_local i32 @acpi_ex_store(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !990 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_opcode_2A_1T_1R(ptr noundef %walk_state) #0 align 16 !dbg !993 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %operand = alloca ptr, align 8
  %return_desc = alloca ptr, align 8
  %index = alloca i64, align 8
  %status = alloca i32, align 4
  %length = alloca i64, align 8
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !995, metadata !DIExpression()), !dbg !1004
  call void @llvm.lifetime.start.p0(i64 8, ptr %operand) #5, !dbg !1005
  call void @llvm.dbg.declare(metadata ptr %operand, metadata !996, metadata !DIExpression()), !dbg !1006
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1007
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 28, !dbg !1008
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !1007
  store ptr %arrayidx, ptr %operand, align 8, !dbg !1006
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_desc) #5, !dbg !1009
  call void @llvm.dbg.declare(metadata ptr %return_desc, metadata !997, metadata !DIExpression()), !dbg !1010
  store ptr null, ptr %return_desc, align 8, !dbg !1010
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #5, !dbg !1011
  call void @llvm.dbg.declare(metadata ptr %index, metadata !998, metadata !DIExpression()), !dbg !1012
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1013
  call void @llvm.dbg.declare(metadata ptr %status, metadata !999, metadata !DIExpression()), !dbg !1014
  store i32 0, ptr %status, align 4, !dbg !1014
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #5, !dbg !1015
  call void @llvm.dbg.declare(metadata ptr %length, metadata !1000, metadata !DIExpression()), !dbg !1016
  store i64 0, ptr %length, align 8, !dbg !1016
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !1017
  %op_info = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 41, !dbg !1019
  %2 = load ptr, ptr %op_info, align 8, !dbg !1019
  %flags = getelementptr inbounds %struct.acpi_opcode_info, ptr %2, i32 0, i32 2, !dbg !1020
  %3 = load i16, ptr %flags, align 4, !dbg !1020
  %conv = zext i16 %3 to i32, !dbg !1017
  %and = and i32 %conv, 4, !dbg !1021
  %tobool = icmp ne i32 %and, 0, !dbg !1021
  br i1 %tobool, label %if.then, label %if.end8, !dbg !1022

if.then:                                          ; preds = %entry
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 238, i32 noundef 128, i32 noundef 1) #6, !dbg !1023
  store ptr %call, ptr %return_desc, align 8, !dbg !1025
  %4 = load ptr, ptr %return_desc, align 8, !dbg !1026
  %tobool1 = icmp ne ptr %4, null, !dbg !1026
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !1028

if.then2:                                         ; preds = %if.then
  store i32 4, ptr %status, align 4, !dbg !1029
  br label %cleanup, !dbg !1031

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !1032
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %5, i32 0, i32 3, !dbg !1033
  %6 = load i16, ptr %opcode, align 2, !dbg !1033
  %7 = load ptr, ptr %operand, align 8, !dbg !1034
  %arrayidx3 = getelementptr ptr, ptr %7, i64 0, !dbg !1034
  %8 = load ptr, ptr %arrayidx3, align 8, !dbg !1034
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %8, i32 0, i32 6, !dbg !1035
  %9 = load i64, ptr %value, align 8, !dbg !1035
  %10 = load ptr, ptr %operand, align 8, !dbg !1036
  %arrayidx4 = getelementptr ptr, ptr %10, i64 1, !dbg !1036
  %11 = load ptr, ptr %arrayidx4, align 8, !dbg !1036
  %value5 = getelementptr inbounds %struct.acpi_object_integer, ptr %11, i32 0, i32 6, !dbg !1037
  %12 = load i64, ptr %value5, align 8, !dbg !1037
  %call6 = call i64 @acpi_ex_do_math_op(i16 noundef zeroext %6, i64 noundef %9, i64 noundef %12) #6, !dbg !1038
  %13 = load ptr, ptr %return_desc, align 8, !dbg !1039
  %value7 = getelementptr inbounds %struct.acpi_object_integer, ptr %13, i32 0, i32 6, !dbg !1040
  store i64 %call6, ptr %value7, align 8, !dbg !1041
  br label %store_result_to_target, !dbg !1042

if.end8:                                          ; preds = %entry
  %14 = load ptr, ptr %walk_state.addr, align 8, !dbg !1043
  %opcode9 = getelementptr inbounds %struct.acpi_walk_state, ptr %14, i32 0, i32 3, !dbg !1044
  %15 = load i16, ptr %opcode9, align 2, !dbg !1044
  %conv10 = zext i16 %15 to i32, !dbg !1043
  switch i32 %conv10, label %sw.default116 [
    i32 133, label %sw.bb
    i32 115, label %sw.bb21
    i32 156, label %sw.bb25
    i32 132, label %sw.bb45
    i32 136, label %sw.bb49
  ], !dbg !1045

sw.bb:                                            ; preds = %if.end8
  %call11 = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 254, i32 noundef 128, i32 noundef 1) #6, !dbg !1046
  store ptr %call11, ptr %return_desc, align 8, !dbg !1048
  %16 = load ptr, ptr %return_desc, align 8, !dbg !1049
  %tobool12 = icmp ne ptr %16, null, !dbg !1049
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !1051

if.then13:                                        ; preds = %sw.bb
  store i32 4, ptr %status, align 4, !dbg !1052
  br label %cleanup, !dbg !1054

if.end14:                                         ; preds = %sw.bb
  %17 = load ptr, ptr %operand, align 8, !dbg !1055
  %arrayidx15 = getelementptr ptr, ptr %17, i64 0, !dbg !1055
  %18 = load ptr, ptr %arrayidx15, align 8, !dbg !1055
  %value16 = getelementptr inbounds %struct.acpi_object_integer, ptr %18, i32 0, i32 6, !dbg !1056
  %19 = load i64, ptr %value16, align 8, !dbg !1056
  %20 = load ptr, ptr %operand, align 8, !dbg !1057
  %arrayidx17 = getelementptr ptr, ptr %20, i64 1, !dbg !1057
  %21 = load ptr, ptr %arrayidx17, align 8, !dbg !1057
  %value18 = getelementptr inbounds %struct.acpi_object_integer, ptr %21, i32 0, i32 6, !dbg !1058
  %22 = load i64, ptr %value18, align 8, !dbg !1058
  %23 = load ptr, ptr %return_desc, align 8, !dbg !1059
  %value19 = getelementptr inbounds %struct.acpi_object_integer, ptr %23, i32 0, i32 6, !dbg !1060
  %call20 = call i32 @acpi_ut_divide(i64 noundef %19, i64 noundef %22, ptr noundef null, ptr noundef %value19) #6, !dbg !1061
  store i32 %call20, ptr %status, align 4, !dbg !1062
  br label %sw.epilog119, !dbg !1063

sw.bb21:                                          ; preds = %if.end8
  %24 = load ptr, ptr %operand, align 8, !dbg !1064
  %arrayidx22 = getelementptr ptr, ptr %24, i64 0, !dbg !1064
  %25 = load ptr, ptr %arrayidx22, align 8, !dbg !1064
  %26 = load ptr, ptr %operand, align 8, !dbg !1065
  %arrayidx23 = getelementptr ptr, ptr %26, i64 1, !dbg !1065
  %27 = load ptr, ptr %arrayidx23, align 8, !dbg !1065
  %28 = load ptr, ptr %walk_state.addr, align 8, !dbg !1066
  %call24 = call i32 @acpi_ex_do_concatenate(ptr noundef %25, ptr noundef %27, ptr noundef %return_desc, ptr noundef %28) #6, !dbg !1067
  store i32 %call24, ptr %status, align 4, !dbg !1068
  br label %sw.epilog119, !dbg !1069

sw.bb25:                                          ; preds = %if.end8
  br label %while.cond, !dbg !1070

while.cond:                                       ; preds = %while.body, %sw.bb25
  %29 = load i64, ptr %length, align 8, !dbg !1071
  %30 = load ptr, ptr %operand, align 8, !dbg !1072
  %arrayidx26 = getelementptr ptr, ptr %30, i64 0, !dbg !1072
  %31 = load ptr, ptr %arrayidx26, align 8, !dbg !1072
  %length27 = getelementptr inbounds %struct.acpi_object_buffer, ptr %31, i32 0, i32 6, !dbg !1073
  %32 = load i32, ptr %length27, align 8, !dbg !1073
  %conv28 = zext i32 %32 to i64, !dbg !1072
  %cmp = icmp ult i64 %29, %conv28, !dbg !1074
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !1075

land.lhs.true:                                    ; preds = %while.cond
  %33 = load i64, ptr %length, align 8, !dbg !1076
  %34 = load ptr, ptr %operand, align 8, !dbg !1077
  %arrayidx30 = getelementptr ptr, ptr %34, i64 1, !dbg !1077
  %35 = load ptr, ptr %arrayidx30, align 8, !dbg !1077
  %value31 = getelementptr inbounds %struct.acpi_object_integer, ptr %35, i32 0, i32 6, !dbg !1078
  %36 = load i64, ptr %value31, align 8, !dbg !1078
  %cmp32 = icmp ult i64 %33, %36, !dbg !1079
  br i1 %cmp32, label %land.rhs, label %land.end, !dbg !1080

land.rhs:                                         ; preds = %land.lhs.true
  %37 = load ptr, ptr %operand, align 8, !dbg !1081
  %arrayidx34 = getelementptr ptr, ptr %37, i64 0, !dbg !1081
  %38 = load ptr, ptr %arrayidx34, align 8, !dbg !1081
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %38, i32 0, i32 5, !dbg !1082
  %39 = load ptr, ptr %pointer, align 8, !dbg !1082
  %40 = load i64, ptr %length, align 8, !dbg !1083
  %arrayidx35 = getelementptr i8, ptr %39, i64 %40, !dbg !1081
  %41 = load i8, ptr %arrayidx35, align 1, !dbg !1081
  %conv36 = zext i8 %41 to i32, !dbg !1084
  %tobool37 = icmp ne i32 %conv36, 0, !dbg !1080
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %42 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool37, %land.rhs ], !dbg !1085
  br i1 %42, label %while.body, label %while.end, !dbg !1070

while.body:                                       ; preds = %land.end
  %43 = load i64, ptr %length, align 8, !dbg !1086
  %inc = add i64 %43, 1, !dbg !1086
  store i64 %inc, ptr %length, align 8, !dbg !1086
  br label %while.cond, !dbg !1070, !llvm.loop !1088

while.end:                                        ; preds = %land.end
  %44 = load i64, ptr %length, align 8, !dbg !1092
  %call38 = call ptr @acpi_ut_create_string_object(i64 noundef %44) #6, !dbg !1093
  store ptr %call38, ptr %return_desc, align 8, !dbg !1094
  %45 = load ptr, ptr %return_desc, align 8, !dbg !1095
  %tobool39 = icmp ne ptr %45, null, !dbg !1095
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !1097

if.then40:                                        ; preds = %while.end
  store i32 4, ptr %status, align 4, !dbg !1098
  br label %cleanup, !dbg !1100

if.end41:                                         ; preds = %while.end
  %46 = load ptr, ptr %return_desc, align 8, !dbg !1101
  %pointer42 = getelementptr inbounds %struct.acpi_object_string, ptr %46, i32 0, i32 5, !dbg !1102
  %47 = load ptr, ptr %pointer42, align 8, !dbg !1102
  %48 = load ptr, ptr %operand, align 8, !dbg !1103
  %arrayidx43 = getelementptr ptr, ptr %48, i64 0, !dbg !1103
  %49 = load ptr, ptr %arrayidx43, align 8, !dbg !1103
  %pointer44 = getelementptr inbounds %struct.acpi_object_buffer, ptr %49, i32 0, i32 5, !dbg !1104
  %50 = load ptr, ptr %pointer44, align 8, !dbg !1104
  %51 = load i64, ptr %length, align 8, !dbg !1105
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %47, ptr align 1 %50, i64 %51, i1 false), !dbg !1106
  br label %sw.epilog119, !dbg !1107

sw.bb45:                                          ; preds = %if.end8
  %52 = load ptr, ptr %operand, align 8, !dbg !1108
  %arrayidx46 = getelementptr ptr, ptr %52, i64 0, !dbg !1108
  %53 = load ptr, ptr %arrayidx46, align 8, !dbg !1108
  %54 = load ptr, ptr %operand, align 8, !dbg !1109
  %arrayidx47 = getelementptr ptr, ptr %54, i64 1, !dbg !1109
  %55 = load ptr, ptr %arrayidx47, align 8, !dbg !1109
  %56 = load ptr, ptr %walk_state.addr, align 8, !dbg !1110
  %call48 = call i32 @acpi_ex_concat_template(ptr noundef %53, ptr noundef %55, ptr noundef %return_desc, ptr noundef %56) #6, !dbg !1111
  store i32 %call48, ptr %status, align 4, !dbg !1112
  br label %sw.epilog119, !dbg !1113

sw.bb49:                                          ; preds = %if.end8
  %call50 = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 326, i32 noundef 128, i32 noundef 20) #6, !dbg !1114
  store ptr %call50, ptr %return_desc, align 8, !dbg !1115
  %57 = load ptr, ptr %return_desc, align 8, !dbg !1116
  %tobool51 = icmp ne ptr %57, null, !dbg !1116
  br i1 %tobool51, label %if.end53, label %if.then52, !dbg !1118

if.then52:                                        ; preds = %sw.bb49
  store i32 4, ptr %status, align 4, !dbg !1119
  br label %cleanup, !dbg !1121

if.end53:                                         ; preds = %sw.bb49
  %58 = load ptr, ptr %operand, align 8, !dbg !1122
  %arrayidx54 = getelementptr ptr, ptr %58, i64 1, !dbg !1122
  %59 = load ptr, ptr %arrayidx54, align 8, !dbg !1122
  %value55 = getelementptr inbounds %struct.acpi_object_integer, ptr %59, i32 0, i32 6, !dbg !1123
  %60 = load i64, ptr %value55, align 8, !dbg !1123
  store i64 %60, ptr %index, align 8, !dbg !1124
  %61 = load i64, ptr %index, align 8, !dbg !1125
  %conv56 = trunc i64 %61 to i32, !dbg !1126
  %62 = load ptr, ptr %return_desc, align 8, !dbg !1127
  %value57 = getelementptr inbounds %struct.acpi_object_reference, ptr %62, i32 0, i32 13, !dbg !1128
  store i32 %conv56, ptr %value57, align 8, !dbg !1129
  %63 = load ptr, ptr %return_desc, align 8, !dbg !1130
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %63, i32 0, i32 5, !dbg !1131
  store i8 3, ptr %class, align 1, !dbg !1132
  %64 = load ptr, ptr %operand, align 8, !dbg !1133
  %arrayidx58 = getelementptr ptr, ptr %64, i64 0, !dbg !1133
  %65 = load ptr, ptr %arrayidx58, align 8, !dbg !1133
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %65, i32 0, i32 2, !dbg !1134
  %66 = load i8, ptr %type, align 1, !dbg !1134
  %conv59 = zext i8 %66 to i32, !dbg !1135
  switch i32 %conv59, label %sw.default [
    i32 2, label %sw.bb60
    i32 3, label %sw.bb74
    i32 4, label %sw.bb90
  ], !dbg !1136

sw.bb60:                                          ; preds = %if.end53
  %67 = load i64, ptr %index, align 8, !dbg !1137
  %68 = load ptr, ptr %operand, align 8, !dbg !1140
  %arrayidx61 = getelementptr ptr, ptr %68, i64 0, !dbg !1140
  %69 = load ptr, ptr %arrayidx61, align 8, !dbg !1140
  %length62 = getelementptr inbounds %struct.acpi_object_string, ptr %69, i32 0, i32 6, !dbg !1141
  %70 = load i32, ptr %length62, align 8, !dbg !1141
  %conv63 = zext i32 %70 to i64, !dbg !1140
  %cmp64 = icmp uge i64 %67, %conv63, !dbg !1142
  br i1 %cmp64, label %if.then66, label %if.end70, !dbg !1143

if.then66:                                        ; preds = %sw.bb60
  %71 = load ptr, ptr %operand, align 8, !dbg !1144
  %arrayidx67 = getelementptr ptr, ptr %71, i64 0, !dbg !1144
  %72 = load ptr, ptr %arrayidx67, align 8, !dbg !1144
  %length68 = getelementptr inbounds %struct.acpi_object_string, ptr %72, i32 0, i32 6, !dbg !1146
  %73 = load i32, ptr %length68, align 8, !dbg !1146
  %conv69 = zext i32 %73 to i64, !dbg !1144
  store i64 %conv69, ptr %length, align 8, !dbg !1147
  store i32 12305, ptr %status, align 4, !dbg !1148
  br label %if.end70, !dbg !1149

if.end70:                                         ; preds = %if.then66, %sw.bb60
  %74 = load ptr, ptr %return_desc, align 8, !dbg !1150
  %target_type = getelementptr inbounds %struct.acpi_object_reference, ptr %74, i32 0, i32 6, !dbg !1151
  store i8 14, ptr %target_type, align 2, !dbg !1152
  %75 = load ptr, ptr %operand, align 8, !dbg !1153
  %arrayidx71 = getelementptr ptr, ptr %75, i64 0, !dbg !1153
  %76 = load ptr, ptr %arrayidx71, align 8, !dbg !1153
  %pointer72 = getelementptr inbounds %struct.acpi_object_buffer, ptr %76, i32 0, i32 5, !dbg !1154
  %77 = load ptr, ptr %pointer72, align 8, !dbg !1154
  %78 = load i64, ptr %index, align 8, !dbg !1155
  %arrayidx73 = getelementptr i8, ptr %77, i64 %78, !dbg !1153
  %79 = load ptr, ptr %return_desc, align 8, !dbg !1156
  %index_pointer = getelementptr inbounds %struct.acpi_object_reference, ptr %79, i32 0, i32 11, !dbg !1157
  store ptr %arrayidx73, ptr %index_pointer, align 8, !dbg !1158
  br label %sw.epilog, !dbg !1159

sw.bb74:                                          ; preds = %if.end53
  %80 = load i64, ptr %index, align 8, !dbg !1160
  %81 = load ptr, ptr %operand, align 8, !dbg !1162
  %arrayidx75 = getelementptr ptr, ptr %81, i64 0, !dbg !1162
  %82 = load ptr, ptr %arrayidx75, align 8, !dbg !1162
  %length76 = getelementptr inbounds %struct.acpi_object_buffer, ptr %82, i32 0, i32 6, !dbg !1163
  %83 = load i32, ptr %length76, align 8, !dbg !1163
  %conv77 = zext i32 %83 to i64, !dbg !1162
  %cmp78 = icmp uge i64 %80, %conv77, !dbg !1164
  br i1 %cmp78, label %if.then80, label %if.end84, !dbg !1165

if.then80:                                        ; preds = %sw.bb74
  %84 = load ptr, ptr %operand, align 8, !dbg !1166
  %arrayidx81 = getelementptr ptr, ptr %84, i64 0, !dbg !1166
  %85 = load ptr, ptr %arrayidx81, align 8, !dbg !1166
  %length82 = getelementptr inbounds %struct.acpi_object_buffer, ptr %85, i32 0, i32 6, !dbg !1168
  %86 = load i32, ptr %length82, align 8, !dbg !1168
  %conv83 = zext i32 %86 to i64, !dbg !1166
  store i64 %conv83, ptr %length, align 8, !dbg !1169
  store i32 12298, ptr %status, align 4, !dbg !1170
  br label %if.end84, !dbg !1171

if.end84:                                         ; preds = %if.then80, %sw.bb74
  %87 = load ptr, ptr %return_desc, align 8, !dbg !1172
  %target_type85 = getelementptr inbounds %struct.acpi_object_reference, ptr %87, i32 0, i32 6, !dbg !1173
  store i8 14, ptr %target_type85, align 2, !dbg !1174
  %88 = load ptr, ptr %operand, align 8, !dbg !1175
  %arrayidx86 = getelementptr ptr, ptr %88, i64 0, !dbg !1175
  %89 = load ptr, ptr %arrayidx86, align 8, !dbg !1175
  %pointer87 = getelementptr inbounds %struct.acpi_object_buffer, ptr %89, i32 0, i32 5, !dbg !1176
  %90 = load ptr, ptr %pointer87, align 8, !dbg !1176
  %91 = load i64, ptr %index, align 8, !dbg !1177
  %arrayidx88 = getelementptr i8, ptr %90, i64 %91, !dbg !1175
  %92 = load ptr, ptr %return_desc, align 8, !dbg !1178
  %index_pointer89 = getelementptr inbounds %struct.acpi_object_reference, ptr %92, i32 0, i32 11, !dbg !1179
  store ptr %arrayidx88, ptr %index_pointer89, align 8, !dbg !1180
  br label %sw.epilog, !dbg !1181

sw.bb90:                                          ; preds = %if.end53
  %93 = load i64, ptr %index, align 8, !dbg !1182
  %94 = load ptr, ptr %operand, align 8, !dbg !1184
  %arrayidx91 = getelementptr ptr, ptr %94, i64 0, !dbg !1184
  %95 = load ptr, ptr %arrayidx91, align 8, !dbg !1184
  %count = getelementptr inbounds %struct.acpi_object_package, ptr %95, i32 0, i32 9, !dbg !1185
  %96 = load i32, ptr %count, align 4, !dbg !1185
  %conv92 = zext i32 %96 to i64, !dbg !1184
  %cmp93 = icmp uge i64 %93, %conv92, !dbg !1186
  br i1 %cmp93, label %if.then95, label %if.end99, !dbg !1187

if.then95:                                        ; preds = %sw.bb90
  %97 = load ptr, ptr %operand, align 8, !dbg !1188
  %arrayidx96 = getelementptr ptr, ptr %97, i64 0, !dbg !1188
  %98 = load ptr, ptr %arrayidx96, align 8, !dbg !1188
  %count97 = getelementptr inbounds %struct.acpi_object_package, ptr %98, i32 0, i32 9, !dbg !1190
  %99 = load i32, ptr %count97, align 4, !dbg !1190
  %conv98 = zext i32 %99 to i64, !dbg !1188
  store i64 %conv98, ptr %length, align 8, !dbg !1191
  store i32 12299, ptr %status, align 4, !dbg !1192
  br label %if.end99, !dbg !1193

if.end99:                                         ; preds = %if.then95, %sw.bb90
  %100 = load ptr, ptr %return_desc, align 8, !dbg !1194
  %target_type100 = getelementptr inbounds %struct.acpi_object_reference, ptr %100, i32 0, i32 6, !dbg !1195
  store i8 4, ptr %target_type100, align 2, !dbg !1196
  %101 = load ptr, ptr %operand, align 8, !dbg !1197
  %arrayidx101 = getelementptr ptr, ptr %101, i64 0, !dbg !1197
  %102 = load ptr, ptr %arrayidx101, align 8, !dbg !1197
  %elements = getelementptr inbounds %struct.acpi_object_package, ptr %102, i32 0, i32 6, !dbg !1198
  %103 = load ptr, ptr %elements, align 8, !dbg !1198
  %104 = load i64, ptr %index, align 8, !dbg !1199
  %arrayidx102 = getelementptr ptr, ptr %103, i64 %104, !dbg !1197
  %105 = load ptr, ptr %return_desc, align 8, !dbg !1200
  %where = getelementptr inbounds %struct.acpi_object_reference, ptr %105, i32 0, i32 10, !dbg !1201
  store ptr %arrayidx102, ptr %where, align 8, !dbg !1202
  br label %sw.epilog, !dbg !1203

sw.default:                                       ; preds = %if.end53
  %106 = load ptr, ptr %operand, align 8, !dbg !1204
  %arrayidx103 = getelementptr ptr, ptr %106, i64 0, !dbg !1204
  %107 = load ptr, ptr %arrayidx103, align 8, !dbg !1204
  %type104 = getelementptr inbounds %struct.acpi_object_common, ptr %107, i32 0, i32 2, !dbg !1204
  %108 = load i8, ptr %type104, align 1, !dbg !1204
  %conv105 = zext i8 %108 to i32, !dbg !1204
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 383, ptr noundef @.str.2, i32 noundef %conv105) #6, !dbg !1204
  store i32 12303, ptr %status, align 4, !dbg !1205
  br label %cleanup, !dbg !1206

sw.epilog:                                        ; preds = %if.end99, %if.end84, %if.end70
  %109 = load i32, ptr %status, align 4, !dbg !1207
  %tobool106 = icmp ne i32 %109, 0, !dbg !1207
  br i1 %tobool106, label %if.then107, label %if.end111, !dbg !1209

if.then107:                                       ; preds = %sw.epilog
  %110 = load i32, ptr %status, align 4, !dbg !1210
  %111 = load i64, ptr %index, align 8, !dbg !1210
  %shr = lshr i64 %111, 32, !dbg !1210
  %conv108 = trunc i64 %shr to i32, !dbg !1210
  %112 = load i64, ptr %index, align 8, !dbg !1210
  %conv109 = trunc i64 %112 to i32, !dbg !1210
  %113 = load i64, ptr %length, align 8, !dbg !1210
  %conv110 = trunc i64 %113 to i32, !dbg !1210
  call void (ptr, i32, i32, ptr, ...) @acpi_bios_exception(ptr noundef @_acpi_module_name, i32 noundef 393, i32 noundef %110, ptr noundef @.str.3, i32 noundef %conv108, i32 noundef %conv109, i32 noundef %conv110) #6, !dbg !1210
  br label %cleanup, !dbg !1212

if.end111:                                        ; preds = %sw.epilog
  %114 = load ptr, ptr %operand, align 8, !dbg !1213
  %arrayidx112 = getelementptr ptr, ptr %114, i64 0, !dbg !1213
  %115 = load ptr, ptr %arrayidx112, align 8, !dbg !1213
  %116 = load ptr, ptr %return_desc, align 8, !dbg !1214
  %object = getelementptr inbounds %struct.acpi_object_reference, ptr %116, i32 0, i32 8, !dbg !1215
  store ptr %115, ptr %object, align 8, !dbg !1216
  %117 = load ptr, ptr %operand, align 8, !dbg !1217
  %arrayidx113 = getelementptr ptr, ptr %117, i64 0, !dbg !1217
  %118 = load ptr, ptr %arrayidx113, align 8, !dbg !1217
  call void @acpi_ut_add_reference(ptr noundef %118) #6, !dbg !1218
  %119 = load ptr, ptr %return_desc, align 8, !dbg !1219
  %120 = load ptr, ptr %operand, align 8, !dbg !1220
  %arrayidx114 = getelementptr ptr, ptr %120, i64 2, !dbg !1220
  %121 = load ptr, ptr %arrayidx114, align 8, !dbg !1220
  %122 = load ptr, ptr %walk_state.addr, align 8, !dbg !1221
  %call115 = call i32 @acpi_ex_store(ptr noundef %119, ptr noundef %121, ptr noundef %122) #6, !dbg !1222
  store i32 %call115, ptr %status, align 4, !dbg !1223
  %123 = load ptr, ptr %return_desc, align 8, !dbg !1224
  %124 = load ptr, ptr %walk_state.addr, align 8, !dbg !1225
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, ptr %124, i32 0, i32 43, !dbg !1226
  store ptr %123, ptr %result_obj, align 8, !dbg !1227
  br label %cleanup, !dbg !1228

sw.default116:                                    ; preds = %if.end8
  %125 = load ptr, ptr %walk_state.addr, align 8, !dbg !1229
  %opcode117 = getelementptr inbounds %struct.acpi_walk_state, ptr %125, i32 0, i32 3, !dbg !1229
  %126 = load i16, ptr %opcode117, align 2, !dbg !1229
  %conv118 = zext i16 %126 to i32, !dbg !1229
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 418, ptr noundef @.str.1, i32 noundef %conv118) #6, !dbg !1229
  store i32 12289, ptr %status, align 4, !dbg !1230
  br label %sw.epilog119, !dbg !1231

sw.epilog119:                                     ; preds = %sw.default116, %sw.bb45, %if.end41, %sw.bb21, %if.end14
  br label %store_result_to_target, !dbg !1232

store_result_to_target:                           ; preds = %sw.epilog119, %if.end
  call void @llvm.dbg.label(metadata !1002), !dbg !1233
  %127 = load i32, ptr %status, align 4, !dbg !1234
  %tobool120 = icmp ne i32 %127, 0, !dbg !1234
  br i1 %tobool120, label %if.end132, label %if.then121, !dbg !1236

if.then121:                                       ; preds = %store_result_to_target
  %128 = load ptr, ptr %return_desc, align 8, !dbg !1237
  %129 = load ptr, ptr %operand, align 8, !dbg !1239
  %arrayidx122 = getelementptr ptr, ptr %129, i64 2, !dbg !1239
  %130 = load ptr, ptr %arrayidx122, align 8, !dbg !1239
  %131 = load ptr, ptr %walk_state.addr, align 8, !dbg !1240
  %call123 = call i32 @acpi_ex_store(ptr noundef %128, ptr noundef %130, ptr noundef %131) #6, !dbg !1241
  store i32 %call123, ptr %status, align 4, !dbg !1242
  %132 = load i32, ptr %status, align 4, !dbg !1243
  %tobool124 = icmp ne i32 %132, 0, !dbg !1243
  br i1 %tobool124, label %if.then125, label %if.end126, !dbg !1245

if.then125:                                       ; preds = %if.then121
  br label %cleanup, !dbg !1246

if.end126:                                        ; preds = %if.then121
  %133 = load ptr, ptr %walk_state.addr, align 8, !dbg !1248
  %result_obj127 = getelementptr inbounds %struct.acpi_walk_state, ptr %133, i32 0, i32 43, !dbg !1250
  %134 = load ptr, ptr %result_obj127, align 8, !dbg !1250
  %tobool128 = icmp ne ptr %134, null, !dbg !1248
  br i1 %tobool128, label %if.end131, label %if.then129, !dbg !1251

if.then129:                                       ; preds = %if.end126
  %135 = load ptr, ptr %return_desc, align 8, !dbg !1252
  %136 = load ptr, ptr %walk_state.addr, align 8, !dbg !1254
  %result_obj130 = getelementptr inbounds %struct.acpi_walk_state, ptr %136, i32 0, i32 43, !dbg !1255
  store ptr %135, ptr %result_obj130, align 8, !dbg !1256
  br label %if.end131, !dbg !1257

if.end131:                                        ; preds = %if.then129, %if.end126
  br label %if.end132, !dbg !1258

if.end132:                                        ; preds = %if.end131, %store_result_to_target
  br label %cleanup, !dbg !1234

cleanup:                                          ; preds = %if.end132, %if.then125, %if.end111, %if.then107, %sw.default, %if.then52, %if.then40, %if.then13, %if.then2
  call void @llvm.dbg.label(metadata !1003), !dbg !1259
  %137 = load i32, ptr %status, align 4, !dbg !1260
  %tobool133 = icmp ne i32 %137, 0, !dbg !1260
  br i1 %tobool133, label %if.then134, label %if.end136, !dbg !1262

if.then134:                                       ; preds = %cleanup
  %138 = load ptr, ptr %return_desc, align 8, !dbg !1263
  call void @acpi_ut_remove_reference(ptr noundef %138) #6, !dbg !1265
  %139 = load ptr, ptr %walk_state.addr, align 8, !dbg !1266
  %result_obj135 = getelementptr inbounds %struct.acpi_walk_state, ptr %139, i32 0, i32 43, !dbg !1267
  store ptr null, ptr %result_obj135, align 8, !dbg !1268
  br label %if.end136, !dbg !1269

if.end136:                                        ; preds = %if.then134, %cleanup
  %140 = load i32, ptr %status, align 4, !dbg !1270
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #5, !dbg !1271
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1271
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #5, !dbg !1271
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_desc) #5, !dbg !1271
  call void @llvm.lifetime.end.p0(i64 8, ptr %operand) #5, !dbg !1271
  ret i32 %140, !dbg !1270
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1272 dso_local i64 @acpi_ex_do_math_op(i16 noundef zeroext, i64 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1275 dso_local i32 @acpi_ex_do_concatenate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1278 dso_local ptr @acpi_ut_create_string_object(i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1281 dso_local i32 @acpi_ex_concat_template(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1282 dso_local void @acpi_bios_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1285 dso_local void @acpi_ut_add_reference(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_opcode_2A_0T_1R(ptr noundef %walk_state) #0 align 16 !dbg !1286 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %operand = alloca ptr, align 8
  %return_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %logical_result = alloca i8, align 1
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1288, metadata !DIExpression()), !dbg !1295
  call void @llvm.lifetime.start.p0(i64 8, ptr %operand) #5, !dbg !1296
  call void @llvm.dbg.declare(metadata ptr %operand, metadata !1289, metadata !DIExpression()), !dbg !1297
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1298
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 28, !dbg !1299
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !1298
  store ptr %arrayidx, ptr %operand, align 8, !dbg !1297
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_desc) #5, !dbg !1300
  call void @llvm.dbg.declare(metadata ptr %return_desc, metadata !1290, metadata !DIExpression()), !dbg !1301
  store ptr null, ptr %return_desc, align 8, !dbg !1301
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1302
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1291, metadata !DIExpression()), !dbg !1303
  store i32 0, ptr %status, align 4, !dbg !1303
  call void @llvm.lifetime.start.p0(i64 1, ptr %logical_result) #5, !dbg !1304
  call void @llvm.dbg.declare(metadata ptr %logical_result, metadata !1292, metadata !DIExpression()), !dbg !1305
  store i8 0, ptr %logical_result, align 1, !dbg !1305
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 477, i32 noundef 128, i32 noundef 1) #6, !dbg !1306
  store ptr %call, ptr %return_desc, align 8, !dbg !1307
  %1 = load ptr, ptr %return_desc, align 8, !dbg !1308
  %tobool = icmp ne ptr %1, null, !dbg !1308
  br i1 %tobool, label %if.end, label %if.then, !dbg !1310

if.then:                                          ; preds = %entry
  store i32 4, ptr %status, align 4, !dbg !1311
  br label %cleanup, !dbg !1313

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !1314
  %op_info = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 41, !dbg !1316
  %3 = load ptr, ptr %op_info, align 8, !dbg !1316
  %flags = getelementptr inbounds %struct.acpi_opcode_info, ptr %3, i32 0, i32 2, !dbg !1317
  %4 = load i16, ptr %flags, align 4, !dbg !1317
  %conv = zext i16 %4 to i32, !dbg !1314
  %and = and i32 %conv, 2, !dbg !1318
  %tobool1 = icmp ne i32 %and, 0, !dbg !1318
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !1319

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !1320
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %5, i32 0, i32 3, !dbg !1322
  %6 = load i16, ptr %opcode, align 2, !dbg !1322
  %7 = load ptr, ptr %operand, align 8, !dbg !1323
  %arrayidx3 = getelementptr ptr, ptr %7, i64 0, !dbg !1323
  %8 = load ptr, ptr %arrayidx3, align 8, !dbg !1323
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %8, i32 0, i32 6, !dbg !1324
  %9 = load i64, ptr %value, align 8, !dbg !1324
  %10 = load ptr, ptr %operand, align 8, !dbg !1325
  %arrayidx4 = getelementptr ptr, ptr %10, i64 1, !dbg !1325
  %11 = load ptr, ptr %arrayidx4, align 8, !dbg !1325
  %value5 = getelementptr inbounds %struct.acpi_object_integer, ptr %11, i32 0, i32 6, !dbg !1326
  %12 = load i64, ptr %value5, align 8, !dbg !1326
  %call6 = call i32 @acpi_ex_do_logical_numeric_op(i16 noundef zeroext %6, i64 noundef %9, i64 noundef %12, ptr noundef %logical_result) #6, !dbg !1327
  store i32 %call6, ptr %status, align 4, !dbg !1328
  br label %store_logical_result, !dbg !1329

if.else:                                          ; preds = %if.end
  %13 = load ptr, ptr %walk_state.addr, align 8, !dbg !1330
  %op_info7 = getelementptr inbounds %struct.acpi_walk_state, ptr %13, i32 0, i32 41, !dbg !1332
  %14 = load ptr, ptr %op_info7, align 8, !dbg !1332
  %flags8 = getelementptr inbounds %struct.acpi_opcode_info, ptr %14, i32 0, i32 2, !dbg !1333
  %15 = load i16, ptr %flags8, align 4, !dbg !1333
  %conv9 = zext i16 %15 to i32, !dbg !1330
  %and10 = and i32 %conv9, 1, !dbg !1334
  %tobool11 = icmp ne i32 %and10, 0, !dbg !1334
  br i1 %tobool11, label %if.then12, label %if.end17, !dbg !1335

if.then12:                                        ; preds = %if.else
  %16 = load ptr, ptr %walk_state.addr, align 8, !dbg !1336
  %opcode13 = getelementptr inbounds %struct.acpi_walk_state, ptr %16, i32 0, i32 3, !dbg !1338
  %17 = load i16, ptr %opcode13, align 2, !dbg !1338
  %18 = load ptr, ptr %operand, align 8, !dbg !1339
  %arrayidx14 = getelementptr ptr, ptr %18, i64 0, !dbg !1339
  %19 = load ptr, ptr %arrayidx14, align 8, !dbg !1339
  %20 = load ptr, ptr %operand, align 8, !dbg !1340
  %arrayidx15 = getelementptr ptr, ptr %20, i64 1, !dbg !1340
  %21 = load ptr, ptr %arrayidx15, align 8, !dbg !1340
  %call16 = call i32 @acpi_ex_do_logical_op(i16 noundef zeroext %17, ptr noundef %19, ptr noundef %21, ptr noundef %logical_result) #6, !dbg !1341
  store i32 %call16, ptr %status, align 4, !dbg !1342
  br label %store_logical_result, !dbg !1343

if.end17:                                         ; preds = %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  %22 = load ptr, ptr %walk_state.addr, align 8, !dbg !1344
  %opcode19 = getelementptr inbounds %struct.acpi_walk_state, ptr %22, i32 0, i32 3, !dbg !1345
  %23 = load i16, ptr %opcode19, align 2, !dbg !1345
  %conv20 = zext i16 %23 to i32, !dbg !1344
  switch i32 %conv20, label %sw.default [
    i32 23331, label %sw.bb
    i32 23333, label %sw.bb27
  ], !dbg !1346

sw.bb:                                            ; preds = %if.end18
  %24 = load ptr, ptr %operand, align 8, !dbg !1347
  %arrayidx21 = getelementptr ptr, ptr %24, i64 1, !dbg !1347
  %25 = load ptr, ptr %arrayidx21, align 8, !dbg !1347
  %26 = load ptr, ptr %operand, align 8, !dbg !1349
  %arrayidx22 = getelementptr ptr, ptr %26, i64 0, !dbg !1349
  %27 = load ptr, ptr %arrayidx22, align 8, !dbg !1349
  %28 = load ptr, ptr %walk_state.addr, align 8, !dbg !1350
  %call23 = call i32 @acpi_ex_acquire_mutex(ptr noundef %25, ptr noundef %27, ptr noundef %28) #6, !dbg !1351
  store i32 %call23, ptr %status, align 4, !dbg !1352
  %29 = load i32, ptr %status, align 4, !dbg !1353
  %cmp = icmp eq i32 %29, 17, !dbg !1355
  br i1 %cmp, label %if.then25, label %if.end26, !dbg !1356

if.then25:                                        ; preds = %sw.bb
  store i8 1, ptr %logical_result, align 1, !dbg !1357
  store i32 0, ptr %status, align 4, !dbg !1359
  br label %if.end26, !dbg !1360

if.end26:                                         ; preds = %if.then25, %sw.bb
  br label %sw.epilog, !dbg !1361

sw.bb27:                                          ; preds = %if.end18
  %30 = load ptr, ptr %operand, align 8, !dbg !1362
  %arrayidx28 = getelementptr ptr, ptr %30, i64 1, !dbg !1362
  %31 = load ptr, ptr %arrayidx28, align 8, !dbg !1362
  %32 = load ptr, ptr %operand, align 8, !dbg !1363
  %arrayidx29 = getelementptr ptr, ptr %32, i64 0, !dbg !1363
  %33 = load ptr, ptr %arrayidx29, align 8, !dbg !1363
  %call30 = call i32 @acpi_ex_system_wait_event(ptr noundef %31, ptr noundef %33) #6, !dbg !1364
  store i32 %call30, ptr %status, align 4, !dbg !1365
  %34 = load i32, ptr %status, align 4, !dbg !1366
  %cmp31 = icmp eq i32 %34, 17, !dbg !1368
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !1369

if.then33:                                        ; preds = %sw.bb27
  store i8 1, ptr %logical_result, align 1, !dbg !1370
  store i32 0, ptr %status, align 4, !dbg !1372
  br label %if.end34, !dbg !1373

if.end34:                                         ; preds = %if.then33, %sw.bb27
  br label %sw.epilog, !dbg !1374

sw.default:                                       ; preds = %if.end18
  %35 = load ptr, ptr %walk_state.addr, align 8, !dbg !1375
  %opcode35 = getelementptr inbounds %struct.acpi_walk_state, ptr %35, i32 0, i32 3, !dbg !1375
  %36 = load i16, ptr %opcode35, align 2, !dbg !1375
  %conv36 = zext i16 %36 to i32, !dbg !1375
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 526, ptr noundef @.str.1, i32 noundef %conv36) #6, !dbg !1375
  store i32 12289, ptr %status, align 4, !dbg !1376
  br label %cleanup, !dbg !1377

sw.epilog:                                        ; preds = %if.end34, %if.end26
  br label %store_logical_result, !dbg !1378

store_logical_result:                             ; preds = %sw.epilog, %if.then12, %if.then2
  call void @llvm.dbg.label(metadata !1293), !dbg !1379
  %37 = load i8, ptr %logical_result, align 1, !dbg !1380
  %tobool37 = icmp ne i8 %37, 0, !dbg !1380
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !1382

if.then38:                                        ; preds = %store_logical_result
  %38 = load ptr, ptr %return_desc, align 8, !dbg !1383
  %value39 = getelementptr inbounds %struct.acpi_object_integer, ptr %38, i32 0, i32 6, !dbg !1385
  store i64 -1, ptr %value39, align 8, !dbg !1386
  br label %if.end40, !dbg !1387

if.end40:                                         ; preds = %if.then38, %store_logical_result
  br label %cleanup, !dbg !1380

cleanup:                                          ; preds = %if.end40, %sw.default, %if.then
  call void @llvm.dbg.label(metadata !1294), !dbg !1388
  %39 = load i32, ptr %status, align 4, !dbg !1389
  %tobool41 = icmp ne i32 %39, 0, !dbg !1389
  br i1 %tobool41, label %if.then42, label %if.else43, !dbg !1391

if.then42:                                        ; preds = %cleanup
  %40 = load ptr, ptr %return_desc, align 8, !dbg !1392
  call void @acpi_ut_remove_reference(ptr noundef %40) #6, !dbg !1394
  br label %if.end44, !dbg !1395

if.else43:                                        ; preds = %cleanup
  %41 = load ptr, ptr %return_desc, align 8, !dbg !1396
  %42 = load ptr, ptr %walk_state.addr, align 8, !dbg !1398
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, ptr %42, i32 0, i32 43, !dbg !1399
  store ptr %41, ptr %result_obj, align 8, !dbg !1400
  br label %if.end44

if.end44:                                         ; preds = %if.else43, %if.then42
  %43 = load i32, ptr %status, align 4, !dbg !1401
  call void @llvm.lifetime.end.p0(i64 1, ptr %logical_result) #5, !dbg !1402
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1402
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_desc) #5, !dbg !1402
  call void @llvm.lifetime.end.p0(i64 8, ptr %operand) #5, !dbg !1402
  ret i32 %43, !dbg !1401
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1403 dso_local i32 @acpi_ex_do_logical_numeric_op(i16 noundef zeroext, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1406 dso_local i32 @acpi_ex_do_logical_op(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1409 dso_local i32 @acpi_ex_acquire_mutex(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1410 dso_local i32 @acpi_ex_system_wait_event(ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!813, !814, !815, !816, !817, !818, !819, !820}
!llvm.ident = !{!821}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !811, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exoparg2.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exoparg2\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exoparg2.ll drivers/acpi/acpica/exoparg2.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !793, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exoparg2.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a35492bd4e41e2720f1a7f4c851b76b4")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 323, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "ACPI_REFCLASS_LOCAL", value: 0)
!10 = !DIEnumerator(name: "ACPI_REFCLASS_ARG", value: 1)
!11 = !DIEnumerator(name: "ACPI_REFCLASS_REFOF", value: 2)
!12 = !DIEnumerator(name: "ACPI_REFCLASS_INDEX", value: 3)
!13 = !DIEnumerator(name: "ACPI_REFCLASS_TABLE", value: 4)
!14 = !DIEnumerator(name: "ACPI_REFCLASS_NAME", value: 5)
!15 = !DIEnumerator(name: "ACPI_REFCLASS_DEBUG", value: 6)
!16 = !DIEnumerator(name: "ACPI_REFCLASS_MAX", value: 6)
!17 = !{!18, !24, !20, !59}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !19, line: 421, baseType: !20)
!19 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !7)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !26, line: 133, size: 384, elements: !27)
!26 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!27 = !{!28, !780, !781, !782, !783, !789, !790, !791, !792}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !25, file: !26, line: 134, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 369, size: 576, elements: !31)
!31 = !{!32, !46, !62, !74, !88, !102, !112, !429, !446, !462, !475, !553, !565, !579, !589, !607, !629, !648, !667, !686, !699, !726, !743, !756, !770, !779}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !30, file: !6, line: 370, baseType: !33, size: 128)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !34)
!34 = !{!35, !36, !40, !41, !45}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !33, file: !6, line: 74, baseType: !29, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !33, file: !6, line: 74, baseType: !37, size: 8, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !39)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !33, file: !6, line: 74, baseType: !37, size: 8, offset: 72)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !33, file: !6, line: 74, baseType: !42, size: 16, offset: 80)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !21, line: 19, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !44)
!44 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !33, file: !6, line: 74, baseType: !37, size: 8, offset: 96)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !30, file: !6, line: 371, baseType: !47, size: 192)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !48)
!48 = !{!49, !50, !51, !52, !53, !54, !58}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !47, file: !6, line: 77, baseType: !29, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !47, file: !6, line: 77, baseType: !37, size: 8, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !47, file: !6, line: 77, baseType: !37, size: 8, offset: 72)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !47, file: !6, line: 77, baseType: !42, size: 16, offset: 80)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !47, file: !6, line: 77, baseType: !37, size: 8, offset: 96)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !47, file: !6, line: 77, baseType: !55, size: 24, offset: 104)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 24, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 3)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !47, file: !6, line: 78, baseType: !59, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !61)
!61 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !30, file: !6, line: 372, baseType: !63, size: 256)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !64)
!64 = !{!65, !66, !67, !68, !69, !70, !73}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !63, file: !6, line: 94, baseType: !29, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !63, file: !6, line: 94, baseType: !37, size: 8, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !63, file: !6, line: 94, baseType: !37, size: 8, offset: 72)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !63, file: !6, line: 94, baseType: !42, size: 16, offset: 80)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !63, file: !6, line: 94, baseType: !37, size: 8, offset: 96)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !63, file: !6, line: 94, baseType: !71, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !63, file: !6, line: 94, baseType: !20, size: 32, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !30, file: !6, line: 373, baseType: !75, size: 384)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !84, !85, !86, !87}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !75, file: !6, line: 98, baseType: !29, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !75, file: !6, line: 98, baseType: !37, size: 8, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !6, line: 98, baseType: !37, size: 8, offset: 72)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !75, file: !6, line: 98, baseType: !42, size: 16, offset: 80)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !6, line: 98, baseType: !37, size: 8, offset: 96)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !75, file: !6, line: 98, baseType: !83, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !75, file: !6, line: 98, baseType: !20, size: 32, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !75, file: !6, line: 99, baseType: !20, size: 32, offset: 224)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !75, file: !6, line: 100, baseType: !83, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !75, file: !6, line: 101, baseType: !24, size: 64, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !30, file: !6, line: 374, baseType: !89, size: 384)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !90)
!90 = !{!91, !92, !93, !94, !95, !96, !97, !99, !100, !101}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !89, file: !6, line: 105, baseType: !29, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !89, file: !6, line: 105, baseType: !37, size: 8, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !6, line: 105, baseType: !37, size: 8, offset: 72)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !89, file: !6, line: 105, baseType: !42, size: 16, offset: 80)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !6, line: 105, baseType: !37, size: 8, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !89, file: !6, line: 105, baseType: !24, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !89, file: !6, line: 106, baseType: !98, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !89, file: !6, line: 107, baseType: !83, size: 64, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !89, file: !6, line: 108, baseType: !20, size: 32, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !89, file: !6, line: 109, baseType: !20, size: 32, offset: 352)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !30, file: !6, line: 375, baseType: !103, size: 192)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !103, file: !6, line: 119, baseType: !29, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !103, file: !6, line: 119, baseType: !37, size: 8, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !6, line: 119, baseType: !37, size: 8, offset: 72)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !103, file: !6, line: 119, baseType: !42, size: 16, offset: 80)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !6, line: 119, baseType: !37, size: 8, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !103, file: !6, line: 119, baseType: !111, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !30, file: !6, line: 376, baseType: !113, size: 448)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 144, size: 448, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !426, !427, !428}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !113, file: !6, line: 145, baseType: !29, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !113, file: !6, line: 145, baseType: !37, size: 8, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !113, file: !6, line: 145, baseType: !37, size: 8, offset: 72)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !113, file: !6, line: 145, baseType: !42, size: 16, offset: 80)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !6, line: 145, baseType: !37, size: 8, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !113, file: !6, line: 145, baseType: !37, size: 8, offset: 104)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !113, file: !6, line: 146, baseType: !37, size: 8, offset: 112)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !113, file: !6, line: 147, baseType: !37, size: 8, offset: 120)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !113, file: !6, line: 148, baseType: !29, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !113, file: !6, line: 149, baseType: !29, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !113, file: !6, line: 150, baseType: !83, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !113, file: !6, line: 154, baseType: !127, size: 64, offset: 320)
!127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !113, file: !6, line: 151, size: 64, elements: !128)
!128 = !{!129, !425}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !127, file: !6, line: 152, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !26, line: 248, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!18, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !136, line: 37, size: 9024, elements: !137)
!136 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !371, !372, !373, !374, !375, !379, !381, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !408, !409, !410, !411, !412, !413, !414, !415, !417, !423}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !135, file: !136, line: 38, baseType: !134, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !135, file: !136, line: 39, baseType: !37, size: 8, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !135, file: !136, line: 40, baseType: !37, size: 8, offset: 72)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !135, file: !136, line: 41, baseType: !42, size: 16, offset: 80)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !135, file: !136, line: 42, baseType: !37, size: 8, offset: 96)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !135, file: !136, line: 43, baseType: !37, size: 8, offset: 104)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !135, file: !136, line: 44, baseType: !37, size: 8, offset: 112)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !135, file: !136, line: 45, baseType: !146, size: 16, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !19, line: 445, baseType: !42)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !135, file: !136, line: 46, baseType: !37, size: 8, offset: 144)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !135, file: !136, line: 47, baseType: !37, size: 8, offset: 152)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !135, file: !136, line: 48, baseType: !37, size: 8, offset: 160)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !135, file: !136, line: 49, baseType: !37, size: 8, offset: 168)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !135, file: !136, line: 50, baseType: !37, size: 8, offset: 176)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !135, file: !136, line: 51, baseType: !37, size: 8, offset: 184)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !135, file: !136, line: 52, baseType: !37, size: 8, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !135, file: !136, line: 53, baseType: !37, size: 8, offset: 200)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !135, file: !136, line: 54, baseType: !83, size: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !135, file: !136, line: 55, baseType: !20, size: 32, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !135, file: !136, line: 56, baseType: !20, size: 32, offset: 352)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !135, file: !136, line: 57, baseType: !20, size: 32, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !135, file: !136, line: 58, baseType: !20, size: 32, offset: 416)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !135, file: !136, line: 60, baseType: !161, size: 640, offset: 448)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !26, line: 909, size: 640, elements: !162)
!162 = !{!163, !164, !165, !166, !167, !168, !252, !253, !369, !370}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !161, file: !26, line: 910, baseType: !83, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !161, file: !26, line: 911, baseType: !83, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !161, file: !26, line: 912, baseType: !83, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !161, file: !26, line: 913, baseType: !83, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !161, file: !26, line: 914, baseType: !83, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !161, file: !26, line: 915, baseType: !169, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !26, line: 891, size: 1600, elements: !171)
!171 = !{!172, !192, !208}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !170, file: !26, line: 892, baseType: !173, size: 448)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !26, line: 844, size: 448, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180, !181, !182, !191}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !173, file: !26, line: 845, baseType: !169, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !173, file: !26, line: 845, baseType: !37, size: 8, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !173, file: !26, line: 845, baseType: !37, size: 8, offset: 72)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !173, file: !26, line: 845, baseType: !42, size: 16, offset: 80)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !173, file: !26, line: 845, baseType: !83, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !26, line: 845, baseType: !169, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !173, file: !26, line: 845, baseType: !24, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !173, file: !26, line: 845, baseType: !183, size: 64, offset: 320)
!183 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !26, line: 732, size: 64, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !183, file: !26, line: 733, baseType: !59, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !183, file: !26, line: 734, baseType: !20, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !183, file: !26, line: 735, baseType: !71, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !183, file: !26, line: 736, baseType: !83, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !26, line: 737, baseType: !71, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !183, file: !26, line: 738, baseType: !169, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !173, file: !26, line: 845, baseType: !37, size: 8, offset: 384)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !170, file: !26, line: 893, baseType: !193, size: 640)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !26, line: 851, size: 640, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !193, file: !26, line: 852, baseType: !169, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !193, file: !26, line: 852, baseType: !37, size: 8, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !193, file: !26, line: 852, baseType: !37, size: 8, offset: 72)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !193, file: !26, line: 852, baseType: !42, size: 16, offset: 80)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !193, file: !26, line: 852, baseType: !83, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !193, file: !26, line: 852, baseType: !169, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !193, file: !26, line: 852, baseType: !24, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !193, file: !26, line: 852, baseType: !183, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !193, file: !26, line: 852, baseType: !37, size: 8, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !193, file: !26, line: 852, baseType: !71, size: 64, offset: 448)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !193, file: !26, line: 853, baseType: !83, size: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !193, file: !26, line: 854, baseType: !20, size: 32, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !26, line: 855, baseType: !20, size: 32, offset: 608)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !170, file: !26, line: 894, baseType: !209, size: 1600)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !26, line: 862, size: 1600, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !209, file: !26, line: 863, baseType: !169, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !209, file: !26, line: 863, baseType: !37, size: 8, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !209, file: !26, line: 863, baseType: !37, size: 8, offset: 72)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !209, file: !26, line: 863, baseType: !42, size: 16, offset: 80)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !209, file: !26, line: 863, baseType: !83, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !209, file: !26, line: 863, baseType: !169, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !209, file: !26, line: 863, baseType: !24, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !209, file: !26, line: 863, baseType: !183, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !209, file: !26, line: 863, baseType: !37, size: 8, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !209, file: !26, line: 863, baseType: !169, size: 64, offset: 448)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !209, file: !26, line: 864, baseType: !169, size: 64, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !209, file: !26, line: 865, baseType: !71, size: 64, offset: 576)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !209, file: !26, line: 866, baseType: !37, size: 8, offset: 640)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !209, file: !26, line: 867, baseType: !71, size: 64, offset: 704)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !209, file: !26, line: 868, baseType: !71, size: 64, offset: 768)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !209, file: !26, line: 869, baseType: !71, size: 64, offset: 832)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !209, file: !26, line: 870, baseType: !228, size: 32, offset: 896)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 32, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 4)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !209, file: !26, line: 871, baseType: !20, size: 32, offset: 928)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !209, file: !26, line: 872, baseType: !20, size: 32, offset: 960)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !209, file: !26, line: 873, baseType: !20, size: 32, offset: 992)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !209, file: !26, line: 874, baseType: !20, size: 32, offset: 1024)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !209, file: !26, line: 875, baseType: !20, size: 32, offset: 1056)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !209, file: !26, line: 876, baseType: !20, size: 32, offset: 1088)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !209, file: !26, line: 877, baseType: !20, size: 32, offset: 1120)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !209, file: !26, line: 878, baseType: !20, size: 32, offset: 1152)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !209, file: !26, line: 879, baseType: !20, size: 32, offset: 1184)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !209, file: !26, line: 880, baseType: !20, size: 32, offset: 1216)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !209, file: !26, line: 881, baseType: !20, size: 32, offset: 1248)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !209, file: !26, line: 882, baseType: !20, size: 32, offset: 1280)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !209, file: !26, line: 883, baseType: !20, size: 32, offset: 1312)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !209, file: !26, line: 884, baseType: !42, size: 16, offset: 1344)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !209, file: !26, line: 885, baseType: !37, size: 8, offset: 1360)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !209, file: !26, line: 886, baseType: !37, size: 8, offset: 1368)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !209, file: !26, line: 887, baseType: !37, size: 8, offset: 1376)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !209, file: !26, line: 888, baseType: !249, size: 160, offset: 1384)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 160, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 20)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !161, file: !26, line: 916, baseType: !24, size: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !161, file: !26, line: 917, baseType: !254, size: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !26, line: 679, size: 640, elements: !256)
!256 = !{!257, !265, !278, !287, !296, !309, !323, !335, !347}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !255, file: !26, line: 680, baseType: !258, size: 128)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !26, line: 575, size: 128, elements: !259)
!259 = !{!260, !261, !262, !263, !264}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !258, file: !26, line: 576, baseType: !111, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !258, file: !26, line: 576, baseType: !37, size: 8, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !258, file: !26, line: 576, baseType: !37, size: 8, offset: 72)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !258, file: !26, line: 576, baseType: !42, size: 16, offset: 80)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !258, file: !26, line: 576, baseType: !42, size: 16, offset: 96)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !255, file: !26, line: 681, baseType: !266, size: 384)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !26, line: 604, size: 384, elements: !267)
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !276, !277}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !26, line: 605, baseType: !111, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !266, file: !26, line: 605, baseType: !37, size: 8, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !26, line: 605, baseType: !37, size: 8, offset: 72)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !266, file: !26, line: 605, baseType: !42, size: 16, offset: 80)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !266, file: !26, line: 605, baseType: !42, size: 16, offset: 96)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !266, file: !26, line: 606, baseType: !42, size: 16, offset: 112)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !266, file: !26, line: 607, baseType: !169, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !266, file: !26, line: 608, baseType: !83, size: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !266, file: !26, line: 609, baseType: !83, size: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !266, file: !26, line: 610, baseType: !59, size: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !255, file: !26, line: 682, baseType: !279, size: 192)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !26, line: 582, size: 192, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !26, line: 583, baseType: !111, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !279, file: !26, line: 583, baseType: !37, size: 8, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !26, line: 583, baseType: !37, size: 8, offset: 72)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !279, file: !26, line: 583, baseType: !42, size: 16, offset: 80)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !279, file: !26, line: 583, baseType: !42, size: 16, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !279, file: !26, line: 584, baseType: !29, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !255, file: !26, line: 683, baseType: !288, size: 192)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !26, line: 616, size: 192, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !26, line: 617, baseType: !111, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !288, file: !26, line: 617, baseType: !37, size: 8, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !26, line: 617, baseType: !37, size: 8, offset: 72)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !26, line: 617, baseType: !42, size: 16, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !288, file: !26, line: 617, baseType: !42, size: 16, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !288, file: !26, line: 618, baseType: !24, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !255, file: !26, line: 684, baseType: !297, size: 448)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !26, line: 621, size: 448, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304, !305, !306, !307, !308}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !297, file: !26, line: 622, baseType: !111, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !297, file: !26, line: 622, baseType: !37, size: 8, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !297, file: !26, line: 622, baseType: !37, size: 8, offset: 72)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !297, file: !26, line: 622, baseType: !42, size: 16, offset: 80)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !297, file: !26, line: 622, baseType: !42, size: 16, offset: 96)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !297, file: !26, line: 623, baseType: !20, size: 32, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !297, file: !26, line: 624, baseType: !169, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !297, file: !26, line: 625, baseType: !83, size: 64, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !297, file: !26, line: 626, baseType: !83, size: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !297, file: !26, line: 627, baseType: !20, size: 32, offset: 384)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !255, file: !26, line: 685, baseType: !310, size: 512)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !26, line: 590, size: 512, elements: !311)
!311 = !{!312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !26, line: 591, baseType: !111, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !310, file: !26, line: 591, baseType: !37, size: 8, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !26, line: 591, baseType: !37, size: 8, offset: 72)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !310, file: !26, line: 591, baseType: !42, size: 16, offset: 80)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !310, file: !26, line: 591, baseType: !42, size: 16, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !310, file: !26, line: 592, baseType: !20, size: 32, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !310, file: !26, line: 593, baseType: !29, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !310, file: !26, line: 594, baseType: !29, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !310, file: !26, line: 595, baseType: !134, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !310, file: !26, line: 596, baseType: !111, size: 64, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !310, file: !26, line: 597, baseType: !20, size: 32, offset: 448)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !255, file: !26, line: 686, baseType: !324, size: 320)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !26, line: 634, size: 320, elements: !325)
!325 = !{!326, !327, !328, !329, !330, !331, !332, !333, !334}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !324, file: !26, line: 635, baseType: !111, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !324, file: !26, line: 635, baseType: !37, size: 8, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !324, file: !26, line: 635, baseType: !37, size: 8, offset: 72)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !324, file: !26, line: 635, baseType: !42, size: 16, offset: 80)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !324, file: !26, line: 635, baseType: !42, size: 16, offset: 96)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !324, file: !26, line: 636, baseType: !37, size: 8, offset: 112)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !324, file: !26, line: 637, baseType: !134, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !324, file: !26, line: 638, baseType: !29, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !324, file: !26, line: 639, baseType: !59, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !255, file: !26, line: 687, baseType: !336, size: 640)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !26, line: 646, size: 640, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !26, line: 647, baseType: !111, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !336, file: !26, line: 647, baseType: !37, size: 8, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !26, line: 647, baseType: !37, size: 8, offset: 72)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !336, file: !26, line: 647, baseType: !42, size: 16, offset: 80)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !336, file: !26, line: 647, baseType: !42, size: 16, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !336, file: !26, line: 648, baseType: !344, size: 512, offset: 128)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 512, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 8)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !255, file: !26, line: 688, baseType: !348, size: 320)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !26, line: 669, size: 320, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !26, line: 670, baseType: !111, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !348, file: !26, line: 670, baseType: !37, size: 8, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !26, line: 670, baseType: !37, size: 8, offset: 72)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !348, file: !26, line: 670, baseType: !42, size: 16, offset: 80)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !348, file: !26, line: 670, baseType: !42, size: 16, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !348, file: !26, line: 671, baseType: !37, size: 8, offset: 112)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !348, file: !26, line: 672, baseType: !24, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !348, file: !26, line: 673, baseType: !29, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !348, file: !26, line: 674, baseType: !359, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !26, line: 660, size: 128, elements: !361)
!361 = !{!362, !368}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !360, file: !26, line: 661, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !19, line: 1061, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !367, !20, !111}
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !19, line: 424, baseType: !111)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !360, file: !26, line: 662, baseType: !111, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !161, file: !26, line: 918, baseType: !169, size: 64, offset: 512)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !161, file: !26, line: 919, baseType: !20, size: 32, offset: 576)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !135, file: !136, line: 61, baseType: !20, size: 32, offset: 1088)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !135, file: !136, line: 62, baseType: !20, size: 32, offset: 1120)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !135, file: !136, line: 63, baseType: !42, size: 16, offset: 1152)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !135, file: !136, line: 64, baseType: !37, size: 8, offset: 1168)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !135, file: !136, line: 66, baseType: !376, size: 2688, offset: 1216)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 2688, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 7)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !135, file: !136, line: 67, baseType: !380, size: 3072, offset: 3904)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 3072, elements: !345)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !135, file: !136, line: 68, baseType: !382, size: 576, offset: 6976)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 576, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 9)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !135, file: !136, line: 69, baseType: !98, size: 64, offset: 7552)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !135, file: !136, line: 71, baseType: !83, size: 64, offset: 7616)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !135, file: !136, line: 72, baseType: !98, size: 64, offset: 7680)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !135, file: !136, line: 73, baseType: !254, size: 64, offset: 7744)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !135, file: !136, line: 74, baseType: !24, size: 64, offset: 7808)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !135, file: !136, line: 75, baseType: !29, size: 64, offset: 7872)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !135, file: !136, line: 76, baseType: !24, size: 64, offset: 7936)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !135, file: !136, line: 77, baseType: !169, size: 64, offset: 8000)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !135, file: !136, line: 78, baseType: !29, size: 64, offset: 8064)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !135, file: !136, line: 79, baseType: !24, size: 64, offset: 8128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !135, file: !136, line: 80, baseType: !71, size: 64, offset: 8192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !135, file: !136, line: 81, baseType: !169, size: 64, offset: 8256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !135, file: !136, line: 82, baseType: !398, size: 64, offset: 8320)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !26, line: 718, size: 128, elements: !401)
!401 = !{!402, !403, !404, !405, !406, !407}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !400, file: !26, line: 722, baseType: !20, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !400, file: !26, line: 723, baseType: !20, size: 32, offset: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !400, file: !26, line: 724, baseType: !42, size: 16, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !400, file: !26, line: 725, baseType: !37, size: 8, offset: 80)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !400, file: !26, line: 726, baseType: !37, size: 8, offset: 88)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !400, file: !26, line: 727, baseType: !37, size: 8, offset: 96)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !135, file: !136, line: 83, baseType: !169, size: 64, offset: 8384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !135, file: !136, line: 84, baseType: !29, size: 64, offset: 8448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !135, file: !136, line: 85, baseType: !254, size: 64, offset: 8512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !135, file: !136, line: 86, baseType: !29, size: 64, offset: 8576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !135, file: !136, line: 87, baseType: !254, size: 64, offset: 8640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !135, file: !136, line: 88, baseType: !169, size: 64, offset: 8704)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !135, file: !136, line: 89, baseType: !169, size: 64, offset: 8768)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !135, file: !136, line: 90, baseType: !416, size: 64, offset: 8832)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !135, file: !136, line: 91, baseType: !418, size: 64, offset: 8896)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !26, line: 652, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!18, !134, !422}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !135, file: !136, line: 92, baseType: !424, size: 64, offset: 8960)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !26, line: 656, baseType: !131)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !127, file: !6, line: 153, baseType: !29, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !113, file: !6, line: 156, baseType: !20, size: 32, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !113, file: !6, line: 157, baseType: !146, size: 16, offset: 416)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !113, file: !6, line: 158, baseType: !37, size: 8, offset: 432)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !30, file: !6, line: 377, baseType: !430, size: 576)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !430, file: !6, line: 123, baseType: !29, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !430, file: !6, line: 123, baseType: !37, size: 8, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !430, file: !6, line: 123, baseType: !37, size: 8, offset: 72)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !430, file: !6, line: 123, baseType: !42, size: 16, offset: 80)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !430, file: !6, line: 123, baseType: !37, size: 8, offset: 96)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !430, file: !6, line: 123, baseType: !37, size: 8, offset: 104)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !430, file: !6, line: 124, baseType: !42, size: 16, offset: 112)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !430, file: !6, line: 125, baseType: !111, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !430, file: !6, line: 126, baseType: !59, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !430, file: !6, line: 127, baseType: !416, size: 64, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !430, file: !6, line: 128, baseType: !29, size: 64, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !430, file: !6, line: 129, baseType: !29, size: 64, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !430, file: !6, line: 130, baseType: !24, size: 64, offset: 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !430, file: !6, line: 131, baseType: !37, size: 8, offset: 512)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !30, file: !6, line: 378, baseType: !447, size: 512)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 512, elements: !448)
!448 = !{!449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !460, !461}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !447, file: !6, line: 135, baseType: !29, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !447, file: !6, line: 135, baseType: !37, size: 8, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !447, file: !6, line: 135, baseType: !37, size: 8, offset: 72)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !447, file: !6, line: 135, baseType: !42, size: 16, offset: 80)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !447, file: !6, line: 135, baseType: !37, size: 8, offset: 96)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !447, file: !6, line: 135, baseType: !37, size: 8, offset: 104)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !447, file: !6, line: 136, baseType: !24, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !447, file: !6, line: 137, baseType: !29, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !447, file: !6, line: 138, baseType: !29, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !447, file: !6, line: 139, baseType: !459, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !19, line: 129, baseType: !59)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !447, file: !6, line: 140, baseType: !20, size: 32, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !447, file: !6, line: 141, baseType: !111, size: 64, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !30, file: !6, line: 379, baseType: !463, size: 320)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 185, size: 320, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !470, !474}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !463, file: !6, line: 186, baseType: !29, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !463, file: !6, line: 186, baseType: !37, size: 8, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !463, file: !6, line: 186, baseType: !37, size: 8, offset: 72)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !463, file: !6, line: 186, baseType: !42, size: 16, offset: 80)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !463, file: !6, line: 186, baseType: !37, size: 8, offset: 96)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !463, file: !6, line: 186, baseType: !471, size: 128, offset: 128)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 2)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !463, file: !6, line: 186, baseType: !29, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !30, file: !6, line: 380, baseType: !476, size: 384)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 188, size: 384, elements: !477)
!477 = !{!478, !479, !480, !481, !482, !483, !484, !485}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !476, file: !6, line: 189, baseType: !29, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !476, file: !6, line: 189, baseType: !37, size: 8, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !476, file: !6, line: 189, baseType: !37, size: 8, offset: 72)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !476, file: !6, line: 189, baseType: !42, size: 16, offset: 80)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !476, file: !6, line: 189, baseType: !37, size: 8, offset: 96)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !476, file: !6, line: 190, baseType: !471, size: 128, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !476, file: !6, line: 190, baseType: !29, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !476, file: !6, line: 190, baseType: !486, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !26, line: 480, size: 576, elements: !488)
!488 = !{!489, !490, !491, !492, !500, !515, !547, !548, !549, !550, !551, !552}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !487, file: !26, line: 481, baseType: !24, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !487, file: !26, line: 482, baseType: !486, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !487, file: !26, line: 483, baseType: !486, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !487, file: !26, line: 484, baseType: !493, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !26, line: 497, size: 256, elements: !495)
!495 = !{!496, !497, !498, !499}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !494, file: !26, line: 498, baseType: !493, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !494, file: !26, line: 499, baseType: !493, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !494, file: !26, line: 500, baseType: !486, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !494, file: !26, line: 501, baseType: !20, size: 32, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !487, file: !26, line: 485, baseType: !501, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !26, line: 466, size: 320, elements: !503)
!503 = !{!504, !509, !510, !511, !512, !513, !514}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !502, file: !26, line: 467, baseType: !505, size: 128)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !26, line: 459, size: 128, elements: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !505, file: !26, line: 460, baseType: !37, size: 8)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !505, file: !26, line: 461, baseType: !59, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !502, file: !26, line: 468, baseType: !505, size: 128, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !502, file: !26, line: 469, baseType: !42, size: 16, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !502, file: !26, line: 470, baseType: !37, size: 8, offset: 272)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !502, file: !26, line: 471, baseType: !37, size: 8, offset: 280)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !502, file: !26, line: 472, baseType: !37, size: 8, offset: 288)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !502, file: !26, line: 473, baseType: !37, size: 8, offset: 296)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !487, file: !26, line: 486, baseType: !516, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !26, line: 448, size: 192, elements: !518)
!518 = !{!519, !542, !543, !544, !545, !546}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !517, file: !26, line: 449, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !26, line: 438, size: 64, elements: !521)
!521 = !{!522, !523, !536}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !520, file: !26, line: 439, baseType: !24, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !520, file: !26, line: 440, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !26, line: 419, size: 256, elements: !526)
!526 = !{!527, !532, !533, !534, !535}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !525, file: !26, line: 420, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !19, line: 1058, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!20, !367, !20, !111}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !525, file: !26, line: 421, baseType: !111, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !525, file: !26, line: 422, baseType: !24, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !525, file: !26, line: 423, baseType: !37, size: 8, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !525, file: !26, line: 424, baseType: !37, size: 8, offset: 200)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !520, file: !26, line: 441, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !26, line: 429, size: 128, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !538, file: !26, line: 430, baseType: !24, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !538, file: !26, line: 431, baseType: !537, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !517, file: !26, line: 450, baseType: !501, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !517, file: !26, line: 451, baseType: !37, size: 8, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !517, file: !26, line: 452, baseType: !37, size: 8, offset: 136)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !517, file: !26, line: 453, baseType: !37, size: 8, offset: 144)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !517, file: !26, line: 454, baseType: !37, size: 8, offset: 152)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !487, file: !26, line: 487, baseType: !59, size: 64, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !487, file: !26, line: 488, baseType: !20, size: 32, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !487, file: !26, line: 489, baseType: !42, size: 16, offset: 480)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !487, file: !26, line: 490, baseType: !42, size: 16, offset: 496)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !487, file: !26, line: 491, baseType: !37, size: 8, offset: 512)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !487, file: !26, line: 492, baseType: !37, size: 8, offset: 520)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !30, file: !6, line: 381, baseType: !554, size: 384)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 193, size: 384, elements: !555)
!555 = !{!556, !557, !558, !559, !560, !561, !562, !563, !564}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !554, file: !6, line: 194, baseType: !29, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !554, file: !6, line: 194, baseType: !37, size: 8, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !554, file: !6, line: 194, baseType: !37, size: 8, offset: 72)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !554, file: !6, line: 194, baseType: !42, size: 16, offset: 80)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !554, file: !6, line: 194, baseType: !37, size: 8, offset: 96)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !554, file: !6, line: 194, baseType: !471, size: 128, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !554, file: !6, line: 194, baseType: !29, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !554, file: !6, line: 194, baseType: !20, size: 32, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !554, file: !6, line: 195, baseType: !20, size: 32, offset: 352)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !30, file: !6, line: 382, baseType: !566, size: 384)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 198, size: 384, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !573, !574, !575, !576, !577}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !566, file: !6, line: 199, baseType: !29, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !566, file: !6, line: 199, baseType: !37, size: 8, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !566, file: !6, line: 199, baseType: !37, size: 8, offset: 72)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !566, file: !6, line: 199, baseType: !42, size: 16, offset: 80)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !566, file: !6, line: 199, baseType: !37, size: 8, offset: 96)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !566, file: !6, line: 201, baseType: !37, size: 8, offset: 104)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !566, file: !6, line: 202, baseType: !37, size: 8, offset: 112)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !566, file: !6, line: 203, baseType: !471, size: 128, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !566, file: !6, line: 203, baseType: !29, size: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !566, file: !6, line: 203, baseType: !578, size: 64, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !19, line: 128, baseType: !59)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !30, file: !6, line: 383, baseType: !580, size: 320)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 206, size: 320, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !580, file: !6, line: 207, baseType: !29, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !580, file: !6, line: 207, baseType: !37, size: 8, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !580, file: !6, line: 207, baseType: !37, size: 8, offset: 72)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !580, file: !6, line: 207, baseType: !42, size: 16, offset: 80)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !6, line: 207, baseType: !37, size: 8, offset: 96)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !580, file: !6, line: 207, baseType: !471, size: 128, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !580, file: !6, line: 207, baseType: !29, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !30, file: !6, line: 384, baseType: !590, size: 384)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 234, size: 384, elements: !591)
!591 = !{!592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !590, file: !6, line: 235, baseType: !29, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !590, file: !6, line: 235, baseType: !37, size: 8, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !590, file: !6, line: 235, baseType: !37, size: 8, offset: 72)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !590, file: !6, line: 235, baseType: !42, size: 16, offset: 80)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !590, file: !6, line: 235, baseType: !37, size: 8, offset: 96)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !590, file: !6, line: 235, baseType: !37, size: 8, offset: 104)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !590, file: !6, line: 235, baseType: !37, size: 8, offset: 112)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !590, file: !6, line: 235, baseType: !37, size: 8, offset: 120)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !590, file: !6, line: 235, baseType: !24, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !590, file: !6, line: 235, baseType: !20, size: 32, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !590, file: !6, line: 235, baseType: !20, size: 32, offset: 224)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !590, file: !6, line: 235, baseType: !20, size: 32, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !590, file: !6, line: 235, baseType: !37, size: 8, offset: 288)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !590, file: !6, line: 235, baseType: !37, size: 8, offset: 296)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !590, file: !6, line: 235, baseType: !29, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !30, file: !6, line: 385, baseType: !608, size: 576)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 238, size: 576, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !608, file: !6, line: 239, baseType: !29, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !608, file: !6, line: 239, baseType: !37, size: 8, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !608, file: !6, line: 239, baseType: !37, size: 8, offset: 72)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !608, file: !6, line: 239, baseType: !42, size: 16, offset: 80)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !6, line: 239, baseType: !37, size: 8, offset: 96)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !608, file: !6, line: 239, baseType: !37, size: 8, offset: 104)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !608, file: !6, line: 239, baseType: !37, size: 8, offset: 112)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !608, file: !6, line: 239, baseType: !37, size: 8, offset: 120)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !608, file: !6, line: 239, baseType: !24, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !608, file: !6, line: 239, baseType: !20, size: 32, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !608, file: !6, line: 239, baseType: !20, size: 32, offset: 224)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !608, file: !6, line: 239, baseType: !20, size: 32, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !608, file: !6, line: 239, baseType: !37, size: 8, offset: 288)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !608, file: !6, line: 239, baseType: !37, size: 8, offset: 296)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !608, file: !6, line: 239, baseType: !42, size: 16, offset: 304)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !608, file: !6, line: 240, baseType: !29, size: 64, offset: 320)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !608, file: !6, line: 241, baseType: !83, size: 64, offset: 384)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !608, file: !6, line: 242, baseType: !42, size: 16, offset: 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !608, file: !6, line: 243, baseType: !83, size: 64, offset: 512)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !30, file: !6, line: 386, baseType: !630, size: 384)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 263, size: 384, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !630, file: !6, line: 264, baseType: !29, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !630, file: !6, line: 264, baseType: !37, size: 8, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !630, file: !6, line: 264, baseType: !37, size: 8, offset: 72)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !630, file: !6, line: 264, baseType: !42, size: 16, offset: 80)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !6, line: 264, baseType: !37, size: 8, offset: 96)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !630, file: !6, line: 264, baseType: !37, size: 8, offset: 104)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !630, file: !6, line: 264, baseType: !37, size: 8, offset: 112)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !630, file: !6, line: 264, baseType: !37, size: 8, offset: 120)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !630, file: !6, line: 264, baseType: !24, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !630, file: !6, line: 264, baseType: !20, size: 32, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !630, file: !6, line: 264, baseType: !20, size: 32, offset: 224)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !630, file: !6, line: 264, baseType: !20, size: 32, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !630, file: !6, line: 264, baseType: !37, size: 8, offset: 288)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !630, file: !6, line: 264, baseType: !37, size: 8, offset: 296)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !630, file: !6, line: 264, baseType: !37, size: 8, offset: 304)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !630, file: !6, line: 265, baseType: !29, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !30, file: !6, line: 387, baseType: !649, size: 448)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 246, size: 448, elements: !650)
!650 = !{!651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !649, file: !6, line: 247, baseType: !29, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !649, file: !6, line: 247, baseType: !37, size: 8, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !649, file: !6, line: 247, baseType: !37, size: 8, offset: 72)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !649, file: !6, line: 247, baseType: !42, size: 16, offset: 80)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !649, file: !6, line: 247, baseType: !37, size: 8, offset: 96)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !649, file: !6, line: 247, baseType: !37, size: 8, offset: 104)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !649, file: !6, line: 247, baseType: !37, size: 8, offset: 112)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !649, file: !6, line: 247, baseType: !37, size: 8, offset: 120)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !649, file: !6, line: 247, baseType: !24, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !649, file: !6, line: 247, baseType: !20, size: 32, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !649, file: !6, line: 247, baseType: !20, size: 32, offset: 224)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !649, file: !6, line: 247, baseType: !20, size: 32, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !649, file: !6, line: 247, baseType: !37, size: 8, offset: 288)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !649, file: !6, line: 247, baseType: !37, size: 8, offset: 296)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !649, file: !6, line: 247, baseType: !29, size: 64, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !649, file: !6, line: 248, baseType: !29, size: 64, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !30, file: !6, line: 388, baseType: !668, size: 448)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 251, size: 448, elements: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !668, file: !6, line: 252, baseType: !29, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !668, file: !6, line: 252, baseType: !37, size: 8, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !668, file: !6, line: 252, baseType: !37, size: 8, offset: 72)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !668, file: !6, line: 252, baseType: !42, size: 16, offset: 80)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !6, line: 252, baseType: !37, size: 8, offset: 96)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !668, file: !6, line: 252, baseType: !37, size: 8, offset: 104)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !668, file: !6, line: 252, baseType: !37, size: 8, offset: 112)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !668, file: !6, line: 252, baseType: !37, size: 8, offset: 120)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !668, file: !6, line: 252, baseType: !24, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !668, file: !6, line: 252, baseType: !20, size: 32, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !668, file: !6, line: 252, baseType: !20, size: 32, offset: 224)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !668, file: !6, line: 252, baseType: !20, size: 32, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !668, file: !6, line: 252, baseType: !37, size: 8, offset: 288)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !668, file: !6, line: 252, baseType: !37, size: 8, offset: 296)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !668, file: !6, line: 257, baseType: !29, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !668, file: !6, line: 258, baseType: !29, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !30, file: !6, line: 389, baseType: !687, size: 512)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 274, size: 512, elements: !688)
!688 = !{!689, !690, !691, !692, !693, !694, !695, !696, !697, !698}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !687, file: !6, line: 275, baseType: !29, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !687, file: !6, line: 275, baseType: !37, size: 8, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !687, file: !6, line: 275, baseType: !37, size: 8, offset: 72)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !687, file: !6, line: 275, baseType: !42, size: 16, offset: 80)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !687, file: !6, line: 275, baseType: !37, size: 8, offset: 96)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !687, file: !6, line: 275, baseType: !24, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !687, file: !6, line: 276, baseType: !20, size: 32, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !687, file: !6, line: 277, baseType: !363, size: 64, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !687, file: !6, line: 278, baseType: !111, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !687, file: !6, line: 279, baseType: !471, size: 128, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !30, file: !6, line: 390, baseType: !700, size: 576)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 282, size: 576, elements: !701)
!701 = !{!702, !703, !704, !705, !706, !707, !708, !709, !715, !716, !717, !718, !724, !725}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !700, file: !6, line: 283, baseType: !29, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !700, file: !6, line: 283, baseType: !37, size: 8, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !700, file: !6, line: 283, baseType: !37, size: 8, offset: 72)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !700, file: !6, line: 283, baseType: !42, size: 16, offset: 80)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !700, file: !6, line: 283, baseType: !37, size: 8, offset: 96)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !700, file: !6, line: 283, baseType: !37, size: 8, offset: 104)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !700, file: !6, line: 284, baseType: !37, size: 8, offset: 112)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !700, file: !6, line: 285, baseType: !710, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !19, line: 1093, baseType: !711)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!18, !20, !459, !20, !714, !111, !111}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !700, file: !6, line: 286, baseType: !24, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !700, file: !6, line: 287, baseType: !111, size: 64, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !700, file: !6, line: 288, baseType: !111, size: 64, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !700, file: !6, line: 289, baseType: !719, size: 64, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !19, line: 1126, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!18, !367, !20, !111, !723}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !700, file: !6, line: 290, baseType: !29, size: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !700, file: !6, line: 291, baseType: !29, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !30, file: !6, line: 391, baseType: !727, size: 512)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 309, size: 512, elements: !728)
!728 = !{!729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !727, file: !6, line: 310, baseType: !29, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !727, file: !6, line: 310, baseType: !37, size: 8, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !727, file: !6, line: 310, baseType: !37, size: 8, offset: 72)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !727, file: !6, line: 310, baseType: !42, size: 16, offset: 80)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !727, file: !6, line: 310, baseType: !37, size: 8, offset: 96)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !727, file: !6, line: 310, baseType: !37, size: 8, offset: 104)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !727, file: !6, line: 311, baseType: !37, size: 8, offset: 112)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !727, file: !6, line: 312, baseType: !37, size: 8, offset: 120)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !727, file: !6, line: 313, baseType: !111, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !727, file: !6, line: 314, baseType: !24, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !727, file: !6, line: 315, baseType: !98, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !727, file: !6, line: 316, baseType: !83, size: 64, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !727, file: !6, line: 317, baseType: !83, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !727, file: !6, line: 318, baseType: !20, size: 32, offset: 448)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !30, file: !6, line: 392, baseType: !744, size: 448)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 342, size: 448, elements: !745)
!745 = !{!746, !747, !748, !749, !750, !751, !752, !753, !754, !755}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !744, file: !6, line: 343, baseType: !29, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !744, file: !6, line: 343, baseType: !37, size: 8, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !744, file: !6, line: 343, baseType: !37, size: 8, offset: 72)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !744, file: !6, line: 343, baseType: !42, size: 16, offset: 80)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !744, file: !6, line: 343, baseType: !37, size: 8, offset: 96)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !744, file: !6, line: 343, baseType: !24, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !744, file: !6, line: 344, baseType: !24, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !744, file: !6, line: 345, baseType: !111, size: 64, offset: 256)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !744, file: !6, line: 346, baseType: !83, size: 64, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !744, file: !6, line: 347, baseType: !20, size: 32, offset: 384)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !30, file: !6, line: 393, baseType: !757, size: 256)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 352, size: 256, elements: !758)
!758 = !{!759, !760, !761, !762, !763, !764, !769}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !757, file: !6, line: 353, baseType: !29, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !757, file: !6, line: 353, baseType: !37, size: 8, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !757, file: !6, line: 353, baseType: !37, size: 8, offset: 72)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !757, file: !6, line: 353, baseType: !42, size: 16, offset: 80)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !757, file: !6, line: 353, baseType: !37, size: 8, offset: 96)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !757, file: !6, line: 353, baseType: !765, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !19, line: 1064, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !367, !111}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !757, file: !6, line: 354, baseType: !111, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !30, file: !6, line: 394, baseType: !771, size: 192)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 359, size: 192, elements: !772)
!772 = !{!773, !774, !775, !776, !777, !778}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !771, file: !6, line: 360, baseType: !29, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !771, file: !6, line: 360, baseType: !37, size: 8, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !771, file: !6, line: 360, baseType: !37, size: 8, offset: 72)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !771, file: !6, line: 360, baseType: !42, size: 16, offset: 80)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !771, file: !6, line: 360, baseType: !37, size: 8, offset: 96)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !771, file: !6, line: 360, baseType: !29, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !30, file: !6, line: 401, baseType: !25, size: 384)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !25, file: !26, line: 135, baseType: !37, size: 8, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !25, file: !26, line: 136, baseType: !37, size: 8, offset: 72)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !25, file: !26, line: 137, baseType: !42, size: 16, offset: 80)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !25, file: !26, line: 138, baseType: !784, size: 32, offset: 96)
!784 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !785, line: 328, size: 32, elements: !786)
!785 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !784, file: !785, line: 329, baseType: !20, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !784, file: !785, line: 330, baseType: !228, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !25, file: !26, line: 139, baseType: !24, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !25, file: !26, line: 140, baseType: !24, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !25, file: !26, line: 141, baseType: !24, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !25, file: !26, line: 142, baseType: !146, size: 16, offset: 320)
!793 = !{!794, !799, !804, !806, !0}
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(scope: null, file: !3, line: 81, type: !796, isLocal: true, isDefinition: true)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 280, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 35)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !3, line: 101, type: !801, isLocal: true, isDefinition: true)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 192, elements: !802)
!802 = !{!803}
!803 = !DISubrange(count: 24)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !3, line: 383, type: !801, isLocal: true, isDefinition: true)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(scope: null, file: !3, line: 393, type: !808, isLocal: true, isDefinition: true)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 448, elements: !809)
!809 = !{!810}
!810 = !DISubrange(count: 56)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !812, size: 72, elements: !383)
!812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!813 = !{i32 7, !"Dwarf Version", i32 5}
!814 = !{i32 2, !"Debug Info Version", i32 3}
!815 = !{i32 1, !"wchar_size", i32 2}
!816 = !{i32 8, !"cf-protection-branch", i32 1}
!817 = !{i32 4, !"function_return_thunk_extern", i32 1}
!818 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!819 = !{i32 1, !"Code Model", i32 2}
!820 = !{i32 1, !"override-stack-alignment", i32 8}
!821 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!822 = distinct !DISubprogram(name: "acpi_ex_opcode_2A_0T_0R", scope: !3, file: !3, line: 55, type: !132, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !823)
!823 = !{!824, !825, !826, !827, !828}
!824 = !DILocalVariable(name: "walk_state", arg: 1, scope: !822, file: !3, line: 55, type: !134)
!825 = !DILocalVariable(name: "operand", scope: !822, file: !3, line: 57, type: !98)
!826 = !DILocalVariable(name: "node", scope: !822, file: !3, line: 58, type: !24)
!827 = !DILocalVariable(name: "value", scope: !822, file: !3, line: 59, type: !20)
!828 = !DILocalVariable(name: "status", scope: !822, file: !3, line: 60, type: !18)
!829 = !DILocation(line: 55, column: 61, scope: !822)
!830 = !DILocation(line: 57, column: 2, scope: !822)
!831 = !DILocation(line: 57, column: 30, scope: !822)
!832 = !DILocation(line: 57, column: 41, scope: !822)
!833 = !DILocation(line: 57, column: 53, scope: !822)
!834 = !DILocation(line: 58, column: 2, scope: !822)
!835 = !DILocation(line: 58, column: 30, scope: !822)
!836 = !DILocation(line: 59, column: 2, scope: !822)
!837 = !DILocation(line: 59, column: 6, scope: !822)
!838 = !DILocation(line: 60, column: 2, scope: !822)
!839 = !DILocation(line: 60, column: 14, scope: !822)
!840 = !DILocation(line: 67, column: 10, scope: !822)
!841 = !DILocation(line: 67, column: 22, scope: !822)
!842 = !DILocation(line: 67, column: 2, scope: !822)
!843 = !DILocation(line: 72, column: 40, scope: !844)
!844 = distinct !DILexicalBlock(scope: !822, file: !3, line: 67, column: 30)
!845 = !DILocation(line: 72, column: 8, scope: !844)
!846 = !DILocation(line: 76, column: 17, scope: !844)
!847 = !DILocation(line: 76, column: 37, scope: !844)
!848 = !DILocation(line: 76, column: 11, scope: !844)
!849 = !DILocation(line: 76, column: 9, scope: !844)
!850 = !DILocation(line: 80, column: 33, scope: !851)
!851 = distinct !DILexicalBlock(scope: !844, file: !3, line: 80, column: 7)
!852 = !DILocation(line: 80, column: 8, scope: !851)
!853 = !DILocation(line: 80, column: 7, scope: !844)
!854 = !DILocation(line: 81, column: 4, scope: !855)
!855 = distinct !DILexicalBlock(scope: !851, file: !3, line: 80, column: 40)
!856 = !DILocation(line: 85, column: 11, scope: !855)
!857 = !DILocation(line: 86, column: 4, scope: !855)
!858 = !DILocation(line: 96, column: 41, scope: !844)
!859 = !DILocation(line: 96, column: 47, scope: !844)
!860 = !DILocation(line: 96, column: 12, scope: !844)
!861 = !DILocation(line: 96, column: 10, scope: !844)
!862 = !DILocation(line: 97, column: 3, scope: !844)
!863 = !DILocation(line: 101, column: 3, scope: !844)
!864 = !DILocation(line: 103, column: 10, scope: !844)
!865 = !DILocation(line: 104, column: 2, scope: !844)
!866 = !DILocation(line: 106, column: 2, scope: !822)
!867 = !DILocation(line: 107, column: 1, scope: !822)
!868 = !DISubprogram(name: "acpi_ev_is_notify_object", scope: !869, file: !869, line: 39, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!869 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!870 = !DISubroutineType(types: !871)
!871 = !{!37, !24}
!872 = !DISubprogram(name: "acpi_error", scope: !873, file: !873, line: 901, type: !874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!873 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!874 = !DISubroutineType(types: !875)
!875 = !{null, !876, !20, !876, null}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!877 = !DISubprogram(name: "acpi_ut_get_type_name", scope: !878, file: !878, line: 225, type: !879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!878 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!879 = !DISubroutineType(types: !880)
!880 = !{!876, !881}
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !19, line: 644, baseType: !20)
!882 = !DISubprogram(name: "acpi_ev_queue_notify_request", scope: !869, file: !869, line: 44, type: !883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!883 = !DISubroutineType(types: !884)
!884 = !{!18, !24, !20}
!885 = distinct !DISubprogram(name: "acpi_ex_opcode_2A_2T_1R", scope: !3, file: !3, line: 122, type: !132, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !886)
!886 = !{!887, !888, !889, !890, !891, !892}
!887 = !DILocalVariable(name: "walk_state", arg: 1, scope: !885, file: !3, line: 122, type: !134)
!888 = !DILocalVariable(name: "operand", scope: !885, file: !3, line: 124, type: !98)
!889 = !DILocalVariable(name: "return_desc1", scope: !885, file: !3, line: 125, type: !29)
!890 = !DILocalVariable(name: "return_desc2", scope: !885, file: !3, line: 126, type: !29)
!891 = !DILocalVariable(name: "status", scope: !885, file: !3, line: 127, type: !18)
!892 = !DILabel(scope: !885, name: "cleanup", file: !3, line: 185)
!893 = !DILocation(line: 122, column: 61, scope: !885)
!894 = !DILocation(line: 124, column: 2, scope: !885)
!895 = !DILocation(line: 124, column: 30, scope: !885)
!896 = !DILocation(line: 124, column: 41, scope: !885)
!897 = !DILocation(line: 124, column: 53, scope: !885)
!898 = !DILocation(line: 125, column: 2, scope: !885)
!899 = !DILocation(line: 125, column: 29, scope: !885)
!900 = !DILocation(line: 126, column: 2, scope: !885)
!901 = !DILocation(line: 126, column: 29, scope: !885)
!902 = !DILocation(line: 127, column: 2, scope: !885)
!903 = !DILocation(line: 127, column: 14, scope: !885)
!904 = !DILocation(line: 134, column: 10, scope: !885)
!905 = !DILocation(line: 134, column: 22, scope: !885)
!906 = !DILocation(line: 134, column: 2, scope: !885)
!907 = !DILocation(line: 140, column: 7, scope: !908)
!908 = distinct !DILexicalBlock(scope: !885, file: !3, line: 134, column: 30)
!909 = !DILocation(line: 139, column: 16, scope: !908)
!910 = !DILocation(line: 141, column: 8, scope: !911)
!911 = distinct !DILexicalBlock(scope: !908, file: !3, line: 141, column: 7)
!912 = !DILocation(line: 141, column: 7, scope: !908)
!913 = !DILocation(line: 142, column: 11, scope: !914)
!914 = distinct !DILexicalBlock(scope: !911, file: !3, line: 141, column: 22)
!915 = !DILocation(line: 143, column: 4, scope: !914)
!916 = !DILocation(line: 147, column: 7, scope: !908)
!917 = !DILocation(line: 146, column: 16, scope: !908)
!918 = !DILocation(line: 148, column: 8, scope: !919)
!919 = distinct !DILexicalBlock(scope: !908, file: !3, line: 148, column: 7)
!920 = !DILocation(line: 148, column: 7, scope: !908)
!921 = !DILocation(line: 149, column: 11, scope: !922)
!922 = distinct !DILexicalBlock(scope: !919, file: !3, line: 148, column: 22)
!923 = !DILocation(line: 150, column: 4, scope: !922)
!924 = !DILocation(line: 155, column: 27, scope: !908)
!925 = !DILocation(line: 155, column: 47, scope: !908)
!926 = !DILocation(line: 156, column: 6, scope: !908)
!927 = !DILocation(line: 156, column: 26, scope: !908)
!928 = !DILocation(line: 157, column: 7, scope: !908)
!929 = !DILocation(line: 157, column: 29, scope: !908)
!930 = !DILocation(line: 158, column: 7, scope: !908)
!931 = !DILocation(line: 158, column: 29, scope: !908)
!932 = !DILocation(line: 155, column: 12, scope: !908)
!933 = !DILocation(line: 155, column: 10, scope: !908)
!934 = !DILocation(line: 159, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !908, file: !3, line: 159, column: 7)
!936 = !DILocation(line: 159, column: 7, scope: !908)
!937 = !DILocation(line: 160, column: 4, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !3, line: 159, column: 29)
!939 = !DILocation(line: 162, column: 3, scope: !908)
!940 = !DILocation(line: 166, column: 3, scope: !908)
!941 = !DILocation(line: 169, column: 10, scope: !908)
!942 = !DILocation(line: 170, column: 3, scope: !908)
!943 = !DILocation(line: 175, column: 25, scope: !885)
!944 = !DILocation(line: 175, column: 39, scope: !885)
!945 = !DILocation(line: 175, column: 51, scope: !885)
!946 = !DILocation(line: 175, column: 11, scope: !885)
!947 = !DILocation(line: 175, column: 9, scope: !885)
!948 = !DILocation(line: 176, column: 6, scope: !949)
!949 = distinct !DILexicalBlock(scope: !885, file: !3, line: 176, column: 6)
!950 = !DILocation(line: 176, column: 6, scope: !885)
!951 = !DILocation(line: 177, column: 3, scope: !952)
!952 = distinct !DILexicalBlock(scope: !949, file: !3, line: 176, column: 28)
!953 = !DILocation(line: 180, column: 25, scope: !885)
!954 = !DILocation(line: 180, column: 39, scope: !885)
!955 = !DILocation(line: 180, column: 51, scope: !885)
!956 = !DILocation(line: 180, column: 11, scope: !885)
!957 = !DILocation(line: 180, column: 9, scope: !885)
!958 = !DILocation(line: 181, column: 6, scope: !959)
!959 = distinct !DILexicalBlock(scope: !885, file: !3, line: 181, column: 6)
!960 = !DILocation(line: 181, column: 6, scope: !885)
!961 = !DILocation(line: 182, column: 3, scope: !962)
!962 = distinct !DILexicalBlock(scope: !959, file: !3, line: 181, column: 28)
!963 = !DILocation(line: 185, column: 1, scope: !885)
!964 = !DILocation(line: 190, column: 27, scope: !885)
!965 = !DILocation(line: 190, column: 2, scope: !885)
!966 = !DILocation(line: 192, column: 6, scope: !967)
!967 = distinct !DILexicalBlock(scope: !885, file: !3, line: 192, column: 6)
!968 = !DILocation(line: 192, column: 6, scope: !885)
!969 = !DILocation(line: 196, column: 28, scope: !970)
!970 = distinct !DILexicalBlock(scope: !967, file: !3, line: 192, column: 28)
!971 = !DILocation(line: 196, column: 3, scope: !970)
!972 = !DILocation(line: 197, column: 2, scope: !970)
!973 = !DILocation(line: 202, column: 28, scope: !974)
!974 = distinct !DILexicalBlock(scope: !967, file: !3, line: 201, column: 7)
!975 = !DILocation(line: 202, column: 3, scope: !974)
!976 = !DILocation(line: 202, column: 15, scope: !974)
!977 = !DILocation(line: 202, column: 26, scope: !974)
!978 = !DILocation(line: 205, column: 2, scope: !885)
!979 = !DILocation(line: 206, column: 1, scope: !885)
!980 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !878, file: !878, line: 436, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!981 = !DISubroutineType(types: !982)
!982 = !{!29, !876, !20, !20, !881}
!983 = !DISubprogram(name: "acpi_ut_divide", scope: !878, file: !878, line: 537, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!984 = !DISubroutineType(types: !985)
!985 = !{!18, !59, !59, !714, !714}
!986 = !DISubprogram(name: "acpi_ex_store", scope: !987, file: !987, line: 407, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!987 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!988 = !DISubroutineType(types: !989)
!989 = !{!18, !29, !29, !134}
!990 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !878, file: !878, line: 369, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !29}
!993 = distinct !DISubprogram(name: "acpi_ex_opcode_2A_1T_1R", scope: !3, file: !3, line: 221, type: !132, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !994)
!994 = !{!995, !996, !997, !998, !999, !1000, !1002, !1003}
!995 = !DILocalVariable(name: "walk_state", arg: 1, scope: !993, file: !3, line: 221, type: !134)
!996 = !DILocalVariable(name: "operand", scope: !993, file: !3, line: 223, type: !98)
!997 = !DILocalVariable(name: "return_desc", scope: !993, file: !3, line: 224, type: !29)
!998 = !DILocalVariable(name: "index", scope: !993, file: !3, line: 225, type: !59)
!999 = !DILocalVariable(name: "status", scope: !993, file: !3, line: 226, type: !18)
!1000 = !DILocalVariable(name: "length", scope: !993, file: !3, line: 227, type: !1001)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !19, line: 127, baseType: !59)
!1002 = !DILabel(scope: !993, name: "store_result_to_target", file: !3, line: 424)
!1003 = !DILabel(scope: !993, name: "cleanup", file: !3, line: 441)
!1004 = !DILocation(line: 221, column: 61, scope: !993)
!1005 = !DILocation(line: 223, column: 2, scope: !993)
!1006 = !DILocation(line: 223, column: 30, scope: !993)
!1007 = !DILocation(line: 223, column: 41, scope: !993)
!1008 = !DILocation(line: 223, column: 53, scope: !993)
!1009 = !DILocation(line: 224, column: 2, scope: !993)
!1010 = !DILocation(line: 224, column: 29, scope: !993)
!1011 = !DILocation(line: 225, column: 2, scope: !993)
!1012 = !DILocation(line: 225, column: 6, scope: !993)
!1013 = !DILocation(line: 226, column: 2, scope: !993)
!1014 = !DILocation(line: 226, column: 14, scope: !993)
!1015 = !DILocation(line: 227, column: 2, scope: !993)
!1016 = !DILocation(line: 227, column: 12, scope: !993)
!1017 = !DILocation(line: 234, column: 6, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !993, file: !3, line: 234, column: 6)
!1019 = !DILocation(line: 234, column: 18, scope: !1018)
!1020 = !DILocation(line: 234, column: 27, scope: !1018)
!1021 = !DILocation(line: 234, column: 33, scope: !1018)
!1022 = !DILocation(line: 234, column: 6, scope: !993)
!1023 = !DILocation(line: 238, column: 17, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 234, column: 45)
!1025 = !DILocation(line: 238, column: 15, scope: !1024)
!1026 = !DILocation(line: 239, column: 8, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 239, column: 7)
!1028 = !DILocation(line: 239, column: 7, scope: !1024)
!1029 = !DILocation(line: 240, column: 11, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 239, column: 21)
!1031 = !DILocation(line: 241, column: 4, scope: !1030)
!1032 = !DILocation(line: 245, column: 26, scope: !1024)
!1033 = !DILocation(line: 245, column: 38, scope: !1024)
!1034 = !DILocation(line: 246, column: 12, scope: !1024)
!1035 = !DILocation(line: 246, column: 32, scope: !1024)
!1036 = !DILocation(line: 247, column: 12, scope: !1024)
!1037 = !DILocation(line: 247, column: 32, scope: !1024)
!1038 = !DILocation(line: 245, column: 7, scope: !1024)
!1039 = !DILocation(line: 244, column: 3, scope: !1024)
!1040 = !DILocation(line: 244, column: 24, scope: !1024)
!1041 = !DILocation(line: 244, column: 30, scope: !1024)
!1042 = !DILocation(line: 248, column: 3, scope: !1024)
!1043 = !DILocation(line: 251, column: 10, scope: !993)
!1044 = !DILocation(line: 251, column: 22, scope: !993)
!1045 = !DILocation(line: 251, column: 2, scope: !993)
!1046 = !DILocation(line: 254, column: 17, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !993, file: !3, line: 251, column: 30)
!1048 = !DILocation(line: 254, column: 15, scope: !1047)
!1049 = !DILocation(line: 255, column: 8, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 255, column: 7)
!1051 = !DILocation(line: 255, column: 7, scope: !1047)
!1052 = !DILocation(line: 256, column: 11, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 255, column: 21)
!1054 = !DILocation(line: 257, column: 4, scope: !1053)
!1055 = !DILocation(line: 262, column: 27, scope: !1047)
!1056 = !DILocation(line: 262, column: 47, scope: !1047)
!1057 = !DILocation(line: 263, column: 6, scope: !1047)
!1058 = !DILocation(line: 263, column: 26, scope: !1047)
!1059 = !DILocation(line: 264, column: 13, scope: !1047)
!1060 = !DILocation(line: 264, column: 34, scope: !1047)
!1061 = !DILocation(line: 262, column: 12, scope: !1047)
!1062 = !DILocation(line: 262, column: 10, scope: !1047)
!1063 = !DILocation(line: 265, column: 3, scope: !1047)
!1064 = !DILocation(line: 270, column: 30, scope: !1047)
!1065 = !DILocation(line: 270, column: 42, scope: !1047)
!1066 = !DILocation(line: 271, column: 9, scope: !1047)
!1067 = !DILocation(line: 270, column: 7, scope: !1047)
!1068 = !DILocation(line: 269, column: 10, scope: !1047)
!1069 = !DILocation(line: 272, column: 3, scope: !1047)
!1070 = !DILocation(line: 290, column: 3, scope: !1047)
!1071 = !DILocation(line: 290, column: 11, scope: !1047)
!1072 = !DILocation(line: 290, column: 20, scope: !1047)
!1073 = !DILocation(line: 290, column: 39, scope: !1047)
!1074 = !DILocation(line: 290, column: 18, scope: !1047)
!1075 = !DILocation(line: 290, column: 47, scope: !1047)
!1076 = !DILocation(line: 291, column: 11, scope: !1047)
!1077 = !DILocation(line: 291, column: 20, scope: !1047)
!1078 = !DILocation(line: 291, column: 40, scope: !1047)
!1079 = !DILocation(line: 291, column: 18, scope: !1047)
!1080 = !DILocation(line: 291, column: 47, scope: !1047)
!1081 = !DILocation(line: 292, column: 11, scope: !1047)
!1082 = !DILocation(line: 292, column: 30, scope: !1047)
!1083 = !DILocation(line: 292, column: 38, scope: !1047)
!1084 = !DILocation(line: 292, column: 10, scope: !1047)
!1085 = !DILocation(line: 0, scope: !1047)
!1086 = !DILocation(line: 293, column: 10, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 292, column: 48)
!1088 = distinct !{!1088, !1070, !1089, !1090, !1091}
!1089 = !DILocation(line: 294, column: 3, scope: !1047)
!1090 = !{!"llvm.loop.mustprogress"}
!1091 = !{!"llvm.loop.unroll.disable"}
!1092 = !DILocation(line: 298, column: 46, scope: !1047)
!1093 = !DILocation(line: 298, column: 17, scope: !1047)
!1094 = !DILocation(line: 298, column: 15, scope: !1047)
!1095 = !DILocation(line: 299, column: 8, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 299, column: 7)
!1097 = !DILocation(line: 299, column: 7, scope: !1047)
!1098 = !DILocation(line: 300, column: 11, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 299, column: 21)
!1100 = !DILocation(line: 301, column: 4, scope: !1099)
!1101 = !DILocation(line: 308, column: 10, scope: !1047)
!1102 = !DILocation(line: 308, column: 30, scope: !1047)
!1103 = !DILocation(line: 309, column: 10, scope: !1047)
!1104 = !DILocation(line: 309, column: 29, scope: !1047)
!1105 = !DILocation(line: 309, column: 38, scope: !1047)
!1106 = !DILocation(line: 308, column: 3, scope: !1047)
!1107 = !DILocation(line: 310, column: 3, scope: !1047)
!1108 = !DILocation(line: 317, column: 31, scope: !1047)
!1109 = !DILocation(line: 317, column: 43, scope: !1047)
!1110 = !DILocation(line: 318, column: 24, scope: !1047)
!1111 = !DILocation(line: 317, column: 7, scope: !1047)
!1112 = !DILocation(line: 316, column: 10, scope: !1047)
!1113 = !DILocation(line: 319, column: 3, scope: !1047)
!1114 = !DILocation(line: 326, column: 7, scope: !1047)
!1115 = !DILocation(line: 325, column: 15, scope: !1047)
!1116 = !DILocation(line: 327, column: 8, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 327, column: 7)
!1118 = !DILocation(line: 327, column: 7, scope: !1047)
!1119 = !DILocation(line: 328, column: 11, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 327, column: 21)
!1121 = !DILocation(line: 329, column: 4, scope: !1120)
!1122 = !DILocation(line: 334, column: 11, scope: !1047)
!1123 = !DILocation(line: 334, column: 31, scope: !1047)
!1124 = !DILocation(line: 334, column: 9, scope: !1047)
!1125 = !DILocation(line: 335, column: 40, scope: !1047)
!1126 = !DILocation(line: 335, column: 34, scope: !1047)
!1127 = !DILocation(line: 335, column: 3, scope: !1047)
!1128 = !DILocation(line: 335, column: 26, scope: !1047)
!1129 = !DILocation(line: 335, column: 32, scope: !1047)
!1130 = !DILocation(line: 336, column: 3, scope: !1047)
!1131 = !DILocation(line: 336, column: 26, scope: !1047)
!1132 = !DILocation(line: 336, column: 32, scope: !1047)
!1133 = !DILocation(line: 342, column: 12, scope: !1047)
!1134 = !DILocation(line: 342, column: 32, scope: !1047)
!1135 = !DILocation(line: 342, column: 11, scope: !1047)
!1136 = !DILocation(line: 342, column: 3, scope: !1047)
!1137 = !DILocation(line: 345, column: 8, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 345, column: 8)
!1139 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 342, column: 38)
!1140 = !DILocation(line: 345, column: 17, scope: !1138)
!1141 = !DILocation(line: 345, column: 36, scope: !1138)
!1142 = !DILocation(line: 345, column: 14, scope: !1138)
!1143 = !DILocation(line: 345, column: 8, scope: !1139)
!1144 = !DILocation(line: 346, column: 14, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 345, column: 44)
!1146 = !DILocation(line: 346, column: 33, scope: !1145)
!1147 = !DILocation(line: 346, column: 12, scope: !1145)
!1148 = !DILocation(line: 347, column: 12, scope: !1145)
!1149 = !DILocation(line: 348, column: 4, scope: !1145)
!1150 = !DILocation(line: 350, column: 4, scope: !1139)
!1151 = !DILocation(line: 350, column: 27, scope: !1139)
!1152 = !DILocation(line: 350, column: 39, scope: !1139)
!1153 = !DILocation(line: 353, column: 10, scope: !1139)
!1154 = !DILocation(line: 353, column: 29, scope: !1139)
!1155 = !DILocation(line: 353, column: 37, scope: !1139)
!1156 = !DILocation(line: 352, column: 4, scope: !1139)
!1157 = !DILocation(line: 352, column: 27, scope: !1139)
!1158 = !DILocation(line: 352, column: 41, scope: !1139)
!1159 = !DILocation(line: 354, column: 4, scope: !1139)
!1160 = !DILocation(line: 358, column: 8, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 358, column: 8)
!1162 = !DILocation(line: 358, column: 17, scope: !1161)
!1163 = !DILocation(line: 358, column: 36, scope: !1161)
!1164 = !DILocation(line: 358, column: 14, scope: !1161)
!1165 = !DILocation(line: 358, column: 8, scope: !1139)
!1166 = !DILocation(line: 359, column: 14, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 358, column: 44)
!1168 = !DILocation(line: 359, column: 33, scope: !1167)
!1169 = !DILocation(line: 359, column: 12, scope: !1167)
!1170 = !DILocation(line: 360, column: 12, scope: !1167)
!1171 = !DILocation(line: 361, column: 4, scope: !1167)
!1172 = !DILocation(line: 363, column: 4, scope: !1139)
!1173 = !DILocation(line: 363, column: 27, scope: !1139)
!1174 = !DILocation(line: 363, column: 39, scope: !1139)
!1175 = !DILocation(line: 366, column: 10, scope: !1139)
!1176 = !DILocation(line: 366, column: 29, scope: !1139)
!1177 = !DILocation(line: 366, column: 37, scope: !1139)
!1178 = !DILocation(line: 365, column: 4, scope: !1139)
!1179 = !DILocation(line: 365, column: 27, scope: !1139)
!1180 = !DILocation(line: 365, column: 41, scope: !1139)
!1181 = !DILocation(line: 367, column: 4, scope: !1139)
!1182 = !DILocation(line: 371, column: 8, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 371, column: 8)
!1184 = !DILocation(line: 371, column: 17, scope: !1183)
!1185 = !DILocation(line: 371, column: 37, scope: !1183)
!1186 = !DILocation(line: 371, column: 14, scope: !1183)
!1187 = !DILocation(line: 371, column: 8, scope: !1139)
!1188 = !DILocation(line: 372, column: 14, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 371, column: 44)
!1190 = !DILocation(line: 372, column: 34, scope: !1189)
!1191 = !DILocation(line: 372, column: 12, scope: !1189)
!1192 = !DILocation(line: 373, column: 12, scope: !1189)
!1193 = !DILocation(line: 374, column: 4, scope: !1189)
!1194 = !DILocation(line: 376, column: 4, scope: !1139)
!1195 = !DILocation(line: 376, column: 27, scope: !1139)
!1196 = !DILocation(line: 376, column: 39, scope: !1139)
!1197 = !DILocation(line: 378, column: 9, scope: !1139)
!1198 = !DILocation(line: 378, column: 29, scope: !1139)
!1199 = !DILocation(line: 378, column: 38, scope: !1139)
!1200 = !DILocation(line: 377, column: 4, scope: !1139)
!1201 = !DILocation(line: 377, column: 27, scope: !1139)
!1202 = !DILocation(line: 377, column: 33, scope: !1139)
!1203 = !DILocation(line: 379, column: 4, scope: !1139)
!1204 = !DILocation(line: 383, column: 4, scope: !1139)
!1205 = !DILocation(line: 386, column: 11, scope: !1139)
!1206 = !DILocation(line: 387, column: 4, scope: !1139)
!1207 = !DILocation(line: 392, column: 7, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 392, column: 7)
!1209 = !DILocation(line: 392, column: 7, scope: !1047)
!1210 = !DILocation(line: 393, column: 4, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 392, column: 29)
!1212 = !DILocation(line: 397, column: 4, scope: !1211)
!1213 = !DILocation(line: 404, column: 35, scope: !1047)
!1214 = !DILocation(line: 404, column: 3, scope: !1047)
!1215 = !DILocation(line: 404, column: 26, scope: !1047)
!1216 = !DILocation(line: 404, column: 33, scope: !1047)
!1217 = !DILocation(line: 405, column: 25, scope: !1047)
!1218 = !DILocation(line: 405, column: 3, scope: !1047)
!1219 = !DILocation(line: 409, column: 26, scope: !1047)
!1220 = !DILocation(line: 409, column: 39, scope: !1047)
!1221 = !DILocation(line: 409, column: 51, scope: !1047)
!1222 = !DILocation(line: 409, column: 12, scope: !1047)
!1223 = !DILocation(line: 409, column: 10, scope: !1047)
!1224 = !DILocation(line: 413, column: 28, scope: !1047)
!1225 = !DILocation(line: 413, column: 3, scope: !1047)
!1226 = !DILocation(line: 413, column: 15, scope: !1047)
!1227 = !DILocation(line: 413, column: 26, scope: !1047)
!1228 = !DILocation(line: 414, column: 3, scope: !1047)
!1229 = !DILocation(line: 418, column: 3, scope: !1047)
!1230 = !DILocation(line: 420, column: 10, scope: !1047)
!1231 = !DILocation(line: 421, column: 3, scope: !1047)
!1232 = !DILocation(line: 422, column: 2, scope: !1047)
!1233 = !DILocation(line: 424, column: 1, scope: !993)
!1234 = !DILocation(line: 426, column: 6, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !993, file: !3, line: 426, column: 6)
!1236 = !DILocation(line: 426, column: 6, scope: !993)
!1237 = !DILocation(line: 431, column: 26, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 426, column: 28)
!1239 = !DILocation(line: 431, column: 39, scope: !1238)
!1240 = !DILocation(line: 431, column: 51, scope: !1238)
!1241 = !DILocation(line: 431, column: 12, scope: !1238)
!1242 = !DILocation(line: 431, column: 10, scope: !1238)
!1243 = !DILocation(line: 432, column: 7, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 432, column: 7)
!1245 = !DILocation(line: 432, column: 7, scope: !1238)
!1246 = !DILocation(line: 433, column: 4, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 432, column: 29)
!1248 = !DILocation(line: 436, column: 8, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 436, column: 7)
!1250 = !DILocation(line: 436, column: 20, scope: !1249)
!1251 = !DILocation(line: 436, column: 7, scope: !1238)
!1252 = !DILocation(line: 437, column: 29, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 436, column: 32)
!1254 = !DILocation(line: 437, column: 4, scope: !1253)
!1255 = !DILocation(line: 437, column: 16, scope: !1253)
!1256 = !DILocation(line: 437, column: 27, scope: !1253)
!1257 = !DILocation(line: 438, column: 3, scope: !1253)
!1258 = !DILocation(line: 439, column: 2, scope: !1238)
!1259 = !DILocation(line: 441, column: 1, scope: !993)
!1260 = !DILocation(line: 445, column: 6, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !993, file: !3, line: 445, column: 6)
!1262 = !DILocation(line: 445, column: 6, scope: !993)
!1263 = !DILocation(line: 446, column: 28, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 445, column: 28)
!1265 = !DILocation(line: 446, column: 3, scope: !1264)
!1266 = !DILocation(line: 447, column: 3, scope: !1264)
!1267 = !DILocation(line: 447, column: 15, scope: !1264)
!1268 = !DILocation(line: 447, column: 26, scope: !1264)
!1269 = !DILocation(line: 448, column: 2, scope: !1264)
!1270 = !DILocation(line: 450, column: 2, scope: !993)
!1271 = !DILocation(line: 451, column: 1, scope: !993)
!1272 = !DISubprogram(name: "acpi_ex_do_math_op", scope: !987, file: !987, line: 204, type: !1273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!59, !42, !59, !59}
!1275 = !DISubprogram(name: "acpi_ex_do_concatenate", scope: !987, file: !987, line: 190, type: !1276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!18, !29, !29, !98, !134}
!1278 = !DISubprogram(name: "acpi_ut_create_string_object", scope: !878, file: !878, line: 459, type: !1279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!29, !1001}
!1281 = !DISubprogram(name: "acpi_ex_concat_template", scope: !987, file: !987, line: 184, type: !1276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1282 = !DISubprogram(name: "acpi_bios_exception", scope: !873, file: !873, line: 925, type: !1283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{null, !876, !20, !18, !876, null}
!1285 = !DISubprogram(name: "acpi_ut_add_reference", scope: !878, file: !878, line: 367, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1286 = distinct !DISubprogram(name: "acpi_ex_opcode_2A_0T_1R", scope: !3, file: !3, line: 465, type: !132, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1287)
!1287 = !{!1288, !1289, !1290, !1291, !1292, !1293, !1294}
!1288 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1286, file: !3, line: 465, type: !134)
!1289 = !DILocalVariable(name: "operand", scope: !1286, file: !3, line: 467, type: !98)
!1290 = !DILocalVariable(name: "return_desc", scope: !1286, file: !3, line: 468, type: !29)
!1291 = !DILocalVariable(name: "status", scope: !1286, file: !3, line: 469, type: !18)
!1292 = !DILocalVariable(name: "logical_result", scope: !1286, file: !3, line: 470, type: !37)
!1293 = !DILabel(scope: !1286, name: "store_logical_result", file: !3, line: 533)
!1294 = !DILabel(scope: !1286, name: "cleanup", file: !3, line: 542)
!1295 = !DILocation(line: 465, column: 61, scope: !1286)
!1296 = !DILocation(line: 467, column: 2, scope: !1286)
!1297 = !DILocation(line: 467, column: 30, scope: !1286)
!1298 = !DILocation(line: 467, column: 41, scope: !1286)
!1299 = !DILocation(line: 467, column: 53, scope: !1286)
!1300 = !DILocation(line: 468, column: 2, scope: !1286)
!1301 = !DILocation(line: 468, column: 29, scope: !1286)
!1302 = !DILocation(line: 469, column: 2, scope: !1286)
!1303 = !DILocation(line: 469, column: 14, scope: !1286)
!1304 = !DILocation(line: 470, column: 2, scope: !1286)
!1305 = !DILocation(line: 470, column: 5, scope: !1286)
!1306 = !DILocation(line: 477, column: 16, scope: !1286)
!1307 = !DILocation(line: 477, column: 14, scope: !1286)
!1308 = !DILocation(line: 478, column: 7, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 478, column: 6)
!1310 = !DILocation(line: 478, column: 6, scope: !1286)
!1311 = !DILocation(line: 479, column: 10, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 478, column: 20)
!1313 = !DILocation(line: 480, column: 3, scope: !1312)
!1314 = !DILocation(line: 485, column: 6, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 485, column: 6)
!1316 = !DILocation(line: 485, column: 18, scope: !1315)
!1317 = !DILocation(line: 485, column: 27, scope: !1315)
!1318 = !DILocation(line: 485, column: 33, scope: !1315)
!1319 = !DILocation(line: 485, column: 6, scope: !1286)
!1320 = !DILocation(line: 489, column: 42, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 485, column: 56)
!1322 = !DILocation(line: 489, column: 54, scope: !1321)
!1323 = !DILocation(line: 490, column: 14, scope: !1321)
!1324 = !DILocation(line: 491, column: 14, scope: !1321)
!1325 = !DILocation(line: 492, column: 14, scope: !1321)
!1326 = !DILocation(line: 493, column: 14, scope: !1321)
!1327 = !DILocation(line: 489, column: 12, scope: !1321)
!1328 = !DILocation(line: 489, column: 10, scope: !1321)
!1329 = !DILocation(line: 494, column: 3, scope: !1321)
!1330 = !DILocation(line: 495, column: 13, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 495, column: 13)
!1332 = !DILocation(line: 495, column: 25, scope: !1331)
!1333 = !DILocation(line: 495, column: 34, scope: !1331)
!1334 = !DILocation(line: 495, column: 40, scope: !1331)
!1335 = !DILocation(line: 495, column: 13, scope: !1315)
!1336 = !DILocation(line: 499, column: 34, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 495, column: 55)
!1338 = !DILocation(line: 499, column: 46, scope: !1337)
!1339 = !DILocation(line: 499, column: 54, scope: !1337)
!1340 = !DILocation(line: 500, column: 13, scope: !1337)
!1341 = !DILocation(line: 499, column: 12, scope: !1337)
!1342 = !DILocation(line: 499, column: 10, scope: !1337)
!1343 = !DILocation(line: 501, column: 3, scope: !1337)
!1344 = !DILocation(line: 504, column: 10, scope: !1286)
!1345 = !DILocation(line: 504, column: 22, scope: !1286)
!1346 = !DILocation(line: 504, column: 2, scope: !1286)
!1347 = !DILocation(line: 508, column: 29, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 504, column: 30)
!1349 = !DILocation(line: 508, column: 41, scope: !1348)
!1350 = !DILocation(line: 508, column: 53, scope: !1348)
!1351 = !DILocation(line: 508, column: 7, scope: !1348)
!1352 = !DILocation(line: 507, column: 10, scope: !1348)
!1353 = !DILocation(line: 509, column: 7, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 509, column: 7)
!1355 = !DILocation(line: 509, column: 14, scope: !1354)
!1356 = !DILocation(line: 509, column: 7, scope: !1348)
!1357 = !DILocation(line: 510, column: 19, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 509, column: 26)
!1359 = !DILocation(line: 511, column: 11, scope: !1358)
!1360 = !DILocation(line: 512, column: 3, scope: !1358)
!1361 = !DILocation(line: 513, column: 3, scope: !1348)
!1362 = !DILocation(line: 517, column: 38, scope: !1348)
!1363 = !DILocation(line: 517, column: 50, scope: !1348)
!1364 = !DILocation(line: 517, column: 12, scope: !1348)
!1365 = !DILocation(line: 517, column: 10, scope: !1348)
!1366 = !DILocation(line: 518, column: 7, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 518, column: 7)
!1368 = !DILocation(line: 518, column: 14, scope: !1367)
!1369 = !DILocation(line: 518, column: 7, scope: !1348)
!1370 = !DILocation(line: 519, column: 19, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 518, column: 26)
!1372 = !DILocation(line: 520, column: 11, scope: !1371)
!1373 = !DILocation(line: 521, column: 3, scope: !1371)
!1374 = !DILocation(line: 522, column: 3, scope: !1348)
!1375 = !DILocation(line: 526, column: 3, scope: !1348)
!1376 = !DILocation(line: 529, column: 10, scope: !1348)
!1377 = !DILocation(line: 530, column: 3, scope: !1348)
!1378 = !DILocation(line: 531, column: 2, scope: !1348)
!1379 = !DILocation(line: 533, column: 1, scope: !1286)
!1380 = !DILocation(line: 538, column: 6, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 538, column: 6)
!1382 = !DILocation(line: 538, column: 6, scope: !1286)
!1383 = !DILocation(line: 539, column: 3, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 538, column: 22)
!1385 = !DILocation(line: 539, column: 24, scope: !1384)
!1386 = !DILocation(line: 539, column: 30, scope: !1384)
!1387 = !DILocation(line: 540, column: 2, scope: !1384)
!1388 = !DILocation(line: 542, column: 1, scope: !1286)
!1389 = !DILocation(line: 546, column: 6, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 546, column: 6)
!1391 = !DILocation(line: 546, column: 6, scope: !1286)
!1392 = !DILocation(line: 547, column: 28, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 546, column: 28)
!1394 = !DILocation(line: 547, column: 3, scope: !1393)
!1395 = !DILocation(line: 548, column: 2, scope: !1393)
!1396 = !DILocation(line: 553, column: 28, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 552, column: 7)
!1398 = !DILocation(line: 553, column: 3, scope: !1397)
!1399 = !DILocation(line: 553, column: 15, scope: !1397)
!1400 = !DILocation(line: 553, column: 26, scope: !1397)
!1401 = !DILocation(line: 556, column: 2, scope: !1286)
!1402 = !DILocation(line: 557, column: 1, scope: !1286)
!1403 = !DISubprogram(name: "acpi_ex_do_logical_numeric_op", scope: !987, file: !987, line: 196, type: !1404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!18, !42, !59, !59, !83}
!1406 = !DISubprogram(name: "acpi_ex_do_logical_op", scope: !987, file: !987, line: 200, type: !1407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!18, !42, !29, !29, !83}
!1409 = !DISubprogram(name: "acpi_ex_acquire_mutex", scope: !987, file: !987, line: 243, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1410 = !DISubprogram(name: "acpi_ex_system_wait_event", scope: !987, file: !987, line: 307, type: !1411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!18, !29, !29}
