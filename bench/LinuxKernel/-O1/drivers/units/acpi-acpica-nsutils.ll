; ModuleID = 'drivers/acpi/acpica/nsutils.c'
source_filename = "drivers/acpi/acpica/nsutils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i64, ptr }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_namestring_info = type { ptr, ptr, ptr, i32, i32, i32, i8 }
%struct.acpi_common_descriptor = type { ptr, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { ptr, i8, i8, i16, i16, [8 x ptr] }
%struct.acpi_scope_state = type { ptr, i8, i8, i16, i16, ptr }

@.str = private unnamed_addr constant [12 x i8] c"[NULL NAME]\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !12
@_acpi_module_name = internal constant [8 x i8] c"nsutils\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [20 x i8] c"Null Node parameter\00", align 1, !dbg !832
@.str.4 = private unnamed_addr constant [25 x i8] c"Invalid Object Type 0x%X\00", align 1, !dbg !834
@acpi_gbl_ns_properties = external dso_local constant [31 x i8], align 16
@.str.5 = private unnamed_addr constant [22 x i8] c"Invalid internal name\00", align 1, !dbg !839
@acpi_gbl_root_node = external dso_local global ptr, align 8
@_ctype = external dso_local constant [0 x i8], align 1
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !844

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ns_print_node_pathname(ptr noundef %node, ptr noundef %message) #0 align 16 !dbg !860 {
entry:
  %node.addr = alloca ptr, align 8
  %message.addr = alloca ptr, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !865, metadata !DIExpression()), !dbg !873
  store ptr %message, ptr %message.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %message.addr, metadata !866, metadata !DIExpression()), !dbg !874
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #13, !dbg !875
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !867, metadata !DIExpression()), !dbg !876
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !877
  call void @llvm.dbg.declare(metadata ptr %status, metadata !872, metadata !DIExpression()), !dbg !878
  %0 = load ptr, ptr %node.addr, align 8, !dbg !879
  %tobool = icmp ne ptr %0, null, !dbg !879
  br i1 %tobool, label %if.end, label %if.then, !dbg !881

if.then:                                          ; preds = %entry
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str) #14, !dbg !882
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !884

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 0, !dbg !885
  store i64 -2, ptr %length, align 8, !dbg !886
  %1 = load ptr, ptr %node.addr, align 8, !dbg !887
  %call = call i32 @acpi_ns_handle_to_pathname(ptr noundef %1, ptr noundef %buffer, i8 noundef zeroext 1) #14, !dbg !888
  store i32 %call, ptr %status, align 4, !dbg !889
  %2 = load i32, ptr %status, align 4, !dbg !890
  %tobool1 = icmp ne i32 %2, 0, !dbg !890
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !892

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %message.addr, align 8, !dbg !893
  %tobool3 = icmp ne ptr %3, null, !dbg !893
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !896

if.then4:                                         ; preds = %if.then2
  %4 = load ptr, ptr %message.addr, align 8, !dbg !897
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.1, ptr noundef %4) #14, !dbg !899
  br label %if.end5, !dbg !900

if.end5:                                          ; preds = %if.then4, %if.then2
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !901
  %5 = load ptr, ptr %pointer, align 8, !dbg !901
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.2, ptr noundef %5) #14, !dbg !902
  %pointer6 = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !903
  %6 = load ptr, ptr %pointer6, align 8, !dbg !903
  call void @acpi_os_free(ptr noundef %6) #14, !dbg !903
  br label %if.end7, !dbg !904

if.end7:                                          ; preds = %if.end5, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !905
  br label %cleanup, !dbg !905

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !905
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #13, !dbg !905
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !905

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !906 dso_local void @acpi_os_printf(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !910 dso_local i32 @acpi_ns_handle_to_pathname(ptr noundef, ptr noundef, i8 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !915 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !920, metadata !DIExpression()), !dbg !921
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !922
  call void @kfree(ptr noundef %0) #14, !dbg !923
  ret void, !dbg !924
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_get_type(ptr noundef %node) #0 align 16 !dbg !925 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !930, metadata !DIExpression()), !dbg !931
  %0 = load ptr, ptr %node.addr, align 8, !dbg !932
  %tobool = icmp ne ptr %0, null, !dbg !932
  br i1 %tobool, label %if.end, label %if.then, !dbg !934

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 80, ptr noundef @.str.3) #14, !dbg !935
  store i32 0, ptr %retval, align 4, !dbg !937
  br label %return, !dbg !937

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8, !dbg !938
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %1, i32 0, i32 2, !dbg !938
  %2 = load i8, ptr %type, align 1, !dbg !938
  %conv = zext i8 %2 to i32, !dbg !938
  store i32 %conv, ptr %retval, align 4, !dbg !938
  br label %return, !dbg !938

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !939
  ret i32 %3, !dbg !939
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !940 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_local(i32 noundef %type) #0 align 16 !dbg !944 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !948, metadata !DIExpression()), !dbg !949
  %0 = load i32, ptr %type.addr, align 4, !dbg !950
  %call = call zeroext i8 @acpi_ut_valid_object_type(i32 noundef %0) #14, !dbg !952
  %tobool = icmp ne i8 %call, 0, !dbg !952
  br i1 %tobool, label %if.end, label %if.then, !dbg !953

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !954
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 108, ptr noundef @.str.4, i32 noundef %1) #14, !dbg !954
  store i32 0, ptr %retval, align 4, !dbg !956
  br label %return, !dbg !956

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %type.addr, align 4, !dbg !957
  %idxprom = zext i32 %2 to i64, !dbg !957
  %arrayidx = getelementptr [31 x i8], ptr @acpi_gbl_ns_properties, i64 0, i64 %idxprom, !dbg !957
  %3 = load i8, ptr %arrayidx, align 1, !dbg !957
  %conv = zext i8 %3 to i32, !dbg !957
  %and = and i32 %conv, 2, !dbg !957
  store i32 %and, ptr %retval, align 4, !dbg !957
  br label %return, !dbg !957

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !958
  ret i32 %4, !dbg !958
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !959 dso_local zeroext i8 @acpi_ut_valid_object_type(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ns_get_internal_name_length(ptr noundef %info) #0 align 16 !dbg !963 {
entry:
  %info.addr = alloca ptr, align 8
  %next_external_char = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !977, metadata !DIExpression()), !dbg !980
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_external_char) #13, !dbg !981
  call void @llvm.dbg.declare(metadata ptr %next_external_char, metadata !978, metadata !DIExpression()), !dbg !982
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !983
  call void @llvm.dbg.declare(metadata ptr %i, metadata !979, metadata !DIExpression()), !dbg !984
  %0 = load ptr, ptr %info.addr, align 8, !dbg !985
  %external_name = getelementptr inbounds %struct.acpi_namestring_info, ptr %0, i32 0, i32 0, !dbg !986
  %1 = load ptr, ptr %external_name, align 8, !dbg !986
  store ptr %1, ptr %next_external_char, align 8, !dbg !987
  %2 = load ptr, ptr %info.addr, align 8, !dbg !988
  %num_carats = getelementptr inbounds %struct.acpi_namestring_info, ptr %2, i32 0, i32 5, !dbg !989
  store i32 0, ptr %num_carats, align 8, !dbg !990
  %3 = load ptr, ptr %info.addr, align 8, !dbg !991
  %num_segments = getelementptr inbounds %struct.acpi_namestring_info, ptr %3, i32 0, i32 4, !dbg !992
  store i32 0, ptr %num_segments, align 4, !dbg !993
  %4 = load ptr, ptr %info.addr, align 8, !dbg !994
  %fully_qualified = getelementptr inbounds %struct.acpi_namestring_info, ptr %4, i32 0, i32 6, !dbg !995
  store i8 0, ptr %fully_qualified, align 4, !dbg !996
  %5 = load ptr, ptr %next_external_char, align 8, !dbg !997
  %6 = load i8, ptr %5, align 1, !dbg !997
  %conv = zext i8 %6 to i32, !dbg !997
  %cmp = icmp eq i32 %conv, 92, !dbg !997
  br i1 %cmp, label %if.then, label %if.else, !dbg !999

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %info.addr, align 8, !dbg !1000
  %fully_qualified2 = getelementptr inbounds %struct.acpi_namestring_info, ptr %7, i32 0, i32 6, !dbg !1002
  store i8 1, ptr %fully_qualified2, align 4, !dbg !1003
  %8 = load ptr, ptr %next_external_char, align 8, !dbg !1004
  %incdec.ptr = getelementptr i8, ptr %8, i32 1, !dbg !1004
  store ptr %incdec.ptr, ptr %next_external_char, align 8, !dbg !1004
  br label %while.cond, !dbg !1005

while.cond:                                       ; preds = %while.body, %if.then
  %9 = load ptr, ptr %next_external_char, align 8, !dbg !1006
  %10 = load i8, ptr %9, align 1, !dbg !1006
  %conv3 = zext i8 %10 to i32, !dbg !1006
  %cmp4 = icmp eq i32 %conv3, 92, !dbg !1006
  br i1 %cmp4, label %while.body, label %while.end, !dbg !1005

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %next_external_char, align 8, !dbg !1007
  %incdec.ptr6 = getelementptr i8, ptr %11, i32 1, !dbg !1007
  store ptr %incdec.ptr6, ptr %next_external_char, align 8, !dbg !1007
  br label %while.cond, !dbg !1005, !llvm.loop !1009

while.end:                                        ; preds = %while.cond
  br label %if.end, !dbg !1013

if.else:                                          ; preds = %entry
  br label %while.cond7, !dbg !1014

while.cond7:                                      ; preds = %while.body11, %if.else
  %12 = load ptr, ptr %next_external_char, align 8, !dbg !1016
  %13 = load i8, ptr %12, align 1, !dbg !1016
  %conv8 = zext i8 %13 to i32, !dbg !1016
  %cmp9 = icmp eq i32 %conv8, 94, !dbg !1016
  br i1 %cmp9, label %while.body11, label %while.end14, !dbg !1014

while.body11:                                     ; preds = %while.cond7
  %14 = load ptr, ptr %info.addr, align 8, !dbg !1017
  %num_carats12 = getelementptr inbounds %struct.acpi_namestring_info, ptr %14, i32 0, i32 5, !dbg !1019
  %15 = load i32, ptr %num_carats12, align 8, !dbg !1020
  %inc = add i32 %15, 1, !dbg !1020
  store i32 %inc, ptr %num_carats12, align 8, !dbg !1020
  %16 = load ptr, ptr %next_external_char, align 8, !dbg !1021
  %incdec.ptr13 = getelementptr i8, ptr %16, i32 1, !dbg !1021
  store ptr %incdec.ptr13, ptr %next_external_char, align 8, !dbg !1021
  br label %while.cond7, !dbg !1014, !llvm.loop !1022

while.end14:                                      ; preds = %while.cond7
  br label %if.end

if.end:                                           ; preds = %while.end14, %while.end
  %17 = load ptr, ptr %next_external_char, align 8, !dbg !1024
  %18 = load i8, ptr %17, align 1, !dbg !1026
  %tobool = icmp ne i8 %18, 0, !dbg !1026
  br i1 %tobool, label %if.then15, label %if.end28, !dbg !1027

if.then15:                                        ; preds = %if.end
  %19 = load ptr, ptr %info.addr, align 8, !dbg !1028
  %num_segments16 = getelementptr inbounds %struct.acpi_namestring_info, ptr %19, i32 0, i32 4, !dbg !1030
  store i32 1, ptr %num_segments16, align 4, !dbg !1031
  store i32 0, ptr %i, align 4, !dbg !1032
  br label %for.cond, !dbg !1034

for.cond:                                         ; preds = %for.inc, %if.then15
  %20 = load ptr, ptr %next_external_char, align 8, !dbg !1035
  %21 = load i32, ptr %i, align 4, !dbg !1037
  %idxprom = zext i32 %21 to i64, !dbg !1035
  %arrayidx = getelementptr i8, ptr %20, i64 %idxprom, !dbg !1035
  %22 = load i8, ptr %arrayidx, align 1, !dbg !1035
  %tobool17 = icmp ne i8 %22, 0, !dbg !1038
  br i1 %tobool17, label %for.body, label %for.end, !dbg !1038

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %next_external_char, align 8, !dbg !1039
  %24 = load i32, ptr %i, align 4, !dbg !1039
  %idxprom18 = zext i32 %24 to i64, !dbg !1039
  %arrayidx19 = getelementptr i8, ptr %23, i64 %idxprom18, !dbg !1039
  %25 = load i8, ptr %arrayidx19, align 1, !dbg !1039
  %conv20 = zext i8 %25 to i32, !dbg !1039
  %cmp21 = icmp eq i32 %conv20, 46, !dbg !1039
  br i1 %cmp21, label %if.then23, label %if.end26, !dbg !1042

if.then23:                                        ; preds = %for.body
  %26 = load ptr, ptr %info.addr, align 8, !dbg !1043
  %num_segments24 = getelementptr inbounds %struct.acpi_namestring_info, ptr %26, i32 0, i32 4, !dbg !1045
  %27 = load i32, ptr %num_segments24, align 4, !dbg !1046
  %inc25 = add i32 %27, 1, !dbg !1046
  store i32 %inc25, ptr %num_segments24, align 4, !dbg !1046
  br label %if.end26, !dbg !1047

if.end26:                                         ; preds = %if.then23, %for.body
  br label %for.inc, !dbg !1048

for.inc:                                          ; preds = %if.end26
  %28 = load i32, ptr %i, align 4, !dbg !1049
  %inc27 = add i32 %28, 1, !dbg !1049
  store i32 %inc27, ptr %i, align 4, !dbg !1049
  br label %for.cond, !dbg !1050, !llvm.loop !1051

for.end:                                          ; preds = %for.cond
  br label %if.end28, !dbg !1053

if.end28:                                         ; preds = %for.end, %if.end
  %29 = load ptr, ptr %info.addr, align 8, !dbg !1054
  %num_segments29 = getelementptr inbounds %struct.acpi_namestring_info, ptr %29, i32 0, i32 4, !dbg !1055
  %30 = load i32, ptr %num_segments29, align 4, !dbg !1055
  %mul = mul i32 4, %30, !dbg !1056
  %add = add i32 %mul, 4, !dbg !1057
  %31 = load ptr, ptr %info.addr, align 8, !dbg !1058
  %num_carats30 = getelementptr inbounds %struct.acpi_namestring_info, ptr %31, i32 0, i32 5, !dbg !1059
  %32 = load i32, ptr %num_carats30, align 8, !dbg !1059
  %add31 = add i32 %add, %32, !dbg !1060
  %33 = load ptr, ptr %info.addr, align 8, !dbg !1061
  %length = getelementptr inbounds %struct.acpi_namestring_info, ptr %33, i32 0, i32 3, !dbg !1062
  store i32 %add31, ptr %length, align 8, !dbg !1063
  %34 = load ptr, ptr %next_external_char, align 8, !dbg !1064
  %35 = load ptr, ptr %info.addr, align 8, !dbg !1065
  %next_external_char32 = getelementptr inbounds %struct.acpi_namestring_info, ptr %35, i32 0, i32 1, !dbg !1066
  store ptr %34, ptr %next_external_char32, align 8, !dbg !1067
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1068
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_external_char) #13, !dbg !1068
  ret void, !dbg !1068
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_build_internal_name(ptr noundef %info) #0 align 16 !dbg !1069 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %num_segments = alloca i32, align 4
  %internal_name = alloca ptr, align 8
  %external_name = alloca ptr, align 8
  %result = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1073, metadata !DIExpression()), !dbg !1079
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_segments) #13, !dbg !1080
  call void @llvm.dbg.declare(metadata ptr %num_segments, metadata !1074, metadata !DIExpression()), !dbg !1081
  %0 = load ptr, ptr %info.addr, align 8, !dbg !1082
  %num_segments1 = getelementptr inbounds %struct.acpi_namestring_info, ptr %0, i32 0, i32 4, !dbg !1083
  %1 = load i32, ptr %num_segments1, align 4, !dbg !1083
  store i32 %1, ptr %num_segments, align 4, !dbg !1081
  call void @llvm.lifetime.start.p0(i64 8, ptr %internal_name) #13, !dbg !1084
  call void @llvm.dbg.declare(metadata ptr %internal_name, metadata !1075, metadata !DIExpression()), !dbg !1085
  %2 = load ptr, ptr %info.addr, align 8, !dbg !1086
  %internal_name2 = getelementptr inbounds %struct.acpi_namestring_info, ptr %2, i32 0, i32 2, !dbg !1087
  %3 = load ptr, ptr %internal_name2, align 8, !dbg !1087
  store ptr %3, ptr %internal_name, align 8, !dbg !1085
  call void @llvm.lifetime.start.p0(i64 8, ptr %external_name) #13, !dbg !1088
  call void @llvm.dbg.declare(metadata ptr %external_name, metadata !1076, metadata !DIExpression()), !dbg !1089
  %4 = load ptr, ptr %info.addr, align 8, !dbg !1090
  %next_external_char = getelementptr inbounds %struct.acpi_namestring_info, ptr %4, i32 0, i32 1, !dbg !1091
  %5 = load ptr, ptr %next_external_char, align 8, !dbg !1091
  store ptr %5, ptr %external_name, align 8, !dbg !1089
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #13, !dbg !1092
  call void @llvm.dbg.declare(metadata ptr %result, metadata !1077, metadata !DIExpression()), !dbg !1093
  store ptr null, ptr %result, align 8, !dbg !1093
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1094
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1078, metadata !DIExpression()), !dbg !1095
  %6 = load ptr, ptr %info.addr, align 8, !dbg !1096
  %fully_qualified = getelementptr inbounds %struct.acpi_namestring_info, ptr %6, i32 0, i32 6, !dbg !1098
  %7 = load i8, ptr %fully_qualified, align 4, !dbg !1098
  %tobool = icmp ne i8 %7, 0, !dbg !1096
  br i1 %tobool, label %if.then, label %if.else14, !dbg !1099

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %internal_name, align 8, !dbg !1100
  %arrayidx = getelementptr i8, ptr %8, i64 0, !dbg !1100
  store i8 92, ptr %arrayidx, align 1, !dbg !1102
  %9 = load i32, ptr %num_segments, align 4, !dbg !1103
  %cmp = icmp ule i32 %9, 1, !dbg !1105
  br i1 %cmp, label %if.then3, label %if.else, !dbg !1106

if.then3:                                         ; preds = %if.then
  %10 = load ptr, ptr %internal_name, align 8, !dbg !1107
  %arrayidx4 = getelementptr i8, ptr %10, i64 1, !dbg !1107
  store ptr %arrayidx4, ptr %result, align 8, !dbg !1109
  br label %if.end13, !dbg !1110

if.else:                                          ; preds = %if.then
  %11 = load i32, ptr %num_segments, align 4, !dbg !1111
  %cmp5 = icmp eq i32 %11, 2, !dbg !1113
  br i1 %cmp5, label %if.then6, label %if.else9, !dbg !1114

if.then6:                                         ; preds = %if.else
  %12 = load ptr, ptr %internal_name, align 8, !dbg !1115
  %arrayidx7 = getelementptr i8, ptr %12, i64 1, !dbg !1115
  store i8 46, ptr %arrayidx7, align 1, !dbg !1117
  %13 = load ptr, ptr %internal_name, align 8, !dbg !1118
  %arrayidx8 = getelementptr i8, ptr %13, i64 2, !dbg !1118
  store ptr %arrayidx8, ptr %result, align 8, !dbg !1119
  br label %if.end, !dbg !1120

if.else9:                                         ; preds = %if.else
  %14 = load ptr, ptr %internal_name, align 8, !dbg !1121
  %arrayidx10 = getelementptr i8, ptr %14, i64 1, !dbg !1121
  store i8 47, ptr %arrayidx10, align 1, !dbg !1123
  %15 = load i32, ptr %num_segments, align 4, !dbg !1124
  %conv = trunc i32 %15 to i8, !dbg !1125
  %16 = load ptr, ptr %internal_name, align 8, !dbg !1126
  %arrayidx11 = getelementptr i8, ptr %16, i64 2, !dbg !1126
  store i8 %conv, ptr %arrayidx11, align 1, !dbg !1127
  %17 = load ptr, ptr %internal_name, align 8, !dbg !1128
  %arrayidx12 = getelementptr i8, ptr %17, i64 3, !dbg !1128
  store ptr %arrayidx12, ptr %result, align 8, !dbg !1129
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then6
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then3
  br label %if.end47, !dbg !1130

if.else14:                                        ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !1131
  %18 = load ptr, ptr %info.addr, align 8, !dbg !1133
  %num_carats = getelementptr inbounds %struct.acpi_namestring_info, ptr %18, i32 0, i32 5, !dbg !1135
  %19 = load i32, ptr %num_carats, align 8, !dbg !1135
  %tobool15 = icmp ne i32 %19, 0, !dbg !1133
  br i1 %tobool15, label %if.then16, label %if.end21, !dbg !1136

if.then16:                                        ; preds = %if.else14
  store i32 0, ptr %i, align 4, !dbg !1137
  br label %for.cond, !dbg !1140

for.cond:                                         ; preds = %for.inc, %if.then16
  %20 = load i32, ptr %i, align 4, !dbg !1141
  %21 = load ptr, ptr %info.addr, align 8, !dbg !1143
  %num_carats17 = getelementptr inbounds %struct.acpi_namestring_info, ptr %21, i32 0, i32 5, !dbg !1144
  %22 = load i32, ptr %num_carats17, align 8, !dbg !1144
  %cmp18 = icmp ult i32 %20, %22, !dbg !1145
  br i1 %cmp18, label %for.body, label %for.end, !dbg !1146

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %internal_name, align 8, !dbg !1147
  %24 = load i32, ptr %i, align 4, !dbg !1149
  %idxprom = zext i32 %24 to i64, !dbg !1147
  %arrayidx20 = getelementptr i8, ptr %23, i64 %idxprom, !dbg !1147
  store i8 94, ptr %arrayidx20, align 1, !dbg !1150
  br label %for.inc, !dbg !1151

for.inc:                                          ; preds = %for.body
  %25 = load i32, ptr %i, align 4, !dbg !1152
  %inc = add i32 %25, 1, !dbg !1152
  store i32 %inc, ptr %i, align 4, !dbg !1152
  br label %for.cond, !dbg !1153, !llvm.loop !1154

for.end:                                          ; preds = %for.cond
  br label %if.end21, !dbg !1156

if.end21:                                         ; preds = %for.end, %if.else14
  %26 = load i32, ptr %num_segments, align 4, !dbg !1157
  %cmp22 = icmp ule i32 %26, 1, !dbg !1159
  br i1 %cmp22, label %if.then24, label %if.else27, !dbg !1160

if.then24:                                        ; preds = %if.end21
  %27 = load ptr, ptr %internal_name, align 8, !dbg !1161
  %28 = load i32, ptr %i, align 4, !dbg !1163
  %idxprom25 = zext i32 %28 to i64, !dbg !1161
  %arrayidx26 = getelementptr i8, ptr %27, i64 %idxprom25, !dbg !1161
  store ptr %arrayidx26, ptr %result, align 8, !dbg !1164
  br label %if.end46, !dbg !1165

if.else27:                                        ; preds = %if.end21
  %29 = load i32, ptr %num_segments, align 4, !dbg !1166
  %cmp28 = icmp eq i32 %29, 2, !dbg !1168
  br i1 %cmp28, label %if.then30, label %if.else35, !dbg !1169

if.then30:                                        ; preds = %if.else27
  %30 = load ptr, ptr %internal_name, align 8, !dbg !1170
  %31 = load i32, ptr %i, align 4, !dbg !1172
  %idxprom31 = zext i32 %31 to i64, !dbg !1170
  %arrayidx32 = getelementptr i8, ptr %30, i64 %idxprom31, !dbg !1170
  store i8 46, ptr %arrayidx32, align 1, !dbg !1173
  %32 = load ptr, ptr %internal_name, align 8, !dbg !1174
  %33 = load i32, ptr %i, align 4, !dbg !1175
  %conv33 = zext i32 %33 to i64, !dbg !1176
  %add = add i64 %conv33, 1, !dbg !1177
  %arrayidx34 = getelementptr i8, ptr %32, i64 %add, !dbg !1174
  store ptr %arrayidx34, ptr %result, align 8, !dbg !1178
  br label %if.end45, !dbg !1179

if.else35:                                        ; preds = %if.else27
  %34 = load ptr, ptr %internal_name, align 8, !dbg !1180
  %35 = load i32, ptr %i, align 4, !dbg !1182
  %idxprom36 = zext i32 %35 to i64, !dbg !1180
  %arrayidx37 = getelementptr i8, ptr %34, i64 %idxprom36, !dbg !1180
  store i8 47, ptr %arrayidx37, align 1, !dbg !1183
  %36 = load i32, ptr %num_segments, align 4, !dbg !1184
  %conv38 = trunc i32 %36 to i8, !dbg !1185
  %37 = load ptr, ptr %internal_name, align 8, !dbg !1186
  %38 = load i32, ptr %i, align 4, !dbg !1187
  %conv39 = zext i32 %38 to i64, !dbg !1188
  %add40 = add i64 %conv39, 1, !dbg !1189
  %arrayidx41 = getelementptr i8, ptr %37, i64 %add40, !dbg !1186
  store i8 %conv38, ptr %arrayidx41, align 1, !dbg !1190
  %39 = load ptr, ptr %internal_name, align 8, !dbg !1191
  %40 = load i32, ptr %i, align 4, !dbg !1192
  %conv42 = zext i32 %40 to i64, !dbg !1193
  %add43 = add i64 %conv42, 2, !dbg !1194
  %arrayidx44 = getelementptr i8, ptr %39, i64 %add43, !dbg !1191
  store ptr %arrayidx44, ptr %result, align 8, !dbg !1195
  br label %if.end45

if.end45:                                         ; preds = %if.else35, %if.then30
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then24
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end13
  br label %for.cond48, !dbg !1196

for.cond48:                                       ; preds = %for.inc82, %if.end47
  %41 = load i32, ptr %num_segments, align 4, !dbg !1197
  %tobool49 = icmp ne i32 %41, 0, !dbg !1200
  br i1 %tobool49, label %for.body50, label %for.end83, !dbg !1200

for.body50:                                       ; preds = %for.cond48
  store i32 0, ptr %i, align 4, !dbg !1201
  br label %for.cond51, !dbg !1204

for.cond51:                                       ; preds = %for.inc70, %for.body50
  %42 = load i32, ptr %i, align 4, !dbg !1205
  %cmp52 = icmp ult i32 %42, 4, !dbg !1207
  br i1 %cmp52, label %for.body54, label %for.end72, !dbg !1208

for.body54:                                       ; preds = %for.cond51
  %43 = load ptr, ptr %external_name, align 8, !dbg !1209
  %44 = load i8, ptr %43, align 1, !dbg !1209
  %conv55 = zext i8 %44 to i32, !dbg !1209
  %cmp56 = icmp eq i32 %conv55, 46, !dbg !1209
  br i1 %cmp56, label %if.then61, label %lor.lhs.false, !dbg !1212

lor.lhs.false:                                    ; preds = %for.body54
  %45 = load ptr, ptr %external_name, align 8, !dbg !1213
  %46 = load i8, ptr %45, align 1, !dbg !1214
  %conv58 = zext i8 %46 to i32, !dbg !1214
  %cmp59 = icmp eq i32 %conv58, 0, !dbg !1215
  br i1 %cmp59, label %if.then61, label %if.else64, !dbg !1216

if.then61:                                        ; preds = %lor.lhs.false, %for.body54
  %47 = load ptr, ptr %result, align 8, !dbg !1217
  %48 = load i32, ptr %i, align 4, !dbg !1219
  %idxprom62 = zext i32 %48 to i64, !dbg !1217
  %arrayidx63 = getelementptr i8, ptr %47, i64 %idxprom62, !dbg !1217
  store i8 95, ptr %arrayidx63, align 1, !dbg !1220
  br label %if.end69, !dbg !1221

if.else64:                                        ; preds = %lor.lhs.false
  %49 = load ptr, ptr %external_name, align 8, !dbg !1222
  %50 = load i8, ptr %49, align 1, !dbg !1222
  %conv65 = zext i8 %50 to i32, !dbg !1222
  %conv66 = trunc i32 %conv65 to i8, !dbg !1222
  %call = call zeroext i8 @__toupper(i8 noundef zeroext %conv66) #14, !dbg !1222
  %51 = load ptr, ptr %result, align 8, !dbg !1224
  %52 = load i32, ptr %i, align 4, !dbg !1225
  %idxprom67 = zext i32 %52 to i64, !dbg !1224
  %arrayidx68 = getelementptr i8, ptr %51, i64 %idxprom67, !dbg !1224
  store i8 %call, ptr %arrayidx68, align 1, !dbg !1226
  %53 = load ptr, ptr %external_name, align 8, !dbg !1227
  %incdec.ptr = getelementptr i8, ptr %53, i32 1, !dbg !1227
  store ptr %incdec.ptr, ptr %external_name, align 8, !dbg !1227
  br label %if.end69

if.end69:                                         ; preds = %if.else64, %if.then61
  br label %for.inc70, !dbg !1228

for.inc70:                                        ; preds = %if.end69
  %54 = load i32, ptr %i, align 4, !dbg !1229
  %inc71 = add i32 %54, 1, !dbg !1229
  store i32 %inc71, ptr %i, align 4, !dbg !1229
  br label %for.cond51, !dbg !1230, !llvm.loop !1231

for.end72:                                        ; preds = %for.cond51
  %55 = load ptr, ptr %external_name, align 8, !dbg !1233
  %56 = load i8, ptr %55, align 1, !dbg !1233
  %conv73 = zext i8 %56 to i32, !dbg !1233
  %cmp74 = icmp eq i32 %conv73, 46, !dbg !1233
  br i1 %cmp74, label %if.end80, label %land.lhs.true, !dbg !1235

land.lhs.true:                                    ; preds = %for.end72
  %57 = load ptr, ptr %external_name, align 8, !dbg !1236
  %58 = load i8, ptr %57, align 1, !dbg !1237
  %conv76 = zext i8 %58 to i32, !dbg !1237
  %cmp77 = icmp ne i32 %conv76, 0, !dbg !1238
  br i1 %cmp77, label %if.then79, label %if.end80, !dbg !1239

if.then79:                                        ; preds = %land.lhs.true
  store i32 4099, ptr %retval, align 4, !dbg !1240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1240

if.end80:                                         ; preds = %land.lhs.true, %for.end72
  %59 = load ptr, ptr %external_name, align 8, !dbg !1242
  %incdec.ptr81 = getelementptr i8, ptr %59, i32 1, !dbg !1242
  store ptr %incdec.ptr81, ptr %external_name, align 8, !dbg !1242
  %60 = load ptr, ptr %result, align 8, !dbg !1243
  %add.ptr = getelementptr i8, ptr %60, i64 4, !dbg !1243
  store ptr %add.ptr, ptr %result, align 8, !dbg !1243
  br label %for.inc82, !dbg !1244

for.inc82:                                        ; preds = %if.end80
  %61 = load i32, ptr %num_segments, align 4, !dbg !1245
  %dec = add i32 %61, -1, !dbg !1245
  store i32 %dec, ptr %num_segments, align 4, !dbg !1245
  br label %for.cond48, !dbg !1246, !llvm.loop !1247

for.end83:                                        ; preds = %for.cond48
  %62 = load ptr, ptr %result, align 8, !dbg !1249
  store i8 0, ptr %62, align 1, !dbg !1250
  %63 = load ptr, ptr %info.addr, align 8, !dbg !1251
  %fully_qualified84 = getelementptr inbounds %struct.acpi_namestring_info, ptr %63, i32 0, i32 6, !dbg !1253
  %64 = load i8, ptr %fully_qualified84, align 4, !dbg !1253
  %tobool85 = icmp ne i8 %64, 0, !dbg !1251
  br i1 %tobool85, label %if.then86, label %if.else87, !dbg !1254

if.then86:                                        ; preds = %for.end83
  br label %if.end88, !dbg !1255

if.else87:                                        ; preds = %for.end83
  br label %if.end88

if.end88:                                         ; preds = %if.else87, %if.then86
  store i32 0, ptr %retval, align 4, !dbg !1257
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1257

cleanup:                                          ; preds = %if.end88, %if.then79
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1258
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #13, !dbg !1258
  call void @llvm.lifetime.end.p0(i64 8, ptr %external_name) #13, !dbg !1258
  call void @llvm.lifetime.end.p0(i64 8, ptr %internal_name) #13, !dbg !1258
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_segments) #13, !dbg !1258
  %65 = load i32, ptr %retval, align 4, !dbg !1258
  ret i32 %65, !dbg !1258
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__toupper(i8 noundef zeroext %c) #4 align 16 !dbg !1259 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1264, metadata !DIExpression()), !dbg !1265
  %0 = load i8, ptr %c.addr, align 1, !dbg !1266
  %conv = zext i8 %0 to i32, !dbg !1266
  %idxprom = sext i32 %conv to i64, !dbg !1266
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !1266
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1266
  %conv1 = zext i8 %1 to i32, !dbg !1266
  %and = and i32 %conv1, 2, !dbg !1266
  %cmp = icmp ne i32 %and, 0, !dbg !1266
  br i1 %cmp, label %if.then, label %if.end, !dbg !1268

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %c.addr, align 1, !dbg !1269
  %conv3 = zext i8 %2 to i32, !dbg !1269
  %sub = sub i32 %conv3, 32, !dbg !1269
  %conv4 = trunc i32 %sub to i8, !dbg !1269
  store i8 %conv4, ptr %c.addr, align 1, !dbg !1269
  br label %if.end, !dbg !1270

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, ptr %c.addr, align 1, !dbg !1271
  ret i8 %3, !dbg !1272
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_internalize_name(ptr noundef %external_name, ptr noundef %converted_name) #0 align 16 !dbg !1273 {
entry:
  %retval = alloca i32, align 4
  %external_name.addr = alloca ptr, align 8
  %converted_name.addr = alloca ptr, align 8
  %internal_name = alloca ptr, align 8
  %info = alloca %struct.acpi_namestring_info, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %external_name, ptr %external_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %external_name.addr, metadata !1278, metadata !DIExpression()), !dbg !1283
  store ptr %converted_name, ptr %converted_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %converted_name.addr, metadata !1279, metadata !DIExpression()), !dbg !1284
  call void @llvm.lifetime.start.p0(i64 8, ptr %internal_name) #13, !dbg !1285
  call void @llvm.dbg.declare(metadata ptr %internal_name, metadata !1280, metadata !DIExpression()), !dbg !1286
  call void @llvm.lifetime.start.p0(i64 40, ptr %info) #13, !dbg !1287
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1281, metadata !DIExpression()), !dbg !1288
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1289
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1282, metadata !DIExpression()), !dbg !1290
  %0 = load ptr, ptr %external_name.addr, align 8, !dbg !1291
  %tobool = icmp ne ptr %0, null, !dbg !1291
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1293

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %external_name.addr, align 8, !dbg !1294
  %2 = load i8, ptr %1, align 1, !dbg !1295
  %conv = zext i8 %2 to i32, !dbg !1295
  %cmp = icmp eq i32 %conv, 0, !dbg !1296
  br i1 %cmp, label %if.then, label %lor.lhs.false2, !dbg !1297

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %converted_name.addr, align 8, !dbg !1298
  %tobool3 = icmp ne ptr %3, null, !dbg !1298
  br i1 %tobool3, label %if.end, label %if.then, !dbg !1299

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !1300
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1300

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load ptr, ptr %external_name.addr, align 8, !dbg !1302
  %external_name4 = getelementptr inbounds %struct.acpi_namestring_info, ptr %info, i32 0, i32 0, !dbg !1303
  store ptr %4, ptr %external_name4, align 8, !dbg !1304
  call void @acpi_ns_get_internal_name_length(ptr noundef %info) #14, !dbg !1305
  %length = getelementptr inbounds %struct.acpi_namestring_info, ptr %info, i32 0, i32 3, !dbg !1306
  %5 = load i32, ptr %length, align 8, !dbg !1306
  %conv5 = zext i32 %5 to i64, !dbg !1306
  %call = call ptr @acpi_os_allocate_zeroed(i64 noundef %conv5) #14, !dbg !1306
  store ptr %call, ptr %internal_name, align 8, !dbg !1307
  %6 = load ptr, ptr %internal_name, align 8, !dbg !1308
  %tobool6 = icmp ne ptr %6, null, !dbg !1308
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1310

if.then7:                                         ; preds = %if.end
  store i32 4, ptr %retval, align 4, !dbg !1311
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1311

if.end8:                                          ; preds = %if.end
  %7 = load ptr, ptr %internal_name, align 8, !dbg !1313
  %internal_name9 = getelementptr inbounds %struct.acpi_namestring_info, ptr %info, i32 0, i32 2, !dbg !1314
  store ptr %7, ptr %internal_name9, align 8, !dbg !1315
  %call10 = call i32 @acpi_ns_build_internal_name(ptr noundef %info) #14, !dbg !1316
  store i32 %call10, ptr %status, align 4, !dbg !1317
  %8 = load i32, ptr %status, align 4, !dbg !1318
  %tobool11 = icmp ne i32 %8, 0, !dbg !1318
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !1320

if.then12:                                        ; preds = %if.end8
  %9 = load ptr, ptr %internal_name, align 8, !dbg !1321
  call void @acpi_os_free(ptr noundef %9) #14, !dbg !1321
  %10 = load i32, ptr %status, align 4, !dbg !1323
  store i32 %10, ptr %retval, align 4, !dbg !1323
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1323

if.end13:                                         ; preds = %if.end8
  %11 = load ptr, ptr %internal_name, align 8, !dbg !1324
  %12 = load ptr, ptr %converted_name.addr, align 8, !dbg !1325
  store ptr %11, ptr %12, align 8, !dbg !1326
  store i32 0, ptr %retval, align 4, !dbg !1327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1327

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1328
  call void @llvm.lifetime.end.p0(i64 40, ptr %info) #13, !dbg !1328
  call void @llvm.lifetime.end.p0(i64 8, ptr %internal_name) #13, !dbg !1328
  %13 = load i32, ptr %retval, align 4, !dbg !1328
  ret i32 %13, !dbg !1328
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #4 align 16 !dbg !1329 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1333, metadata !DIExpression()), !dbg !1344
  %0 = load i64, ptr %size.addr, align 8, !dbg !1345
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !1346
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1334, metadata !DIExpression()), !dbg !1346
  br label %do.body, !dbg !1346

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !1347
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1336, metadata !DIExpression()), !dbg !1347
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !1347
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1339, metadata !DIExpression()), !dbg !1347
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1347
  %conv = zext i1 %cmp to i32, !dbg !1347
  store i32 1, ptr %tmp, align 4, !dbg !1347
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !1348
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !1348
  %1 = load i32, ptr %tmp, align 4, !dbg !1347
  %call = call i64 @arch_local_save_flags() #14, !dbg !1348
  store i64 %call, ptr %_flags, align 8, !dbg !1348
  br label %do.cond, !dbg !1348

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1348

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !1349
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1340, metadata !DIExpression()), !dbg !1349
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !1349
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1343, metadata !DIExpression()), !dbg !1349
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1349
  %conv6 = zext i1 %cmp5 to i32, !dbg !1349
  store i32 1, ptr %tmp7, align 4, !dbg !1349
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !1350
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !1350
  %2 = load i32, ptr %tmp7, align 4, !dbg !1349
  %3 = load i64, ptr %_flags, align 8, !dbg !1350
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !1350
  store i32 %call9, ptr %tmp8, align 4, !dbg !1350
  %4 = load i32, ptr %tmp8, align 4, !dbg !1350
  store i32 %4, ptr %tmp1, align 4, !dbg !1348
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !1351
  %5 = load i32, ptr %tmp1, align 4, !dbg !1346
  %tobool = icmp ne i32 %5, 0, !dbg !1351
  %6 = zext i1 %tobool to i64, !dbg !1351
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1351
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !1352
  ret ptr %call10, !dbg !1353
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_externalize_name(i32 noundef %internal_name_length, ptr noundef %internal_name, ptr noundef %converted_name_length, ptr noundef %converted_name) #0 align 16 !dbg !1354 {
entry:
  %retval = alloca i32, align 4
  %internal_name_length.addr = alloca i32, align 4
  %internal_name.addr = alloca ptr, align 8
  %converted_name_length.addr = alloca ptr, align 8
  %converted_name.addr = alloca ptr, align 8
  %names_index = alloca i32, align 4
  %num_segments = alloca i32, align 4
  %required_length = alloca i32, align 4
  %prefix_length = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %internal_name_length, ptr %internal_name_length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %internal_name_length.addr, metadata !1358, metadata !DIExpression()), !dbg !1368
  store ptr %internal_name, ptr %internal_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %internal_name.addr, metadata !1359, metadata !DIExpression()), !dbg !1369
  store ptr %converted_name_length, ptr %converted_name_length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %converted_name_length.addr, metadata !1360, metadata !DIExpression()), !dbg !1370
  store ptr %converted_name, ptr %converted_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %converted_name.addr, metadata !1361, metadata !DIExpression()), !dbg !1371
  call void @llvm.lifetime.start.p0(i64 4, ptr %names_index) #13, !dbg !1372
  call void @llvm.dbg.declare(metadata ptr %names_index, metadata !1362, metadata !DIExpression()), !dbg !1373
  store i32 0, ptr %names_index, align 4, !dbg !1373
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_segments) #13, !dbg !1374
  call void @llvm.dbg.declare(metadata ptr %num_segments, metadata !1363, metadata !DIExpression()), !dbg !1375
  store i32 0, ptr %num_segments, align 4, !dbg !1375
  call void @llvm.lifetime.start.p0(i64 4, ptr %required_length) #13, !dbg !1376
  call void @llvm.dbg.declare(metadata ptr %required_length, metadata !1364, metadata !DIExpression()), !dbg !1377
  call void @llvm.lifetime.start.p0(i64 4, ptr %prefix_length) #13, !dbg !1378
  call void @llvm.dbg.declare(metadata ptr %prefix_length, metadata !1365, metadata !DIExpression()), !dbg !1379
  store i32 0, ptr %prefix_length, align 4, !dbg !1379
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1380
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1366, metadata !DIExpression()), !dbg !1381
  store i32 0, ptr %i, align 4, !dbg !1381
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #13, !dbg !1382
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1367, metadata !DIExpression()), !dbg !1383
  store i32 0, ptr %j, align 4, !dbg !1383
  %0 = load i32, ptr %internal_name_length.addr, align 4, !dbg !1384
  %tobool = icmp ne i32 %0, 0, !dbg !1384
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1386

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %internal_name.addr, align 8, !dbg !1387
  %tobool1 = icmp ne ptr %1, null, !dbg !1387
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !1388

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %converted_name.addr, align 8, !dbg !1389
  %tobool3 = icmp ne ptr %2, null, !dbg !1389
  br i1 %tobool3, label %if.end, label %if.then, !dbg !1390

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !1391
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1391

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %internal_name.addr, align 8, !dbg !1393
  %arrayidx = getelementptr i8, ptr %3, i64 0, !dbg !1393
  %4 = load i8, ptr %arrayidx, align 1, !dbg !1393
  %conv = zext i8 %4 to i32, !dbg !1393
  switch i32 %conv, label %sw.default [
    i32 92, label %sw.bb
    i32 94, label %sw.bb4
  ], !dbg !1394

sw.bb:                                            ; preds = %if.end
  store i32 1, ptr %prefix_length, align 4, !dbg !1395
  br label %sw.epilog, !dbg !1397

sw.bb4:                                           ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !1398
  br label %for.cond, !dbg !1400

for.cond:                                         ; preds = %for.inc, %sw.bb4
  %5 = load i32, ptr %i, align 4, !dbg !1401
  %6 = load i32, ptr %internal_name_length.addr, align 4, !dbg !1403
  %cmp = icmp ult i32 %5, %6, !dbg !1404
  br i1 %cmp, label %for.body, label %for.end, !dbg !1405

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %internal_name.addr, align 8, !dbg !1406
  %8 = load i32, ptr %i, align 4, !dbg !1406
  %idxprom = zext i32 %8 to i64, !dbg !1406
  %arrayidx6 = getelementptr i8, ptr %7, i64 %idxprom, !dbg !1406
  %9 = load i8, ptr %arrayidx6, align 1, !dbg !1406
  %conv7 = zext i8 %9 to i32, !dbg !1406
  %cmp8 = icmp eq i32 %conv7, 94, !dbg !1406
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !1409

if.then10:                                        ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !dbg !1410
  %add = add i32 %10, 1, !dbg !1412
  store i32 %add, ptr %prefix_length, align 4, !dbg !1413
  br label %if.end11, !dbg !1414

if.else:                                          ; preds = %for.body
  br label %for.end, !dbg !1415

if.end11:                                         ; preds = %if.then10
  br label %for.inc, !dbg !1417

for.inc:                                          ; preds = %if.end11
  %11 = load i32, ptr %i, align 4, !dbg !1418
  %inc = add i32 %11, 1, !dbg !1418
  store i32 %inc, ptr %i, align 4, !dbg !1418
  br label %for.cond, !dbg !1419, !llvm.loop !1420

for.end:                                          ; preds = %if.else, %for.cond
  %12 = load i32, ptr %i, align 4, !dbg !1422
  %13 = load i32, ptr %internal_name_length.addr, align 4, !dbg !1424
  %cmp12 = icmp eq i32 %12, %13, !dbg !1425
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !1426

if.then14:                                        ; preds = %for.end
  %14 = load i32, ptr %i, align 4, !dbg !1427
  store i32 %14, ptr %prefix_length, align 4, !dbg !1429
  br label %if.end15, !dbg !1430

if.end15:                                         ; preds = %if.then14, %for.end
  br label %sw.epilog, !dbg !1431

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !1432

sw.epilog:                                        ; preds = %sw.default, %if.end15, %sw.bb
  %15 = load i32, ptr %prefix_length, align 4, !dbg !1433
  %16 = load i32, ptr %internal_name_length.addr, align 4, !dbg !1435
  %cmp16 = icmp ult i32 %15, %16, !dbg !1436
  br i1 %cmp16, label %if.then18, label %if.end33, !dbg !1437

if.then18:                                        ; preds = %sw.epilog
  %17 = load ptr, ptr %internal_name.addr, align 8, !dbg !1438
  %18 = load i32, ptr %prefix_length, align 4, !dbg !1440
  %idxprom19 = zext i32 %18 to i64, !dbg !1438
  %arrayidx20 = getelementptr i8, ptr %17, i64 %idxprom19, !dbg !1438
  %19 = load i8, ptr %arrayidx20, align 1, !dbg !1438
  %conv21 = zext i8 %19 to i32, !dbg !1438
  switch i32 %conv21, label %sw.default31 [
    i32 47, label %sw.bb22
    i32 46, label %sw.bb28
    i32 0, label %sw.bb30
  ], !dbg !1441

sw.bb22:                                          ; preds = %if.then18
  %20 = load i32, ptr %prefix_length, align 4, !dbg !1442
  %add23 = add i32 %20, 2, !dbg !1444
  store i32 %add23, ptr %names_index, align 4, !dbg !1445
  %21 = load ptr, ptr %internal_name.addr, align 8, !dbg !1446
  %22 = load i32, ptr %prefix_length, align 4, !dbg !1447
  %conv24 = zext i32 %22 to i64, !dbg !1448
  %add25 = add i64 %conv24, 1, !dbg !1449
  %arrayidx26 = getelementptr i8, ptr %21, i64 %add25, !dbg !1446
  %23 = load i8, ptr %arrayidx26, align 1, !dbg !1446
  %conv27 = zext i8 %23 to i32, !dbg !1450
  store i32 %conv27, ptr %num_segments, align 4, !dbg !1451
  br label %sw.epilog32, !dbg !1452

sw.bb28:                                          ; preds = %if.then18
  %24 = load i32, ptr %prefix_length, align 4, !dbg !1453
  %add29 = add i32 %24, 1, !dbg !1454
  store i32 %add29, ptr %names_index, align 4, !dbg !1455
  store i32 2, ptr %num_segments, align 4, !dbg !1456
  br label %sw.epilog32, !dbg !1457

sw.bb30:                                          ; preds = %if.then18
  store i32 0, ptr %names_index, align 4, !dbg !1458
  store i32 0, ptr %num_segments, align 4, !dbg !1459
  br label %sw.epilog32, !dbg !1460

sw.default31:                                     ; preds = %if.then18
  %25 = load i32, ptr %prefix_length, align 4, !dbg !1461
  store i32 %25, ptr %names_index, align 4, !dbg !1462
  store i32 1, ptr %num_segments, align 4, !dbg !1463
  br label %sw.epilog32, !dbg !1464

sw.epilog32:                                      ; preds = %sw.default31, %sw.bb30, %sw.bb28, %sw.bb22
  br label %if.end33, !dbg !1465

if.end33:                                         ; preds = %sw.epilog32, %sw.epilog
  %26 = load i32, ptr %prefix_length, align 4, !dbg !1466
  %27 = load i32, ptr %num_segments, align 4, !dbg !1467
  %mul = mul i32 4, %27, !dbg !1468
  %add34 = add i32 %26, %mul, !dbg !1469
  %28 = load i32, ptr %num_segments, align 4, !dbg !1470
  %cmp35 = icmp ugt i32 %28, 0, !dbg !1471
  br i1 %cmp35, label %cond.true, label %cond.false, !dbg !1472

cond.true:                                        ; preds = %if.end33
  %29 = load i32, ptr %num_segments, align 4, !dbg !1473
  %sub = sub i32 %29, 1, !dbg !1474
  br label %cond.end, !dbg !1472

cond.false:                                       ; preds = %if.end33
  br label %cond.end, !dbg !1472

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !1472
  %add37 = add i32 %add34, %cond, !dbg !1475
  %add38 = add i32 %add37, 1, !dbg !1476
  store i32 %add38, ptr %required_length, align 4, !dbg !1477
  %30 = load i32, ptr %required_length, align 4, !dbg !1478
  %31 = load i32, ptr %internal_name_length.addr, align 4, !dbg !1480
  %cmp39 = icmp ugt i32 %30, %31, !dbg !1481
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !1482

if.then41:                                        ; preds = %cond.end
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 467, ptr noundef @.str.5) #14, !dbg !1483
  store i32 4099, ptr %retval, align 4, !dbg !1485
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1485

if.end42:                                         ; preds = %cond.end
  %32 = load i32, ptr %required_length, align 4, !dbg !1486
  %conv43 = zext i32 %32 to i64, !dbg !1486
  %call = call ptr @acpi_os_allocate_zeroed(i64 noundef %conv43) #14, !dbg !1486
  %33 = load ptr, ptr %converted_name.addr, align 8, !dbg !1487
  store ptr %call, ptr %33, align 8, !dbg !1488
  %34 = load ptr, ptr %converted_name.addr, align 8, !dbg !1489
  %35 = load ptr, ptr %34, align 8, !dbg !1491
  %tobool44 = icmp ne ptr %35, null, !dbg !1492
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !1493

if.then45:                                        ; preds = %if.end42
  store i32 4, ptr %retval, align 4, !dbg !1494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1494

if.end46:                                         ; preds = %if.end42
  store i32 0, ptr %j, align 4, !dbg !1496
  store i32 0, ptr %i, align 4, !dbg !1497
  br label %for.cond47, !dbg !1499

for.cond47:                                       ; preds = %for.inc56, %if.end46
  %36 = load i32, ptr %i, align 4, !dbg !1500
  %37 = load i32, ptr %prefix_length, align 4, !dbg !1502
  %cmp48 = icmp ult i32 %36, %37, !dbg !1503
  br i1 %cmp48, label %for.body50, label %for.end58, !dbg !1504

for.body50:                                       ; preds = %for.cond47
  %38 = load ptr, ptr %internal_name.addr, align 8, !dbg !1505
  %39 = load i32, ptr %i, align 4, !dbg !1507
  %idxprom51 = zext i32 %39 to i64, !dbg !1505
  %arrayidx52 = getelementptr i8, ptr %38, i64 %idxprom51, !dbg !1505
  %40 = load i8, ptr %arrayidx52, align 1, !dbg !1505
  %41 = load ptr, ptr %converted_name.addr, align 8, !dbg !1508
  %42 = load ptr, ptr %41, align 8, !dbg !1509
  %43 = load i32, ptr %j, align 4, !dbg !1510
  %inc53 = add i32 %43, 1, !dbg !1510
  store i32 %inc53, ptr %j, align 4, !dbg !1510
  %idxprom54 = zext i32 %43 to i64, !dbg !1511
  %arrayidx55 = getelementptr i8, ptr %42, i64 %idxprom54, !dbg !1511
  store i8 %40, ptr %arrayidx55, align 1, !dbg !1512
  br label %for.inc56, !dbg !1513

for.inc56:                                        ; preds = %for.body50
  %44 = load i32, ptr %i, align 4, !dbg !1514
  %inc57 = add i32 %44, 1, !dbg !1514
  store i32 %inc57, ptr %i, align 4, !dbg !1514
  br label %for.cond47, !dbg !1515, !llvm.loop !1516

for.end58:                                        ; preds = %for.cond47
  %45 = load i32, ptr %num_segments, align 4, !dbg !1518
  %cmp59 = icmp ugt i32 %45, 0, !dbg !1520
  br i1 %cmp59, label %if.then61, label %if.end84, !dbg !1521

if.then61:                                        ; preds = %for.end58
  store i32 0, ptr %i, align 4, !dbg !1522
  br label %for.cond62, !dbg !1525

for.cond62:                                       ; preds = %for.inc81, %if.then61
  %46 = load i32, ptr %i, align 4, !dbg !1526
  %47 = load i32, ptr %num_segments, align 4, !dbg !1528
  %cmp63 = icmp ult i32 %46, %47, !dbg !1529
  br i1 %cmp63, label %for.body65, label %for.end83, !dbg !1530

for.body65:                                       ; preds = %for.cond62
  %48 = load i32, ptr %i, align 4, !dbg !1531
  %cmp66 = icmp ugt i32 %48, 0, !dbg !1534
  br i1 %cmp66, label %if.then68, label %if.end72, !dbg !1535

if.then68:                                        ; preds = %for.body65
  %49 = load ptr, ptr %converted_name.addr, align 8, !dbg !1536
  %50 = load ptr, ptr %49, align 8, !dbg !1538
  %51 = load i32, ptr %j, align 4, !dbg !1539
  %inc69 = add i32 %51, 1, !dbg !1539
  store i32 %inc69, ptr %j, align 4, !dbg !1539
  %idxprom70 = zext i32 %51 to i64, !dbg !1540
  %arrayidx71 = getelementptr i8, ptr %50, i64 %idxprom70, !dbg !1540
  store i8 46, ptr %arrayidx71, align 1, !dbg !1541
  br label %if.end72, !dbg !1542

if.end72:                                         ; preds = %if.then68, %for.body65
  %52 = load ptr, ptr %internal_name.addr, align 8, !dbg !1543
  %53 = load i32, ptr %names_index, align 4, !dbg !1543
  %idxprom73 = zext i32 %53 to i64, !dbg !1543
  %arrayidx74 = getelementptr i8, ptr %52, i64 %idxprom73, !dbg !1543
  %54 = ptrtoint ptr %arrayidx74 to i64, !dbg !1543
  %55 = inttoptr i64 %54 to ptr, !dbg !1543
  %56 = load i32, ptr %55, align 4, !dbg !1543
  %57 = load ptr, ptr %converted_name.addr, align 8, !dbg !1543
  %58 = load ptr, ptr %57, align 8, !dbg !1543
  %59 = load i32, ptr %j, align 4, !dbg !1543
  %idxprom75 = zext i32 %59 to i64, !dbg !1543
  %arrayidx76 = getelementptr i8, ptr %58, i64 %idxprom75, !dbg !1543
  %60 = ptrtoint ptr %arrayidx76 to i64, !dbg !1543
  %61 = inttoptr i64 %60 to ptr, !dbg !1543
  store i32 %56, ptr %61, align 4, !dbg !1543
  %62 = load ptr, ptr %converted_name.addr, align 8, !dbg !1544
  %63 = load ptr, ptr %62, align 8, !dbg !1545
  %64 = load i32, ptr %j, align 4, !dbg !1546
  %idxprom77 = zext i32 %64 to i64, !dbg !1547
  %arrayidx78 = getelementptr i8, ptr %63, i64 %idxprom77, !dbg !1547
  call void @acpi_ut_repair_name(ptr noundef %arrayidx78) #14, !dbg !1548
  %65 = load i32, ptr %j, align 4, !dbg !1549
  %add79 = add i32 %65, 4, !dbg !1549
  store i32 %add79, ptr %j, align 4, !dbg !1549
  %66 = load i32, ptr %names_index, align 4, !dbg !1550
  %add80 = add i32 %66, 4, !dbg !1550
  store i32 %add80, ptr %names_index, align 4, !dbg !1550
  br label %for.inc81, !dbg !1551

for.inc81:                                        ; preds = %if.end72
  %67 = load i32, ptr %i, align 4, !dbg !1552
  %inc82 = add i32 %67, 1, !dbg !1552
  store i32 %inc82, ptr %i, align 4, !dbg !1552
  br label %for.cond62, !dbg !1553, !llvm.loop !1554

for.end83:                                        ; preds = %for.cond62
  br label %if.end84, !dbg !1556

if.end84:                                         ; preds = %for.end83, %for.end58
  %68 = load ptr, ptr %converted_name_length.addr, align 8, !dbg !1557
  %tobool85 = icmp ne ptr %68, null, !dbg !1557
  br i1 %tobool85, label %if.then86, label %if.end87, !dbg !1559

if.then86:                                        ; preds = %if.end84
  %69 = load i32, ptr %required_length, align 4, !dbg !1560
  %70 = load ptr, ptr %converted_name_length.addr, align 8, !dbg !1562
  store i32 %69, ptr %70, align 4, !dbg !1563
  br label %if.end87, !dbg !1564

if.end87:                                         ; preds = %if.then86, %if.end84
  store i32 0, ptr %retval, align 4, !dbg !1565
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1565

cleanup:                                          ; preds = %if.end87, %if.then45, %if.then41, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #13, !dbg !1566
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1566
  call void @llvm.lifetime.end.p0(i64 4, ptr %prefix_length) #13, !dbg !1566
  call void @llvm.lifetime.end.p0(i64 4, ptr %required_length) #13, !dbg !1566
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_segments) #13, !dbg !1566
  call void @llvm.lifetime.end.p0(i64 4, ptr %names_index) #13, !dbg !1566
  %71 = load i32, ptr %retval, align 4, !dbg !1566
  ret i32 %71, !dbg !1566
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1567 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1568 dso_local void @acpi_ut_repair_name(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ns_validate_handle(ptr noundef %handle) #0 align 16 !dbg !1571 {
entry:
  %retval = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1575, metadata !DIExpression()), !dbg !1576
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !1577
  %tobool = icmp ne ptr %0, null, !dbg !1577
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1579

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !1580
  %cmp = icmp eq ptr %1, inttoptr (i64 -1 to ptr), !dbg !1581
  br i1 %cmp, label %if.then, label %if.end, !dbg !1582

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1583
  store ptr %2, ptr %retval, align 8, !dbg !1585
  br label %return, !dbg !1585

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %handle.addr, align 8, !dbg !1586
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %3, i32 0, i32 1, !dbg !1586
  %4 = load i8, ptr %descriptor_type, align 8, !dbg !1586
  %conv = zext i8 %4 to i32, !dbg !1586
  %cmp1 = icmp ne i32 %conv, 15, !dbg !1588
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !1589

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !1590
  br label %return, !dbg !1590

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %handle.addr, align 8, !dbg !1592
  %6 = ptrtoint ptr %5 to i64, !dbg !1592
  %7 = inttoptr i64 %6 to ptr, !dbg !1592
  store ptr %7, ptr %retval, align 8, !dbg !1593
  br label %return, !dbg !1593

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %8 = load ptr, ptr %retval, align 8, !dbg !1594
  ret ptr %8, !dbg !1594
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ns_terminate() #0 align 16 !dbg !1595 {
entry:
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1600
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1599, metadata !DIExpression()), !dbg !1601
  %0 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1602
  call void @acpi_ns_delete_namespace_subtree(ptr noundef %0) #14, !dbg !1603
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #14, !dbg !1604
  store i32 %call, ptr %status, align 4, !dbg !1605
  %1 = load i32, ptr %status, align 4, !dbg !1606
  %tobool = icmp ne i32 %1, 0, !dbg !1606
  br i1 %tobool, label %if.then, label %if.end, !dbg !1608

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1609

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1611
  call void @acpi_ns_delete_node(ptr noundef %2) #14, !dbg !1612
  %call1 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #14, !dbg !1613
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1614

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1615
  ret void, !dbg !1615
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1616 dso_local void @acpi_ns_delete_namespace_subtree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1619 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1623 dso_local void @acpi_ns_delete_node(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1624 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_opens_scope(i32 noundef %type) #0 align 16 !dbg !1625 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1627, metadata !DIExpression()), !dbg !1628
  %0 = load i32, ptr %type.addr, align 4, !dbg !1629
  %cmp = icmp ugt i32 %0, 29, !dbg !1631
  br i1 %cmp, label %if.then, label %if.end, !dbg !1632

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !1633
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 605, ptr noundef @.str.4, i32 noundef %1) #14, !dbg !1633
  store i32 0, ptr %retval, align 4, !dbg !1635
  br label %return, !dbg !1635

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %type.addr, align 4, !dbg !1636
  %idxprom = zext i32 %2 to i64, !dbg !1637
  %arrayidx = getelementptr [31 x i8], ptr @acpi_gbl_ns_properties, i64 0, i64 %idxprom, !dbg !1637
  %3 = load i8, ptr %arrayidx, align 1, !dbg !1637
  %conv = zext i8 %3 to i32, !dbg !1638
  %and = and i32 %conv, 1, !dbg !1639
  store i32 %and, ptr %retval, align 4, !dbg !1640
  br label %return, !dbg !1640

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !1641
  ret i32 %4, !dbg !1641
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_get_node_unlocked(ptr noundef %prefix_node, ptr noundef %pathname, i32 noundef %flags, ptr noundef %return_node) #0 align 16 !dbg !1642 {
entry:
  %retval = alloca i32, align 4
  %prefix_node.addr = alloca ptr, align 8
  %pathname.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %return_node.addr = alloca ptr, align 8
  %scope_info = alloca %union.acpi_generic_state, align 8
  %status = alloca i32, align 4
  %internal_path = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %prefix_node, ptr %prefix_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefix_node.addr, metadata !1647, metadata !DIExpression()), !dbg !1654
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !1648, metadata !DIExpression()), !dbg !1655
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1649, metadata !DIExpression()), !dbg !1656
  store ptr %return_node, ptr %return_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_node.addr, metadata !1650, metadata !DIExpression()), !dbg !1657
  call void @llvm.lifetime.start.p0(i64 80, ptr %scope_info) #13, !dbg !1658
  call void @llvm.dbg.declare(metadata ptr %scope_info, metadata !1651, metadata !DIExpression()), !dbg !1659
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1660
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1652, metadata !DIExpression()), !dbg !1661
  call void @llvm.lifetime.start.p0(i64 8, ptr %internal_path) #13, !dbg !1662
  call void @llvm.dbg.declare(metadata ptr %internal_path, metadata !1653, metadata !DIExpression()), !dbg !1663
  %0 = load ptr, ptr %pathname.addr, align 8, !dbg !1664
  %tobool = icmp ne ptr %0, null, !dbg !1664
  br i1 %tobool, label %if.end3, label %if.then, !dbg !1666

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %prefix_node.addr, align 8, !dbg !1667
  %2 = load ptr, ptr %return_node.addr, align 8, !dbg !1669
  store ptr %1, ptr %2, align 8, !dbg !1670
  %3 = load ptr, ptr %prefix_node.addr, align 8, !dbg !1671
  %tobool1 = icmp ne ptr %3, null, !dbg !1671
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !1673

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1674
  %5 = load ptr, ptr %return_node.addr, align 8, !dbg !1676
  store ptr %4, ptr %5, align 8, !dbg !1677
  br label %if.end, !dbg !1678

if.end:                                           ; preds = %if.then2, %if.then
  store i32 0, ptr %retval, align 4, !dbg !1679
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1679

if.end3:                                          ; preds = %entry
  %6 = load ptr, ptr %pathname.addr, align 8, !dbg !1680
  %arrayidx = getelementptr i8, ptr %6, i64 0, !dbg !1680
  %7 = load i8, ptr %arrayidx, align 1, !dbg !1680
  %conv = zext i8 %7 to i32, !dbg !1680
  %cmp = icmp eq i32 %conv, 92, !dbg !1680
  br i1 %cmp, label %land.lhs.true, label %if.end8, !dbg !1682

land.lhs.true:                                    ; preds = %if.end3
  %8 = load ptr, ptr %pathname.addr, align 8, !dbg !1683
  %arrayidx5 = getelementptr i8, ptr %8, i64 1, !dbg !1683
  %9 = load i8, ptr %arrayidx5, align 1, !dbg !1683
  %tobool6 = icmp ne i8 %9, 0, !dbg !1683
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1684

if.then7:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1685
  %11 = load ptr, ptr %return_node.addr, align 8, !dbg !1687
  store ptr %10, ptr %11, align 8, !dbg !1688
  store i32 0, ptr %retval, align 4, !dbg !1689
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1689

if.end8:                                          ; preds = %land.lhs.true, %if.end3
  %12 = load ptr, ptr %pathname.addr, align 8, !dbg !1690
  %call = call i32 @acpi_ns_internalize_name(ptr noundef %12, ptr noundef %internal_path) #14, !dbg !1691
  store i32 %call, ptr %status, align 4, !dbg !1692
  %13 = load i32, ptr %status, align 4, !dbg !1693
  %tobool9 = icmp ne i32 %13, 0, !dbg !1693
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !1695

if.then10:                                        ; preds = %if.end8
  %14 = load i32, ptr %status, align 4, !dbg !1696
  store i32 %14, ptr %retval, align 4, !dbg !1696
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1696

if.end11:                                         ; preds = %if.end8
  %15 = load ptr, ptr %prefix_node.addr, align 8, !dbg !1698
  %node = getelementptr inbounds %struct.acpi_scope_state, ptr %scope_info, i32 0, i32 5, !dbg !1699
  store ptr %15, ptr %node, align 8, !dbg !1700
  %16 = load ptr, ptr %internal_path, align 8, !dbg !1701
  %17 = load i32, ptr %flags.addr, align 4, !dbg !1702
  %or = or i32 %17, 2, !dbg !1703
  %18 = load ptr, ptr %return_node.addr, align 8, !dbg !1704
  %call12 = call i32 @acpi_ns_lookup(ptr noundef %scope_info, ptr noundef %16, i32 noundef 0, i32 noundef 3, i32 noundef %or, ptr noundef null, ptr noundef %18) #14, !dbg !1705
  store i32 %call12, ptr %status, align 4, !dbg !1706
  %19 = load i32, ptr %status, align 4, !dbg !1707
  %tobool13 = icmp ne i32 %19, 0, !dbg !1707
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !1709

if.then14:                                        ; preds = %if.end11
  br label %if.end15, !dbg !1710

if.end15:                                         ; preds = %if.then14, %if.end11
  %20 = load ptr, ptr %internal_path, align 8, !dbg !1712
  call void @acpi_os_free(ptr noundef %20) #14, !dbg !1712
  %21 = load i32, ptr %status, align 4, !dbg !1713
  store i32 %21, ptr %retval, align 4, !dbg !1713
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1713

cleanup:                                          ; preds = %if.end15, %if.then10, %if.then7, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %internal_path) #13, !dbg !1714
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1714
  call void @llvm.lifetime.end.p0(i64 80, ptr %scope_info) #13, !dbg !1714
  %22 = load i32, ptr %retval, align 4, !dbg !1714
  ret i32 %22, !dbg !1714
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1715 dso_local i32 @acpi_ns_lookup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_get_node(ptr noundef %prefix_node, ptr noundef %pathname, i32 noundef %flags, ptr noundef %return_node) #0 align 16 !dbg !1719 {
entry:
  %retval = alloca i32, align 4
  %prefix_node.addr = alloca ptr, align 8
  %pathname.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %return_node.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %prefix_node, ptr %prefix_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefix_node.addr, metadata !1721, metadata !DIExpression()), !dbg !1726
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !1722, metadata !DIExpression()), !dbg !1727
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1723, metadata !DIExpression()), !dbg !1728
  store ptr %return_node, ptr %return_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_node.addr, metadata !1724, metadata !DIExpression()), !dbg !1729
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1730
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1725, metadata !DIExpression()), !dbg !1731
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #14, !dbg !1732
  store i32 %call, ptr %status, align 4, !dbg !1733
  %0 = load i32, ptr %status, align 4, !dbg !1734
  %tobool = icmp ne i32 %0, 0, !dbg !1734
  br i1 %tobool, label %if.then, label %if.end, !dbg !1736

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !1737
  store i32 %1, ptr %retval, align 4, !dbg !1737
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1737

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %prefix_node.addr, align 8, !dbg !1739
  %3 = load ptr, ptr %pathname.addr, align 8, !dbg !1740
  %4 = load i32, ptr %flags.addr, align 4, !dbg !1741
  %5 = load ptr, ptr %return_node.addr, align 8, !dbg !1742
  %call1 = call i32 @acpi_ns_get_node_unlocked(ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #14, !dbg !1743
  store i32 %call1, ptr %status, align 4, !dbg !1744
  %call2 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #14, !dbg !1745
  %6 = load i32, ptr %status, align 4, !dbg !1746
  store i32 %6, ptr %retval, align 4, !dbg !1746
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1746

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1747
  %7 = load i32, ptr %retval, align 4, !dbg !1747
  ret i32 %7, !dbg !1747
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1748 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1753 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1761, metadata !DIExpression()), !dbg !1763
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1762, metadata !DIExpression()), !dbg !1764
  %0 = load i64, ptr %size.addr, align 8, !dbg !1765
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1766
  %or = or i32 %1, 256, !dbg !1767
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !1768
  ret ptr %call, !dbg !1769
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !1770 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !1774
  ret i64 %call, !dbg !1775
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !1776 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1780, metadata !DIExpression()), !dbg !1781
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1782
  %and = and i64 %0, 512, !dbg !1783
  %tobool = icmp ne i64 %and, 0, !dbg !1784
  %lnot = xor i1 %tobool, true, !dbg !1784
  %lnot.ext = zext i1 %lnot to i32, !dbg !1784
  ret i32 %lnot.ext, !dbg !1785
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1786 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1788, metadata !DIExpression()), !dbg !1793
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1789, metadata !DIExpression()), !dbg !1794
  %0 = load i64, ptr %size.addr, align 8, !dbg !1795
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1796
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1797

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1798
  %tobool = icmp ne i64 %2, 0, !dbg !1798
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1799

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !1800
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1790, metadata !DIExpression()), !dbg !1801
  %3 = load i64, ptr %size.addr, align 8, !dbg !1802
  %cmp = icmp ugt i64 %3, 8192, !dbg !1804
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1805

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1806
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1807
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !1808
  store ptr %call, ptr %retval, align 8, !dbg !1809
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1809

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1810
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !1810
  store i32 %call2, ptr %index, align 4, !dbg !1811
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1812
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1813
  %9 = ptrtoint ptr %8 to i64, !dbg !1813
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !1814
  %idxprom = zext i32 %call3 to i64, !dbg !1815
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1815
  %10 = load i32, ptr %index, align 4, !dbg !1816
  %idxprom4 = zext i32 %10 to i64, !dbg !1815
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1815
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1815
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1817
  %13 = load i64, ptr %size.addr, align 8, !dbg !1818
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !1819
  store ptr %call6, ptr %retval, align 8, !dbg !1820
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1820

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !1821
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1822
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1823
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !1824
  store ptr %call8, ptr %retval, align 8, !dbg !1825
  br label %return, !dbg !1825

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1826
  ret ptr %16, !dbg !1826
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1827 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !1828 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1834, metadata !DIExpression()), !dbg !1836
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1835, metadata !DIExpression()), !dbg !1837
  %0 = load i64, ptr %size.addr, align 8, !dbg !1838
  %tobool = icmp ne i64 %0, 0, !dbg !1838
  br i1 %tobool, label %if.end, label %if.then, !dbg !1840

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1841
  br label %return, !dbg !1841

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1842
  %cmp = icmp ule i64 %1, 8, !dbg !1844
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1845

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1846
  br label %return, !dbg !1846

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1847
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1849
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1850

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1851
  %cmp4 = icmp ule i64 %3, 96, !dbg !1852
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1853

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1854
  br label %return, !dbg !1854

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1855
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1857
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1858

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1859
  %cmp9 = icmp ule i64 %5, 192, !dbg !1860
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1861

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1862
  br label %return, !dbg !1862

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1863
  %cmp12 = icmp ule i64 %6, 8, !dbg !1865
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1866

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1867
  br label %return, !dbg !1867

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1868
  %cmp15 = icmp ule i64 %7, 16, !dbg !1870
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1871

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1872
  br label %return, !dbg !1872

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1873
  %cmp18 = icmp ule i64 %8, 32, !dbg !1875
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1876

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1877
  br label %return, !dbg !1877

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1878
  %cmp21 = icmp ule i64 %9, 64, !dbg !1880
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1881

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1882
  br label %return, !dbg !1882

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1883
  %cmp24 = icmp ule i64 %10, 128, !dbg !1885
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1886

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1887
  br label %return, !dbg !1887

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1888
  %cmp27 = icmp ule i64 %11, 256, !dbg !1890
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1891

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1892
  br label %return, !dbg !1892

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1893
  %cmp30 = icmp ule i64 %12, 512, !dbg !1895
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1896

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1897
  br label %return, !dbg !1897

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1898
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1900
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1901

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1902
  br label %return, !dbg !1902

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1903
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1905
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1906

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1907
  br label %return, !dbg !1907

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1908
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1910
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1911

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1912
  br label %return, !dbg !1912

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1913
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1915
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1916

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1917
  br label %return, !dbg !1917

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1918
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1920
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1921

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1922
  br label %return, !dbg !1922

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1923
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1925
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1926

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1927
  br label %return, !dbg !1927

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1928
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1930
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1931

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1932
  br label %return, !dbg !1932

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1933
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1935
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1936

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1937
  br label %return, !dbg !1937

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1938
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1940
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1941

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1942
  br label %return, !dbg !1942

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1943
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1945
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1946

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1947
  br label %return, !dbg !1947

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1948
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1950
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1951

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1952
  br label %return, !dbg !1952

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1953
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1955
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1956

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1957
  br label %return, !dbg !1957

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1958, !range !1960, !noundef !1961
  %tobool69 = trunc i8 %25 to i1, !dbg !1958
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1962

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1963

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !1964, !srcloc !1967
  unreachable, !dbg !1964

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1968

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1969

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1970

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1972

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1970

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 480, i32 0, i64 12) #13, !dbg !1974, !srcloc !1976
  br label %do.end75, !dbg !1974

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1970

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1977
  br label %return, !dbg !1977

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1978
  ret i32 %26, !dbg !1978
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1979 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !1985 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1989, metadata !DIExpression()), !dbg !1991
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1990, metadata !DIExpression()), !dbg !1992
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1993
  %and = and i32 %0, 17, !dbg !1993
  %cmp = icmp eq i32 %and, 0, !dbg !1993
  %lnot = xor i1 %cmp, true, !dbg !1993
  %lnot1 = xor i1 %lnot, true, !dbg !1993
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1993
  %conv = sext i32 %lnot.ext to i64, !dbg !1993
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1993
  %tobool = icmp ne i64 %expval, 0, !dbg !1993
  br i1 %tobool, label %if.then, label %if.end, !dbg !1995

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1996
  br label %return, !dbg !1996

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1997
  %and2 = and i32 %1, 1, !dbg !1999
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1999
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2000

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2001
  br label %return, !dbg !2001

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2002
  br label %return, !dbg !2002

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2004
  ret i32 %2, !dbg !2004
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2005 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2006 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !2007 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !2010
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2009, metadata !DIExpression()), !dbg !2011
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !2012, !srcloc !2013
  %0 = load i64, ptr %flags, align 8, !dbg !2014
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !2015
  ret i64 %0, !dbg !2016
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!851, !852, !853, !854, !855, !856, !857, !858}
!llvm.ident = !{!859}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/nsutils.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7936b89052303ec9aca5983354fb7c8f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 12)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 4)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 3)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !19, file: !2, line: 17, type: !849, isLocal: true, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.nsutils.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22nsutils\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/nsutils.ll drivers/acpi/acpica/nsutils.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !20, retainedTypes: !43, globals: !831, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21, !28, !33}
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 116, baseType: !23, size: 32, elements: !24)
!22 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1)
!26 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2)
!27 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 10, baseType: !23, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!30 = !{!31, !32}
!31 = !DIEnumerator(name: "false", value: 0)
!32 = !DIEnumerator(name: "true", value: 1)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !34, line: 364, baseType: !23, size: 32, elements: !35)
!34 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!35 = !{!36, !37, !38, !39, !40, !41, !42}
!36 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!37 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!38 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!39 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!40 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!41 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!42 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!43 = !{!44, !51, !52, !55, !4, !58, !59, !62, !63, !60, !66, !67, !46, !68, !124, !54, !830, !65}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !45, line: 127, baseType: !46)
!45 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !47, line: 23, baseType: !48)
!47 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !49, line: 31, baseType: !50)
!49 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!50 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !47, line: 17, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !49, line: 21, baseType: !54)
!54 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !47, line: 19, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !49, line: 24, baseType: !57)
!57 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !45, line: 421, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !47, line: 21, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !49, line: 27, baseType: !23)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !64, line: 42, baseType: !65)
!64 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !45, line: 424, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !70, line: 434, size: 1600, elements: !71)
!70 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!71 = !{!72, !77, !828, !829}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !69, file: !70, line: 435, baseType: !73, size: 128)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !70, line: 429, size: 128, elements: !74)
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !73, file: !70, line: 430, baseType: !67, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !73, file: !70, line: 431, baseType: !52, size: 8, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !69, file: !70, line: 436, baseType: !78, size: 576)
!78 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !70, line: 369, size: 576, elements: !79)
!79 = !{!80, !89, !100, !110, !142, !156, !165, !477, !494, !510, !523, !601, !613, !627, !637, !655, !677, !696, !715, !734, !747, !774, !791, !804, !818, !827}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !78, file: !70, line: 370, baseType: !81, size: 128)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !70, line: 73, size: 128, elements: !82)
!82 = !{!83, !85, !86, !87, !88}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !81, file: !70, line: 74, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !81, file: !70, line: 74, baseType: !52, size: 8, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !81, file: !70, line: 74, baseType: !52, size: 8, offset: 72)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !81, file: !70, line: 74, baseType: !55, size: 16, offset: 80)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !81, file: !70, line: 74, baseType: !52, size: 8, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !78, file: !70, line: 371, baseType: !90, size: 192)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !70, line: 76, size: 192, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97, !99}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !90, file: !70, line: 77, baseType: !84, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !90, file: !70, line: 77, baseType: !52, size: 8, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !90, file: !70, line: 77, baseType: !52, size: 8, offset: 72)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !90, file: !70, line: 77, baseType: !55, size: 16, offset: 80)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !90, file: !70, line: 77, baseType: !52, size: 8, offset: 96)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !90, file: !70, line: 77, baseType: !98, size: 24, offset: 104)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 24, elements: !15)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !90, file: !70, line: 78, baseType: !46, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !78, file: !70, line: 372, baseType: !101, size: 256)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !70, line: 93, size: 256, elements: !102)
!102 = !{!103, !104, !105, !106, !107, !108, !109}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !101, file: !70, line: 94, baseType: !84, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !101, file: !70, line: 94, baseType: !52, size: 8, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !101, file: !70, line: 94, baseType: !52, size: 8, offset: 72)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !101, file: !70, line: 94, baseType: !55, size: 16, offset: 80)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !101, file: !70, line: 94, baseType: !52, size: 8, offset: 96)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !101, file: !70, line: 94, baseType: !51, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !101, file: !70, line: 94, baseType: !60, size: 32, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !78, file: !70, line: 373, baseType: !111, size: 384)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !70, line: 97, size: 384, elements: !112)
!112 = !{!113, !114, !115, !116, !117, !118, !120, !121, !122, !123}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !111, file: !70, line: 98, baseType: !84, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !111, file: !70, line: 98, baseType: !52, size: 8, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !70, line: 98, baseType: !52, size: 8, offset: 72)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !111, file: !70, line: 98, baseType: !55, size: 16, offset: 80)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !70, line: 98, baseType: !52, size: 8, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !111, file: !70, line: 98, baseType: !119, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !111, file: !70, line: 98, baseType: !60, size: 32, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !111, file: !70, line: 99, baseType: !60, size: 32, offset: 224)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !111, file: !70, line: 100, baseType: !119, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !111, file: !70, line: 101, baseType: !124, size: 64, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !22, line: 133, size: 384, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !137, !138, !139, !140}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !125, file: !22, line: 134, baseType: !84, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !125, file: !22, line: 135, baseType: !52, size: 8, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !22, line: 136, baseType: !52, size: 8, offset: 72)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !22, line: 137, baseType: !55, size: 16, offset: 80)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !125, file: !22, line: 138, baseType: !132, size: 32, offset: 96)
!132 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !133, line: 328, size: 32, elements: !134)
!133 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !132, file: !133, line: 329, baseType: !60, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !132, file: !133, line: 330, baseType: !9, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !125, file: !22, line: 139, baseType: !124, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !125, file: !22, line: 140, baseType: !124, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !125, file: !22, line: 141, baseType: !124, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !125, file: !22, line: 142, baseType: !141, size: 16, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !45, line: 445, baseType: !55)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !78, file: !70, line: 374, baseType: !143, size: 384)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !70, line: 104, size: 384, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151, !153, !154, !155}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !143, file: !70, line: 105, baseType: !84, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !143, file: !70, line: 105, baseType: !52, size: 8, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !70, line: 105, baseType: !52, size: 8, offset: 72)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !143, file: !70, line: 105, baseType: !55, size: 16, offset: 80)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !143, file: !70, line: 105, baseType: !52, size: 8, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !143, file: !70, line: 105, baseType: !124, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !143, file: !70, line: 106, baseType: !152, size: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !143, file: !70, line: 107, baseType: !119, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !143, file: !70, line: 108, baseType: !60, size: 32, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !143, file: !70, line: 109, baseType: !60, size: 32, offset: 352)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !78, file: !70, line: 375, baseType: !157, size: 192)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !70, line: 118, size: 192, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !164}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !157, file: !70, line: 119, baseType: !84, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !157, file: !70, line: 119, baseType: !52, size: 8, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !157, file: !70, line: 119, baseType: !52, size: 8, offset: 72)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !157, file: !70, line: 119, baseType: !55, size: 16, offset: 80)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !157, file: !70, line: 119, baseType: !52, size: 8, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !157, file: !70, line: 119, baseType: !67, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !78, file: !70, line: 376, baseType: !166, size: 448)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !70, line: 144, size: 448, elements: !167)
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !474, !475, !476}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !166, file: !70, line: 145, baseType: !84, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !166, file: !70, line: 145, baseType: !52, size: 8, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !166, file: !70, line: 145, baseType: !52, size: 8, offset: 72)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !166, file: !70, line: 145, baseType: !55, size: 16, offset: 80)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !166, file: !70, line: 145, baseType: !52, size: 8, offset: 96)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !166, file: !70, line: 145, baseType: !52, size: 8, offset: 104)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !166, file: !70, line: 146, baseType: !52, size: 8, offset: 112)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !166, file: !70, line: 147, baseType: !52, size: 8, offset: 120)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !166, file: !70, line: 148, baseType: !84, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !166, file: !70, line: 149, baseType: !84, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !166, file: !70, line: 150, baseType: !119, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !166, file: !70, line: 154, baseType: !180, size: 64, offset: 320)
!180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !70, line: 151, size: 64, elements: !181)
!181 = !{!182, !473}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !180, file: !70, line: 152, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !22, line: 248, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!59, !187}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !189, line: 37, size: 9024, elements: !190)
!189 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !419, !420, !421, !422, !423, !427, !429, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !456, !457, !458, !459, !460, !461, !462, !463, !465, !471}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !189, line: 38, baseType: !187, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !188, file: !189, line: 39, baseType: !52, size: 8, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !188, file: !189, line: 40, baseType: !52, size: 8, offset: 72)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !188, file: !189, line: 41, baseType: !55, size: 16, offset: 80)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !188, file: !189, line: 42, baseType: !52, size: 8, offset: 96)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !188, file: !189, line: 43, baseType: !52, size: 8, offset: 104)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !188, file: !189, line: 44, baseType: !52, size: 8, offset: 112)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !188, file: !189, line: 45, baseType: !141, size: 16, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !188, file: !189, line: 46, baseType: !52, size: 8, offset: 144)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !188, file: !189, line: 47, baseType: !52, size: 8, offset: 152)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !188, file: !189, line: 48, baseType: !52, size: 8, offset: 160)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !188, file: !189, line: 49, baseType: !52, size: 8, offset: 168)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !188, file: !189, line: 50, baseType: !52, size: 8, offset: 176)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !188, file: !189, line: 51, baseType: !52, size: 8, offset: 184)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !188, file: !189, line: 52, baseType: !52, size: 8, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !188, file: !189, line: 53, baseType: !52, size: 8, offset: 200)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !188, file: !189, line: 54, baseType: !119, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !188, file: !189, line: 55, baseType: !60, size: 32, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !188, file: !189, line: 56, baseType: !60, size: 32, offset: 352)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !188, file: !189, line: 57, baseType: !60, size: 32, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !188, file: !189, line: 58, baseType: !60, size: 32, offset: 416)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !188, file: !189, line: 60, baseType: !213, size: 640, offset: 448)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !22, line: 909, size: 640, elements: !214)
!214 = !{!215, !216, !217, !218, !219, !220, !301, !302, !417, !418}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !213, file: !22, line: 910, baseType: !119, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !213, file: !22, line: 911, baseType: !119, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !213, file: !22, line: 912, baseType: !119, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !213, file: !22, line: 913, baseType: !119, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !213, file: !22, line: 914, baseType: !119, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !213, file: !22, line: 915, baseType: !221, size: 64, offset: 320)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !22, line: 891, size: 1600, elements: !223)
!223 = !{!224, !244, !260}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !222, file: !22, line: 892, baseType: !225, size: 448)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !22, line: 844, size: 448, elements: !226)
!226 = !{!227, !228, !229, !230, !231, !232, !233, !234, !243}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !225, file: !22, line: 845, baseType: !221, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !225, file: !22, line: 845, baseType: !52, size: 8, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !225, file: !22, line: 845, baseType: !52, size: 8, offset: 72)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !225, file: !22, line: 845, baseType: !55, size: 16, offset: 80)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !225, file: !22, line: 845, baseType: !119, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !225, file: !22, line: 845, baseType: !221, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !225, file: !22, line: 845, baseType: !124, size: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !225, file: !22, line: 845, baseType: !235, size: 64, offset: 320)
!235 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !22, line: 732, size: 64, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !235, file: !22, line: 733, baseType: !46, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !235, file: !22, line: 734, baseType: !60, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !235, file: !22, line: 735, baseType: !51, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !235, file: !22, line: 736, baseType: !119, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !235, file: !22, line: 737, baseType: !51, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !235, file: !22, line: 738, baseType: !221, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !225, file: !22, line: 845, baseType: !52, size: 8, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !222, file: !22, line: 893, baseType: !245, size: 640)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !22, line: 851, size: 640, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !245, file: !22, line: 852, baseType: !221, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !245, file: !22, line: 852, baseType: !52, size: 8, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !245, file: !22, line: 852, baseType: !52, size: 8, offset: 72)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !245, file: !22, line: 852, baseType: !55, size: 16, offset: 80)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !245, file: !22, line: 852, baseType: !119, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !245, file: !22, line: 852, baseType: !221, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !245, file: !22, line: 852, baseType: !124, size: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !245, file: !22, line: 852, baseType: !235, size: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !245, file: !22, line: 852, baseType: !52, size: 8, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !245, file: !22, line: 852, baseType: !51, size: 64, offset: 448)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !245, file: !22, line: 853, baseType: !119, size: 64, offset: 512)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !245, file: !22, line: 854, baseType: !60, size: 32, offset: 576)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !245, file: !22, line: 855, baseType: !60, size: 32, offset: 608)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !222, file: !22, line: 894, baseType: !261, size: 1600)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !22, line: 862, size: 1600, elements: !262)
!262 = !{!263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !261, file: !22, line: 863, baseType: !221, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !261, file: !22, line: 863, baseType: !52, size: 8, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !261, file: !22, line: 863, baseType: !52, size: 8, offset: 72)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !261, file: !22, line: 863, baseType: !55, size: 16, offset: 80)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !261, file: !22, line: 863, baseType: !119, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !261, file: !22, line: 863, baseType: !221, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !261, file: !22, line: 863, baseType: !124, size: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !261, file: !22, line: 863, baseType: !235, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !261, file: !22, line: 863, baseType: !52, size: 8, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !261, file: !22, line: 863, baseType: !221, size: 64, offset: 448)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !261, file: !22, line: 864, baseType: !221, size: 64, offset: 512)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !261, file: !22, line: 865, baseType: !51, size: 64, offset: 576)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !261, file: !22, line: 866, baseType: !52, size: 8, offset: 640)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !261, file: !22, line: 867, baseType: !51, size: 64, offset: 704)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !261, file: !22, line: 868, baseType: !51, size: 64, offset: 768)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !261, file: !22, line: 869, baseType: !51, size: 64, offset: 832)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !261, file: !22, line: 870, baseType: !9, size: 32, offset: 896)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !261, file: !22, line: 871, baseType: !60, size: 32, offset: 928)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !261, file: !22, line: 872, baseType: !60, size: 32, offset: 960)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !261, file: !22, line: 873, baseType: !60, size: 32, offset: 992)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !261, file: !22, line: 874, baseType: !60, size: 32, offset: 1024)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !261, file: !22, line: 875, baseType: !60, size: 32, offset: 1056)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !261, file: !22, line: 876, baseType: !60, size: 32, offset: 1088)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !261, file: !22, line: 877, baseType: !60, size: 32, offset: 1120)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !261, file: !22, line: 878, baseType: !60, size: 32, offset: 1152)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !261, file: !22, line: 879, baseType: !60, size: 32, offset: 1184)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !261, file: !22, line: 880, baseType: !60, size: 32, offset: 1216)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !261, file: !22, line: 881, baseType: !60, size: 32, offset: 1248)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !261, file: !22, line: 882, baseType: !60, size: 32, offset: 1280)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !261, file: !22, line: 883, baseType: !60, size: 32, offset: 1312)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !261, file: !22, line: 884, baseType: !55, size: 16, offset: 1344)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !261, file: !22, line: 885, baseType: !52, size: 8, offset: 1360)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !261, file: !22, line: 886, baseType: !52, size: 8, offset: 1368)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !261, file: !22, line: 887, baseType: !52, size: 8, offset: 1376)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !261, file: !22, line: 888, baseType: !298, size: 160, offset: 1384)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 20)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !213, file: !22, line: 916, baseType: !124, size: 64, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !213, file: !22, line: 917, baseType: !303, size: 64, offset: 448)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !22, line: 679, size: 640, elements: !305)
!305 = !{!306, !314, !327, !336, !345, !358, !372, !384, !396}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !304, file: !22, line: 680, baseType: !307, size: 128)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !22, line: 575, size: 128, elements: !308)
!308 = !{!309, !310, !311, !312, !313}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !307, file: !22, line: 576, baseType: !67, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !307, file: !22, line: 576, baseType: !52, size: 8, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !307, file: !22, line: 576, baseType: !52, size: 8, offset: 72)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !307, file: !22, line: 576, baseType: !55, size: 16, offset: 80)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !307, file: !22, line: 576, baseType: !55, size: 16, offset: 96)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !304, file: !22, line: 681, baseType: !315, size: 384)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !22, line: 604, size: 384, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !315, file: !22, line: 605, baseType: !67, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !315, file: !22, line: 605, baseType: !52, size: 8, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !315, file: !22, line: 605, baseType: !52, size: 8, offset: 72)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !315, file: !22, line: 605, baseType: !55, size: 16, offset: 80)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !315, file: !22, line: 605, baseType: !55, size: 16, offset: 96)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !315, file: !22, line: 606, baseType: !55, size: 16, offset: 112)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !315, file: !22, line: 607, baseType: !221, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !315, file: !22, line: 608, baseType: !119, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !315, file: !22, line: 609, baseType: !119, size: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !315, file: !22, line: 610, baseType: !46, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !304, file: !22, line: 682, baseType: !328, size: 192)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !22, line: 582, size: 192, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !328, file: !22, line: 583, baseType: !67, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !328, file: !22, line: 583, baseType: !52, size: 8, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !328, file: !22, line: 583, baseType: !52, size: 8, offset: 72)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !328, file: !22, line: 583, baseType: !55, size: 16, offset: 80)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !328, file: !22, line: 583, baseType: !55, size: 16, offset: 96)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !328, file: !22, line: 584, baseType: !84, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !304, file: !22, line: 683, baseType: !337, size: 192)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !22, line: 616, size: 192, elements: !338)
!338 = !{!339, !340, !341, !342, !343, !344}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !337, file: !22, line: 617, baseType: !67, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !337, file: !22, line: 617, baseType: !52, size: 8, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !337, file: !22, line: 617, baseType: !52, size: 8, offset: 72)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !337, file: !22, line: 617, baseType: !55, size: 16, offset: 80)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !337, file: !22, line: 617, baseType: !55, size: 16, offset: 96)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !337, file: !22, line: 618, baseType: !124, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !304, file: !22, line: 684, baseType: !346, size: 448)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !22, line: 621, size: 448, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355, !356, !357}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !22, line: 622, baseType: !67, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !346, file: !22, line: 622, baseType: !52, size: 8, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !22, line: 622, baseType: !52, size: 8, offset: 72)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !346, file: !22, line: 622, baseType: !55, size: 16, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !22, line: 622, baseType: !55, size: 16, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !346, file: !22, line: 623, baseType: !60, size: 32, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !346, file: !22, line: 624, baseType: !221, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !346, file: !22, line: 625, baseType: !119, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !346, file: !22, line: 626, baseType: !119, size: 64, offset: 320)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !346, file: !22, line: 627, baseType: !60, size: 32, offset: 384)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !304, file: !22, line: 685, baseType: !359, size: 512)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !22, line: 590, size: 512, elements: !360)
!360 = !{!361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !359, file: !22, line: 591, baseType: !67, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !359, file: !22, line: 591, baseType: !52, size: 8, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !359, file: !22, line: 591, baseType: !52, size: 8, offset: 72)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !359, file: !22, line: 591, baseType: !55, size: 16, offset: 80)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !359, file: !22, line: 591, baseType: !55, size: 16, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !359, file: !22, line: 592, baseType: !60, size: 32, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !359, file: !22, line: 593, baseType: !84, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !359, file: !22, line: 594, baseType: !84, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !359, file: !22, line: 595, baseType: !187, size: 64, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !359, file: !22, line: 596, baseType: !67, size: 64, offset: 384)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !359, file: !22, line: 597, baseType: !60, size: 32, offset: 448)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !304, file: !22, line: 686, baseType: !373, size: 320)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !22, line: 634, size: 320, elements: !374)
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382, !383}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !373, file: !22, line: 635, baseType: !67, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !373, file: !22, line: 635, baseType: !52, size: 8, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !373, file: !22, line: 635, baseType: !52, size: 8, offset: 72)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !373, file: !22, line: 635, baseType: !55, size: 16, offset: 80)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !373, file: !22, line: 635, baseType: !55, size: 16, offset: 96)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !373, file: !22, line: 636, baseType: !52, size: 8, offset: 112)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !373, file: !22, line: 637, baseType: !187, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !373, file: !22, line: 638, baseType: !84, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !373, file: !22, line: 639, baseType: !46, size: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !304, file: !22, line: 687, baseType: !385, size: 640)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !22, line: 646, size: 640, elements: !386)
!386 = !{!387, !388, !389, !390, !391, !392}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !385, file: !22, line: 647, baseType: !67, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !385, file: !22, line: 647, baseType: !52, size: 8, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !385, file: !22, line: 647, baseType: !52, size: 8, offset: 72)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !385, file: !22, line: 647, baseType: !55, size: 16, offset: 80)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !385, file: !22, line: 647, baseType: !55, size: 16, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !385, file: !22, line: 648, baseType: !393, size: 512, offset: 128)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 512, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 8)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !304, file: !22, line: 688, baseType: !397, size: 320)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !22, line: 669, size: 320, elements: !398)
!398 = !{!399, !400, !401, !402, !403, !404, !405, !406, !407}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !397, file: !22, line: 670, baseType: !67, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !397, file: !22, line: 670, baseType: !52, size: 8, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !397, file: !22, line: 670, baseType: !52, size: 8, offset: 72)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !397, file: !22, line: 670, baseType: !55, size: 16, offset: 80)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !397, file: !22, line: 670, baseType: !55, size: 16, offset: 96)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !397, file: !22, line: 671, baseType: !52, size: 8, offset: 112)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !397, file: !22, line: 672, baseType: !124, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !397, file: !22, line: 673, baseType: !84, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !397, file: !22, line: 674, baseType: !408, size: 64, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !22, line: 660, size: 128, elements: !410)
!410 = !{!411, !416}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !409, file: !22, line: 661, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !45, line: 1061, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !66, !60, !67}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !409, file: !22, line: 662, baseType: !67, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !213, file: !22, line: 918, baseType: !221, size: 64, offset: 512)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !213, file: !22, line: 919, baseType: !60, size: 32, offset: 576)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !188, file: !189, line: 61, baseType: !60, size: 32, offset: 1088)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !188, file: !189, line: 62, baseType: !60, size: 32, offset: 1120)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !188, file: !189, line: 63, baseType: !55, size: 16, offset: 1152)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !188, file: !189, line: 64, baseType: !52, size: 8, offset: 1168)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !188, file: !189, line: 66, baseType: !424, size: 2688, offset: 1216)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 2688, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 7)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !188, file: !189, line: 67, baseType: !428, size: 3072, offset: 3904)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 3072, elements: !394)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !188, file: !189, line: 68, baseType: !430, size: 576, offset: 6976)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 576, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 9)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !188, file: !189, line: 69, baseType: !152, size: 64, offset: 7552)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !188, file: !189, line: 71, baseType: !119, size: 64, offset: 7616)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !188, file: !189, line: 72, baseType: !152, size: 64, offset: 7680)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !188, file: !189, line: 73, baseType: !303, size: 64, offset: 7744)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !188, file: !189, line: 74, baseType: !124, size: 64, offset: 7808)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !188, file: !189, line: 75, baseType: !84, size: 64, offset: 7872)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !188, file: !189, line: 76, baseType: !124, size: 64, offset: 7936)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !188, file: !189, line: 77, baseType: !221, size: 64, offset: 8000)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !188, file: !189, line: 78, baseType: !84, size: 64, offset: 8064)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !188, file: !189, line: 79, baseType: !124, size: 64, offset: 8128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !188, file: !189, line: 80, baseType: !51, size: 64, offset: 8192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !188, file: !189, line: 81, baseType: !221, size: 64, offset: 8256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !188, file: !189, line: 82, baseType: !446, size: 64, offset: 8320)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !22, line: 718, size: 128, elements: !449)
!449 = !{!450, !451, !452, !453, !454, !455}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !448, file: !22, line: 722, baseType: !60, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !448, file: !22, line: 723, baseType: !60, size: 32, offset: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !448, file: !22, line: 724, baseType: !55, size: 16, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !448, file: !22, line: 725, baseType: !52, size: 8, offset: 80)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !448, file: !22, line: 726, baseType: !52, size: 8, offset: 88)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !448, file: !22, line: 727, baseType: !52, size: 8, offset: 96)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !188, file: !189, line: 83, baseType: !221, size: 64, offset: 8384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !188, file: !189, line: 84, baseType: !84, size: 64, offset: 8448)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !188, file: !189, line: 85, baseType: !303, size: 64, offset: 8512)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !188, file: !189, line: 86, baseType: !84, size: 64, offset: 8576)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !188, file: !189, line: 87, baseType: !303, size: 64, offset: 8640)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !188, file: !189, line: 88, baseType: !221, size: 64, offset: 8704)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !188, file: !189, line: 89, baseType: !221, size: 64, offset: 8768)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !188, file: !189, line: 90, baseType: !464, size: 64, offset: 8832)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !188, file: !189, line: 91, baseType: !466, size: 64, offset: 8896)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !22, line: 652, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!59, !187, !470}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !188, file: !189, line: 92, baseType: !472, size: 64, offset: 8960)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !22, line: 656, baseType: !184)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !180, file: !70, line: 153, baseType: !84, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !166, file: !70, line: 156, baseType: !60, size: 32, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !166, file: !70, line: 157, baseType: !141, size: 16, offset: 416)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !166, file: !70, line: 158, baseType: !52, size: 8, offset: 432)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !78, file: !70, line: 377, baseType: !478, size: 576)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !70, line: 122, size: 576, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !478, file: !70, line: 123, baseType: !84, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !478, file: !70, line: 123, baseType: !52, size: 8, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !478, file: !70, line: 123, baseType: !52, size: 8, offset: 72)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !478, file: !70, line: 123, baseType: !55, size: 16, offset: 80)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !478, file: !70, line: 123, baseType: !52, size: 8, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !478, file: !70, line: 123, baseType: !52, size: 8, offset: 104)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !478, file: !70, line: 124, baseType: !55, size: 16, offset: 112)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !478, file: !70, line: 125, baseType: !67, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !478, file: !70, line: 126, baseType: !46, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !478, file: !70, line: 127, baseType: !464, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !478, file: !70, line: 128, baseType: !84, size: 64, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !478, file: !70, line: 129, baseType: !84, size: 64, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !478, file: !70, line: 130, baseType: !124, size: 64, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !478, file: !70, line: 131, baseType: !52, size: 8, offset: 512)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !78, file: !70, line: 378, baseType: !495, size: 512)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !70, line: 134, size: 512, elements: !496)
!496 = !{!497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !508, !509}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !495, file: !70, line: 135, baseType: !84, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !495, file: !70, line: 135, baseType: !52, size: 8, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !495, file: !70, line: 135, baseType: !52, size: 8, offset: 72)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !495, file: !70, line: 135, baseType: !55, size: 16, offset: 80)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !495, file: !70, line: 135, baseType: !52, size: 8, offset: 96)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !495, file: !70, line: 135, baseType: !52, size: 8, offset: 104)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !495, file: !70, line: 136, baseType: !124, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !495, file: !70, line: 137, baseType: !84, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !495, file: !70, line: 138, baseType: !84, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !495, file: !70, line: 139, baseType: !507, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !45, line: 129, baseType: !46)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !495, file: !70, line: 140, baseType: !60, size: 32, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !495, file: !70, line: 141, baseType: !67, size: 64, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !78, file: !70, line: 379, baseType: !511, size: 320)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !70, line: 185, size: 320, elements: !512)
!512 = !{!513, !514, !515, !516, !517, !518, !522}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !511, file: !70, line: 186, baseType: !84, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !511, file: !70, line: 186, baseType: !52, size: 8, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !511, file: !70, line: 186, baseType: !52, size: 8, offset: 72)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !511, file: !70, line: 186, baseType: !55, size: 16, offset: 80)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !511, file: !70, line: 186, baseType: !52, size: 8, offset: 96)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !511, file: !70, line: 186, baseType: !519, size: 128, offset: 128)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 128, elements: !520)
!520 = !{!521}
!521 = !DISubrange(count: 2)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !511, file: !70, line: 186, baseType: !84, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !78, file: !70, line: 380, baseType: !524, size: 384)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !70, line: 188, size: 384, elements: !525)
!525 = !{!526, !527, !528, !529, !530, !531, !532, !533}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !524, file: !70, line: 189, baseType: !84, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !524, file: !70, line: 189, baseType: !52, size: 8, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !524, file: !70, line: 189, baseType: !52, size: 8, offset: 72)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !524, file: !70, line: 189, baseType: !55, size: 16, offset: 80)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !524, file: !70, line: 189, baseType: !52, size: 8, offset: 96)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !524, file: !70, line: 190, baseType: !519, size: 128, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !524, file: !70, line: 190, baseType: !84, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !524, file: !70, line: 190, baseType: !534, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !22, line: 480, size: 576, elements: !536)
!536 = !{!537, !538, !539, !540, !548, !563, !595, !596, !597, !598, !599, !600}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !535, file: !22, line: 481, baseType: !124, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !535, file: !22, line: 482, baseType: !534, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !535, file: !22, line: 483, baseType: !534, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !535, file: !22, line: 484, baseType: !541, size: 64, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !22, line: 497, size: 256, elements: !543)
!543 = !{!544, !545, !546, !547}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !542, file: !22, line: 498, baseType: !541, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !542, file: !22, line: 499, baseType: !541, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !542, file: !22, line: 500, baseType: !534, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !542, file: !22, line: 501, baseType: !60, size: 32, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !535, file: !22, line: 485, baseType: !549, size: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !22, line: 466, size: 320, elements: !551)
!551 = !{!552, !557, !558, !559, !560, !561, !562}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !550, file: !22, line: 467, baseType: !553, size: 128)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !22, line: 459, size: 128, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !553, file: !22, line: 460, baseType: !52, size: 8)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !553, file: !22, line: 461, baseType: !46, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !550, file: !22, line: 468, baseType: !553, size: 128, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !550, file: !22, line: 469, baseType: !55, size: 16, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !550, file: !22, line: 470, baseType: !52, size: 8, offset: 272)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !550, file: !22, line: 471, baseType: !52, size: 8, offset: 280)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !550, file: !22, line: 472, baseType: !52, size: 8, offset: 288)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !550, file: !22, line: 473, baseType: !52, size: 8, offset: 296)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !535, file: !22, line: 486, baseType: !564, size: 64, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !22, line: 448, size: 192, elements: !566)
!566 = !{!567, !590, !591, !592, !593, !594}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !565, file: !22, line: 449, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !22, line: 438, size: 64, elements: !569)
!569 = !{!570, !571, !584}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !568, file: !22, line: 439, baseType: !124, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !568, file: !22, line: 440, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !22, line: 419, size: 256, elements: !574)
!574 = !{!575, !580, !581, !582, !583}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !573, file: !22, line: 420, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !45, line: 1058, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!60, !66, !60, !67}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !573, file: !22, line: 421, baseType: !67, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !573, file: !22, line: 422, baseType: !124, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !573, file: !22, line: 423, baseType: !52, size: 8, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !573, file: !22, line: 424, baseType: !52, size: 8, offset: 200)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !568, file: !22, line: 441, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !22, line: 429, size: 128, elements: !587)
!587 = !{!588, !589}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !586, file: !22, line: 430, baseType: !124, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !586, file: !22, line: 431, baseType: !585, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !565, file: !22, line: 450, baseType: !549, size: 64, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !565, file: !22, line: 451, baseType: !52, size: 8, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !565, file: !22, line: 452, baseType: !52, size: 8, offset: 136)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !565, file: !22, line: 453, baseType: !52, size: 8, offset: 144)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !565, file: !22, line: 454, baseType: !52, size: 8, offset: 152)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !535, file: !22, line: 487, baseType: !46, size: 64, offset: 384)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !535, file: !22, line: 488, baseType: !60, size: 32, offset: 448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !535, file: !22, line: 489, baseType: !55, size: 16, offset: 480)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !535, file: !22, line: 490, baseType: !55, size: 16, offset: 496)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !535, file: !22, line: 491, baseType: !52, size: 8, offset: 512)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !535, file: !22, line: 492, baseType: !52, size: 8, offset: 520)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !78, file: !70, line: 381, baseType: !602, size: 384)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !70, line: 193, size: 384, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !612}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !602, file: !70, line: 194, baseType: !84, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !602, file: !70, line: 194, baseType: !52, size: 8, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !602, file: !70, line: 194, baseType: !52, size: 8, offset: 72)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !602, file: !70, line: 194, baseType: !55, size: 16, offset: 80)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !602, file: !70, line: 194, baseType: !52, size: 8, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !602, file: !70, line: 194, baseType: !519, size: 128, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !602, file: !70, line: 194, baseType: !84, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !602, file: !70, line: 194, baseType: !60, size: 32, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !602, file: !70, line: 195, baseType: !60, size: 32, offset: 352)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !78, file: !70, line: 382, baseType: !614, size: 384)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !70, line: 198, size: 384, elements: !615)
!615 = !{!616, !617, !618, !619, !620, !621, !622, !623, !624, !625}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !614, file: !70, line: 199, baseType: !84, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !614, file: !70, line: 199, baseType: !52, size: 8, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !614, file: !70, line: 199, baseType: !52, size: 8, offset: 72)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !614, file: !70, line: 199, baseType: !55, size: 16, offset: 80)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !614, file: !70, line: 199, baseType: !52, size: 8, offset: 96)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !614, file: !70, line: 201, baseType: !52, size: 8, offset: 104)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !614, file: !70, line: 202, baseType: !52, size: 8, offset: 112)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !614, file: !70, line: 203, baseType: !519, size: 128, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !614, file: !70, line: 203, baseType: !84, size: 64, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !614, file: !70, line: 203, baseType: !626, size: 64, offset: 320)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !45, line: 128, baseType: !46)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !78, file: !70, line: 383, baseType: !628, size: 320)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !70, line: 206, size: 320, elements: !629)
!629 = !{!630, !631, !632, !633, !634, !635, !636}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !628, file: !70, line: 207, baseType: !84, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !628, file: !70, line: 207, baseType: !52, size: 8, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !628, file: !70, line: 207, baseType: !52, size: 8, offset: 72)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !628, file: !70, line: 207, baseType: !55, size: 16, offset: 80)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !628, file: !70, line: 207, baseType: !52, size: 8, offset: 96)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !628, file: !70, line: 207, baseType: !519, size: 128, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !628, file: !70, line: 207, baseType: !84, size: 64, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !78, file: !70, line: 384, baseType: !638, size: 384)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !70, line: 234, size: 384, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !638, file: !70, line: 235, baseType: !84, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !638, file: !70, line: 235, baseType: !52, size: 8, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !70, line: 235, baseType: !52, size: 8, offset: 72)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !638, file: !70, line: 235, baseType: !55, size: 16, offset: 80)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !70, line: 235, baseType: !52, size: 8, offset: 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !638, file: !70, line: 235, baseType: !52, size: 8, offset: 104)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !638, file: !70, line: 235, baseType: !52, size: 8, offset: 112)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !638, file: !70, line: 235, baseType: !52, size: 8, offset: 120)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !638, file: !70, line: 235, baseType: !124, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !638, file: !70, line: 235, baseType: !60, size: 32, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !638, file: !70, line: 235, baseType: !60, size: 32, offset: 224)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !638, file: !70, line: 235, baseType: !60, size: 32, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !638, file: !70, line: 235, baseType: !52, size: 8, offset: 288)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !638, file: !70, line: 235, baseType: !52, size: 8, offset: 296)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !638, file: !70, line: 235, baseType: !84, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !78, file: !70, line: 385, baseType: !656, size: 576)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !70, line: 238, size: 576, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !656, file: !70, line: 239, baseType: !84, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !656, file: !70, line: 239, baseType: !52, size: 8, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !656, file: !70, line: 239, baseType: !52, size: 8, offset: 72)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !656, file: !70, line: 239, baseType: !55, size: 16, offset: 80)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !656, file: !70, line: 239, baseType: !52, size: 8, offset: 96)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !656, file: !70, line: 239, baseType: !52, size: 8, offset: 104)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !656, file: !70, line: 239, baseType: !52, size: 8, offset: 112)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !656, file: !70, line: 239, baseType: !52, size: 8, offset: 120)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !656, file: !70, line: 239, baseType: !124, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !656, file: !70, line: 239, baseType: !60, size: 32, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !656, file: !70, line: 239, baseType: !60, size: 32, offset: 224)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !656, file: !70, line: 239, baseType: !60, size: 32, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !656, file: !70, line: 239, baseType: !52, size: 8, offset: 288)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !656, file: !70, line: 239, baseType: !52, size: 8, offset: 296)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !656, file: !70, line: 239, baseType: !55, size: 16, offset: 304)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !656, file: !70, line: 240, baseType: !84, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !656, file: !70, line: 241, baseType: !119, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !656, file: !70, line: 242, baseType: !55, size: 16, offset: 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !656, file: !70, line: 243, baseType: !119, size: 64, offset: 512)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !78, file: !70, line: 386, baseType: !678, size: 384)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !70, line: 263, size: 384, elements: !679)
!679 = !{!680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !678, file: !70, line: 264, baseType: !84, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !678, file: !70, line: 264, baseType: !52, size: 8, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !678, file: !70, line: 264, baseType: !52, size: 8, offset: 72)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !678, file: !70, line: 264, baseType: !55, size: 16, offset: 80)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !678, file: !70, line: 264, baseType: !52, size: 8, offset: 96)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !678, file: !70, line: 264, baseType: !52, size: 8, offset: 104)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !678, file: !70, line: 264, baseType: !52, size: 8, offset: 112)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !678, file: !70, line: 264, baseType: !52, size: 8, offset: 120)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !678, file: !70, line: 264, baseType: !124, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !678, file: !70, line: 264, baseType: !60, size: 32, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !678, file: !70, line: 264, baseType: !60, size: 32, offset: 224)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !678, file: !70, line: 264, baseType: !60, size: 32, offset: 256)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !678, file: !70, line: 264, baseType: !52, size: 8, offset: 288)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !678, file: !70, line: 264, baseType: !52, size: 8, offset: 296)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !678, file: !70, line: 264, baseType: !52, size: 8, offset: 304)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !678, file: !70, line: 265, baseType: !84, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !78, file: !70, line: 387, baseType: !697, size: 448)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !70, line: 246, size: 448, elements: !698)
!698 = !{!699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !697, file: !70, line: 247, baseType: !84, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !697, file: !70, line: 247, baseType: !52, size: 8, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !697, file: !70, line: 247, baseType: !52, size: 8, offset: 72)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !697, file: !70, line: 247, baseType: !55, size: 16, offset: 80)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !697, file: !70, line: 247, baseType: !52, size: 8, offset: 96)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !697, file: !70, line: 247, baseType: !52, size: 8, offset: 104)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !697, file: !70, line: 247, baseType: !52, size: 8, offset: 112)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !697, file: !70, line: 247, baseType: !52, size: 8, offset: 120)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !697, file: !70, line: 247, baseType: !124, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !697, file: !70, line: 247, baseType: !60, size: 32, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !697, file: !70, line: 247, baseType: !60, size: 32, offset: 224)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !697, file: !70, line: 247, baseType: !60, size: 32, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !697, file: !70, line: 247, baseType: !52, size: 8, offset: 288)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !697, file: !70, line: 247, baseType: !52, size: 8, offset: 296)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !697, file: !70, line: 247, baseType: !84, size: 64, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !697, file: !70, line: 248, baseType: !84, size: 64, offset: 384)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !78, file: !70, line: 388, baseType: !716, size: 448)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !70, line: 251, size: 448, elements: !717)
!717 = !{!718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !716, file: !70, line: 252, baseType: !84, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !716, file: !70, line: 252, baseType: !52, size: 8, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !716, file: !70, line: 252, baseType: !52, size: 8, offset: 72)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !716, file: !70, line: 252, baseType: !55, size: 16, offset: 80)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !716, file: !70, line: 252, baseType: !52, size: 8, offset: 96)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !716, file: !70, line: 252, baseType: !52, size: 8, offset: 104)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !716, file: !70, line: 252, baseType: !52, size: 8, offset: 112)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !716, file: !70, line: 252, baseType: !52, size: 8, offset: 120)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !716, file: !70, line: 252, baseType: !124, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !716, file: !70, line: 252, baseType: !60, size: 32, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !716, file: !70, line: 252, baseType: !60, size: 32, offset: 224)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !716, file: !70, line: 252, baseType: !60, size: 32, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !716, file: !70, line: 252, baseType: !52, size: 8, offset: 288)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !716, file: !70, line: 252, baseType: !52, size: 8, offset: 296)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !716, file: !70, line: 257, baseType: !84, size: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !716, file: !70, line: 258, baseType: !84, size: 64, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !78, file: !70, line: 389, baseType: !735, size: 512)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !70, line: 274, size: 512, elements: !736)
!736 = !{!737, !738, !739, !740, !741, !742, !743, !744, !745, !746}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !735, file: !70, line: 275, baseType: !84, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !735, file: !70, line: 275, baseType: !52, size: 8, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !735, file: !70, line: 275, baseType: !52, size: 8, offset: 72)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !735, file: !70, line: 275, baseType: !55, size: 16, offset: 80)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !735, file: !70, line: 275, baseType: !52, size: 8, offset: 96)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !735, file: !70, line: 275, baseType: !124, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !735, file: !70, line: 276, baseType: !60, size: 32, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !735, file: !70, line: 277, baseType: !412, size: 64, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !735, file: !70, line: 278, baseType: !67, size: 64, offset: 320)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !735, file: !70, line: 279, baseType: !519, size: 128, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !78, file: !70, line: 390, baseType: !748, size: 576)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !70, line: 282, size: 576, elements: !749)
!749 = !{!750, !751, !752, !753, !754, !755, !756, !757, !763, !764, !765, !766, !772, !773}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !748, file: !70, line: 283, baseType: !84, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !748, file: !70, line: 283, baseType: !52, size: 8, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !748, file: !70, line: 283, baseType: !52, size: 8, offset: 72)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !748, file: !70, line: 283, baseType: !55, size: 16, offset: 80)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !748, file: !70, line: 283, baseType: !52, size: 8, offset: 96)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !748, file: !70, line: 283, baseType: !52, size: 8, offset: 104)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !748, file: !70, line: 284, baseType: !52, size: 8, offset: 112)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !748, file: !70, line: 285, baseType: !758, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !45, line: 1093, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!59, !60, !507, !60, !762, !67, !67}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !748, file: !70, line: 286, baseType: !124, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !748, file: !70, line: 287, baseType: !67, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !748, file: !70, line: 288, baseType: !67, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !748, file: !70, line: 289, baseType: !767, size: 64, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !45, line: 1126, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!59, !66, !60, !67, !771}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !748, file: !70, line: 290, baseType: !84, size: 64, offset: 448)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !748, file: !70, line: 291, baseType: !84, size: 64, offset: 512)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !78, file: !70, line: 391, baseType: !775, size: 512)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !70, line: 309, size: 512, elements: !776)
!776 = !{!777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !775, file: !70, line: 310, baseType: !84, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !775, file: !70, line: 310, baseType: !52, size: 8, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !775, file: !70, line: 310, baseType: !52, size: 8, offset: 72)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !775, file: !70, line: 310, baseType: !55, size: 16, offset: 80)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !70, line: 310, baseType: !52, size: 8, offset: 96)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !775, file: !70, line: 310, baseType: !52, size: 8, offset: 104)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !775, file: !70, line: 311, baseType: !52, size: 8, offset: 112)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !775, file: !70, line: 312, baseType: !52, size: 8, offset: 120)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !775, file: !70, line: 313, baseType: !67, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !775, file: !70, line: 314, baseType: !124, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !775, file: !70, line: 315, baseType: !152, size: 64, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !775, file: !70, line: 316, baseType: !119, size: 64, offset: 320)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !775, file: !70, line: 317, baseType: !119, size: 64, offset: 384)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !775, file: !70, line: 318, baseType: !60, size: 32, offset: 448)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !78, file: !70, line: 392, baseType: !792, size: 448)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !70, line: 342, size: 448, elements: !793)
!793 = !{!794, !795, !796, !797, !798, !799, !800, !801, !802, !803}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !792, file: !70, line: 343, baseType: !84, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !792, file: !70, line: 343, baseType: !52, size: 8, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !792, file: !70, line: 343, baseType: !52, size: 8, offset: 72)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !792, file: !70, line: 343, baseType: !55, size: 16, offset: 80)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !792, file: !70, line: 343, baseType: !52, size: 8, offset: 96)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !792, file: !70, line: 343, baseType: !124, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !792, file: !70, line: 344, baseType: !124, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !792, file: !70, line: 345, baseType: !67, size: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !792, file: !70, line: 346, baseType: !119, size: 64, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !792, file: !70, line: 347, baseType: !60, size: 32, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !78, file: !70, line: 393, baseType: !805, size: 256)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !70, line: 352, size: 256, elements: !806)
!806 = !{!807, !808, !809, !810, !811, !812, !817}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !805, file: !70, line: 353, baseType: !84, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !805, file: !70, line: 353, baseType: !52, size: 8, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !805, file: !70, line: 353, baseType: !52, size: 8, offset: 72)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !805, file: !70, line: 353, baseType: !55, size: 16, offset: 80)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !805, file: !70, line: 353, baseType: !52, size: 8, offset: 96)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !805, file: !70, line: 353, baseType: !813, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !45, line: 1064, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !66, !67}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !805, file: !70, line: 354, baseType: !67, size: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !78, file: !70, line: 394, baseType: !819, size: 192)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !70, line: 359, size: 192, elements: !820)
!820 = !{!821, !822, !823, !824, !825, !826}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !819, file: !70, line: 360, baseType: !84, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !819, file: !70, line: 360, baseType: !52, size: 8, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !819, file: !70, line: 360, baseType: !52, size: 8, offset: 72)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !819, file: !70, line: 360, baseType: !55, size: 16, offset: 80)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !819, file: !70, line: 360, baseType: !52, size: 8, offset: 96)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !819, file: !70, line: 360, baseType: !84, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !78, file: !70, line: 401, baseType: !125, size: 384)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !69, file: !70, line: 437, baseType: !125, size: 384)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !69, file: !70, line: 438, baseType: !222, size: 1600)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !64, line: 154, baseType: !23)
!831 = !{!0, !7, !12, !832, !834, !839, !17, !844}
!832 = !DIGlobalVariableExpression(var: !833, expr: !DIExpression())
!833 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !298, isLocal: true, isDefinition: true)
!834 = !DIGlobalVariableExpression(var: !835, expr: !DIExpression())
!835 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !836, isLocal: true, isDefinition: true)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !837)
!837 = !{!838}
!838 = !DISubrange(count: 25)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(scope: null, file: !2, line: 467, type: !841, isLocal: true, isDefinition: true)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !842)
!842 = !{!843}
!843 = !DISubrange(count: 22)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !34, line: 480, type: !846, isLocal: true, isDefinition: true)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 21)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, size: 64, elements: !394)
!850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!851 = !{i32 7, !"Dwarf Version", i32 5}
!852 = !{i32 2, !"Debug Info Version", i32 3}
!853 = !{i32 1, !"wchar_size", i32 2}
!854 = !{i32 8, !"cf-protection-branch", i32 1}
!855 = !{i32 4, !"function_return_thunk_extern", i32 1}
!856 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!857 = !{i32 1, !"Code Model", i32 2}
!858 = !{i32 1, !"override-stack-alignment", i32 8}
!859 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!860 = distinct !DISubprogram(name: "acpi_ns_print_node_pathname", scope: !2, file: !2, line: 37, type: !861, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !864)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !124, !863}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!864 = !{!865, !866, !867, !872}
!865 = !DILocalVariable(name: "node", arg: 1, scope: !860, file: !2, line: 37, type: !124)
!866 = !DILocalVariable(name: "message", arg: 2, scope: !860, file: !2, line: 38, type: !863)
!867 = !DILocalVariable(name: "buffer", scope: !860, file: !2, line: 40, type: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !45, line: 978, size: 128, elements: !869)
!869 = !{!870, !871}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !868, file: !45, line: 979, baseType: !44, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !868, file: !45, line: 980, baseType: !67, size: 64, offset: 64)
!872 = !DILocalVariable(name: "status", scope: !860, file: !2, line: 41, type: !59)
!873 = !DILocation(line: 37, column: 57, scope: !860)
!874 = !DILocation(line: 38, column: 20, scope: !860)
!875 = !DILocation(line: 40, column: 2, scope: !860)
!876 = !DILocation(line: 40, column: 21, scope: !860)
!877 = !DILocation(line: 41, column: 2, scope: !860)
!878 = !DILocation(line: 41, column: 14, scope: !860)
!879 = !DILocation(line: 43, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !860, file: !2, line: 43, column: 6)
!881 = !DILocation(line: 43, column: 6, scope: !860)
!882 = !DILocation(line: 44, column: 3, scope: !883)
!883 = distinct !DILexicalBlock(scope: !880, file: !2, line: 43, column: 13)
!884 = !DILocation(line: 45, column: 3, scope: !883)
!885 = !DILocation(line: 50, column: 9, scope: !860)
!886 = !DILocation(line: 50, column: 16, scope: !860)
!887 = !DILocation(line: 52, column: 38, scope: !860)
!888 = !DILocation(line: 52, column: 11, scope: !860)
!889 = !DILocation(line: 52, column: 9, scope: !860)
!890 = !DILocation(line: 53, column: 6, scope: !891)
!891 = distinct !DILexicalBlock(scope: !860, file: !2, line: 53, column: 6)
!892 = !DILocation(line: 53, column: 6, scope: !860)
!893 = !DILocation(line: 54, column: 7, scope: !894)
!894 = distinct !DILexicalBlock(scope: !895, file: !2, line: 54, column: 7)
!895 = distinct !DILexicalBlock(scope: !891, file: !2, line: 53, column: 28)
!896 = !DILocation(line: 54, column: 7, scope: !895)
!897 = !DILocation(line: 55, column: 26, scope: !898)
!898 = distinct !DILexicalBlock(scope: !894, file: !2, line: 54, column: 16)
!899 = !DILocation(line: 55, column: 4, scope: !898)
!900 = !DILocation(line: 56, column: 3, scope: !898)
!901 = !DILocation(line: 58, column: 39, scope: !895)
!902 = !DILocation(line: 58, column: 3, scope: !895)
!903 = !DILocation(line: 59, column: 3, scope: !895)
!904 = !DILocation(line: 60, column: 2, scope: !895)
!905 = !DILocation(line: 61, column: 1, scope: !860)
!906 = !DISubprogram(name: "acpi_os_printf", scope: !907, file: !907, line: 334, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!907 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!908 = !DISubroutineType(types: !909)
!909 = !{null, !863, null}
!910 = !DISubprogram(name: "acpi_ns_handle_to_pathname", scope: !911, file: !911, line: 273, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!911 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!912 = !DISubroutineType(types: !913)
!913 = !{!59, !66, !914, !52}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!915 = distinct !DISubprogram(name: "acpi_os_free", scope: !916, file: !916, line: 60, type: !917, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !919)
!916 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!917 = !DISubroutineType(types: !918)
!918 = !{null, !67}
!919 = !{!920}
!920 = !DILocalVariable(name: "memory", arg: 1, scope: !915, file: !916, line: 60, type: !67)
!921 = !DILocation(line: 60, column: 39, scope: !915)
!922 = !DILocation(line: 62, column: 8, scope: !915)
!923 = !DILocation(line: 62, column: 2, scope: !915)
!924 = !DILocation(line: 63, column: 1, scope: !915)
!925 = distinct !DISubprogram(name: "acpi_ns_get_type", scope: !2, file: !2, line: 75, type: !926, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !929)
!926 = !DISubroutineType(types: !927)
!927 = !{!928, !124}
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !45, line: 644, baseType: !60)
!929 = !{!930}
!930 = !DILocalVariable(name: "node", arg: 1, scope: !925, file: !2, line: 75, type: !124)
!931 = !DILocation(line: 75, column: 64, scope: !925)
!932 = !DILocation(line: 79, column: 7, scope: !933)
!933 = distinct !DILexicalBlock(scope: !925, file: !2, line: 79, column: 6)
!934 = !DILocation(line: 79, column: 6, scope: !925)
!935 = !DILocation(line: 80, column: 3, scope: !936)
!936 = distinct !DILexicalBlock(scope: !933, file: !2, line: 79, column: 13)
!937 = !DILocation(line: 81, column: 3, scope: !936)
!938 = !DILocation(line: 84, column: 2, scope: !925)
!939 = !DILocation(line: 85, column: 1, scope: !925)
!940 = !DISubprogram(name: "acpi_warning", scope: !941, file: !941, line: 912, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!941 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!942 = !DISubroutineType(types: !943)
!943 = !{null, !863, !60, !863, null}
!944 = distinct !DISubprogram(name: "acpi_ns_local", scope: !2, file: !2, line: 100, type: !945, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !947)
!945 = !DISubroutineType(types: !946)
!946 = !{!60, !928}
!947 = !{!948}
!948 = !DILocalVariable(name: "type", arg: 1, scope: !944, file: !2, line: 100, type: !928)
!949 = !DILocation(line: 100, column: 36, scope: !944)
!950 = !DILocation(line: 104, column: 33, scope: !951)
!951 = distinct !DILexicalBlock(scope: !944, file: !2, line: 104, column: 6)
!952 = !DILocation(line: 104, column: 7, scope: !951)
!953 = !DILocation(line: 104, column: 6, scope: !944)
!954 = !DILocation(line: 108, column: 3, scope: !955)
!955 = distinct !DILexicalBlock(scope: !951, file: !2, line: 104, column: 40)
!956 = !DILocation(line: 109, column: 3, scope: !955)
!957 = !DILocation(line: 112, column: 2, scope: !944)
!958 = !DILocation(line: 113, column: 1, scope: !944)
!959 = !DISubprogram(name: "acpi_ut_valid_object_type", scope: !960, file: !960, line: 247, type: !961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!960 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!961 = !DISubroutineType(types: !962)
!962 = !{!52, !928}
!963 = distinct !DISubprogram(name: "acpi_ns_get_internal_name_length", scope: !2, file: !2, line: 129, type: !964, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !976)
!964 = !DISubroutineType(types: !965)
!965 = !{null, !966}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namestring_info", file: !22, line: 217, size: 320, elements: !968)
!968 = !{!969, !970, !971, !972, !973, !974, !975}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !967, file: !22, line: 218, baseType: !863, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "next_external_char", scope: !967, file: !22, line: 219, baseType: !863, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "internal_name", scope: !967, file: !22, line: 220, baseType: !51, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !967, file: !22, line: 221, baseType: !60, size: 32, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "num_segments", scope: !967, file: !22, line: 222, baseType: !60, size: 32, offset: 224)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "num_carats", scope: !967, file: !22, line: 223, baseType: !60, size: 32, offset: 256)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "fully_qualified", scope: !967, file: !22, line: 224, baseType: !52, size: 8, offset: 288)
!976 = !{!977, !978, !979}
!977 = !DILocalVariable(name: "info", arg: 1, scope: !963, file: !2, line: 129, type: !966)
!978 = !DILocalVariable(name: "next_external_char", scope: !963, file: !2, line: 131, type: !863)
!979 = !DILocalVariable(name: "i", scope: !963, file: !2, line: 132, type: !60)
!980 = !DILocation(line: 129, column: 68, scope: !963)
!981 = !DILocation(line: 131, column: 2, scope: !963)
!982 = !DILocation(line: 131, column: 14, scope: !963)
!983 = !DILocation(line: 132, column: 2, scope: !963)
!984 = !DILocation(line: 132, column: 6, scope: !963)
!985 = !DILocation(line: 136, column: 23, scope: !963)
!986 = !DILocation(line: 136, column: 29, scope: !963)
!987 = !DILocation(line: 136, column: 21, scope: !963)
!988 = !DILocation(line: 137, column: 2, scope: !963)
!989 = !DILocation(line: 137, column: 8, scope: !963)
!990 = !DILocation(line: 137, column: 19, scope: !963)
!991 = !DILocation(line: 138, column: 2, scope: !963)
!992 = !DILocation(line: 138, column: 8, scope: !963)
!993 = !DILocation(line: 138, column: 21, scope: !963)
!994 = !DILocation(line: 139, column: 2, scope: !963)
!995 = !DILocation(line: 139, column: 8, scope: !963)
!996 = !DILocation(line: 139, column: 24, scope: !963)
!997 = !DILocation(line: 149, column: 6, scope: !998)
!998 = distinct !DILexicalBlock(scope: !963, file: !2, line: 149, column: 6)
!999 = !DILocation(line: 149, column: 6, scope: !963)
!1000 = !DILocation(line: 150, column: 3, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !998, file: !2, line: 149, column: 48)
!1002 = !DILocation(line: 150, column: 9, scope: !1001)
!1003 = !DILocation(line: 150, column: 25, scope: !1001)
!1004 = !DILocation(line: 151, column: 21, scope: !1001)
!1005 = !DILocation(line: 155, column: 3, scope: !1001)
!1006 = !DILocation(line: 155, column: 10, scope: !1001)
!1007 = !DILocation(line: 156, column: 22, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 155, column: 52)
!1009 = distinct !{!1009, !1005, !1010, !1011, !1012}
!1010 = !DILocation(line: 157, column: 3, scope: !1001)
!1011 = !{!"llvm.loop.mustprogress"}
!1012 = !{!"llvm.loop.unroll.disable"}
!1013 = !DILocation(line: 158, column: 2, scope: !1001)
!1014 = !DILocation(line: 161, column: 3, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !998, file: !2, line: 158, column: 9)
!1016 = !DILocation(line: 161, column: 10, scope: !1015)
!1017 = !DILocation(line: 162, column: 4, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 161, column: 54)
!1019 = !DILocation(line: 162, column: 10, scope: !1018)
!1020 = !DILocation(line: 162, column: 20, scope: !1018)
!1021 = !DILocation(line: 163, column: 22, scope: !1018)
!1022 = distinct !{!1022, !1014, !1023, !1011, !1012}
!1023 = !DILocation(line: 164, column: 3, scope: !1015)
!1024 = !DILocation(line: 172, column: 7, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !963, file: !2, line: 172, column: 6)
!1026 = !DILocation(line: 172, column: 6, scope: !1025)
!1027 = !DILocation(line: 172, column: 6, scope: !963)
!1028 = !DILocation(line: 173, column: 3, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1025, file: !2, line: 172, column: 27)
!1030 = !DILocation(line: 173, column: 9, scope: !1029)
!1031 = !DILocation(line: 173, column: 22, scope: !1029)
!1032 = !DILocation(line: 174, column: 10, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 174, column: 3)
!1034 = !DILocation(line: 174, column: 8, scope: !1033)
!1035 = !DILocation(line: 174, column: 15, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1033, file: !2, line: 174, column: 3)
!1037 = !DILocation(line: 174, column: 34, scope: !1036)
!1038 = !DILocation(line: 174, column: 3, scope: !1033)
!1039 = !DILocation(line: 175, column: 8, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 175, column: 8)
!1041 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 174, column: 43)
!1042 = !DILocation(line: 175, column: 8, scope: !1041)
!1043 = !DILocation(line: 176, column: 5, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 175, column: 55)
!1045 = !DILocation(line: 176, column: 11, scope: !1044)
!1046 = !DILocation(line: 176, column: 23, scope: !1044)
!1047 = !DILocation(line: 177, column: 4, scope: !1044)
!1048 = !DILocation(line: 178, column: 3, scope: !1041)
!1049 = !DILocation(line: 174, column: 39, scope: !1036)
!1050 = !DILocation(line: 174, column: 3, scope: !1036)
!1051 = distinct !{!1051, !1038, !1052, !1011, !1012}
!1052 = !DILocation(line: 178, column: 3, scope: !1033)
!1053 = !DILocation(line: 179, column: 2, scope: !1029)
!1054 = !DILocation(line: 181, column: 38, scope: !963)
!1055 = !DILocation(line: 181, column: 44, scope: !963)
!1056 = !DILocation(line: 181, column: 36, scope: !963)
!1057 = !DILocation(line: 181, column: 58, scope: !963)
!1058 = !DILocation(line: 182, column: 10, scope: !963)
!1059 = !DILocation(line: 182, column: 16, scope: !963)
!1060 = !DILocation(line: 182, column: 8, scope: !963)
!1061 = !DILocation(line: 181, column: 2, scope: !963)
!1062 = !DILocation(line: 181, column: 8, scope: !963)
!1063 = !DILocation(line: 181, column: 15, scope: !963)
!1064 = !DILocation(line: 184, column: 29, scope: !963)
!1065 = !DILocation(line: 184, column: 2, scope: !963)
!1066 = !DILocation(line: 184, column: 8, scope: !963)
!1067 = !DILocation(line: 184, column: 27, scope: !963)
!1068 = !DILocation(line: 185, column: 1, scope: !963)
!1069 = distinct !DISubprogram(name: "acpi_ns_build_internal_name", scope: !2, file: !2, line: 200, type: !1070, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1072)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!59, !966}
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078}
!1073 = !DILocalVariable(name: "info", arg: 1, scope: !1069, file: !2, line: 200, type: !966)
!1074 = !DILocalVariable(name: "num_segments", scope: !1069, file: !2, line: 202, type: !60)
!1075 = !DILocalVariable(name: "internal_name", scope: !1069, file: !2, line: 203, type: !51)
!1076 = !DILocalVariable(name: "external_name", scope: !1069, file: !2, line: 204, type: !863)
!1077 = !DILocalVariable(name: "result", scope: !1069, file: !2, line: 205, type: !51)
!1078 = !DILocalVariable(name: "i", scope: !1069, file: !2, line: 206, type: !60)
!1079 = !DILocation(line: 200, column: 70, scope: !1069)
!1080 = !DILocation(line: 202, column: 2, scope: !1069)
!1081 = !DILocation(line: 202, column: 6, scope: !1069)
!1082 = !DILocation(line: 202, column: 21, scope: !1069)
!1083 = !DILocation(line: 202, column: 27, scope: !1069)
!1084 = !DILocation(line: 203, column: 2, scope: !1069)
!1085 = !DILocation(line: 203, column: 8, scope: !1069)
!1086 = !DILocation(line: 203, column: 24, scope: !1069)
!1087 = !DILocation(line: 203, column: 30, scope: !1069)
!1088 = !DILocation(line: 204, column: 2, scope: !1069)
!1089 = !DILocation(line: 204, column: 14, scope: !1069)
!1090 = !DILocation(line: 204, column: 30, scope: !1069)
!1091 = !DILocation(line: 204, column: 36, scope: !1069)
!1092 = !DILocation(line: 205, column: 2, scope: !1069)
!1093 = !DILocation(line: 205, column: 8, scope: !1069)
!1094 = !DILocation(line: 206, column: 2, scope: !1069)
!1095 = !DILocation(line: 206, column: 6, scope: !1069)
!1096 = !DILocation(line: 212, column: 6, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 212, column: 6)
!1098 = !DILocation(line: 212, column: 12, scope: !1097)
!1099 = !DILocation(line: 212, column: 6, scope: !1069)
!1100 = !DILocation(line: 213, column: 3, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 212, column: 29)
!1102 = !DILocation(line: 213, column: 20, scope: !1101)
!1103 = !DILocation(line: 215, column: 7, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1101, file: !2, line: 215, column: 7)
!1105 = !DILocation(line: 215, column: 20, scope: !1104)
!1106 = !DILocation(line: 215, column: 7, scope: !1101)
!1107 = !DILocation(line: 216, column: 14, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 215, column: 26)
!1109 = !DILocation(line: 216, column: 11, scope: !1108)
!1110 = !DILocation(line: 217, column: 3, scope: !1108)
!1111 = !DILocation(line: 217, column: 14, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 217, column: 14)
!1113 = !DILocation(line: 217, column: 27, scope: !1112)
!1114 = !DILocation(line: 217, column: 14, scope: !1104)
!1115 = !DILocation(line: 218, column: 4, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 217, column: 33)
!1117 = !DILocation(line: 218, column: 21, scope: !1116)
!1118 = !DILocation(line: 219, column: 14, scope: !1116)
!1119 = !DILocation(line: 219, column: 11, scope: !1116)
!1120 = !DILocation(line: 220, column: 3, scope: !1116)
!1121 = !DILocation(line: 221, column: 4, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 220, column: 10)
!1123 = !DILocation(line: 221, column: 21, scope: !1122)
!1124 = !DILocation(line: 222, column: 29, scope: !1122)
!1125 = !DILocation(line: 222, column: 23, scope: !1122)
!1126 = !DILocation(line: 222, column: 4, scope: !1122)
!1127 = !DILocation(line: 222, column: 21, scope: !1122)
!1128 = !DILocation(line: 223, column: 14, scope: !1122)
!1129 = !DILocation(line: 223, column: 11, scope: !1122)
!1130 = !DILocation(line: 225, column: 2, scope: !1101)
!1131 = !DILocation(line: 230, column: 5, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 225, column: 9)
!1133 = !DILocation(line: 231, column: 7, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 231, column: 7)
!1135 = !DILocation(line: 231, column: 13, scope: !1134)
!1136 = !DILocation(line: 231, column: 7, scope: !1132)
!1137 = !DILocation(line: 232, column: 11, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !2, line: 232, column: 4)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 231, column: 25)
!1140 = !DILocation(line: 232, column: 9, scope: !1138)
!1141 = !DILocation(line: 232, column: 16, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 232, column: 4)
!1143 = !DILocation(line: 232, column: 20, scope: !1142)
!1144 = !DILocation(line: 232, column: 26, scope: !1142)
!1145 = !DILocation(line: 232, column: 18, scope: !1142)
!1146 = !DILocation(line: 232, column: 4, scope: !1138)
!1147 = !DILocation(line: 233, column: 5, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 232, column: 43)
!1149 = !DILocation(line: 233, column: 19, scope: !1148)
!1150 = !DILocation(line: 233, column: 22, scope: !1148)
!1151 = !DILocation(line: 234, column: 4, scope: !1148)
!1152 = !DILocation(line: 232, column: 39, scope: !1142)
!1153 = !DILocation(line: 232, column: 4, scope: !1142)
!1154 = distinct !{!1154, !1146, !1155, !1011, !1012}
!1155 = !DILocation(line: 234, column: 4, scope: !1138)
!1156 = !DILocation(line: 235, column: 3, scope: !1139)
!1157 = !DILocation(line: 237, column: 7, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 237, column: 7)
!1159 = !DILocation(line: 237, column: 20, scope: !1158)
!1160 = !DILocation(line: 237, column: 7, scope: !1132)
!1161 = !DILocation(line: 238, column: 14, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1158, file: !2, line: 237, column: 26)
!1163 = !DILocation(line: 238, column: 28, scope: !1162)
!1164 = !DILocation(line: 238, column: 11, scope: !1162)
!1165 = !DILocation(line: 239, column: 3, scope: !1162)
!1166 = !DILocation(line: 239, column: 14, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1158, file: !2, line: 239, column: 14)
!1168 = !DILocation(line: 239, column: 27, scope: !1167)
!1169 = !DILocation(line: 239, column: 14, scope: !1158)
!1170 = !DILocation(line: 240, column: 4, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 239, column: 33)
!1172 = !DILocation(line: 240, column: 18, scope: !1171)
!1173 = !DILocation(line: 240, column: 21, scope: !1171)
!1174 = !DILocation(line: 241, column: 14, scope: !1171)
!1175 = !DILocation(line: 241, column: 39, scope: !1171)
!1176 = !DILocation(line: 241, column: 28, scope: !1171)
!1177 = !DILocation(line: 241, column: 41, scope: !1171)
!1178 = !DILocation(line: 241, column: 11, scope: !1171)
!1179 = !DILocation(line: 242, column: 3, scope: !1171)
!1180 = !DILocation(line: 243, column: 4, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 242, column: 10)
!1182 = !DILocation(line: 243, column: 18, scope: !1181)
!1183 = !DILocation(line: 243, column: 21, scope: !1181)
!1184 = !DILocation(line: 244, column: 44, scope: !1181)
!1185 = !DILocation(line: 244, column: 38, scope: !1181)
!1186 = !DILocation(line: 244, column: 4, scope: !1181)
!1187 = !DILocation(line: 244, column: 29, scope: !1181)
!1188 = !DILocation(line: 244, column: 18, scope: !1181)
!1189 = !DILocation(line: 244, column: 31, scope: !1181)
!1190 = !DILocation(line: 244, column: 36, scope: !1181)
!1191 = !DILocation(line: 245, column: 14, scope: !1181)
!1192 = !DILocation(line: 245, column: 39, scope: !1181)
!1193 = !DILocation(line: 245, column: 28, scope: !1181)
!1194 = !DILocation(line: 245, column: 41, scope: !1181)
!1195 = !DILocation(line: 245, column: 11, scope: !1181)
!1196 = !DILocation(line: 251, column: 2, scope: !1069)
!1197 = !DILocation(line: 251, column: 9, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 251, column: 2)
!1199 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 251, column: 2)
!1200 = !DILocation(line: 251, column: 2, scope: !1199)
!1201 = !DILocation(line: 252, column: 10, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 252, column: 3)
!1203 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 251, column: 39)
!1204 = !DILocation(line: 252, column: 8, scope: !1202)
!1205 = !DILocation(line: 252, column: 15, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 252, column: 3)
!1207 = !DILocation(line: 252, column: 17, scope: !1206)
!1208 = !DILocation(line: 252, column: 3, scope: !1202)
!1209 = !DILocation(line: 253, column: 8, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !2, line: 253, column: 8)
!1211 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 252, column: 43)
!1212 = !DILocation(line: 253, column: 47, scope: !1210)
!1213 = !DILocation(line: 254, column: 10, scope: !1210)
!1214 = !DILocation(line: 254, column: 9, scope: !1210)
!1215 = !DILocation(line: 254, column: 24, scope: !1210)
!1216 = !DILocation(line: 253, column: 8, scope: !1211)
!1217 = !DILocation(line: 258, column: 5, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1210, file: !2, line: 254, column: 31)
!1219 = !DILocation(line: 258, column: 12, scope: !1218)
!1220 = !DILocation(line: 258, column: 15, scope: !1218)
!1221 = !DILocation(line: 259, column: 4, scope: !1218)
!1222 = !DILocation(line: 262, column: 23, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1210, file: !2, line: 259, column: 11)
!1224 = !DILocation(line: 262, column: 5, scope: !1223)
!1225 = !DILocation(line: 262, column: 12, scope: !1223)
!1226 = !DILocation(line: 262, column: 15, scope: !1223)
!1227 = !DILocation(line: 263, column: 18, scope: !1223)
!1228 = !DILocation(line: 265, column: 3, scope: !1211)
!1229 = !DILocation(line: 252, column: 39, scope: !1206)
!1230 = !DILocation(line: 252, column: 3, scope: !1206)
!1231 = distinct !{!1231, !1208, !1232, !1011, !1012}
!1232 = !DILocation(line: 265, column: 3, scope: !1202)
!1233 = !DILocation(line: 269, column: 8, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 269, column: 7)
!1235 = !DILocation(line: 269, column: 47, scope: !1234)
!1236 = !DILocation(line: 270, column: 9, scope: !1234)
!1237 = !DILocation(line: 270, column: 8, scope: !1234)
!1238 = !DILocation(line: 270, column: 23, scope: !1234)
!1239 = !DILocation(line: 269, column: 7, scope: !1203)
!1240 = !DILocation(line: 271, column: 4, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1234, file: !2, line: 270, column: 30)
!1242 = !DILocation(line: 276, column: 16, scope: !1203)
!1243 = !DILocation(line: 277, column: 10, scope: !1203)
!1244 = !DILocation(line: 278, column: 2, scope: !1203)
!1245 = !DILocation(line: 251, column: 35, scope: !1198)
!1246 = !DILocation(line: 251, column: 2, scope: !1198)
!1247 = distinct !{!1247, !1200, !1248, !1011, !1012}
!1248 = !DILocation(line: 278, column: 2, scope: !1199)
!1249 = !DILocation(line: 282, column: 3, scope: !1069)
!1250 = !DILocation(line: 282, column: 10, scope: !1069)
!1251 = !DILocation(line: 284, column: 6, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 284, column: 6)
!1253 = !DILocation(line: 284, column: 12, scope: !1252)
!1254 = !DILocation(line: 284, column: 6, scope: !1069)
!1255 = !DILocation(line: 288, column: 2, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 284, column: 29)
!1257 = !DILocation(line: 293, column: 2, scope: !1069)
!1258 = !DILocation(line: 294, column: 1, scope: !1069)
!1259 = distinct !DISubprogram(name: "__toupper", scope: !1260, file: !1260, line: 56, type: !1261, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1263)
!1260 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16ff466080305de3b83767ab84129dc0")
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!54, !54}
!1263 = !{!1264}
!1264 = !DILocalVariable(name: "c", arg: 1, scope: !1259, file: !1260, line: 56, type: !54)
!1265 = !DILocation(line: 56, column: 53, scope: !1259)
!1266 = !DILocation(line: 58, column: 6, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1259, file: !1260, line: 58, column: 6)
!1268 = !DILocation(line: 58, column: 6, scope: !1259)
!1269 = !DILocation(line: 59, column: 5, scope: !1267)
!1270 = !DILocation(line: 59, column: 3, scope: !1267)
!1271 = !DILocation(line: 60, column: 9, scope: !1259)
!1272 = !DILocation(line: 60, column: 2, scope: !1259)
!1273 = distinct !DISubprogram(name: "acpi_ns_internalize_name", scope: !2, file: !2, line: 312, type: !1274, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1277)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!59, !863, !1276}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!1277 = !{!1278, !1279, !1280, !1281, !1282}
!1278 = !DILocalVariable(name: "external_name", arg: 1, scope: !1273, file: !2, line: 312, type: !863)
!1279 = !DILocalVariable(name: "converted_name", arg: 2, scope: !1273, file: !2, line: 312, type: !1276)
!1280 = !DILocalVariable(name: "internal_name", scope: !1273, file: !2, line: 314, type: !51)
!1281 = !DILocalVariable(name: "info", scope: !1273, file: !2, line: 315, type: !967)
!1282 = !DILocalVariable(name: "status", scope: !1273, file: !2, line: 316, type: !59)
!1283 = !DILocation(line: 312, column: 38, scope: !1273)
!1284 = !DILocation(line: 312, column: 60, scope: !1273)
!1285 = !DILocation(line: 314, column: 2, scope: !1273)
!1286 = !DILocation(line: 314, column: 8, scope: !1273)
!1287 = !DILocation(line: 315, column: 2, scope: !1273)
!1288 = !DILocation(line: 315, column: 30, scope: !1273)
!1289 = !DILocation(line: 316, column: 2, scope: !1273)
!1290 = !DILocation(line: 316, column: 14, scope: !1273)
!1291 = !DILocation(line: 320, column: 8, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 320, column: 6)
!1293 = !DILocation(line: 320, column: 23, scope: !1292)
!1294 = !DILocation(line: 320, column: 28, scope: !1292)
!1295 = !DILocation(line: 320, column: 27, scope: !1292)
!1296 = !DILocation(line: 320, column: 42, scope: !1292)
!1297 = !DILocation(line: 320, column: 48, scope: !1292)
!1298 = !DILocation(line: 320, column: 53, scope: !1292)
!1299 = !DILocation(line: 320, column: 6, scope: !1273)
!1300 = !DILocation(line: 321, column: 3, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1292, file: !2, line: 320, column: 70)
!1302 = !DILocation(line: 326, column: 23, scope: !1273)
!1303 = !DILocation(line: 326, column: 7, scope: !1273)
!1304 = !DILocation(line: 326, column: 21, scope: !1273)
!1305 = !DILocation(line: 327, column: 2, scope: !1273)
!1306 = !DILocation(line: 331, column: 18, scope: !1273)
!1307 = !DILocation(line: 331, column: 16, scope: !1273)
!1308 = !DILocation(line: 332, column: 7, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 332, column: 6)
!1310 = !DILocation(line: 332, column: 6, scope: !1273)
!1311 = !DILocation(line: 333, column: 3, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 332, column: 22)
!1313 = !DILocation(line: 338, column: 23, scope: !1273)
!1314 = !DILocation(line: 338, column: 7, scope: !1273)
!1315 = !DILocation(line: 338, column: 21, scope: !1273)
!1316 = !DILocation(line: 339, column: 11, scope: !1273)
!1317 = !DILocation(line: 339, column: 9, scope: !1273)
!1318 = !DILocation(line: 340, column: 6, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 340, column: 6)
!1320 = !DILocation(line: 340, column: 6, scope: !1273)
!1321 = !DILocation(line: 341, column: 3, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 340, column: 28)
!1323 = !DILocation(line: 342, column: 3, scope: !1322)
!1324 = !DILocation(line: 345, column: 20, scope: !1273)
!1325 = !DILocation(line: 345, column: 3, scope: !1273)
!1326 = !DILocation(line: 345, column: 18, scope: !1273)
!1327 = !DILocation(line: 346, column: 2, scope: !1273)
!1328 = !DILocation(line: 347, column: 1, scope: !1273)
!1329 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !916, file: !916, line: 55, type: !1330, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1332)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!67, !44}
!1332 = !{!1333, !1334, !1336, !1339, !1340, !1343}
!1333 = !DILocalVariable(name: "size", arg: 1, scope: !1329, file: !916, line: 55, type: !44)
!1334 = !DILocalVariable(name: "_flags", scope: !1335, file: !916, line: 57, type: !65)
!1335 = distinct !DILexicalBlock(scope: !1329, file: !916, line: 57, column: 23)
!1336 = !DILocalVariable(name: "__dummy", scope: !1337, file: !916, line: 57, type: !65)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !916, line: 57, column: 23)
!1338 = distinct !DILexicalBlock(scope: !1335, file: !916, line: 57, column: 23)
!1339 = !DILocalVariable(name: "__dummy2", scope: !1337, file: !916, line: 57, type: !65)
!1340 = !DILocalVariable(name: "__dummy", scope: !1341, file: !916, line: 57, type: !65)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !916, line: 57, column: 23)
!1342 = distinct !DILexicalBlock(scope: !1335, file: !916, line: 57, column: 23)
!1343 = !DILocalVariable(name: "__dummy2", scope: !1341, file: !916, line: 57, type: !65)
!1344 = !DILocation(line: 55, column: 55, scope: !1329)
!1345 = !DILocation(line: 57, column: 17, scope: !1329)
!1346 = !DILocation(line: 57, column: 23, scope: !1335)
!1347 = !DILocation(line: 57, column: 23, scope: !1337)
!1348 = !DILocation(line: 57, column: 23, scope: !1338)
!1349 = !DILocation(line: 57, column: 23, scope: !1341)
!1350 = !DILocation(line: 57, column: 23, scope: !1342)
!1351 = !DILocation(line: 57, column: 23, scope: !1329)
!1352 = !DILocation(line: 57, column: 9, scope: !1329)
!1353 = !DILocation(line: 57, column: 2, scope: !1329)
!1354 = distinct !DISubprogram(name: "acpi_ns_externalize_name", scope: !2, file: !2, line: 367, type: !1355, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1357)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!59, !60, !863, !62, !1276}
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367}
!1358 = !DILocalVariable(name: "internal_name_length", arg: 1, scope: !1354, file: !2, line: 367, type: !60)
!1359 = !DILocalVariable(name: "internal_name", arg: 2, scope: !1354, file: !2, line: 368, type: !863)
!1360 = !DILocalVariable(name: "converted_name_length", arg: 3, scope: !1354, file: !2, line: 369, type: !62)
!1361 = !DILocalVariable(name: "converted_name", arg: 4, scope: !1354, file: !2, line: 369, type: !1276)
!1362 = !DILocalVariable(name: "names_index", scope: !1354, file: !2, line: 371, type: !60)
!1363 = !DILocalVariable(name: "num_segments", scope: !1354, file: !2, line: 372, type: !60)
!1364 = !DILocalVariable(name: "required_length", scope: !1354, file: !2, line: 373, type: !60)
!1365 = !DILocalVariable(name: "prefix_length", scope: !1354, file: !2, line: 374, type: !60)
!1366 = !DILocalVariable(name: "i", scope: !1354, file: !2, line: 375, type: !60)
!1367 = !DILocalVariable(name: "j", scope: !1354, file: !2, line: 376, type: !60)
!1368 = !DILocation(line: 367, column: 30, scope: !1354)
!1369 = !DILocation(line: 368, column: 17, scope: !1354)
!1370 = !DILocation(line: 369, column: 11, scope: !1354)
!1371 = !DILocation(line: 369, column: 41, scope: !1354)
!1372 = !DILocation(line: 371, column: 2, scope: !1354)
!1373 = !DILocation(line: 371, column: 6, scope: !1354)
!1374 = !DILocation(line: 372, column: 2, scope: !1354)
!1375 = !DILocation(line: 372, column: 6, scope: !1354)
!1376 = !DILocation(line: 373, column: 2, scope: !1354)
!1377 = !DILocation(line: 373, column: 6, scope: !1354)
!1378 = !DILocation(line: 374, column: 2, scope: !1354)
!1379 = !DILocation(line: 374, column: 6, scope: !1354)
!1380 = !DILocation(line: 375, column: 2, scope: !1354)
!1381 = !DILocation(line: 375, column: 6, scope: !1354)
!1382 = !DILocation(line: 376, column: 2, scope: !1354)
!1383 = !DILocation(line: 376, column: 6, scope: !1354)
!1384 = !DILocation(line: 380, column: 7, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 380, column: 6)
!1386 = !DILocation(line: 380, column: 28, scope: !1385)
!1387 = !DILocation(line: 380, column: 32, scope: !1385)
!1388 = !DILocation(line: 380, column: 46, scope: !1385)
!1389 = !DILocation(line: 380, column: 50, scope: !1385)
!1390 = !DILocation(line: 380, column: 6, scope: !1354)
!1391 = !DILocation(line: 381, column: 3, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1385, file: !2, line: 380, column: 66)
!1393 = !DILocation(line: 386, column: 10, scope: !1354)
!1394 = !DILocation(line: 386, column: 2, scope: !1354)
!1395 = !DILocation(line: 389, column: 17, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 386, column: 28)
!1397 = !DILocation(line: 390, column: 3, scope: !1396)
!1398 = !DILocation(line: 394, column: 10, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 394, column: 3)
!1400 = !DILocation(line: 394, column: 8, scope: !1399)
!1401 = !DILocation(line: 394, column: 15, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 394, column: 3)
!1403 = !DILocation(line: 394, column: 19, scope: !1402)
!1404 = !DILocation(line: 394, column: 17, scope: !1402)
!1405 = !DILocation(line: 394, column: 3, scope: !1399)
!1406 = !DILocation(line: 395, column: 8, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 395, column: 8)
!1408 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 394, column: 46)
!1409 = !DILocation(line: 395, column: 8, scope: !1408)
!1410 = !DILocation(line: 396, column: 21, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 395, column: 49)
!1412 = !DILocation(line: 396, column: 23, scope: !1411)
!1413 = !DILocation(line: 396, column: 19, scope: !1411)
!1414 = !DILocation(line: 397, column: 4, scope: !1411)
!1415 = !DILocation(line: 398, column: 5, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 397, column: 11)
!1417 = !DILocation(line: 400, column: 3, scope: !1408)
!1418 = !DILocation(line: 394, column: 42, scope: !1402)
!1419 = !DILocation(line: 394, column: 3, scope: !1402)
!1420 = distinct !{!1420, !1405, !1421, !1011, !1012}
!1421 = !DILocation(line: 400, column: 3, scope: !1399)
!1422 = !DILocation(line: 402, column: 7, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 402, column: 7)
!1424 = !DILocation(line: 402, column: 12, scope: !1423)
!1425 = !DILocation(line: 402, column: 9, scope: !1423)
!1426 = !DILocation(line: 402, column: 7, scope: !1396)
!1427 = !DILocation(line: 403, column: 20, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1423, file: !2, line: 402, column: 34)
!1429 = !DILocation(line: 403, column: 18, scope: !1428)
!1430 = !DILocation(line: 404, column: 3, scope: !1428)
!1431 = !DILocation(line: 406, column: 3, scope: !1396)
!1432 = !DILocation(line: 410, column: 3, scope: !1396)
!1433 = !DILocation(line: 417, column: 6, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 417, column: 6)
!1435 = !DILocation(line: 417, column: 22, scope: !1434)
!1436 = !DILocation(line: 417, column: 20, scope: !1434)
!1437 = !DILocation(line: 417, column: 6, scope: !1354)
!1438 = !DILocation(line: 418, column: 11, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1434, file: !2, line: 417, column: 44)
!1440 = !DILocation(line: 418, column: 25, scope: !1439)
!1441 = !DILocation(line: 418, column: 3, scope: !1439)
!1442 = !DILocation(line: 423, column: 18, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1439, file: !2, line: 418, column: 41)
!1444 = !DILocation(line: 423, column: 32, scope: !1443)
!1445 = !DILocation(line: 423, column: 16, scope: !1443)
!1446 = !DILocation(line: 425, column: 8, scope: !1443)
!1447 = !DILocation(line: 425, column: 33, scope: !1443)
!1448 = !DILocation(line: 425, column: 22, scope: !1443)
!1449 = !DILocation(line: 425, column: 47, scope: !1443)
!1450 = !DILocation(line: 424, column: 19, scope: !1443)
!1451 = !DILocation(line: 424, column: 17, scope: !1443)
!1452 = !DILocation(line: 426, column: 4, scope: !1443)
!1453 = !DILocation(line: 432, column: 18, scope: !1443)
!1454 = !DILocation(line: 432, column: 32, scope: !1443)
!1455 = !DILocation(line: 432, column: 16, scope: !1443)
!1456 = !DILocation(line: 433, column: 17, scope: !1443)
!1457 = !DILocation(line: 434, column: 4, scope: !1443)
!1458 = !DILocation(line: 440, column: 16, scope: !1443)
!1459 = !DILocation(line: 441, column: 17, scope: !1443)
!1460 = !DILocation(line: 442, column: 4, scope: !1443)
!1461 = !DILocation(line: 448, column: 18, scope: !1443)
!1462 = !DILocation(line: 448, column: 16, scope: !1443)
!1463 = !DILocation(line: 449, column: 17, scope: !1443)
!1464 = !DILocation(line: 450, column: 4, scope: !1443)
!1465 = !DILocation(line: 452, column: 2, scope: !1439)
!1466 = !DILocation(line: 459, column: 20, scope: !1354)
!1467 = !DILocation(line: 459, column: 41, scope: !1354)
!1468 = !DILocation(line: 459, column: 39, scope: !1354)
!1469 = !DILocation(line: 459, column: 34, scope: !1354)
!1470 = !DILocation(line: 460, column: 8, scope: !1354)
!1471 = !DILocation(line: 460, column: 21, scope: !1354)
!1472 = !DILocation(line: 460, column: 7, scope: !1354)
!1473 = !DILocation(line: 460, column: 29, scope: !1354)
!1474 = !DILocation(line: 460, column: 42, scope: !1354)
!1475 = !DILocation(line: 459, column: 55, scope: !1354)
!1476 = !DILocation(line: 460, column: 52, scope: !1354)
!1477 = !DILocation(line: 459, column: 18, scope: !1354)
!1478 = !DILocation(line: 466, column: 6, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 466, column: 6)
!1480 = !DILocation(line: 466, column: 24, scope: !1479)
!1481 = !DILocation(line: 466, column: 22, scope: !1479)
!1482 = !DILocation(line: 466, column: 6, scope: !1354)
!1483 = !DILocation(line: 467, column: 3, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 466, column: 46)
!1485 = !DILocation(line: 468, column: 3, scope: !1484)
!1486 = !DILocation(line: 473, column: 20, scope: !1354)
!1487 = !DILocation(line: 473, column: 3, scope: !1354)
!1488 = !DILocation(line: 473, column: 18, scope: !1354)
!1489 = !DILocation(line: 474, column: 9, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 474, column: 6)
!1491 = !DILocation(line: 474, column: 8, scope: !1490)
!1492 = !DILocation(line: 474, column: 7, scope: !1490)
!1493 = !DILocation(line: 474, column: 6, scope: !1354)
!1494 = !DILocation(line: 475, column: 3, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 474, column: 26)
!1496 = !DILocation(line: 478, column: 4, scope: !1354)
!1497 = !DILocation(line: 480, column: 9, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 480, column: 2)
!1499 = !DILocation(line: 480, column: 7, scope: !1498)
!1500 = !DILocation(line: 480, column: 14, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1498, file: !2, line: 480, column: 2)
!1502 = !DILocation(line: 480, column: 18, scope: !1501)
!1503 = !DILocation(line: 480, column: 16, scope: !1501)
!1504 = !DILocation(line: 480, column: 2, scope: !1498)
!1505 = !DILocation(line: 481, column: 28, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1501, file: !2, line: 480, column: 38)
!1507 = !DILocation(line: 481, column: 42, scope: !1506)
!1508 = !DILocation(line: 481, column: 5, scope: !1506)
!1509 = !DILocation(line: 481, column: 4, scope: !1506)
!1510 = !DILocation(line: 481, column: 22, scope: !1506)
!1511 = !DILocation(line: 481, column: 3, scope: !1506)
!1512 = !DILocation(line: 481, column: 26, scope: !1506)
!1513 = !DILocation(line: 482, column: 2, scope: !1506)
!1514 = !DILocation(line: 480, column: 34, scope: !1501)
!1515 = !DILocation(line: 480, column: 2, scope: !1501)
!1516 = distinct !{!1516, !1504, !1517, !1011, !1012}
!1517 = !DILocation(line: 482, column: 2, scope: !1498)
!1518 = !DILocation(line: 484, column: 6, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 484, column: 6)
!1520 = !DILocation(line: 484, column: 19, scope: !1519)
!1521 = !DILocation(line: 484, column: 6, scope: !1354)
!1522 = !DILocation(line: 485, column: 10, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !2, line: 485, column: 3)
!1524 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 484, column: 24)
!1525 = !DILocation(line: 485, column: 8, scope: !1523)
!1526 = !DILocation(line: 485, column: 15, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 485, column: 3)
!1528 = !DILocation(line: 485, column: 19, scope: !1527)
!1529 = !DILocation(line: 485, column: 17, scope: !1527)
!1530 = !DILocation(line: 485, column: 3, scope: !1523)
!1531 = !DILocation(line: 486, column: 8, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !2, line: 486, column: 8)
!1533 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 485, column: 38)
!1534 = !DILocation(line: 486, column: 10, scope: !1532)
!1535 = !DILocation(line: 486, column: 8, scope: !1533)
!1536 = !DILocation(line: 487, column: 7, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1532, file: !2, line: 486, column: 15)
!1538 = !DILocation(line: 487, column: 6, scope: !1537)
!1539 = !DILocation(line: 487, column: 24, scope: !1537)
!1540 = !DILocation(line: 487, column: 5, scope: !1537)
!1541 = !DILocation(line: 487, column: 28, scope: !1537)
!1542 = !DILocation(line: 488, column: 4, scope: !1537)
!1543 = !DILocation(line: 492, column: 4, scope: !1533)
!1544 = !DILocation(line: 494, column: 27, scope: !1533)
!1545 = !DILocation(line: 494, column: 26, scope: !1533)
!1546 = !DILocation(line: 494, column: 43, scope: !1533)
!1547 = !DILocation(line: 494, column: 25, scope: !1533)
!1548 = !DILocation(line: 494, column: 4, scope: !1533)
!1549 = !DILocation(line: 496, column: 6, scope: !1533)
!1550 = !DILocation(line: 497, column: 16, scope: !1533)
!1551 = !DILocation(line: 498, column: 3, scope: !1533)
!1552 = !DILocation(line: 485, column: 34, scope: !1527)
!1553 = !DILocation(line: 485, column: 3, scope: !1527)
!1554 = distinct !{!1554, !1530, !1555, !1011, !1012}
!1555 = !DILocation(line: 498, column: 3, scope: !1523)
!1556 = !DILocation(line: 499, column: 2, scope: !1524)
!1557 = !DILocation(line: 501, column: 6, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 501, column: 6)
!1559 = !DILocation(line: 501, column: 6, scope: !1354)
!1560 = !DILocation(line: 502, column: 34, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 501, column: 29)
!1562 = !DILocation(line: 502, column: 4, scope: !1561)
!1563 = !DILocation(line: 502, column: 26, scope: !1561)
!1564 = !DILocation(line: 503, column: 2, scope: !1561)
!1565 = !DILocation(line: 505, column: 2, scope: !1354)
!1566 = !DILocation(line: 506, column: 1, scope: !1354)
!1567 = !DISubprogram(name: "acpi_error", scope: !941, file: !941, line: 901, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1568 = !DISubprogram(name: "acpi_ut_repair_name", scope: !960, file: !960, line: 624, type: !1569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{null, !51}
!1571 = distinct !DISubprogram(name: "acpi_ns_validate_handle", scope: !2, file: !2, line: 528, type: !1572, scopeLine: 529, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1574)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!124, !66}
!1574 = !{!1575}
!1575 = !DILocalVariable(name: "handle", arg: 1, scope: !1571, file: !2, line: 528, type: !66)
!1576 = !DILocation(line: 528, column: 65, scope: !1571)
!1577 = !DILocation(line: 535, column: 8, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1571, file: !2, line: 535, column: 6)
!1579 = !DILocation(line: 535, column: 16, scope: !1578)
!1580 = !DILocation(line: 535, column: 20, scope: !1578)
!1581 = !DILocation(line: 535, column: 27, scope: !1578)
!1582 = !DILocation(line: 535, column: 6, scope: !1571)
!1583 = !DILocation(line: 536, column: 11, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1578, file: !2, line: 535, column: 49)
!1585 = !DILocation(line: 536, column: 3, scope: !1584)
!1586 = !DILocation(line: 541, column: 6, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1571, file: !2, line: 541, column: 6)
!1588 = !DILocation(line: 541, column: 39, scope: !1587)
!1589 = !DILocation(line: 541, column: 6, scope: !1571)
!1590 = !DILocation(line: 542, column: 3, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1587, file: !2, line: 541, column: 64)
!1592 = !DILocation(line: 545, column: 10, scope: !1571)
!1593 = !DILocation(line: 545, column: 2, scope: !1571)
!1594 = !DILocation(line: 546, column: 1, scope: !1571)
!1595 = distinct !DISubprogram(name: "acpi_ns_terminate", scope: !2, file: !2, line: 560, type: !1596, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1598)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null}
!1598 = !{!1599}
!1599 = !DILocalVariable(name: "status", scope: !1595, file: !2, line: 562, type: !59)
!1600 = !DILocation(line: 562, column: 2, scope: !1595)
!1601 = !DILocation(line: 562, column: 14, scope: !1595)
!1602 = !DILocation(line: 570, column: 35, scope: !1595)
!1603 = !DILocation(line: 570, column: 2, scope: !1595)
!1604 = !DILocation(line: 574, column: 11, scope: !1595)
!1605 = !DILocation(line: 574, column: 9, scope: !1595)
!1606 = !DILocation(line: 575, column: 6, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1595, file: !2, line: 575, column: 6)
!1608 = !DILocation(line: 575, column: 6, scope: !1595)
!1609 = !DILocation(line: 576, column: 3, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1607, file: !2, line: 575, column: 28)
!1611 = !DILocation(line: 579, column: 22, scope: !1595)
!1612 = !DILocation(line: 579, column: 2, scope: !1595)
!1613 = !DILocation(line: 580, column: 8, scope: !1595)
!1614 = !DILocation(line: 583, column: 2, scope: !1595)
!1615 = !DILocation(line: 584, column: 1, scope: !1595)
!1616 = !DISubprogram(name: "acpi_ns_delete_namespace_subtree", scope: !911, file: !911, line: 136, type: !1617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !124}
!1619 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !960, file: !960, line: 646, type: !1620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!59, !1622}
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !22, line: 17, baseType: !60)
!1623 = !DISubprogram(name: "acpi_ns_delete_node", scope: !911, file: !911, line: 131, type: !1617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1624 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !960, file: !960, line: 648, type: !1620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1625 = distinct !DISubprogram(name: "acpi_ns_opens_scope", scope: !2, file: !2, line: 597, type: !945, scopeLine: 598, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1626)
!1626 = !{!1627}
!1627 = !DILocalVariable(name: "type", arg: 1, scope: !1625, file: !2, line: 597, type: !928)
!1628 = !DILocation(line: 597, column: 42, scope: !1625)
!1629 = !DILocation(line: 601, column: 6, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1625, file: !2, line: 601, column: 6)
!1631 = !DILocation(line: 601, column: 11, scope: !1630)
!1632 = !DILocation(line: 601, column: 6, scope: !1625)
!1633 = !DILocation(line: 605, column: 3, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1630, file: !2, line: 601, column: 34)
!1635 = !DILocation(line: 606, column: 3, scope: !1634)
!1636 = !DILocation(line: 609, column: 39, scope: !1625)
!1637 = !DILocation(line: 609, column: 16, scope: !1625)
!1638 = !DILocation(line: 609, column: 11, scope: !1625)
!1639 = !DILocation(line: 609, column: 46, scope: !1625)
!1640 = !DILocation(line: 609, column: 2, scope: !1625)
!1641 = !DILocation(line: 610, column: 1, scope: !1625)
!1642 = distinct !DISubprogram(name: "acpi_ns_get_node_unlocked", scope: !2, file: !2, line: 635, type: !1643, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1646)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!59, !124, !863, !60, !1645}
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!1646 = !{!1647, !1648, !1649, !1650, !1651, !1652, !1653}
!1647 = !DILocalVariable(name: "prefix_node", arg: 1, scope: !1642, file: !2, line: 635, type: !124)
!1648 = !DILocalVariable(name: "pathname", arg: 2, scope: !1642, file: !2, line: 636, type: !863)
!1649 = !DILocalVariable(name: "flags", arg: 3, scope: !1642, file: !2, line: 637, type: !60)
!1650 = !DILocalVariable(name: "return_node", arg: 4, scope: !1642, file: !2, line: 637, type: !1645)
!1651 = !DILocalVariable(name: "scope_info", scope: !1642, file: !2, line: 639, type: !304)
!1652 = !DILocalVariable(name: "status", scope: !1642, file: !2, line: 640, type: !59)
!1653 = !DILocalVariable(name: "internal_path", scope: !1642, file: !2, line: 641, type: !51)
!1654 = !DILocation(line: 635, column: 55, scope: !1642)
!1655 = !DILocation(line: 636, column: 18, scope: !1642)
!1656 = !DILocation(line: 637, column: 10, scope: !1642)
!1657 = !DILocation(line: 637, column: 46, scope: !1642)
!1658 = !DILocation(line: 639, column: 2, scope: !1642)
!1659 = !DILocation(line: 639, column: 27, scope: !1642)
!1660 = !DILocation(line: 640, column: 2, scope: !1642)
!1661 = !DILocation(line: 640, column: 14, scope: !1642)
!1662 = !DILocation(line: 641, column: 2, scope: !1642)
!1663 = !DILocation(line: 641, column: 8, scope: !1642)
!1664 = !DILocation(line: 648, column: 7, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1642, file: !2, line: 648, column: 6)
!1666 = !DILocation(line: 648, column: 6, scope: !1642)
!1667 = !DILocation(line: 649, column: 18, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 648, column: 17)
!1669 = !DILocation(line: 649, column: 4, scope: !1668)
!1670 = !DILocation(line: 649, column: 16, scope: !1668)
!1671 = !DILocation(line: 650, column: 8, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1668, file: !2, line: 650, column: 7)
!1673 = !DILocation(line: 650, column: 7, scope: !1668)
!1674 = !DILocation(line: 651, column: 19, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1672, file: !2, line: 650, column: 21)
!1676 = !DILocation(line: 651, column: 5, scope: !1675)
!1677 = !DILocation(line: 651, column: 17, scope: !1675)
!1678 = !DILocation(line: 652, column: 3, scope: !1675)
!1679 = !DILocation(line: 654, column: 3, scope: !1668)
!1680 = !DILocation(line: 659, column: 6, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1642, file: !2, line: 659, column: 6)
!1682 = !DILocation(line: 659, column: 39, scope: !1681)
!1683 = !DILocation(line: 659, column: 44, scope: !1681)
!1684 = !DILocation(line: 659, column: 6, scope: !1642)
!1685 = !DILocation(line: 660, column: 18, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1681, file: !2, line: 659, column: 58)
!1687 = !DILocation(line: 660, column: 4, scope: !1686)
!1688 = !DILocation(line: 660, column: 16, scope: !1686)
!1689 = !DILocation(line: 661, column: 3, scope: !1686)
!1690 = !DILocation(line: 666, column: 36, scope: !1642)
!1691 = !DILocation(line: 666, column: 11, scope: !1642)
!1692 = !DILocation(line: 666, column: 9, scope: !1642)
!1693 = !DILocation(line: 667, column: 6, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1642, file: !2, line: 667, column: 6)
!1695 = !DILocation(line: 667, column: 6, scope: !1642)
!1696 = !DILocation(line: 668, column: 3, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1694, file: !2, line: 667, column: 28)
!1698 = !DILocation(line: 673, column: 26, scope: !1642)
!1699 = !DILocation(line: 673, column: 19, scope: !1642)
!1700 = !DILocation(line: 673, column: 24, scope: !1642)
!1701 = !DILocation(line: 677, column: 39, scope: !1642)
!1702 = !DILocation(line: 679, column: 6, scope: !1642)
!1703 = !DILocation(line: 679, column: 12, scope: !1642)
!1704 = !DILocation(line: 680, column: 5, scope: !1642)
!1705 = !DILocation(line: 677, column: 11, scope: !1642)
!1706 = !DILocation(line: 677, column: 9, scope: !1642)
!1707 = !DILocation(line: 681, column: 6, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1642, file: !2, line: 681, column: 6)
!1709 = !DILocation(line: 681, column: 6, scope: !1642)
!1710 = !DILocation(line: 684, column: 2, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1708, file: !2, line: 681, column: 28)
!1712 = !DILocation(line: 686, column: 2, scope: !1642)
!1713 = !DILocation(line: 687, column: 2, scope: !1642)
!1714 = !DILocation(line: 688, column: 1, scope: !1642)
!1715 = !DISubprogram(name: "acpi_ns_lookup", scope: !911, file: !911, line: 118, type: !1716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!59, !303, !51, !928, !1718, !60, !187, !1645}
!1718 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_interpreter_mode", file: !22, line: 120, baseType: !21)
!1719 = distinct !DISubprogram(name: "acpi_ns_get_node", scope: !2, file: !2, line: 713, type: !1643, scopeLine: 716, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1720)
!1720 = !{!1721, !1722, !1723, !1724, !1725}
!1721 = !DILocalVariable(name: "prefix_node", arg: 1, scope: !1719, file: !2, line: 713, type: !124)
!1722 = !DILocalVariable(name: "pathname", arg: 2, scope: !1719, file: !2, line: 714, type: !863)
!1723 = !DILocalVariable(name: "flags", arg: 3, scope: !1719, file: !2, line: 715, type: !60)
!1724 = !DILocalVariable(name: "return_node", arg: 4, scope: !1719, file: !2, line: 715, type: !1645)
!1725 = !DILocalVariable(name: "status", scope: !1719, file: !2, line: 717, type: !59)
!1726 = !DILocation(line: 713, column: 46, scope: !1719)
!1727 = !DILocation(line: 714, column: 16, scope: !1719)
!1728 = !DILocation(line: 715, column: 8, scope: !1719)
!1729 = !DILocation(line: 715, column: 44, scope: !1719)
!1730 = !DILocation(line: 717, column: 2, scope: !1719)
!1731 = !DILocation(line: 717, column: 14, scope: !1719)
!1732 = !DILocation(line: 721, column: 11, scope: !1719)
!1733 = !DILocation(line: 721, column: 9, scope: !1719)
!1734 = !DILocation(line: 722, column: 6, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1719, file: !2, line: 722, column: 6)
!1736 = !DILocation(line: 722, column: 6, scope: !1719)
!1737 = !DILocation(line: 723, column: 3, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1735, file: !2, line: 722, column: 28)
!1739 = !DILocation(line: 726, column: 37, scope: !1719)
!1740 = !DILocation(line: 726, column: 50, scope: !1719)
!1741 = !DILocation(line: 727, column: 9, scope: !1719)
!1742 = !DILocation(line: 727, column: 16, scope: !1719)
!1743 = !DILocation(line: 726, column: 11, scope: !1719)
!1744 = !DILocation(line: 726, column: 9, scope: !1719)
!1745 = !DILocation(line: 729, column: 8, scope: !1719)
!1746 = !DILocation(line: 730, column: 2, scope: !1719)
!1747 = !DILocation(line: 731, column: 1, scope: !1719)
!1748 = !DISubprogram(name: "kfree", scope: !34, file: !34, line: 227, type: !1749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{null, !1751}
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1753 = distinct !DISubprogram(name: "kzalloc", scope: !34, file: !34, line: 719, type: !1754, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1760)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!67, !1756, !830}
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 61, baseType: !1757)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1758, line: 72, baseType: !1759)
!1758 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1758, line: 16, baseType: !65)
!1760 = !{!1761, !1762}
!1761 = !DILocalVariable(name: "size", arg: 1, scope: !1753, file: !34, line: 719, type: !1756)
!1762 = !DILocalVariable(name: "flags", arg: 2, scope: !1753, file: !34, line: 719, type: !830)
!1763 = !DILocation(line: 719, column: 52, scope: !1753)
!1764 = !DILocation(line: 719, column: 64, scope: !1753)
!1765 = !DILocation(line: 721, column: 17, scope: !1753)
!1766 = !DILocation(line: 721, column: 23, scope: !1753)
!1767 = !DILocation(line: 721, column: 29, scope: !1753)
!1768 = !DILocation(line: 721, column: 9, scope: !1753)
!1769 = !DILocation(line: 721, column: 2, scope: !1753)
!1770 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1771, file: !1771, line: 65, type: !1772, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19)
!1771 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!65}
!1774 = !DILocation(line: 67, column: 9, scope: !1770)
!1775 = !DILocation(line: 67, column: 2, scope: !1770)
!1776 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1771, file: !1771, line: 120, type: !1777, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1779)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!58, !65}
!1779 = !{!1780}
!1780 = !DILocalVariable(name: "flags", arg: 1, scope: !1776, file: !1771, line: 120, type: !65)
!1781 = !DILocation(line: 120, column: 67, scope: !1776)
!1782 = !DILocation(line: 122, column: 11, scope: !1776)
!1783 = !DILocation(line: 122, column: 17, scope: !1776)
!1784 = !DILocation(line: 122, column: 9, scope: !1776)
!1785 = !DILocation(line: 122, column: 2, scope: !1776)
!1786 = distinct !DISubprogram(name: "kmalloc", scope: !34, file: !34, line: 591, type: !1754, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1787)
!1787 = !{!1788, !1789, !1790}
!1788 = !DILocalVariable(name: "size", arg: 1, scope: !1786, file: !34, line: 591, type: !1756)
!1789 = !DILocalVariable(name: "flags", arg: 2, scope: !1786, file: !34, line: 591, type: !830)
!1790 = !DILocalVariable(name: "index", scope: !1791, file: !34, line: 594, type: !23)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !34, line: 593, column: 42)
!1792 = distinct !DILexicalBlock(scope: !1786, file: !34, line: 593, column: 6)
!1793 = !DILocation(line: 591, column: 61, scope: !1786)
!1794 = !DILocation(line: 591, column: 73, scope: !1786)
!1795 = !DILocation(line: 593, column: 27, scope: !1792)
!1796 = !DILocation(line: 593, column: 6, scope: !1792)
!1797 = !DILocation(line: 593, column: 33, scope: !1792)
!1798 = !DILocation(line: 593, column: 36, scope: !1792)
!1799 = !DILocation(line: 593, column: 6, scope: !1786)
!1800 = !DILocation(line: 594, column: 3, scope: !1791)
!1801 = !DILocation(line: 594, column: 16, scope: !1791)
!1802 = !DILocation(line: 596, column: 7, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1791, file: !34, line: 596, column: 7)
!1804 = !DILocation(line: 596, column: 12, scope: !1803)
!1805 = !DILocation(line: 596, column: 7, scope: !1791)
!1806 = !DILocation(line: 597, column: 25, scope: !1803)
!1807 = !DILocation(line: 597, column: 31, scope: !1803)
!1808 = !DILocation(line: 597, column: 11, scope: !1803)
!1809 = !DILocation(line: 597, column: 4, scope: !1803)
!1810 = !DILocation(line: 599, column: 11, scope: !1791)
!1811 = !DILocation(line: 599, column: 9, scope: !1791)
!1812 = !DILocation(line: 601, column: 33, scope: !1791)
!1813 = !DILocation(line: 601, column: 40, scope: !1791)
!1814 = !DILocation(line: 601, column: 20, scope: !1791)
!1815 = !DILocation(line: 601, column: 5, scope: !1791)
!1816 = !DILocation(line: 601, column: 51, scope: !1791)
!1817 = !DILocation(line: 602, column: 5, scope: !1791)
!1818 = !DILocation(line: 602, column: 12, scope: !1791)
!1819 = !DILocation(line: 600, column: 10, scope: !1791)
!1820 = !DILocation(line: 600, column: 3, scope: !1791)
!1821 = !DILocation(line: 603, column: 2, scope: !1792)
!1822 = !DILocation(line: 604, column: 19, scope: !1786)
!1823 = !DILocation(line: 604, column: 25, scope: !1786)
!1824 = !DILocation(line: 604, column: 9, scope: !1786)
!1825 = !DILocation(line: 604, column: 2, scope: !1786)
!1826 = !DILocation(line: 605, column: 1, scope: !1786)
!1827 = !DISubprogram(name: "kmalloc_large", scope: !34, file: !34, line: 531, type: !1754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1828 = distinct !DISubprogram(name: "__kmalloc_index", scope: !34, file: !34, line: 444, type: !1829, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1833)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!23, !1756, !1831}
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !64, line: 35, baseType: !1832)
!1832 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1833 = !{!1834, !1835}
!1834 = !DILocalVariable(name: "size", arg: 1, scope: !1828, file: !34, line: 444, type: !1756)
!1835 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1828, file: !34, line: 445, type: !1831)
!1836 = !DILocation(line: 444, column: 60, scope: !1828)
!1837 = !DILocation(line: 445, column: 16, scope: !1828)
!1838 = !DILocation(line: 447, column: 7, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 447, column: 6)
!1840 = !DILocation(line: 447, column: 6, scope: !1828)
!1841 = !DILocation(line: 448, column: 3, scope: !1839)
!1842 = !DILocation(line: 450, column: 6, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 450, column: 6)
!1844 = !DILocation(line: 450, column: 11, scope: !1843)
!1845 = !DILocation(line: 450, column: 6, scope: !1828)
!1846 = !DILocation(line: 451, column: 3, scope: !1843)
!1847 = !DILocation(line: 453, column: 32, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 453, column: 6)
!1849 = !DILocation(line: 453, column: 37, scope: !1848)
!1850 = !DILocation(line: 453, column: 42, scope: !1848)
!1851 = !DILocation(line: 453, column: 45, scope: !1848)
!1852 = !DILocation(line: 453, column: 50, scope: !1848)
!1853 = !DILocation(line: 453, column: 6, scope: !1828)
!1854 = !DILocation(line: 454, column: 3, scope: !1848)
!1855 = !DILocation(line: 455, column: 32, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 455, column: 6)
!1857 = !DILocation(line: 455, column: 37, scope: !1856)
!1858 = !DILocation(line: 455, column: 43, scope: !1856)
!1859 = !DILocation(line: 455, column: 46, scope: !1856)
!1860 = !DILocation(line: 455, column: 51, scope: !1856)
!1861 = !DILocation(line: 455, column: 6, scope: !1828)
!1862 = !DILocation(line: 456, column: 3, scope: !1856)
!1863 = !DILocation(line: 457, column: 6, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 457, column: 6)
!1865 = !DILocation(line: 457, column: 11, scope: !1864)
!1866 = !DILocation(line: 457, column: 6, scope: !1828)
!1867 = !DILocation(line: 457, column: 26, scope: !1864)
!1868 = !DILocation(line: 458, column: 6, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 458, column: 6)
!1870 = !DILocation(line: 458, column: 11, scope: !1869)
!1871 = !DILocation(line: 458, column: 6, scope: !1828)
!1872 = !DILocation(line: 458, column: 26, scope: !1869)
!1873 = !DILocation(line: 459, column: 6, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 459, column: 6)
!1875 = !DILocation(line: 459, column: 11, scope: !1874)
!1876 = !DILocation(line: 459, column: 6, scope: !1828)
!1877 = !DILocation(line: 459, column: 26, scope: !1874)
!1878 = !DILocation(line: 460, column: 6, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 460, column: 6)
!1880 = !DILocation(line: 460, column: 11, scope: !1879)
!1881 = !DILocation(line: 460, column: 6, scope: !1828)
!1882 = !DILocation(line: 460, column: 26, scope: !1879)
!1883 = !DILocation(line: 461, column: 6, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 461, column: 6)
!1885 = !DILocation(line: 461, column: 11, scope: !1884)
!1886 = !DILocation(line: 461, column: 6, scope: !1828)
!1887 = !DILocation(line: 461, column: 26, scope: !1884)
!1888 = !DILocation(line: 462, column: 6, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 462, column: 6)
!1890 = !DILocation(line: 462, column: 11, scope: !1889)
!1891 = !DILocation(line: 462, column: 6, scope: !1828)
!1892 = !DILocation(line: 462, column: 26, scope: !1889)
!1893 = !DILocation(line: 463, column: 6, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 463, column: 6)
!1895 = !DILocation(line: 463, column: 11, scope: !1894)
!1896 = !DILocation(line: 463, column: 6, scope: !1828)
!1897 = !DILocation(line: 463, column: 26, scope: !1894)
!1898 = !DILocation(line: 464, column: 6, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 464, column: 6)
!1900 = !DILocation(line: 464, column: 11, scope: !1899)
!1901 = !DILocation(line: 464, column: 6, scope: !1828)
!1902 = !DILocation(line: 464, column: 26, scope: !1899)
!1903 = !DILocation(line: 465, column: 6, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 465, column: 6)
!1905 = !DILocation(line: 465, column: 11, scope: !1904)
!1906 = !DILocation(line: 465, column: 6, scope: !1828)
!1907 = !DILocation(line: 465, column: 26, scope: !1904)
!1908 = !DILocation(line: 466, column: 6, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 466, column: 6)
!1910 = !DILocation(line: 466, column: 11, scope: !1909)
!1911 = !DILocation(line: 466, column: 6, scope: !1828)
!1912 = !DILocation(line: 466, column: 26, scope: !1909)
!1913 = !DILocation(line: 467, column: 6, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 467, column: 6)
!1915 = !DILocation(line: 467, column: 11, scope: !1914)
!1916 = !DILocation(line: 467, column: 6, scope: !1828)
!1917 = !DILocation(line: 467, column: 26, scope: !1914)
!1918 = !DILocation(line: 468, column: 6, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 468, column: 6)
!1920 = !DILocation(line: 468, column: 11, scope: !1919)
!1921 = !DILocation(line: 468, column: 6, scope: !1828)
!1922 = !DILocation(line: 468, column: 26, scope: !1919)
!1923 = !DILocation(line: 469, column: 6, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 469, column: 6)
!1925 = !DILocation(line: 469, column: 11, scope: !1924)
!1926 = !DILocation(line: 469, column: 6, scope: !1828)
!1927 = !DILocation(line: 469, column: 26, scope: !1924)
!1928 = !DILocation(line: 470, column: 6, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 470, column: 6)
!1930 = !DILocation(line: 470, column: 11, scope: !1929)
!1931 = !DILocation(line: 470, column: 6, scope: !1828)
!1932 = !DILocation(line: 470, column: 26, scope: !1929)
!1933 = !DILocation(line: 471, column: 6, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 471, column: 6)
!1935 = !DILocation(line: 471, column: 11, scope: !1934)
!1936 = !DILocation(line: 471, column: 6, scope: !1828)
!1937 = !DILocation(line: 471, column: 26, scope: !1934)
!1938 = !DILocation(line: 472, column: 6, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 472, column: 6)
!1940 = !DILocation(line: 472, column: 11, scope: !1939)
!1941 = !DILocation(line: 472, column: 6, scope: !1828)
!1942 = !DILocation(line: 472, column: 26, scope: !1939)
!1943 = !DILocation(line: 473, column: 6, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 473, column: 6)
!1945 = !DILocation(line: 473, column: 11, scope: !1944)
!1946 = !DILocation(line: 473, column: 6, scope: !1828)
!1947 = !DILocation(line: 473, column: 26, scope: !1944)
!1948 = !DILocation(line: 474, column: 6, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 474, column: 6)
!1950 = !DILocation(line: 474, column: 11, scope: !1949)
!1951 = !DILocation(line: 474, column: 6, scope: !1828)
!1952 = !DILocation(line: 474, column: 27, scope: !1949)
!1953 = !DILocation(line: 475, column: 6, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 475, column: 6)
!1955 = !DILocation(line: 475, column: 11, scope: !1954)
!1956 = !DILocation(line: 475, column: 6, scope: !1828)
!1957 = !DILocation(line: 475, column: 32, scope: !1954)
!1958 = !DILocation(line: 477, column: 50, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1828, file: !34, line: 477, column: 6)
!1960 = !{i8 0, i8 2}
!1961 = !{}
!1962 = !DILocation(line: 477, column: 6, scope: !1828)
!1963 = !DILocation(line: 478, column: 3, scope: !1959)
!1964 = !DILocation(line: 478, column: 3, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !34, line: 478, column: 3)
!1966 = distinct !DILexicalBlock(scope: !1959, file: !34, line: 478, column: 3)
!1967 = !{i32 -2143029796}
!1968 = !DILocation(line: 478, column: 3, scope: !1966)
!1969 = !DILocation(line: 480, column: 3, scope: !1959)
!1970 = !DILocation(line: 480, column: 3, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1959, file: !34, line: 480, column: 3)
!1972 = !DILocation(line: 480, column: 3, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1971, file: !34, line: 480, column: 3)
!1974 = !DILocation(line: 480, column: 3, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1971, file: !34, line: 480, column: 3)
!1976 = !{i64 2151937703, i64 2151937732, i64 2151937778, i64 2151937836, i64 2151937890, i64 2151937944, i64 2151937999, i64 2151938030}
!1977 = !DILocation(line: 483, column: 2, scope: !1828)
!1978 = !DILocation(line: 484, column: 1, scope: !1828)
!1979 = !DISubprogram(name: "kmalloc_trace", scope: !34, file: !34, line: 525, type: !1980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!67, !1982, !830, !1756}
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1984, line: 11, flags: DIFlagFwdDecl)
!1984 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1985 = distinct !DISubprogram(name: "kmalloc_type", scope: !34, file: !34, line: 401, type: !1986, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1988)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!33, !830, !65}
!1988 = !{!1989, !1990}
!1989 = !DILocalVariable(name: "flags", arg: 1, scope: !1985, file: !34, line: 401, type: !830)
!1990 = !DILocalVariable(name: "caller", arg: 2, scope: !1985, file: !34, line: 401, type: !65)
!1991 = !DILocation(line: 401, column: 67, scope: !1985)
!1992 = !DILocation(line: 401, column: 88, scope: !1985)
!1993 = !DILocation(line: 407, column: 6, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1985, file: !34, line: 407, column: 6)
!1995 = !DILocation(line: 407, column: 6, scope: !1985)
!1996 = !DILocation(line: 413, column: 3, scope: !1994)
!1997 = !DILocation(line: 423, column: 38, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1985, file: !34, line: 423, column: 6)
!1999 = !DILocation(line: 423, column: 44, scope: !1998)
!2000 = !DILocation(line: 423, column: 6, scope: !1985)
!2001 = !DILocation(line: 424, column: 3, scope: !1998)
!2002 = !DILocation(line: 426, column: 3, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1985, file: !34, line: 425, column: 6)
!2004 = !DILocation(line: 429, column: 1, scope: !1985)
!2005 = !DISubprogram(name: "__kmalloc", scope: !34, file: !34, line: 488, type: !1754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2006 = !DISubprogram(name: "__compiletime_assert_173", scope: !34, file: !34, line: 478, type: !1596, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2007 = distinct !DISubprogram(name: "native_save_fl", scope: !1771, file: !1771, line: 17, type: !1772, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2008)
!2008 = !{!2009}
!2009 = !DILocalVariable(name: "flags", scope: !2007, file: !1771, line: 19, type: !65)
!2010 = !DILocation(line: 19, column: 2, scope: !2007)
!2011 = !DILocation(line: 19, column: 16, scope: !2007)
!2012 = !DILocation(line: 26, column: 2, scope: !2007)
!2013 = !{i64 1527622, i64 1527643}
!2014 = !DILocation(line: 32, column: 9, scope: !2007)
!2015 = !DILocation(line: 33, column: 1, scope: !2007)
!2016 = !DILocation(line: 32, column: 2, scope: !2007)
