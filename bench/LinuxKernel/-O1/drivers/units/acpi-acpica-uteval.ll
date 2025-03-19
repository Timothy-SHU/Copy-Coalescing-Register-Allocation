; ModuleID = 'drivers/acpi/acpica/uteval.c'
source_filename = "drivers/acpi/acpica/uteval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i8, i8, i8 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }

@_acpi_module_name = internal constant [7 x i8] c"uteval\00", align 1, !dbg !0
@.str = private unnamed_addr constant [24 x i8] c"Method execution failed\00", align 1, !dbg !42
@.str.1 = private unnamed_addr constant [28 x i8] c"No object was returned from\00", align 1, !dbg !47
@acpi_gbl_enable_interpreter_slack = external dso_local global i8, align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Return object type is incorrect\00", align 1, !dbg !52
@.str.3 = private unnamed_addr constant [63 x i8] c"Type returned from %s was incorrect: %s, expected Btypes: 0x%X\00", align 1, !dbg !57
@.str.4 = private unnamed_addr constant [5 x i8] c"_STA\00", align 1, !dbg !62
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !67

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_evaluate_object(ptr noundef %prefix_node, ptr noundef %path, i32 noundef %expected_return_btypes, ptr noundef %return_desc) #0 align 16 !dbg !85 {
entry:
  %retval = alloca i32, align 4
  %prefix_node.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %expected_return_btypes.addr = alloca i32, align 4
  %return_desc.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %status = alloca i32, align 4
  %return_btype = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %prefix_node, ptr %prefix_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefix_node.addr, metadata !850, metadata !DIExpression()), !dbg !922
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !851, metadata !DIExpression()), !dbg !923
  store i32 %expected_return_btypes, ptr %expected_return_btypes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %expected_return_btypes.addr, metadata !852, metadata !DIExpression()), !dbg !924
  store ptr %return_desc, ptr %return_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_desc.addr, metadata !853, metadata !DIExpression()), !dbg !925
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #13, !dbg !926
  call void @llvm.dbg.declare(metadata ptr %info, metadata !854, metadata !DIExpression()), !dbg !927
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !928
  call void @llvm.dbg.declare(metadata ptr %status, metadata !919, metadata !DIExpression()), !dbg !929
  call void @llvm.lifetime.start.p0(i64 4, ptr %return_btype) #13, !dbg !930
  call void @llvm.dbg.declare(metadata ptr %return_btype, metadata !920, metadata !DIExpression()), !dbg !931
  %call = call ptr @acpi_os_allocate_zeroed(i64 noundef 88) #14, !dbg !932
  store ptr %call, ptr %info, align 8, !dbg !933
  %0 = load ptr, ptr %info, align 8, !dbg !934
  %tobool = icmp ne ptr %0, null, !dbg !934
  br i1 %tobool, label %if.end, label %if.then, !dbg !936

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !937
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31, !dbg !937

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %prefix_node.addr, align 8, !dbg !939
  %2 = load ptr, ptr %info, align 8, !dbg !940
  %prefix_node1 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %2, i32 0, i32 0, !dbg !941
  store ptr %1, ptr %prefix_node1, align 8, !dbg !942
  %3 = load ptr, ptr %path.addr, align 8, !dbg !943
  %4 = load ptr, ptr %info, align 8, !dbg !944
  %relative_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %4, i32 0, i32 1, !dbg !945
  store ptr %3, ptr %relative_pathname, align 8, !dbg !946
  %5 = load ptr, ptr %info, align 8, !dbg !947
  %call2 = call i32 @acpi_ns_evaluate(ptr noundef %5) #14, !dbg !948
  store i32 %call2, ptr %status, align 4, !dbg !949
  %6 = load i32, ptr %status, align 4, !dbg !950
  %tobool3 = icmp ne i32 %6, 0, !dbg !950
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !952

if.then4:                                         ; preds = %if.end
  %7 = load i32, ptr %status, align 4, !dbg !953
  %cmp = icmp eq i32 %7, 5, !dbg !956
  br i1 %cmp, label %if.then5, label %if.else, !dbg !957

if.then5:                                         ; preds = %if.then4
  br label %if.end6, !dbg !958

if.else:                                          ; preds = %if.then4
  %8 = load ptr, ptr %prefix_node.addr, align 8, !dbg !960
  %9 = load ptr, ptr %path.addr, align 8, !dbg !960
  %10 = load i32, ptr %status, align 4, !dbg !960
  call void @acpi_ut_method_error(ptr noundef @_acpi_module_name, i32 noundef 69, ptr noundef @.str, ptr noundef %8, ptr noundef %9, i32 noundef %10) #14, !dbg !960
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  br label %cleanup, !dbg !962

if.end7:                                          ; preds = %if.end
  %11 = load ptr, ptr %info, align 8, !dbg !963
  %return_object = getelementptr inbounds %struct.acpi_evaluate_info, ptr %11, i32 0, i32 7, !dbg !965
  %12 = load ptr, ptr %return_object, align 8, !dbg !965
  %tobool8 = icmp ne ptr %12, null, !dbg !963
  br i1 %tobool8, label %if.end13, label %if.then9, !dbg !966

if.then9:                                         ; preds = %if.end7
  %13 = load i32, ptr %expected_return_btypes.addr, align 4, !dbg !967
  %tobool10 = icmp ne i32 %13, 0, !dbg !967
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !970

if.then11:                                        ; preds = %if.then9
  %14 = load ptr, ptr %prefix_node.addr, align 8, !dbg !971
  %15 = load ptr, ptr %path.addr, align 8, !dbg !971
  call void @acpi_ut_method_error(ptr noundef @_acpi_module_name, i32 noundef 80, ptr noundef @.str.1, ptr noundef %14, ptr noundef %15, i32 noundef 6) #14, !dbg !971
  store i32 6, ptr %status, align 4, !dbg !973
  br label %if.end12, !dbg !974

if.end12:                                         ; preds = %if.then11, %if.then9
  br label %cleanup, !dbg !975

if.end13:                                         ; preds = %if.end7
  %16 = load ptr, ptr %info, align 8, !dbg !976
  %return_object14 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %16, i32 0, i32 7, !dbg !977
  %17 = load ptr, ptr %return_object14, align 8, !dbg !977
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %17, i32 0, i32 2, !dbg !978
  %18 = load i8, ptr %type, align 1, !dbg !978
  %conv = zext i8 %18 to i32, !dbg !979
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb15
    i32 2, label %sw.bb16
    i32 4, label %sw.bb17
  ], !dbg !980

sw.bb:                                            ; preds = %if.end13
  store i32 1, ptr %return_btype, align 4, !dbg !981
  br label %sw.epilog, !dbg !983

sw.bb15:                                          ; preds = %if.end13
  store i32 4, ptr %return_btype, align 4, !dbg !984
  br label %sw.epilog, !dbg !985

sw.bb16:                                          ; preds = %if.end13
  store i32 2, ptr %return_btype, align 4, !dbg !986
  br label %sw.epilog, !dbg !987

sw.bb17:                                          ; preds = %if.end13
  store i32 8, ptr %return_btype, align 4, !dbg !988
  br label %sw.epilog, !dbg !989

sw.default:                                       ; preds = %if.end13
  store i32 0, ptr %return_btype, align 4, !dbg !990
  br label %sw.epilog, !dbg !991

sw.epilog:                                        ; preds = %sw.default, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb
  %19 = load i8, ptr @acpi_gbl_enable_interpreter_slack, align 1, !dbg !992
  %conv18 = zext i8 %19 to i32, !dbg !994
  %tobool19 = icmp ne i32 %conv18, 0, !dbg !994
  br i1 %tobool19, label %land.lhs.true, label %if.end23, !dbg !995

land.lhs.true:                                    ; preds = %sw.epilog
  %20 = load i32, ptr %expected_return_btypes.addr, align 4, !dbg !996
  %tobool20 = icmp ne i32 %20, 0, !dbg !996
  br i1 %tobool20, label %if.end23, label %if.then21, !dbg !997

if.then21:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %info, align 8, !dbg !998
  %return_object22 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %21, i32 0, i32 7, !dbg !1000
  %22 = load ptr, ptr %return_object22, align 8, !dbg !1000
  call void @acpi_ut_remove_reference(ptr noundef %22) #14, !dbg !1001
  br label %cleanup, !dbg !1002

if.end23:                                         ; preds = %land.lhs.true, %sw.epilog
  %23 = load i32, ptr %expected_return_btypes.addr, align 4, !dbg !1003
  %24 = load i32, ptr %return_btype, align 4, !dbg !1005
  %and = and i32 %23, %24, !dbg !1006
  %tobool24 = icmp ne i32 %and, 0, !dbg !1006
  br i1 %tobool24, label %if.end29, label %if.then25, !dbg !1007

if.then25:                                        ; preds = %if.end23
  %25 = load ptr, ptr %prefix_node.addr, align 8, !dbg !1008
  %26 = load ptr, ptr %path.addr, align 8, !dbg !1008
  call void @acpi_ut_method_error(ptr noundef @_acpi_module_name, i32 noundef 131, ptr noundef @.str.2, ptr noundef %25, ptr noundef %26, i32 noundef 8) #14, !dbg !1008
  %27 = load ptr, ptr %path.addr, align 8, !dbg !1010
  %28 = load ptr, ptr %info, align 8, !dbg !1010
  %return_object26 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %28, i32 0, i32 7, !dbg !1010
  %29 = load ptr, ptr %return_object26, align 8, !dbg !1010
  %call27 = call ptr @acpi_ut_get_object_type_name(ptr noundef %29) #14, !dbg !1010
  %30 = load i32, ptr %expected_return_btypes.addr, align 4, !dbg !1010
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 133, ptr noundef @.str.3, ptr noundef %27, ptr noundef %call27, i32 noundef %30) #14, !dbg !1010
  %31 = load ptr, ptr %info, align 8, !dbg !1011
  %return_object28 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %31, i32 0, i32 7, !dbg !1012
  %32 = load ptr, ptr %return_object28, align 8, !dbg !1012
  call void @acpi_ut_remove_reference(ptr noundef %32) #14, !dbg !1013
  store i32 8, ptr %status, align 4, !dbg !1014
  br label %cleanup, !dbg !1015

if.end29:                                         ; preds = %if.end23
  %33 = load ptr, ptr %info, align 8, !dbg !1016
  %return_object30 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %33, i32 0, i32 7, !dbg !1017
  %34 = load ptr, ptr %return_object30, align 8, !dbg !1017
  %35 = load ptr, ptr %return_desc.addr, align 8, !dbg !1018
  store ptr %34, ptr %35, align 8, !dbg !1019
  br label %cleanup, !dbg !1020

cleanup:                                          ; preds = %if.end29, %if.then25, %if.then21, %if.end12, %if.end6
  call void @llvm.dbg.label(metadata !921), !dbg !1021
  %36 = load ptr, ptr %info, align 8, !dbg !1022
  call void @acpi_os_free(ptr noundef %36) #14, !dbg !1022
  %37 = load i32, ptr %status, align 4, !dbg !1023
  store i32 %37, ptr %retval, align 4, !dbg !1023
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31, !dbg !1023

cleanup31:                                        ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %return_btype) #13, !dbg !1024
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1024
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #13, !dbg !1024
  %38 = load i32, ptr %retval, align 4, !dbg !1024
  ret i32 %38, !dbg !1024
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #3 align 16 !dbg !1025 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1030, metadata !DIExpression()), !dbg !1041
  %0 = load i64, ptr %size.addr, align 8, !dbg !1042
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !1043
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1031, metadata !DIExpression()), !dbg !1043
  br label %do.body, !dbg !1043

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !1044
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1033, metadata !DIExpression()), !dbg !1044
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !1044
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1036, metadata !DIExpression()), !dbg !1044
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1044
  %conv = zext i1 %cmp to i32, !dbg !1044
  store i32 1, ptr %tmp, align 4, !dbg !1044
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !1045
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !1045
  %1 = load i32, ptr %tmp, align 4, !dbg !1044
  %call = call i64 @arch_local_save_flags() #14, !dbg !1045
  store i64 %call, ptr %_flags, align 8, !dbg !1045
  br label %do.cond, !dbg !1045

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1045

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !1046
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1037, metadata !DIExpression()), !dbg !1046
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !1046
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1040, metadata !DIExpression()), !dbg !1046
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1046
  %conv6 = zext i1 %cmp5 to i32, !dbg !1046
  store i32 1, ptr %tmp7, align 4, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !1047
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !1047
  %2 = load i32, ptr %tmp7, align 4, !dbg !1046
  %3 = load i64, ptr %_flags, align 8, !dbg !1047
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !1047
  store i32 %call9, ptr %tmp8, align 4, !dbg !1047
  %4 = load i32, ptr %tmp8, align 4, !dbg !1047
  store i32 %4, ptr %tmp1, align 4, !dbg !1045
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !1048
  %5 = load i32, ptr %tmp1, align 4, !dbg !1043
  %tobool = icmp ne i32 %5, 0, !dbg !1048
  %6 = zext i1 %tobool to i64, !dbg !1048
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1048
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !1049
  ret ptr %call10, !dbg !1050
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1051 dso_local i32 @acpi_ns_evaluate(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1055 dso_local void @acpi_ut_method_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1059 dso_local void @acpi_ut_remove_reference(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1062 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1066 dso_local ptr @acpi_ut_get_object_type_name(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #3 align 16 !dbg !1069 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1073, metadata !DIExpression()), !dbg !1074
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1075
  call void @kfree(ptr noundef %0) #14, !dbg !1076
  ret void, !dbg !1077
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_evaluate_numeric_object(ptr noundef %object_name, ptr noundef %device_node, ptr noundef %value) #0 align 16 !dbg !1078 {
entry:
  %retval = alloca i32, align 4
  %object_name.addr = alloca ptr, align 8
  %device_node.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %object_name, ptr %object_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object_name.addr, metadata !1082, metadata !DIExpression()), !dbg !1087
  store ptr %device_node, ptr %device_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_node.addr, metadata !1083, metadata !DIExpression()), !dbg !1088
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1084, metadata !DIExpression()), !dbg !1089
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #13, !dbg !1090
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1085, metadata !DIExpression()), !dbg !1091
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1092
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1086, metadata !DIExpression()), !dbg !1093
  %0 = load ptr, ptr %device_node.addr, align 8, !dbg !1094
  %1 = load ptr, ptr %object_name.addr, align 8, !dbg !1095
  %call = call i32 @acpi_ut_evaluate_object(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef %obj_desc) #14, !dbg !1096
  store i32 %call, ptr %status, align 4, !dbg !1097
  %2 = load i32, ptr %status, align 4, !dbg !1098
  %tobool = icmp ne i32 %2, 0, !dbg !1098
  br i1 %tobool, label %if.then, label %if.end, !dbg !1100

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !1101
  store i32 %3, ptr %retval, align 4, !dbg !1101
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1101

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %obj_desc, align 8, !dbg !1103
  %value1 = getelementptr inbounds %struct.acpi_object_integer, ptr %4, i32 0, i32 6, !dbg !1104
  %5 = load i64, ptr %value1, align 8, !dbg !1104
  %6 = load ptr, ptr %value.addr, align 8, !dbg !1105
  store i64 %5, ptr %6, align 8, !dbg !1106
  %7 = load ptr, ptr %obj_desc, align 8, !dbg !1107
  call void @acpi_ut_remove_reference(ptr noundef %7) #14, !dbg !1108
  %8 = load i32, ptr %status, align 4, !dbg !1109
  store i32 %8, ptr %retval, align 4, !dbg !1109
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1109

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1110
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #13, !dbg !1110
  %9 = load i32, ptr %retval, align 4, !dbg !1110
  ret i32 %9, !dbg !1110
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_execute_STA(ptr noundef %device_node, ptr noundef %flags) #0 align 16 !dbg !1111 {
entry:
  %retval = alloca i32, align 4
  %device_node.addr = alloca ptr, align 8
  %flags.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device_node, ptr %device_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_node.addr, metadata !1116, metadata !DIExpression()), !dbg !1120
  store ptr %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1117, metadata !DIExpression()), !dbg !1121
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #13, !dbg !1122
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1118, metadata !DIExpression()), !dbg !1123
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1124
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1119, metadata !DIExpression()), !dbg !1125
  %0 = load ptr, ptr %device_node.addr, align 8, !dbg !1126
  %call = call i32 @acpi_ut_evaluate_object(ptr noundef %0, ptr noundef @.str.4, i32 noundef 1, ptr noundef %obj_desc) #14, !dbg !1127
  store i32 %call, ptr %status, align 4, !dbg !1128
  %1 = load i32, ptr %status, align 4, !dbg !1129
  %tobool = icmp ne i32 %1, 0, !dbg !1129
  br i1 %tobool, label %if.then, label %if.end2, !dbg !1131

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !1132
  %cmp = icmp eq i32 5, %2, !dbg !1135
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1136

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr %flags.addr, align 8, !dbg !1137
  store i32 -1, ptr %3, align 4, !dbg !1139
  store i32 0, ptr %status, align 4, !dbg !1140
  br label %if.end, !dbg !1141

if.end:                                           ; preds = %if.then1, %if.then
  %4 = load i32, ptr %status, align 4, !dbg !1142
  store i32 %4, ptr %retval, align 4, !dbg !1142
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1142

if.end2:                                          ; preds = %entry
  %5 = load ptr, ptr %obj_desc, align 8, !dbg !1143
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %5, i32 0, i32 6, !dbg !1144
  %6 = load i64, ptr %value, align 8, !dbg !1144
  %conv = trunc i64 %6 to i32, !dbg !1145
  %7 = load ptr, ptr %flags.addr, align 8, !dbg !1146
  store i32 %conv, ptr %7, align 4, !dbg !1147
  %8 = load ptr, ptr %obj_desc, align 8, !dbg !1148
  call void @acpi_ut_remove_reference(ptr noundef %8) #14, !dbg !1149
  %9 = load i32, ptr %status, align 4, !dbg !1150
  store i32 %9, ptr %retval, align 4, !dbg !1150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1150

cleanup:                                          ; preds = %if.end2, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1151
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #13, !dbg !1151
  %10 = load i32, ptr %retval, align 4, !dbg !1151
  ret i32 %10, !dbg !1151
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_execute_power_methods(ptr noundef %device_node, ptr noundef %method_names, i8 noundef zeroext %method_count, ptr noundef %out_values) #0 align 16 !dbg !1152 {
entry:
  %device_node.addr = alloca ptr, align 8
  %method_names.addr = alloca ptr, align 8
  %method_count.addr = alloca i8, align 1
  %out_values.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %final_status = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %device_node, ptr %device_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_node.addr, metadata !1157, metadata !DIExpression()), !dbg !1165
  store ptr %method_names, ptr %method_names.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %method_names.addr, metadata !1158, metadata !DIExpression()), !dbg !1166
  store i8 %method_count, ptr %method_count.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %method_count.addr, metadata !1159, metadata !DIExpression()), !dbg !1167
  store ptr %out_values, ptr %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_values.addr, metadata !1160, metadata !DIExpression()), !dbg !1168
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #13, !dbg !1169
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1161, metadata !DIExpression()), !dbg !1170
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1171
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1162, metadata !DIExpression()), !dbg !1172
  call void @llvm.lifetime.start.p0(i64 4, ptr %final_status) #13, !dbg !1173
  call void @llvm.dbg.declare(metadata ptr %final_status, metadata !1163, metadata !DIExpression()), !dbg !1174
  store i32 5, ptr %final_status, align 4, !dbg !1174
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1175
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1164, metadata !DIExpression()), !dbg !1176
  store i32 0, ptr %i, align 4, !dbg !1177
  br label %for.cond, !dbg !1179

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1180
  %1 = load i8, ptr %method_count.addr, align 1, !dbg !1182
  %conv = zext i8 %1 to i32, !dbg !1182
  %cmp = icmp ult i32 %0, %conv, !dbg !1183
  br i1 %cmp, label %for.body, label %for.end, !dbg !1184

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %device_node.addr, align 8, !dbg !1185
  %3 = load ptr, ptr %method_names.addr, align 8, !dbg !1187
  %4 = load i32, ptr %i, align 4, !dbg !1187
  %idxprom = zext i32 %4 to i64, !dbg !1187
  %arrayidx = getelementptr ptr, ptr %3, i64 %idxprom, !dbg !1187
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !1187
  %6 = ptrtoint ptr %5 to i64, !dbg !1187
  %7 = inttoptr i64 %6 to ptr, !dbg !1187
  %call = call i32 @acpi_ut_evaluate_object(ptr noundef %2, ptr noundef %7, i32 noundef 1, ptr noundef %obj_desc) #14, !dbg !1188
  store i32 %call, ptr %status, align 4, !dbg !1189
  %8 = load i32, ptr %status, align 4, !dbg !1190
  %tobool = icmp ne i32 %8, 0, !dbg !1190
  br i1 %tobool, label %if.end, label %if.then, !dbg !1192

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %obj_desc, align 8, !dbg !1193
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %9, i32 0, i32 6, !dbg !1195
  %10 = load i64, ptr %value, align 8, !dbg !1195
  %conv2 = trunc i64 %10 to i8, !dbg !1196
  %11 = load ptr, ptr %out_values.addr, align 8, !dbg !1197
  %12 = load i32, ptr %i, align 4, !dbg !1198
  %idxprom3 = zext i32 %12 to i64, !dbg !1197
  %arrayidx4 = getelementptr i8, ptr %11, i64 %idxprom3, !dbg !1197
  store i8 %conv2, ptr %arrayidx4, align 1, !dbg !1199
  %13 = load ptr, ptr %obj_desc, align 8, !dbg !1200
  call void @acpi_ut_remove_reference(ptr noundef %13) #14, !dbg !1201
  store i32 0, ptr %final_status, align 4, !dbg !1202
  br label %for.inc, !dbg !1203

if.end:                                           ; preds = %for.body
  %14 = load ptr, ptr %out_values.addr, align 8, !dbg !1204
  %15 = load i32, ptr %i, align 4, !dbg !1205
  %idxprom5 = zext i32 %15 to i64, !dbg !1204
  %arrayidx6 = getelementptr i8, ptr %14, i64 %idxprom5, !dbg !1204
  store i8 -1, ptr %arrayidx6, align 1, !dbg !1206
  %16 = load i32, ptr %status, align 4, !dbg !1207
  %cmp7 = icmp eq i32 %16, 5, !dbg !1209
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !1210

if.then9:                                         ; preds = %if.end
  br label %for.inc, !dbg !1211

if.end10:                                         ; preds = %if.end
  br label %for.inc, !dbg !1213

for.inc:                                          ; preds = %if.end10, %if.then9, %if.then
  %17 = load i32, ptr %i, align 4, !dbg !1214
  %inc = add i32 %17, 1, !dbg !1214
  store i32 %inc, ptr %i, align 4, !dbg !1214
  br label %for.cond, !dbg !1215, !llvm.loop !1216

for.end:                                          ; preds = %for.cond
  %18 = load i32, ptr %final_status, align 4, !dbg !1220
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1221
  call void @llvm.lifetime.end.p0(i64 4, ptr %final_status) #13, !dbg !1221
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1221
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #13, !dbg !1221
  ret i32 %18, !dbg !1220
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1222 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1230, metadata !DIExpression()), !dbg !1232
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1231, metadata !DIExpression()), !dbg !1233
  %0 = load i64, ptr %size.addr, align 8, !dbg !1234
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1235
  %or = or i32 %1, 256, !dbg !1236
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !1237
  ret ptr %call, !dbg !1238
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !1239 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !1243
  ret i64 %call, !dbg !1244
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !1245 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1250, metadata !DIExpression()), !dbg !1251
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1252
  %and = and i64 %0, 512, !dbg !1253
  %tobool = icmp ne i64 %and, 0, !dbg !1254
  %lnot = xor i1 %tobool, true, !dbg !1254
  %lnot.ext = zext i1 %lnot to i32, !dbg !1254
  ret i32 %lnot.ext, !dbg !1255
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1256 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1258, metadata !DIExpression()), !dbg !1263
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1259, metadata !DIExpression()), !dbg !1264
  %0 = load i64, ptr %size.addr, align 8, !dbg !1265
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1266
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1267

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1268
  %tobool = icmp ne i64 %2, 0, !dbg !1268
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1269

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !1270
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1260, metadata !DIExpression()), !dbg !1271
  %3 = load i64, ptr %size.addr, align 8, !dbg !1272
  %cmp = icmp ugt i64 %3, 8192, !dbg !1274
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1275

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1276
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1277
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !1278
  store ptr %call, ptr %retval, align 8, !dbg !1279
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1279

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1280
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !1280
  store i32 %call2, ptr %index, align 4, !dbg !1281
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1282
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1283
  %9 = ptrtoint ptr %8 to i64, !dbg !1283
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !1284
  %idxprom = zext i32 %call3 to i64, !dbg !1285
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1285
  %10 = load i32, ptr %index, align 4, !dbg !1286
  %idxprom4 = zext i32 %10 to i64, !dbg !1285
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1285
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1285
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1287
  %13 = load i64, ptr %size.addr, align 8, !dbg !1288
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !1289
  store ptr %call6, ptr %retval, align 8, !dbg !1290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1290

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !1291
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1292
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1293
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !1294
  store ptr %call8, ptr %retval, align 8, !dbg !1295
  br label %return, !dbg !1295

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1296
  ret ptr %16, !dbg !1296
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1297 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !1298 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1304, metadata !DIExpression()), !dbg !1306
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1305, metadata !DIExpression()), !dbg !1307
  %0 = load i64, ptr %size.addr, align 8, !dbg !1308
  %tobool = icmp ne i64 %0, 0, !dbg !1308
  br i1 %tobool, label %if.end, label %if.then, !dbg !1310

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1311
  br label %return, !dbg !1311

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1312
  %cmp = icmp ule i64 %1, 8, !dbg !1314
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1315

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1316
  br label %return, !dbg !1316

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1317
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1319
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1320

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1321
  %cmp4 = icmp ule i64 %3, 96, !dbg !1322
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1323

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1324
  br label %return, !dbg !1324

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1325
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1327
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1328

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1329
  %cmp9 = icmp ule i64 %5, 192, !dbg !1330
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1331

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1332
  br label %return, !dbg !1332

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1333
  %cmp12 = icmp ule i64 %6, 8, !dbg !1335
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1336

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1337
  br label %return, !dbg !1337

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1338
  %cmp15 = icmp ule i64 %7, 16, !dbg !1340
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1341

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1342
  br label %return, !dbg !1342

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1343
  %cmp18 = icmp ule i64 %8, 32, !dbg !1345
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1346

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1347
  br label %return, !dbg !1347

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1348
  %cmp21 = icmp ule i64 %9, 64, !dbg !1350
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1351

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1352
  br label %return, !dbg !1352

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1353
  %cmp24 = icmp ule i64 %10, 128, !dbg !1355
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1356

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1357
  br label %return, !dbg !1357

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1358
  %cmp27 = icmp ule i64 %11, 256, !dbg !1360
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1361

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1362
  br label %return, !dbg !1362

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1363
  %cmp30 = icmp ule i64 %12, 512, !dbg !1365
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1366

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1367
  br label %return, !dbg !1367

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1368
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1370
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1371

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1372
  br label %return, !dbg !1372

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1373
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1375
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1376

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1377
  br label %return, !dbg !1377

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1378
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1380
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1381

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1382
  br label %return, !dbg !1382

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1383
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1385
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1386

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1387
  br label %return, !dbg !1387

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1388
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1390
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1391

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1392
  br label %return, !dbg !1392

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1393
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1395
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1396

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1397
  br label %return, !dbg !1397

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1398
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1400
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1401

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1402
  br label %return, !dbg !1402

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1403
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1405
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1406

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1407
  br label %return, !dbg !1407

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1408
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1410
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1411

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1412
  br label %return, !dbg !1412

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1413
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1415
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1416

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1417
  br label %return, !dbg !1417

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1418
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1420
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1421

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1422
  br label %return, !dbg !1422

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1423
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1425
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1426

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1427
  br label %return, !dbg !1427

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1428, !range !1430, !noundef !1431
  %tobool69 = trunc i8 %25 to i1, !dbg !1428
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1432

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1433

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !1434, !srcloc !1437
  unreachable, !dbg !1434

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1438

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1439

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1440

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1442

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1440

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #13, !dbg !1444, !srcloc !1446
  br label %do.end75, !dbg !1444

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1440

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1447
  br label %return, !dbg !1447

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1448
  ret i32 %26, !dbg !1448
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1449 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !1455 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1459, metadata !DIExpression()), !dbg !1461
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1460, metadata !DIExpression()), !dbg !1462
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1463
  %and = and i32 %0, 17, !dbg !1463
  %cmp = icmp eq i32 %and, 0, !dbg !1463
  %lnot = xor i1 %cmp, true, !dbg !1463
  %lnot1 = xor i1 %lnot, true, !dbg !1463
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1463
  %conv = sext i32 %lnot.ext to i64, !dbg !1463
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1463
  %tobool = icmp ne i64 %expval, 0, !dbg !1463
  br i1 %tobool, label %if.then, label %if.end, !dbg !1465

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1466
  br label %return, !dbg !1466

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1467
  %and2 = and i32 %1, 1, !dbg !1469
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1469
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1470

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1471
  br label %return, !dbg !1471

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1472
  br label %return, !dbg !1472

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1474
  ret i32 %2, !dbg !1474
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1475 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1476 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !1479 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1482
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1481, metadata !DIExpression()), !dbg !1483
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !1484, !srcloc !1485
  %0 = load i64, ptr %flags, align 8, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1487
  ret i64 %0, !dbg !1488
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1489 dso_local void @kfree(ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !72, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.uteval.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22uteval\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/uteval.ll drivers/acpi/acpica/uteval.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !41, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/uteval.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0eda19dc1e8c7648b81df596dc6cfede")
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
!21 = !{!22, !29, !30, !32, !34, !37, !40, !36}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !23, line: 127, baseType: !24)
!23 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !28)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !23, line: 421, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !7)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !35, line: 42, baseType: !36)
!35 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!36 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !25, line: 17, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !39)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !35, line: 154, baseType: !7)
!41 = !{!42, !47, !52, !57, !62, !67, !0}
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 192, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 24)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 224, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 28)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !3, line: 130, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 256, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 32)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !3, line: 133, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 504, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 63)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !3, line: 223, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 40, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 5)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 168, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 21)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 56, elements: !74)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!74 = !{!75}
!75 = !DISubrange(count: 7)
!76 = !{i32 7, !"Dwarf Version", i32 5}
!77 = !{i32 2, !"Debug Info Version", i32 3}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 8, !"cf-protection-branch", i32 1}
!80 = !{i32 4, !"function_return_thunk_extern", i32 1}
!81 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!82 = !{i32 1, !"Code Model", i32 2}
!83 = !{i32 1, !"override-stack-alignment", i32 8}
!84 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!85 = distinct !DISubprogram(name: "acpi_ut_evaluate_object", scope: !3, file: !3, line: 37, type: !86, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !849)
!86 = !DISubroutineType(types: !87)
!87 = !{!29, !88, !848, !30, !155}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !90, line: 133, size: 384, elements: !91)
!90 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!91 = !{!92, !835, !836, !837, !838, !844, !845, !846, !847}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !89, file: !90, line: 134, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !95, line: 369, size: 576, elements: !96)
!95 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!96 = !{!97, !108, !121, !131, !145, !159, !169, !484, !501, !517, !530, !608, !620, !634, !644, !662, !684, !703, !722, !741, !754, !781, !798, !811, !825, !834}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !94, file: !95, line: 370, baseType: !98, size: 128)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !95, line: 73, size: 128, elements: !99)
!99 = !{!100, !101, !102, !103, !107}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !98, file: !95, line: 74, baseType: !93, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !98, file: !95, line: 74, baseType: !37, size: 8, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !98, file: !95, line: 74, baseType: !37, size: 8, offset: 72)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !98, file: !95, line: 74, baseType: !104, size: 16, offset: 80)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !106)
!106 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !98, file: !95, line: 74, baseType: !37, size: 8, offset: 96)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !94, file: !95, line: 371, baseType: !109, size: 192)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !95, line: 76, size: 192, elements: !110)
!110 = !{!111, !112, !113, !114, !115, !116, !120}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !109, file: !95, line: 77, baseType: !93, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !109, file: !95, line: 77, baseType: !37, size: 8, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !109, file: !95, line: 77, baseType: !37, size: 8, offset: 72)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !109, file: !95, line: 77, baseType: !104, size: 16, offset: 80)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !109, file: !95, line: 77, baseType: !37, size: 8, offset: 96)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !109, file: !95, line: 77, baseType: !117, size: 24, offset: 104)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 24, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 3)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !109, file: !95, line: 78, baseType: !24, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !94, file: !95, line: 372, baseType: !122, size: 256)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !95, line: 93, size: 256, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !122, file: !95, line: 94, baseType: !93, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !122, file: !95, line: 94, baseType: !37, size: 8, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !122, file: !95, line: 94, baseType: !37, size: 8, offset: 72)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !122, file: !95, line: 94, baseType: !104, size: 16, offset: 80)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !122, file: !95, line: 94, baseType: !37, size: 8, offset: 96)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !122, file: !95, line: 94, baseType: !32, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !122, file: !95, line: 94, baseType: !30, size: 32, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !94, file: !95, line: 373, baseType: !132, size: 384)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !95, line: 97, size: 384, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !141, !142, !143, !144}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !132, file: !95, line: 98, baseType: !93, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !132, file: !95, line: 98, baseType: !37, size: 8, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !95, line: 98, baseType: !37, size: 8, offset: 72)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !132, file: !95, line: 98, baseType: !104, size: 16, offset: 80)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !132, file: !95, line: 98, baseType: !37, size: 8, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !132, file: !95, line: 98, baseType: !140, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !132, file: !95, line: 98, baseType: !30, size: 32, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !132, file: !95, line: 99, baseType: !30, size: 32, offset: 224)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !132, file: !95, line: 100, baseType: !140, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !132, file: !95, line: 101, baseType: !88, size: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !94, file: !95, line: 374, baseType: !146, size: 384)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !95, line: 104, size: 384, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !156, !157, !158}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !146, file: !95, line: 105, baseType: !93, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !146, file: !95, line: 105, baseType: !37, size: 8, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !95, line: 105, baseType: !37, size: 8, offset: 72)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !146, file: !95, line: 105, baseType: !104, size: 16, offset: 80)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !95, line: 105, baseType: !37, size: 8, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !146, file: !95, line: 105, baseType: !88, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !146, file: !95, line: 106, baseType: !155, size: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !146, file: !95, line: 107, baseType: !140, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !146, file: !95, line: 108, baseType: !30, size: 32, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !146, file: !95, line: 109, baseType: !30, size: 32, offset: 352)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !94, file: !95, line: 375, baseType: !160, size: 192)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !95, line: 118, size: 192, elements: !161)
!161 = !{!162, !163, !164, !165, !166, !167}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !160, file: !95, line: 119, baseType: !93, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !160, file: !95, line: 119, baseType: !37, size: 8, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !160, file: !95, line: 119, baseType: !37, size: 8, offset: 72)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !160, file: !95, line: 119, baseType: !104, size: 16, offset: 80)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !160, file: !95, line: 119, baseType: !37, size: 8, offset: 96)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !160, file: !95, line: 119, baseType: !168, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !94, file: !95, line: 376, baseType: !170, size: 448)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !95, line: 144, size: 448, elements: !171)
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !481, !482, !483}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !170, file: !95, line: 145, baseType: !93, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !170, file: !95, line: 145, baseType: !37, size: 8, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !170, file: !95, line: 145, baseType: !37, size: 8, offset: 72)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !170, file: !95, line: 145, baseType: !104, size: 16, offset: 80)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !170, file: !95, line: 145, baseType: !37, size: 8, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !170, file: !95, line: 145, baseType: !37, size: 8, offset: 104)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !170, file: !95, line: 146, baseType: !37, size: 8, offset: 112)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !170, file: !95, line: 147, baseType: !37, size: 8, offset: 120)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !170, file: !95, line: 148, baseType: !93, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !170, file: !95, line: 149, baseType: !93, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !170, file: !95, line: 150, baseType: !140, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !170, file: !95, line: 154, baseType: !184, size: 64, offset: 320)
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !170, file: !95, line: 151, size: 64, elements: !185)
!185 = !{!186, !480}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !184, file: !95, line: 152, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !90, line: 248, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!29, !191}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !193, line: 37, size: 9024, elements: !194)
!193 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !428, !429, !430, !431, !432, !434, !436, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !463, !464, !465, !466, !467, !468, !469, !470, !472, !478}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !193, line: 38, baseType: !191, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !192, file: !193, line: 39, baseType: !37, size: 8, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !192, file: !193, line: 40, baseType: !37, size: 8, offset: 72)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !192, file: !193, line: 41, baseType: !104, size: 16, offset: 80)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !192, file: !193, line: 42, baseType: !37, size: 8, offset: 96)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !192, file: !193, line: 43, baseType: !37, size: 8, offset: 104)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !192, file: !193, line: 44, baseType: !37, size: 8, offset: 112)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !192, file: !193, line: 45, baseType: !203, size: 16, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !23, line: 445, baseType: !104)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !192, file: !193, line: 46, baseType: !37, size: 8, offset: 144)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !192, file: !193, line: 47, baseType: !37, size: 8, offset: 152)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !192, file: !193, line: 48, baseType: !37, size: 8, offset: 160)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !192, file: !193, line: 49, baseType: !37, size: 8, offset: 168)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !192, file: !193, line: 50, baseType: !37, size: 8, offset: 176)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !192, file: !193, line: 51, baseType: !37, size: 8, offset: 184)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !192, file: !193, line: 52, baseType: !37, size: 8, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !192, file: !193, line: 53, baseType: !37, size: 8, offset: 200)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !192, file: !193, line: 54, baseType: !140, size: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !192, file: !193, line: 55, baseType: !30, size: 32, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !192, file: !193, line: 56, baseType: !30, size: 32, offset: 352)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !192, file: !193, line: 57, baseType: !30, size: 32, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !192, file: !193, line: 58, baseType: !30, size: 32, offset: 416)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !192, file: !193, line: 60, baseType: !218, size: 640, offset: 448)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !90, line: 909, size: 640, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !309, !310, !426, !427}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !218, file: !90, line: 910, baseType: !140, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !218, file: !90, line: 911, baseType: !140, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !218, file: !90, line: 912, baseType: !140, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !218, file: !90, line: 913, baseType: !140, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !218, file: !90, line: 914, baseType: !140, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !218, file: !90, line: 915, baseType: !226, size: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !90, line: 891, size: 1600, elements: !228)
!228 = !{!229, !249, !265}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !227, file: !90, line: 892, baseType: !230, size: 448)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !90, line: 844, size: 448, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !248}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !230, file: !90, line: 845, baseType: !226, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !230, file: !90, line: 845, baseType: !37, size: 8, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !230, file: !90, line: 845, baseType: !37, size: 8, offset: 72)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !230, file: !90, line: 845, baseType: !104, size: 16, offset: 80)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !230, file: !90, line: 845, baseType: !140, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !230, file: !90, line: 845, baseType: !226, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !230, file: !90, line: 845, baseType: !88, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !230, file: !90, line: 845, baseType: !240, size: 64, offset: 320)
!240 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !90, line: 732, size: 64, elements: !241)
!241 = !{!242, !243, !244, !245, !246, !247}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !240, file: !90, line: 733, baseType: !24, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !240, file: !90, line: 734, baseType: !30, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !240, file: !90, line: 735, baseType: !32, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !240, file: !90, line: 736, baseType: !140, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !240, file: !90, line: 737, baseType: !32, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !240, file: !90, line: 738, baseType: !226, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !230, file: !90, line: 845, baseType: !37, size: 8, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !227, file: !90, line: 893, baseType: !250, size: 640)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !90, line: 851, size: 640, elements: !251)
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !250, file: !90, line: 852, baseType: !226, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !250, file: !90, line: 852, baseType: !37, size: 8, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !250, file: !90, line: 852, baseType: !37, size: 8, offset: 72)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !250, file: !90, line: 852, baseType: !104, size: 16, offset: 80)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !250, file: !90, line: 852, baseType: !140, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !250, file: !90, line: 852, baseType: !226, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !250, file: !90, line: 852, baseType: !88, size: 64, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !250, file: !90, line: 852, baseType: !240, size: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !250, file: !90, line: 852, baseType: !37, size: 8, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !250, file: !90, line: 852, baseType: !32, size: 64, offset: 448)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !250, file: !90, line: 853, baseType: !140, size: 64, offset: 512)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !250, file: !90, line: 854, baseType: !30, size: 32, offset: 576)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !250, file: !90, line: 855, baseType: !30, size: 32, offset: 608)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !227, file: !90, line: 894, baseType: !266, size: 1600)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !90, line: 862, size: 1600, elements: !267)
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !266, file: !90, line: 863, baseType: !226, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !266, file: !90, line: 863, baseType: !37, size: 8, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !90, line: 863, baseType: !37, size: 8, offset: 72)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !266, file: !90, line: 863, baseType: !104, size: 16, offset: 80)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !266, file: !90, line: 863, baseType: !140, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !90, line: 863, baseType: !226, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !266, file: !90, line: 863, baseType: !88, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !266, file: !90, line: 863, baseType: !240, size: 64, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !266, file: !90, line: 863, baseType: !37, size: 8, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !266, file: !90, line: 863, baseType: !226, size: 64, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !266, file: !90, line: 864, baseType: !226, size: 64, offset: 512)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !266, file: !90, line: 865, baseType: !32, size: 64, offset: 576)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !266, file: !90, line: 866, baseType: !37, size: 8, offset: 640)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !266, file: !90, line: 867, baseType: !32, size: 64, offset: 704)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !266, file: !90, line: 868, baseType: !32, size: 64, offset: 768)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !266, file: !90, line: 869, baseType: !32, size: 64, offset: 832)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !266, file: !90, line: 870, baseType: !285, size: 32, offset: 896)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 32, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 4)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !266, file: !90, line: 871, baseType: !30, size: 32, offset: 928)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !266, file: !90, line: 872, baseType: !30, size: 32, offset: 960)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !266, file: !90, line: 873, baseType: !30, size: 32, offset: 992)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !266, file: !90, line: 874, baseType: !30, size: 32, offset: 1024)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !266, file: !90, line: 875, baseType: !30, size: 32, offset: 1056)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !266, file: !90, line: 876, baseType: !30, size: 32, offset: 1088)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !266, file: !90, line: 877, baseType: !30, size: 32, offset: 1120)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !266, file: !90, line: 878, baseType: !30, size: 32, offset: 1152)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !266, file: !90, line: 879, baseType: !30, size: 32, offset: 1184)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !266, file: !90, line: 880, baseType: !30, size: 32, offset: 1216)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !266, file: !90, line: 881, baseType: !30, size: 32, offset: 1248)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !266, file: !90, line: 882, baseType: !30, size: 32, offset: 1280)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !266, file: !90, line: 883, baseType: !30, size: 32, offset: 1312)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !266, file: !90, line: 884, baseType: !104, size: 16, offset: 1344)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !266, file: !90, line: 885, baseType: !37, size: 8, offset: 1360)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !266, file: !90, line: 886, baseType: !37, size: 8, offset: 1368)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !266, file: !90, line: 887, baseType: !37, size: 8, offset: 1376)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !266, file: !90, line: 888, baseType: !306, size: 160, offset: 1384)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 160, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 20)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !218, file: !90, line: 916, baseType: !88, size: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !218, file: !90, line: 917, baseType: !311, size: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !90, line: 679, size: 640, elements: !313)
!313 = !{!314, !322, !335, !344, !353, !366, !380, !392, !404}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !312, file: !90, line: 680, baseType: !315, size: 128)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !90, line: 575, size: 128, elements: !316)
!316 = !{!317, !318, !319, !320, !321}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !315, file: !90, line: 576, baseType: !168, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !315, file: !90, line: 576, baseType: !37, size: 8, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !315, file: !90, line: 576, baseType: !37, size: 8, offset: 72)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !315, file: !90, line: 576, baseType: !104, size: 16, offset: 80)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !315, file: !90, line: 576, baseType: !104, size: 16, offset: 96)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !312, file: !90, line: 681, baseType: !323, size: 384)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !90, line: 604, size: 384, elements: !324)
!324 = !{!325, !326, !327, !328, !329, !330, !331, !332, !333, !334}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !90, line: 605, baseType: !168, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !323, file: !90, line: 605, baseType: !37, size: 8, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !323, file: !90, line: 605, baseType: !37, size: 8, offset: 72)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !323, file: !90, line: 605, baseType: !104, size: 16, offset: 80)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !323, file: !90, line: 605, baseType: !104, size: 16, offset: 96)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !323, file: !90, line: 606, baseType: !104, size: 16, offset: 112)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !323, file: !90, line: 607, baseType: !226, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !323, file: !90, line: 608, baseType: !140, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !323, file: !90, line: 609, baseType: !140, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !323, file: !90, line: 610, baseType: !24, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !312, file: !90, line: 682, baseType: !336, size: 192)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !90, line: 582, size: 192, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !90, line: 583, baseType: !168, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !336, file: !90, line: 583, baseType: !37, size: 8, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !90, line: 583, baseType: !37, size: 8, offset: 72)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !336, file: !90, line: 583, baseType: !104, size: 16, offset: 80)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !336, file: !90, line: 583, baseType: !104, size: 16, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !336, file: !90, line: 584, baseType: !93, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !312, file: !90, line: 683, baseType: !345, size: 192)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !90, line: 616, size: 192, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !345, file: !90, line: 617, baseType: !168, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !345, file: !90, line: 617, baseType: !37, size: 8, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !345, file: !90, line: 617, baseType: !37, size: 8, offset: 72)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !345, file: !90, line: 617, baseType: !104, size: 16, offset: 80)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !345, file: !90, line: 617, baseType: !104, size: 16, offset: 96)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !345, file: !90, line: 618, baseType: !88, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !312, file: !90, line: 684, baseType: !354, size: 448)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !90, line: 621, size: 448, elements: !355)
!355 = !{!356, !357, !358, !359, !360, !361, !362, !363, !364, !365}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !90, line: 622, baseType: !168, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !354, file: !90, line: 622, baseType: !37, size: 8, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !354, file: !90, line: 622, baseType: !37, size: 8, offset: 72)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !354, file: !90, line: 622, baseType: !104, size: 16, offset: 80)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !354, file: !90, line: 622, baseType: !104, size: 16, offset: 96)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !354, file: !90, line: 623, baseType: !30, size: 32, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !354, file: !90, line: 624, baseType: !226, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !354, file: !90, line: 625, baseType: !140, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !354, file: !90, line: 626, baseType: !140, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !354, file: !90, line: 627, baseType: !30, size: 32, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !312, file: !90, line: 685, baseType: !367, size: 512)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !90, line: 590, size: 512, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !367, file: !90, line: 591, baseType: !168, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !367, file: !90, line: 591, baseType: !37, size: 8, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !367, file: !90, line: 591, baseType: !37, size: 8, offset: 72)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !367, file: !90, line: 591, baseType: !104, size: 16, offset: 80)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !367, file: !90, line: 591, baseType: !104, size: 16, offset: 96)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !367, file: !90, line: 592, baseType: !30, size: 32, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !367, file: !90, line: 593, baseType: !93, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !367, file: !90, line: 594, baseType: !93, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !367, file: !90, line: 595, baseType: !191, size: 64, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !367, file: !90, line: 596, baseType: !168, size: 64, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !367, file: !90, line: 597, baseType: !30, size: 32, offset: 448)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !312, file: !90, line: 686, baseType: !381, size: 320)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !90, line: 634, size: 320, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390, !391}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !90, line: 635, baseType: !168, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !381, file: !90, line: 635, baseType: !37, size: 8, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !381, file: !90, line: 635, baseType: !37, size: 8, offset: 72)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !381, file: !90, line: 635, baseType: !104, size: 16, offset: 80)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !381, file: !90, line: 635, baseType: !104, size: 16, offset: 96)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !381, file: !90, line: 636, baseType: !37, size: 8, offset: 112)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !381, file: !90, line: 637, baseType: !191, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !381, file: !90, line: 638, baseType: !93, size: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !381, file: !90, line: 639, baseType: !24, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !312, file: !90, line: 687, baseType: !393, size: 640)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !90, line: 646, size: 640, elements: !394)
!394 = !{!395, !396, !397, !398, !399, !400}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !393, file: !90, line: 647, baseType: !168, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !393, file: !90, line: 647, baseType: !37, size: 8, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !393, file: !90, line: 647, baseType: !37, size: 8, offset: 72)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !393, file: !90, line: 647, baseType: !104, size: 16, offset: 80)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !393, file: !90, line: 647, baseType: !104, size: 16, offset: 96)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !393, file: !90, line: 648, baseType: !401, size: 512, offset: 128)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 512, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 8)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !312, file: !90, line: 688, baseType: !405, size: 320)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !90, line: 669, size: 320, elements: !406)
!406 = !{!407, !408, !409, !410, !411, !412, !413, !414, !415}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !405, file: !90, line: 670, baseType: !168, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !405, file: !90, line: 670, baseType: !37, size: 8, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !405, file: !90, line: 670, baseType: !37, size: 8, offset: 72)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !405, file: !90, line: 670, baseType: !104, size: 16, offset: 80)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !405, file: !90, line: 670, baseType: !104, size: 16, offset: 96)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !405, file: !90, line: 671, baseType: !37, size: 8, offset: 112)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !405, file: !90, line: 672, baseType: !88, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !405, file: !90, line: 673, baseType: !93, size: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !405, file: !90, line: 674, baseType: !416, size: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !90, line: 660, size: 128, elements: !418)
!418 = !{!419, !425}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !417, file: !90, line: 661, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !23, line: 1061, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !424, !30, !168}
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !23, line: 424, baseType: !168)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !417, file: !90, line: 662, baseType: !168, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !218, file: !90, line: 918, baseType: !226, size: 64, offset: 512)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !218, file: !90, line: 919, baseType: !30, size: 32, offset: 576)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !192, file: !193, line: 61, baseType: !30, size: 32, offset: 1088)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !192, file: !193, line: 62, baseType: !30, size: 32, offset: 1120)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !192, file: !193, line: 63, baseType: !104, size: 16, offset: 1152)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !192, file: !193, line: 64, baseType: !37, size: 8, offset: 1168)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !192, file: !193, line: 66, baseType: !433, size: 2688, offset: 1216)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 2688, elements: !74)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !192, file: !193, line: 67, baseType: !435, size: 3072, offset: 3904)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 3072, elements: !402)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !192, file: !193, line: 68, baseType: !437, size: 576, offset: 6976)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 576, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 9)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !192, file: !193, line: 69, baseType: !155, size: 64, offset: 7552)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !192, file: !193, line: 71, baseType: !140, size: 64, offset: 7616)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !192, file: !193, line: 72, baseType: !155, size: 64, offset: 7680)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !192, file: !193, line: 73, baseType: !311, size: 64, offset: 7744)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !192, file: !193, line: 74, baseType: !88, size: 64, offset: 7808)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !192, file: !193, line: 75, baseType: !93, size: 64, offset: 7872)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !192, file: !193, line: 76, baseType: !88, size: 64, offset: 7936)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !192, file: !193, line: 77, baseType: !226, size: 64, offset: 8000)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !192, file: !193, line: 78, baseType: !93, size: 64, offset: 8064)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !192, file: !193, line: 79, baseType: !88, size: 64, offset: 8128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !192, file: !193, line: 80, baseType: !32, size: 64, offset: 8192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !192, file: !193, line: 81, baseType: !226, size: 64, offset: 8256)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !192, file: !193, line: 82, baseType: !453, size: 64, offset: 8320)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !90, line: 718, size: 128, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !462}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !455, file: !90, line: 722, baseType: !30, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !455, file: !90, line: 723, baseType: !30, size: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !90, line: 724, baseType: !104, size: 16, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !455, file: !90, line: 725, baseType: !37, size: 8, offset: 80)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !455, file: !90, line: 726, baseType: !37, size: 8, offset: 88)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !455, file: !90, line: 727, baseType: !37, size: 8, offset: 96)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !192, file: !193, line: 83, baseType: !226, size: 64, offset: 8384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !192, file: !193, line: 84, baseType: !93, size: 64, offset: 8448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !192, file: !193, line: 85, baseType: !311, size: 64, offset: 8512)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !192, file: !193, line: 86, baseType: !93, size: 64, offset: 8576)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !192, file: !193, line: 87, baseType: !311, size: 64, offset: 8640)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !192, file: !193, line: 88, baseType: !226, size: 64, offset: 8704)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !192, file: !193, line: 89, baseType: !226, size: 64, offset: 8768)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !192, file: !193, line: 90, baseType: !471, size: 64, offset: 8832)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !192, file: !193, line: 91, baseType: !473, size: 64, offset: 8896)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !90, line: 652, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!29, !191, !477}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !192, file: !193, line: 92, baseType: !479, size: 64, offset: 8960)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !90, line: 656, baseType: !188)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !184, file: !95, line: 153, baseType: !93, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !170, file: !95, line: 156, baseType: !30, size: 32, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !170, file: !95, line: 157, baseType: !203, size: 16, offset: 416)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !170, file: !95, line: 158, baseType: !37, size: 8, offset: 432)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !94, file: !95, line: 377, baseType: !485, size: 576)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !95, line: 122, size: 576, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !485, file: !95, line: 123, baseType: !93, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !95, line: 123, baseType: !37, size: 8, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !95, line: 123, baseType: !37, size: 8, offset: 72)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !485, file: !95, line: 123, baseType: !104, size: 16, offset: 80)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !95, line: 123, baseType: !37, size: 8, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !485, file: !95, line: 123, baseType: !37, size: 8, offset: 104)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !485, file: !95, line: 124, baseType: !104, size: 16, offset: 112)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !485, file: !95, line: 125, baseType: !168, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !485, file: !95, line: 126, baseType: !24, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !485, file: !95, line: 127, baseType: !471, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !485, file: !95, line: 128, baseType: !93, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !485, file: !95, line: 129, baseType: !93, size: 64, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !485, file: !95, line: 130, baseType: !88, size: 64, offset: 448)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !485, file: !95, line: 131, baseType: !37, size: 8, offset: 512)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !94, file: !95, line: 378, baseType: !502, size: 512)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !95, line: 134, size: 512, elements: !503)
!503 = !{!504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !515, !516}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !502, file: !95, line: 135, baseType: !93, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !502, file: !95, line: 135, baseType: !37, size: 8, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !502, file: !95, line: 135, baseType: !37, size: 8, offset: 72)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !502, file: !95, line: 135, baseType: !104, size: 16, offset: 80)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !502, file: !95, line: 135, baseType: !37, size: 8, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !502, file: !95, line: 135, baseType: !37, size: 8, offset: 104)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !502, file: !95, line: 136, baseType: !88, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !502, file: !95, line: 137, baseType: !93, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !502, file: !95, line: 138, baseType: !93, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !502, file: !95, line: 139, baseType: !514, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !23, line: 129, baseType: !24)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !502, file: !95, line: 140, baseType: !30, size: 32, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !502, file: !95, line: 141, baseType: !168, size: 64, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !94, file: !95, line: 379, baseType: !518, size: 320)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !95, line: 185, size: 320, elements: !519)
!519 = !{!520, !521, !522, !523, !524, !525, !529}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !518, file: !95, line: 186, baseType: !93, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !518, file: !95, line: 186, baseType: !37, size: 8, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !518, file: !95, line: 186, baseType: !37, size: 8, offset: 72)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !518, file: !95, line: 186, baseType: !104, size: 16, offset: 80)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !518, file: !95, line: 186, baseType: !37, size: 8, offset: 96)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !518, file: !95, line: 186, baseType: !526, size: 128, offset: 128)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 128, elements: !527)
!527 = !{!528}
!528 = !DISubrange(count: 2)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !518, file: !95, line: 186, baseType: !93, size: 64, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !94, file: !95, line: 380, baseType: !531, size: 384)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !95, line: 188, size: 384, elements: !532)
!532 = !{!533, !534, !535, !536, !537, !538, !539, !540}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !531, file: !95, line: 189, baseType: !93, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !531, file: !95, line: 189, baseType: !37, size: 8, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !531, file: !95, line: 189, baseType: !37, size: 8, offset: 72)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !531, file: !95, line: 189, baseType: !104, size: 16, offset: 80)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !531, file: !95, line: 189, baseType: !37, size: 8, offset: 96)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !531, file: !95, line: 190, baseType: !526, size: 128, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !531, file: !95, line: 190, baseType: !93, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !531, file: !95, line: 190, baseType: !541, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !90, line: 480, size: 576, elements: !543)
!543 = !{!544, !545, !546, !547, !555, !570, !602, !603, !604, !605, !606, !607}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !542, file: !90, line: 481, baseType: !88, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !542, file: !90, line: 482, baseType: !541, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !542, file: !90, line: 483, baseType: !541, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !542, file: !90, line: 484, baseType: !548, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !90, line: 497, size: 256, elements: !550)
!550 = !{!551, !552, !553, !554}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !549, file: !90, line: 498, baseType: !548, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !549, file: !90, line: 499, baseType: !548, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !549, file: !90, line: 500, baseType: !541, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !549, file: !90, line: 501, baseType: !30, size: 32, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !542, file: !90, line: 485, baseType: !556, size: 64, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !90, line: 466, size: 320, elements: !558)
!558 = !{!559, !564, !565, !566, !567, !568, !569}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !557, file: !90, line: 467, baseType: !560, size: 128)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !90, line: 459, size: 128, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !560, file: !90, line: 460, baseType: !37, size: 8)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !560, file: !90, line: 461, baseType: !24, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !557, file: !90, line: 468, baseType: !560, size: 128, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !557, file: !90, line: 469, baseType: !104, size: 16, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !557, file: !90, line: 470, baseType: !37, size: 8, offset: 272)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !557, file: !90, line: 471, baseType: !37, size: 8, offset: 280)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !557, file: !90, line: 472, baseType: !37, size: 8, offset: 288)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !557, file: !90, line: 473, baseType: !37, size: 8, offset: 296)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !542, file: !90, line: 486, baseType: !571, size: 64, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !90, line: 448, size: 192, elements: !573)
!573 = !{!574, !597, !598, !599, !600, !601}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !572, file: !90, line: 449, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !90, line: 438, size: 64, elements: !576)
!576 = !{!577, !578, !591}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !575, file: !90, line: 439, baseType: !88, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !575, file: !90, line: 440, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !90, line: 419, size: 256, elements: !581)
!581 = !{!582, !587, !588, !589, !590}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !580, file: !90, line: 420, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !23, line: 1058, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!30, !424, !30, !168}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !580, file: !90, line: 421, baseType: !168, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !580, file: !90, line: 422, baseType: !88, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !580, file: !90, line: 423, baseType: !37, size: 8, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !580, file: !90, line: 424, baseType: !37, size: 8, offset: 200)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !575, file: !90, line: 441, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !90, line: 429, size: 128, elements: !594)
!594 = !{!595, !596}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !593, file: !90, line: 430, baseType: !88, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !593, file: !90, line: 431, baseType: !592, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !572, file: !90, line: 450, baseType: !556, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !572, file: !90, line: 451, baseType: !37, size: 8, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !572, file: !90, line: 452, baseType: !37, size: 8, offset: 136)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !572, file: !90, line: 453, baseType: !37, size: 8, offset: 144)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !572, file: !90, line: 454, baseType: !37, size: 8, offset: 152)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !542, file: !90, line: 487, baseType: !24, size: 64, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !542, file: !90, line: 488, baseType: !30, size: 32, offset: 448)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !542, file: !90, line: 489, baseType: !104, size: 16, offset: 480)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !542, file: !90, line: 490, baseType: !104, size: 16, offset: 496)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !542, file: !90, line: 491, baseType: !37, size: 8, offset: 512)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !542, file: !90, line: 492, baseType: !37, size: 8, offset: 520)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !94, file: !95, line: 381, baseType: !609, size: 384)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !95, line: 193, size: 384, elements: !610)
!610 = !{!611, !612, !613, !614, !615, !616, !617, !618, !619}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !609, file: !95, line: 194, baseType: !93, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !609, file: !95, line: 194, baseType: !37, size: 8, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !609, file: !95, line: 194, baseType: !37, size: 8, offset: 72)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !609, file: !95, line: 194, baseType: !104, size: 16, offset: 80)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !609, file: !95, line: 194, baseType: !37, size: 8, offset: 96)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !609, file: !95, line: 194, baseType: !526, size: 128, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !609, file: !95, line: 194, baseType: !93, size: 64, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !609, file: !95, line: 194, baseType: !30, size: 32, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !609, file: !95, line: 195, baseType: !30, size: 32, offset: 352)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !94, file: !95, line: 382, baseType: !621, size: 384)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !95, line: 198, size: 384, elements: !622)
!622 = !{!623, !624, !625, !626, !627, !628, !629, !630, !631, !632}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !621, file: !95, line: 199, baseType: !93, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !621, file: !95, line: 199, baseType: !37, size: 8, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !621, file: !95, line: 199, baseType: !37, size: 8, offset: 72)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !621, file: !95, line: 199, baseType: !104, size: 16, offset: 80)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !621, file: !95, line: 199, baseType: !37, size: 8, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !621, file: !95, line: 201, baseType: !37, size: 8, offset: 104)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !621, file: !95, line: 202, baseType: !37, size: 8, offset: 112)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !621, file: !95, line: 203, baseType: !526, size: 128, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !621, file: !95, line: 203, baseType: !93, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !621, file: !95, line: 203, baseType: !633, size: 64, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !23, line: 128, baseType: !24)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !94, file: !95, line: 383, baseType: !635, size: 320)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !95, line: 206, size: 320, elements: !636)
!636 = !{!637, !638, !639, !640, !641, !642, !643}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !635, file: !95, line: 207, baseType: !93, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !635, file: !95, line: 207, baseType: !37, size: 8, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !635, file: !95, line: 207, baseType: !37, size: 8, offset: 72)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !635, file: !95, line: 207, baseType: !104, size: 16, offset: 80)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !635, file: !95, line: 207, baseType: !37, size: 8, offset: 96)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !635, file: !95, line: 207, baseType: !526, size: 128, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !635, file: !95, line: 207, baseType: !93, size: 64, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !94, file: !95, line: 384, baseType: !645, size: 384)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !95, line: 234, size: 384, elements: !646)
!646 = !{!647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !645, file: !95, line: 235, baseType: !93, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !645, file: !95, line: 235, baseType: !37, size: 8, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !645, file: !95, line: 235, baseType: !37, size: 8, offset: 72)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !645, file: !95, line: 235, baseType: !104, size: 16, offset: 80)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !645, file: !95, line: 235, baseType: !37, size: 8, offset: 96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !645, file: !95, line: 235, baseType: !37, size: 8, offset: 104)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !645, file: !95, line: 235, baseType: !37, size: 8, offset: 112)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !645, file: !95, line: 235, baseType: !37, size: 8, offset: 120)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !645, file: !95, line: 235, baseType: !88, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !645, file: !95, line: 235, baseType: !30, size: 32, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !645, file: !95, line: 235, baseType: !30, size: 32, offset: 224)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !645, file: !95, line: 235, baseType: !30, size: 32, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !645, file: !95, line: 235, baseType: !37, size: 8, offset: 288)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !645, file: !95, line: 235, baseType: !37, size: 8, offset: 296)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !645, file: !95, line: 235, baseType: !93, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !94, file: !95, line: 385, baseType: !663, size: 576)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !95, line: 238, size: 576, elements: !664)
!664 = !{!665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !663, file: !95, line: 239, baseType: !93, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !663, file: !95, line: 239, baseType: !37, size: 8, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !663, file: !95, line: 239, baseType: !37, size: 8, offset: 72)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !663, file: !95, line: 239, baseType: !104, size: 16, offset: 80)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !663, file: !95, line: 239, baseType: !37, size: 8, offset: 96)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !663, file: !95, line: 239, baseType: !37, size: 8, offset: 104)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !663, file: !95, line: 239, baseType: !37, size: 8, offset: 112)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !663, file: !95, line: 239, baseType: !37, size: 8, offset: 120)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !663, file: !95, line: 239, baseType: !88, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !663, file: !95, line: 239, baseType: !30, size: 32, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !663, file: !95, line: 239, baseType: !30, size: 32, offset: 224)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !663, file: !95, line: 239, baseType: !30, size: 32, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !663, file: !95, line: 239, baseType: !37, size: 8, offset: 288)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !663, file: !95, line: 239, baseType: !37, size: 8, offset: 296)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !663, file: !95, line: 239, baseType: !104, size: 16, offset: 304)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !663, file: !95, line: 240, baseType: !93, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !663, file: !95, line: 241, baseType: !140, size: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !663, file: !95, line: 242, baseType: !104, size: 16, offset: 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !663, file: !95, line: 243, baseType: !140, size: 64, offset: 512)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !94, file: !95, line: 386, baseType: !685, size: 384)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !95, line: 263, size: 384, elements: !686)
!686 = !{!687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !685, file: !95, line: 264, baseType: !93, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !685, file: !95, line: 264, baseType: !37, size: 8, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !685, file: !95, line: 264, baseType: !37, size: 8, offset: 72)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !685, file: !95, line: 264, baseType: !104, size: 16, offset: 80)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !685, file: !95, line: 264, baseType: !37, size: 8, offset: 96)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !685, file: !95, line: 264, baseType: !37, size: 8, offset: 104)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !685, file: !95, line: 264, baseType: !37, size: 8, offset: 112)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !685, file: !95, line: 264, baseType: !37, size: 8, offset: 120)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !685, file: !95, line: 264, baseType: !88, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !685, file: !95, line: 264, baseType: !30, size: 32, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !685, file: !95, line: 264, baseType: !30, size: 32, offset: 224)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !685, file: !95, line: 264, baseType: !30, size: 32, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !685, file: !95, line: 264, baseType: !37, size: 8, offset: 288)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !685, file: !95, line: 264, baseType: !37, size: 8, offset: 296)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !685, file: !95, line: 264, baseType: !37, size: 8, offset: 304)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !685, file: !95, line: 265, baseType: !93, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !94, file: !95, line: 387, baseType: !704, size: 448)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !95, line: 246, size: 448, elements: !705)
!705 = !{!706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !704, file: !95, line: 247, baseType: !93, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !704, file: !95, line: 247, baseType: !37, size: 8, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !704, file: !95, line: 247, baseType: !37, size: 8, offset: 72)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !704, file: !95, line: 247, baseType: !104, size: 16, offset: 80)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !704, file: !95, line: 247, baseType: !37, size: 8, offset: 96)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !704, file: !95, line: 247, baseType: !37, size: 8, offset: 104)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !704, file: !95, line: 247, baseType: !37, size: 8, offset: 112)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !704, file: !95, line: 247, baseType: !37, size: 8, offset: 120)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !704, file: !95, line: 247, baseType: !88, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !704, file: !95, line: 247, baseType: !30, size: 32, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !704, file: !95, line: 247, baseType: !30, size: 32, offset: 224)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !704, file: !95, line: 247, baseType: !30, size: 32, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !704, file: !95, line: 247, baseType: !37, size: 8, offset: 288)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !704, file: !95, line: 247, baseType: !37, size: 8, offset: 296)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !704, file: !95, line: 247, baseType: !93, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !704, file: !95, line: 248, baseType: !93, size: 64, offset: 384)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !94, file: !95, line: 388, baseType: !723, size: 448)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !95, line: 251, size: 448, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !723, file: !95, line: 252, baseType: !93, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !723, file: !95, line: 252, baseType: !37, size: 8, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !723, file: !95, line: 252, baseType: !37, size: 8, offset: 72)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !723, file: !95, line: 252, baseType: !104, size: 16, offset: 80)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !723, file: !95, line: 252, baseType: !37, size: 8, offset: 96)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !723, file: !95, line: 252, baseType: !37, size: 8, offset: 104)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !723, file: !95, line: 252, baseType: !37, size: 8, offset: 112)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !723, file: !95, line: 252, baseType: !37, size: 8, offset: 120)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !723, file: !95, line: 252, baseType: !88, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !723, file: !95, line: 252, baseType: !30, size: 32, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !723, file: !95, line: 252, baseType: !30, size: 32, offset: 224)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !723, file: !95, line: 252, baseType: !30, size: 32, offset: 256)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !723, file: !95, line: 252, baseType: !37, size: 8, offset: 288)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !723, file: !95, line: 252, baseType: !37, size: 8, offset: 296)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !723, file: !95, line: 257, baseType: !93, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !723, file: !95, line: 258, baseType: !93, size: 64, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !94, file: !95, line: 389, baseType: !742, size: 512)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !95, line: 274, size: 512, elements: !743)
!743 = !{!744, !745, !746, !747, !748, !749, !750, !751, !752, !753}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !742, file: !95, line: 275, baseType: !93, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !742, file: !95, line: 275, baseType: !37, size: 8, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !742, file: !95, line: 275, baseType: !37, size: 8, offset: 72)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !742, file: !95, line: 275, baseType: !104, size: 16, offset: 80)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !742, file: !95, line: 275, baseType: !37, size: 8, offset: 96)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !742, file: !95, line: 275, baseType: !88, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !742, file: !95, line: 276, baseType: !30, size: 32, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !742, file: !95, line: 277, baseType: !420, size: 64, offset: 256)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !742, file: !95, line: 278, baseType: !168, size: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !742, file: !95, line: 279, baseType: !526, size: 128, offset: 384)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !94, file: !95, line: 390, baseType: !755, size: 576)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !95, line: 282, size: 576, elements: !756)
!756 = !{!757, !758, !759, !760, !761, !762, !763, !764, !770, !771, !772, !773, !779, !780}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !755, file: !95, line: 283, baseType: !93, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !755, file: !95, line: 283, baseType: !37, size: 8, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !755, file: !95, line: 283, baseType: !37, size: 8, offset: 72)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !755, file: !95, line: 283, baseType: !104, size: 16, offset: 80)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !95, line: 283, baseType: !37, size: 8, offset: 96)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !755, file: !95, line: 283, baseType: !37, size: 8, offset: 104)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !755, file: !95, line: 284, baseType: !37, size: 8, offset: 112)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !755, file: !95, line: 285, baseType: !765, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !23, line: 1093, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!29, !30, !514, !30, !769, !168, !168}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !755, file: !95, line: 286, baseType: !88, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !755, file: !95, line: 287, baseType: !168, size: 64, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !755, file: !95, line: 288, baseType: !168, size: 64, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !755, file: !95, line: 289, baseType: !774, size: 64, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !23, line: 1126, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!29, !424, !30, !168, !778}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !755, file: !95, line: 290, baseType: !93, size: 64, offset: 448)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !755, file: !95, line: 291, baseType: !93, size: 64, offset: 512)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !94, file: !95, line: 391, baseType: !782, size: 512)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !95, line: 309, size: 512, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !782, file: !95, line: 310, baseType: !93, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !782, file: !95, line: 310, baseType: !37, size: 8, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !782, file: !95, line: 310, baseType: !37, size: 8, offset: 72)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !782, file: !95, line: 310, baseType: !104, size: 16, offset: 80)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !95, line: 310, baseType: !37, size: 8, offset: 96)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !782, file: !95, line: 310, baseType: !37, size: 8, offset: 104)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !782, file: !95, line: 311, baseType: !37, size: 8, offset: 112)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !782, file: !95, line: 312, baseType: !37, size: 8, offset: 120)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !782, file: !95, line: 313, baseType: !168, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !782, file: !95, line: 314, baseType: !88, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !782, file: !95, line: 315, baseType: !155, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !782, file: !95, line: 316, baseType: !140, size: 64, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !782, file: !95, line: 317, baseType: !140, size: 64, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !782, file: !95, line: 318, baseType: !30, size: 32, offset: 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !94, file: !95, line: 392, baseType: !799, size: 448)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !95, line: 342, size: 448, elements: !800)
!800 = !{!801, !802, !803, !804, !805, !806, !807, !808, !809, !810}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !799, file: !95, line: 343, baseType: !93, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !799, file: !95, line: 343, baseType: !37, size: 8, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !799, file: !95, line: 343, baseType: !37, size: 8, offset: 72)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !799, file: !95, line: 343, baseType: !104, size: 16, offset: 80)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !799, file: !95, line: 343, baseType: !37, size: 8, offset: 96)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !799, file: !95, line: 343, baseType: !88, size: 64, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !799, file: !95, line: 344, baseType: !88, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !799, file: !95, line: 345, baseType: !168, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !799, file: !95, line: 346, baseType: !140, size: 64, offset: 320)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !799, file: !95, line: 347, baseType: !30, size: 32, offset: 384)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !94, file: !95, line: 393, baseType: !812, size: 256)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !95, line: 352, size: 256, elements: !813)
!813 = !{!814, !815, !816, !817, !818, !819, !824}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !812, file: !95, line: 353, baseType: !93, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !812, file: !95, line: 353, baseType: !37, size: 8, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !812, file: !95, line: 353, baseType: !37, size: 8, offset: 72)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !812, file: !95, line: 353, baseType: !104, size: 16, offset: 80)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !812, file: !95, line: 353, baseType: !37, size: 8, offset: 96)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !812, file: !95, line: 353, baseType: !820, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !23, line: 1064, baseType: !821)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !424, !168}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !812, file: !95, line: 354, baseType: !168, size: 64, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !94, file: !95, line: 394, baseType: !826, size: 192)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !95, line: 359, size: 192, elements: !827)
!827 = !{!828, !829, !830, !831, !832, !833}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !826, file: !95, line: 360, baseType: !93, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !826, file: !95, line: 360, baseType: !37, size: 8, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !826, file: !95, line: 360, baseType: !37, size: 8, offset: 72)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !826, file: !95, line: 360, baseType: !104, size: 16, offset: 80)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !826, file: !95, line: 360, baseType: !37, size: 8, offset: 96)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !826, file: !95, line: 360, baseType: !93, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !94, file: !95, line: 401, baseType: !89, size: 384)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !89, file: !90, line: 135, baseType: !37, size: 8, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !90, line: 136, baseType: !37, size: 8, offset: 72)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !90, line: 137, baseType: !104, size: 16, offset: 80)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !89, file: !90, line: 138, baseType: !839, size: 32, offset: 96)
!839 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !840, line: 328, size: 32, elements: !841)
!840 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !839, file: !840, line: 329, baseType: !30, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !839, file: !840, line: 330, baseType: !285, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !89, file: !90, line: 139, baseType: !88, size: 64, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !89, file: !90, line: 140, baseType: !88, size: 64, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !89, file: !90, line: 141, baseType: !88, size: 64, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !89, file: !90, line: 142, baseType: !203, size: 16, offset: 320)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!849 = !{!850, !851, !852, !853, !854, !919, !920, !921}
!850 = !DILocalVariable(name: "prefix_node", arg: 1, scope: !85, file: !3, line: 37, type: !88)
!851 = !DILocalVariable(name: "path", arg: 2, scope: !85, file: !3, line: 38, type: !848)
!852 = !DILocalVariable(name: "expected_return_btypes", arg: 3, scope: !85, file: !3, line: 39, type: !30)
!853 = !DILocalVariable(name: "return_desc", arg: 4, scope: !85, file: !3, line: 40, type: !155)
!854 = !DILocalVariable(name: "info", scope: !85, file: !3, line: 42, type: !855)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !193, line: 152, size: 704, elements: !857)
!857 = !{!858, !859, !860, !861, !862, !863, !864, !910, !911, !912, !913, !914, !915, !916, !917, !918}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !856, file: !193, line: 155, baseType: !88, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !856, file: !193, line: 156, baseType: !848, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !856, file: !193, line: 157, baseType: !155, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !856, file: !193, line: 159, baseType: !88, size: 64, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !856, file: !193, line: 160, baseType: !93, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !856, file: !193, line: 161, baseType: !32, size: 64, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !856, file: !193, line: 163, baseType: !865, size: 64, offset: 384)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !867)
!867 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !90, line: 351, size: 56, elements: !868)
!868 = !{!869, !875, !884, !892, !901}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !867, file: !90, line: 352, baseType: !870, size: 56)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !90, line: 295, size: 56, elements: !871)
!871 = !{!872, !873, !874}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !870, file: !90, line: 296, baseType: !285, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !870, file: !90, line: 297, baseType: !104, size: 16, offset: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !870, file: !90, line: 298, baseType: !37, size: 8, offset: 48)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !867, file: !90, line: 353, baseType: !876, size: 56)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !90, line: 314, size: 56, elements: !877)
!877 = !{!878, !879, !880, !881, !882, !883}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !876, file: !90, line: 315, baseType: !37, size: 8)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !876, file: !90, line: 316, baseType: !37, size: 8, offset: 8)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !876, file: !90, line: 317, baseType: !37, size: 8, offset: 16)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !876, file: !90, line: 318, baseType: !37, size: 8, offset: 24)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !876, file: !90, line: 319, baseType: !37, size: 8, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !876, file: !90, line: 320, baseType: !104, size: 16, offset: 40)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !867, file: !90, line: 354, baseType: !885, size: 56)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !90, line: 325, size: 56, elements: !886)
!886 = !{!887, !888, !889, !891}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !885, file: !90, line: 326, baseType: !37, size: 8)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !885, file: !90, line: 327, baseType: !37, size: 8, offset: 8)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !885, file: !90, line: 328, baseType: !890, size: 32, offset: 16)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 32, elements: !286)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !885, file: !90, line: 329, baseType: !37, size: 8, offset: 48)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !867, file: !90, line: 355, baseType: !893, size: 56)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !90, line: 334, size: 56, elements: !894)
!894 = !{!895, !896, !897, !899, !900}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !893, file: !90, line: 335, baseType: !37, size: 8)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !893, file: !90, line: 336, baseType: !37, size: 8, offset: 8)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !893, file: !90, line: 337, baseType: !898, size: 16, offset: 16)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 16, elements: !527)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !893, file: !90, line: 338, baseType: !37, size: 8, offset: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !893, file: !90, line: 339, baseType: !104, size: 16, offset: 40)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !867, file: !90, line: 356, baseType: !902, size: 56)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !90, line: 342, size: 56, elements: !903)
!903 = !{!904, !905, !906, !907, !908, !909}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !902, file: !90, line: 343, baseType: !37, size: 8)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !902, file: !90, line: 344, baseType: !37, size: 8, offset: 8)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !902, file: !90, line: 345, baseType: !37, size: 8, offset: 16)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !902, file: !90, line: 346, baseType: !37, size: 8, offset: 24)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !902, file: !90, line: 347, baseType: !37, size: 8, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !902, file: !90, line: 348, baseType: !104, size: 16, offset: 40)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !856, file: !193, line: 164, baseType: !93, size: 64, offset: 448)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !856, file: !193, line: 165, baseType: !93, size: 64, offset: 512)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !856, file: !193, line: 167, baseType: !30, size: 32, offset: 576)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !856, file: !193, line: 168, baseType: !30, size: 32, offset: 608)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !856, file: !193, line: 169, baseType: !104, size: 16, offset: 640)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !856, file: !193, line: 170, baseType: !104, size: 16, offset: 656)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !856, file: !193, line: 171, baseType: !37, size: 8, offset: 672)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !856, file: !193, line: 172, baseType: !37, size: 8, offset: 680)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !856, file: !193, line: 173, baseType: !37, size: 8, offset: 688)
!919 = !DILocalVariable(name: "status", scope: !85, file: !3, line: 43, type: !29)
!920 = !DILocalVariable(name: "return_btype", scope: !85, file: !3, line: 44, type: !30)
!921 = !DILabel(scope: !85, name: "cleanup", file: !3, line: 150)
!922 = !DILocation(line: 37, column: 53, scope: !85)
!923 = !DILocation(line: 38, column: 16, scope: !85)
!924 = !DILocation(line: 39, column: 8, scope: !85)
!925 = !DILocation(line: 40, column: 32, scope: !85)
!926 = !DILocation(line: 42, column: 2, scope: !85)
!927 = !DILocation(line: 42, column: 29, scope: !85)
!928 = !DILocation(line: 43, column: 2, scope: !85)
!929 = !DILocation(line: 43, column: 14, scope: !85)
!930 = !DILocation(line: 44, column: 2, scope: !85)
!931 = !DILocation(line: 44, column: 6, scope: !85)
!932 = !DILocation(line: 50, column: 9, scope: !85)
!933 = !DILocation(line: 50, column: 7, scope: !85)
!934 = !DILocation(line: 51, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !85, file: !3, line: 51, column: 6)
!936 = !DILocation(line: 51, column: 6, scope: !85)
!937 = !DILocation(line: 52, column: 3, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !3, line: 51, column: 13)
!939 = !DILocation(line: 55, column: 22, scope: !85)
!940 = !DILocation(line: 55, column: 2, scope: !85)
!941 = !DILocation(line: 55, column: 8, scope: !85)
!942 = !DILocation(line: 55, column: 20, scope: !85)
!943 = !DILocation(line: 56, column: 28, scope: !85)
!944 = !DILocation(line: 56, column: 2, scope: !85)
!945 = !DILocation(line: 56, column: 8, scope: !85)
!946 = !DILocation(line: 56, column: 26, scope: !85)
!947 = !DILocation(line: 60, column: 28, scope: !85)
!948 = !DILocation(line: 60, column: 11, scope: !85)
!949 = !DILocation(line: 60, column: 9, scope: !85)
!950 = !DILocation(line: 61, column: 6, scope: !951)
!951 = distinct !DILexicalBlock(scope: !85, file: !3, line: 61, column: 6)
!952 = !DILocation(line: 61, column: 6, scope: !85)
!953 = !DILocation(line: 62, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !955, file: !3, line: 62, column: 7)
!955 = distinct !DILexicalBlock(scope: !951, file: !3, line: 61, column: 28)
!956 = !DILocation(line: 62, column: 14, scope: !954)
!957 = !DILocation(line: 62, column: 7, scope: !955)
!958 = !DILocation(line: 67, column: 3, scope: !959)
!959 = distinct !DILexicalBlock(scope: !954, file: !3, line: 62, column: 31)
!960 = !DILocation(line: 68, column: 4, scope: !961)
!961 = distinct !DILexicalBlock(scope: !954, file: !3, line: 67, column: 10)
!962 = !DILocation(line: 72, column: 3, scope: !955)
!963 = !DILocation(line: 77, column: 7, scope: !964)
!964 = distinct !DILexicalBlock(scope: !85, file: !3, line: 77, column: 6)
!965 = !DILocation(line: 77, column: 13, scope: !964)
!966 = !DILocation(line: 77, column: 6, scope: !85)
!967 = !DILocation(line: 78, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !969, file: !3, line: 78, column: 7)
!969 = distinct !DILexicalBlock(scope: !964, file: !3, line: 77, column: 28)
!970 = !DILocation(line: 78, column: 7, scope: !969)
!971 = !DILocation(line: 79, column: 4, scope: !972)
!972 = distinct !DILexicalBlock(scope: !968, file: !3, line: 78, column: 31)
!973 = !DILocation(line: 82, column: 11, scope: !972)
!974 = !DILocation(line: 83, column: 3, scope: !972)
!975 = !DILocation(line: 85, column: 3, scope: !969)
!976 = !DILocation(line: 90, column: 11, scope: !85)
!977 = !DILocation(line: 90, column: 17, scope: !85)
!978 = !DILocation(line: 90, column: 40, scope: !85)
!979 = !DILocation(line: 90, column: 10, scope: !85)
!980 = !DILocation(line: 90, column: 2, scope: !85)
!981 = !DILocation(line: 93, column: 16, scope: !982)
!982 = distinct !DILexicalBlock(scope: !85, file: !3, line: 90, column: 46)
!983 = !DILocation(line: 94, column: 3, scope: !982)
!984 = !DILocation(line: 98, column: 16, scope: !982)
!985 = !DILocation(line: 99, column: 3, scope: !982)
!986 = !DILocation(line: 103, column: 16, scope: !982)
!987 = !DILocation(line: 104, column: 3, scope: !982)
!988 = !DILocation(line: 108, column: 16, scope: !982)
!989 = !DILocation(line: 109, column: 3, scope: !982)
!990 = !DILocation(line: 113, column: 16, scope: !982)
!991 = !DILocation(line: 114, column: 3, scope: !982)
!992 = !DILocation(line: 117, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !85, file: !3, line: 117, column: 6)
!994 = !DILocation(line: 117, column: 6, scope: !993)
!995 = !DILocation(line: 117, column: 42, scope: !993)
!996 = !DILocation(line: 117, column: 47, scope: !993)
!997 = !DILocation(line: 117, column: 6, scope: !85)
!998 = !DILocation(line: 123, column: 28, scope: !999)
!999 = distinct !DILexicalBlock(scope: !993, file: !3, line: 117, column: 72)
!1000 = !DILocation(line: 123, column: 34, scope: !999)
!1001 = !DILocation(line: 123, column: 3, scope: !999)
!1002 = !DILocation(line: 124, column: 3, scope: !999)
!1003 = !DILocation(line: 129, column: 8, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !85, file: !3, line: 129, column: 6)
!1005 = !DILocation(line: 129, column: 33, scope: !1004)
!1006 = !DILocation(line: 129, column: 31, scope: !1004)
!1007 = !DILocation(line: 129, column: 6, scope: !85)
!1008 = !DILocation(line: 130, column: 3, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 129, column: 48)
!1010 = !DILocation(line: 133, column: 3, scope: !1009)
!1011 = !DILocation(line: 141, column: 28, scope: !1009)
!1012 = !DILocation(line: 141, column: 34, scope: !1009)
!1013 = !DILocation(line: 141, column: 3, scope: !1009)
!1014 = !DILocation(line: 142, column: 10, scope: !1009)
!1015 = !DILocation(line: 143, column: 3, scope: !1009)
!1016 = !DILocation(line: 148, column: 17, scope: !85)
!1017 = !DILocation(line: 148, column: 23, scope: !85)
!1018 = !DILocation(line: 148, column: 3, scope: !85)
!1019 = !DILocation(line: 148, column: 15, scope: !85)
!1020 = !DILocation(line: 148, column: 2, scope: !85)
!1021 = !DILocation(line: 150, column: 1, scope: !85)
!1022 = !DILocation(line: 151, column: 2, scope: !85)
!1023 = !DILocation(line: 152, column: 2, scope: !85)
!1024 = !DILocation(line: 153, column: 1, scope: !85)
!1025 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1026, file: !1026, line: 55, type: !1027, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1029)
!1026 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!168, !22}
!1029 = !{!1030, !1031, !1033, !1036, !1037, !1040}
!1030 = !DILocalVariable(name: "size", arg: 1, scope: !1025, file: !1026, line: 55, type: !22)
!1031 = !DILocalVariable(name: "_flags", scope: !1032, file: !1026, line: 57, type: !36)
!1032 = distinct !DILexicalBlock(scope: !1025, file: !1026, line: 57, column: 23)
!1033 = !DILocalVariable(name: "__dummy", scope: !1034, file: !1026, line: 57, type: !36)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !1026, line: 57, column: 23)
!1035 = distinct !DILexicalBlock(scope: !1032, file: !1026, line: 57, column: 23)
!1036 = !DILocalVariable(name: "__dummy2", scope: !1034, file: !1026, line: 57, type: !36)
!1037 = !DILocalVariable(name: "__dummy", scope: !1038, file: !1026, line: 57, type: !36)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !1026, line: 57, column: 23)
!1039 = distinct !DILexicalBlock(scope: !1032, file: !1026, line: 57, column: 23)
!1040 = !DILocalVariable(name: "__dummy2", scope: !1038, file: !1026, line: 57, type: !36)
!1041 = !DILocation(line: 55, column: 55, scope: !1025)
!1042 = !DILocation(line: 57, column: 17, scope: !1025)
!1043 = !DILocation(line: 57, column: 23, scope: !1032)
!1044 = !DILocation(line: 57, column: 23, scope: !1034)
!1045 = !DILocation(line: 57, column: 23, scope: !1035)
!1046 = !DILocation(line: 57, column: 23, scope: !1038)
!1047 = !DILocation(line: 57, column: 23, scope: !1039)
!1048 = !DILocation(line: 57, column: 23, scope: !1025)
!1049 = !DILocation(line: 57, column: 9, scope: !1025)
!1050 = !DILocation(line: 57, column: 2, scope: !1025)
!1051 = !DISubprogram(name: "acpi_ns_evaluate", scope: !1052, file: !1052, line: 208, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1052 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!29, !855}
!1055 = !DISubprogram(name: "acpi_ut_method_error", scope: !1056, file: !1056, line: 735, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1056 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1057 = !DISubroutineType(types: !1058)
!1058 = !{null, !848, !30, !848, !88, !848, !29}
!1059 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1056, file: !1056, line: 369, type: !1060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !93}
!1062 = !DISubprogram(name: "acpi_error", scope: !1063, file: !1063, line: 901, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1063 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !848, !30, !848, null}
!1066 = !DISubprogram(name: "acpi_ut_get_object_type_name", scope: !1056, file: !1056, line: 233, type: !1067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!848, !93}
!1069 = distinct !DISubprogram(name: "acpi_os_free", scope: !1026, file: !1026, line: 60, type: !1070, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1072)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{null, !168}
!1072 = !{!1073}
!1073 = !DILocalVariable(name: "memory", arg: 1, scope: !1069, file: !1026, line: 60, type: !168)
!1074 = !DILocation(line: 60, column: 39, scope: !1069)
!1075 = !DILocation(line: 62, column: 8, scope: !1069)
!1076 = !DILocation(line: 62, column: 2, scope: !1069)
!1077 = !DILocation(line: 63, column: 1, scope: !1069)
!1078 = distinct !DISubprogram(name: "acpi_ut_evaluate_numeric_object", scope: !3, file: !3, line: 173, type: !1079, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1081)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!29, !848, !88, !769}
!1081 = !{!1082, !1083, !1084, !1085, !1086}
!1082 = !DILocalVariable(name: "object_name", arg: 1, scope: !1078, file: !3, line: 173, type: !848)
!1083 = !DILocalVariable(name: "device_node", arg: 2, scope: !1078, file: !3, line: 174, type: !88)
!1084 = !DILocalVariable(name: "value", arg: 3, scope: !1078, file: !3, line: 175, type: !769)
!1085 = !DILocalVariable(name: "obj_desc", scope: !1078, file: !3, line: 177, type: !93)
!1086 = !DILocalVariable(name: "status", scope: !1078, file: !3, line: 178, type: !29)
!1087 = !DILocation(line: 173, column: 45, scope: !1078)
!1088 = !DILocation(line: 174, column: 33, scope: !1078)
!1089 = !DILocation(line: 175, column: 10, scope: !1078)
!1090 = !DILocation(line: 177, column: 2, scope: !1078)
!1091 = !DILocation(line: 177, column: 29, scope: !1078)
!1092 = !DILocation(line: 178, column: 2, scope: !1078)
!1093 = !DILocation(line: 178, column: 14, scope: !1078)
!1094 = !DILocation(line: 182, column: 35, scope: !1078)
!1095 = !DILocation(line: 182, column: 48, scope: !1078)
!1096 = !DILocation(line: 182, column: 11, scope: !1078)
!1097 = !DILocation(line: 182, column: 9, scope: !1078)
!1098 = !DILocation(line: 184, column: 6, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 184, column: 6)
!1100 = !DILocation(line: 184, column: 6, scope: !1078)
!1101 = !DILocation(line: 185, column: 3, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 184, column: 28)
!1103 = !DILocation(line: 190, column: 11, scope: !1078)
!1104 = !DILocation(line: 190, column: 29, scope: !1078)
!1105 = !DILocation(line: 190, column: 3, scope: !1078)
!1106 = !DILocation(line: 190, column: 9, scope: !1078)
!1107 = !DILocation(line: 194, column: 27, scope: !1078)
!1108 = !DILocation(line: 194, column: 2, scope: !1078)
!1109 = !DILocation(line: 195, column: 2, scope: !1078)
!1110 = !DILocation(line: 196, column: 1, scope: !1078)
!1111 = distinct !DISubprogram(name: "acpi_ut_execute_STA", scope: !3, file: !3, line: 216, type: !1112, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1115)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!29, !88, !1114}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!1115 = !{!1116, !1117, !1118, !1119}
!1116 = !DILocalVariable(name: "device_node", arg: 1, scope: !1111, file: !3, line: 216, type: !88)
!1117 = !DILocalVariable(name: "flags", arg: 2, scope: !1111, file: !3, line: 216, type: !1114)
!1118 = !DILocalVariable(name: "obj_desc", scope: !1111, file: !3, line: 218, type: !93)
!1119 = !DILocalVariable(name: "status", scope: !1111, file: !3, line: 219, type: !29)
!1120 = !DILocation(line: 216, column: 49, scope: !1111)
!1121 = !DILocation(line: 216, column: 68, scope: !1111)
!1122 = !DILocation(line: 218, column: 2, scope: !1111)
!1123 = !DILocation(line: 218, column: 29, scope: !1111)
!1124 = !DILocation(line: 219, column: 2, scope: !1111)
!1125 = !DILocation(line: 219, column: 14, scope: !1111)
!1126 = !DILocation(line: 223, column: 35, scope: !1111)
!1127 = !DILocation(line: 223, column: 11, scope: !1111)
!1128 = !DILocation(line: 223, column: 9, scope: !1111)
!1129 = !DILocation(line: 225, column: 6, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 225, column: 6)
!1131 = !DILocation(line: 225, column: 6, scope: !1111)
!1132 = !DILocation(line: 226, column: 23, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 226, column: 7)
!1134 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 225, column: 28)
!1135 = !DILocation(line: 226, column: 20, scope: !1133)
!1136 = !DILocation(line: 226, column: 7, scope: !1134)
!1137 = !DILocation(line: 236, column: 5, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 226, column: 31)
!1139 = !DILocation(line: 236, column: 11, scope: !1138)
!1140 = !DILocation(line: 237, column: 11, scope: !1138)
!1141 = !DILocation(line: 238, column: 3, scope: !1138)
!1142 = !DILocation(line: 240, column: 3, scope: !1134)
!1143 = !DILocation(line: 245, column: 17, scope: !1111)
!1144 = !DILocation(line: 245, column: 35, scope: !1111)
!1145 = !DILocation(line: 245, column: 11, scope: !1111)
!1146 = !DILocation(line: 245, column: 3, scope: !1111)
!1147 = !DILocation(line: 245, column: 9, scope: !1111)
!1148 = !DILocation(line: 249, column: 27, scope: !1111)
!1149 = !DILocation(line: 249, column: 2, scope: !1111)
!1150 = !DILocation(line: 250, column: 2, scope: !1111)
!1151 = !DILocation(line: 251, column: 1, scope: !1111)
!1152 = distinct !DISubprogram(name: "acpi_ut_execute_power_methods", scope: !3, file: !3, line: 272, type: !1153, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1156)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!29, !88, !1155, !37, !140}
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!1156 = !{!1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164}
!1157 = !DILocalVariable(name: "device_node", arg: 1, scope: !1152, file: !3, line: 272, type: !88)
!1158 = !DILocalVariable(name: "method_names", arg: 2, scope: !1152, file: !3, line: 273, type: !1155)
!1159 = !DILocalVariable(name: "method_count", arg: 3, scope: !1152, file: !3, line: 274, type: !37)
!1160 = !DILocalVariable(name: "out_values", arg: 4, scope: !1152, file: !3, line: 274, type: !140)
!1161 = !DILocalVariable(name: "obj_desc", scope: !1152, file: !3, line: 276, type: !93)
!1162 = !DILocalVariable(name: "status", scope: !1152, file: !3, line: 277, type: !29)
!1163 = !DILocalVariable(name: "final_status", scope: !1152, file: !3, line: 278, type: !29)
!1164 = !DILocalVariable(name: "i", scope: !1152, file: !3, line: 279, type: !30)
!1165 = !DILocation(line: 272, column: 59, scope: !1152)
!1166 = !DILocation(line: 273, column: 23, scope: !1152)
!1167 = !DILocation(line: 274, column: 13, scope: !1152)
!1168 = !DILocation(line: 274, column: 31, scope: !1152)
!1169 = !DILocation(line: 276, column: 2, scope: !1152)
!1170 = !DILocation(line: 276, column: 29, scope: !1152)
!1171 = !DILocation(line: 277, column: 2, scope: !1152)
!1172 = !DILocation(line: 277, column: 14, scope: !1152)
!1173 = !DILocation(line: 278, column: 2, scope: !1152)
!1174 = !DILocation(line: 278, column: 14, scope: !1152)
!1175 = !DILocation(line: 279, column: 2, scope: !1152)
!1176 = !DILocation(line: 279, column: 6, scope: !1152)
!1177 = !DILocation(line: 283, column: 9, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 283, column: 2)
!1179 = !DILocation(line: 283, column: 7, scope: !1178)
!1180 = !DILocation(line: 283, column: 14, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 283, column: 2)
!1182 = !DILocation(line: 283, column: 18, scope: !1181)
!1183 = !DILocation(line: 283, column: 16, scope: !1181)
!1184 = !DILocation(line: 283, column: 2, scope: !1178)
!1185 = !DILocation(line: 288, column: 36, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 283, column: 37)
!1187 = !DILocation(line: 289, column: 8, scope: !1186)
!1188 = !DILocation(line: 288, column: 12, scope: !1186)
!1189 = !DILocation(line: 288, column: 10, scope: !1186)
!1190 = !DILocation(line: 292, column: 7, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 292, column: 7)
!1192 = !DILocation(line: 292, column: 7, scope: !1186)
!1193 = !DILocation(line: 293, column: 24, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 292, column: 29)
!1195 = !DILocation(line: 293, column: 42, scope: !1194)
!1196 = !DILocation(line: 293, column: 20, scope: !1194)
!1197 = !DILocation(line: 293, column: 4, scope: !1194)
!1198 = !DILocation(line: 293, column: 15, scope: !1194)
!1199 = !DILocation(line: 293, column: 18, scope: !1194)
!1200 = !DILocation(line: 297, column: 29, scope: !1194)
!1201 = !DILocation(line: 297, column: 4, scope: !1194)
!1202 = !DILocation(line: 298, column: 17, scope: !1194)
!1203 = !DILocation(line: 299, column: 4, scope: !1194)
!1204 = !DILocation(line: 302, column: 3, scope: !1186)
!1205 = !DILocation(line: 302, column: 14, scope: !1186)
!1206 = !DILocation(line: 302, column: 17, scope: !1186)
!1207 = !DILocation(line: 303, column: 7, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 303, column: 7)
!1209 = !DILocation(line: 303, column: 14, scope: !1208)
!1210 = !DILocation(line: 303, column: 7, scope: !1186)
!1211 = !DILocation(line: 304, column: 4, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 303, column: 31)
!1213 = !DILocation(line: 312, column: 2, scope: !1186)
!1214 = !DILocation(line: 283, column: 33, scope: !1181)
!1215 = !DILocation(line: 283, column: 2, scope: !1181)
!1216 = distinct !{!1216, !1184, !1217, !1218, !1219}
!1217 = !DILocation(line: 312, column: 2, scope: !1178)
!1218 = !{!"llvm.loop.mustprogress"}
!1219 = !{!"llvm.loop.unroll.disable"}
!1220 = !DILocation(line: 314, column: 2, scope: !1152)
!1221 = !DILocation(line: 315, column: 1, scope: !1152)
!1222 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !1223, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1229)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!168, !1225, !40}
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 61, baseType: !1226)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1227, line: 72, baseType: !1228)
!1227 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1227, line: 16, baseType: !36)
!1229 = !{!1230, !1231}
!1230 = !DILocalVariable(name: "size", arg: 1, scope: !1222, file: !12, line: 719, type: !1225)
!1231 = !DILocalVariable(name: "flags", arg: 2, scope: !1222, file: !12, line: 719, type: !40)
!1232 = !DILocation(line: 719, column: 52, scope: !1222)
!1233 = !DILocation(line: 719, column: 64, scope: !1222)
!1234 = !DILocation(line: 721, column: 17, scope: !1222)
!1235 = !DILocation(line: 721, column: 23, scope: !1222)
!1236 = !DILocation(line: 721, column: 29, scope: !1222)
!1237 = !DILocation(line: 721, column: 9, scope: !1222)
!1238 = !DILocation(line: 721, column: 2, scope: !1222)
!1239 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1240, file: !1240, line: 65, type: !1241, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1240 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!36}
!1243 = !DILocation(line: 67, column: 9, scope: !1239)
!1244 = !DILocation(line: 67, column: 2, scope: !1239)
!1245 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1240, file: !1240, line: 120, type: !1246, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1249)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!1248, !36}
!1248 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1249 = !{!1250}
!1250 = !DILocalVariable(name: "flags", arg: 1, scope: !1245, file: !1240, line: 120, type: !36)
!1251 = !DILocation(line: 120, column: 67, scope: !1245)
!1252 = !DILocation(line: 122, column: 11, scope: !1245)
!1253 = !DILocation(line: 122, column: 17, scope: !1245)
!1254 = !DILocation(line: 122, column: 9, scope: !1245)
!1255 = !DILocation(line: 122, column: 2, scope: !1245)
!1256 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !1223, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1257)
!1257 = !{!1258, !1259, !1260}
!1258 = !DILocalVariable(name: "size", arg: 1, scope: !1256, file: !12, line: 591, type: !1225)
!1259 = !DILocalVariable(name: "flags", arg: 2, scope: !1256, file: !12, line: 591, type: !40)
!1260 = !DILocalVariable(name: "index", scope: !1261, file: !12, line: 594, type: !7)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !12, line: 593, column: 42)
!1262 = distinct !DILexicalBlock(scope: !1256, file: !12, line: 593, column: 6)
!1263 = !DILocation(line: 591, column: 61, scope: !1256)
!1264 = !DILocation(line: 591, column: 73, scope: !1256)
!1265 = !DILocation(line: 593, column: 27, scope: !1262)
!1266 = !DILocation(line: 593, column: 6, scope: !1262)
!1267 = !DILocation(line: 593, column: 33, scope: !1262)
!1268 = !DILocation(line: 593, column: 36, scope: !1262)
!1269 = !DILocation(line: 593, column: 6, scope: !1256)
!1270 = !DILocation(line: 594, column: 3, scope: !1261)
!1271 = !DILocation(line: 594, column: 16, scope: !1261)
!1272 = !DILocation(line: 596, column: 7, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1261, file: !12, line: 596, column: 7)
!1274 = !DILocation(line: 596, column: 12, scope: !1273)
!1275 = !DILocation(line: 596, column: 7, scope: !1261)
!1276 = !DILocation(line: 597, column: 25, scope: !1273)
!1277 = !DILocation(line: 597, column: 31, scope: !1273)
!1278 = !DILocation(line: 597, column: 11, scope: !1273)
!1279 = !DILocation(line: 597, column: 4, scope: !1273)
!1280 = !DILocation(line: 599, column: 11, scope: !1261)
!1281 = !DILocation(line: 599, column: 9, scope: !1261)
!1282 = !DILocation(line: 601, column: 33, scope: !1261)
!1283 = !DILocation(line: 601, column: 40, scope: !1261)
!1284 = !DILocation(line: 601, column: 20, scope: !1261)
!1285 = !DILocation(line: 601, column: 5, scope: !1261)
!1286 = !DILocation(line: 601, column: 51, scope: !1261)
!1287 = !DILocation(line: 602, column: 5, scope: !1261)
!1288 = !DILocation(line: 602, column: 12, scope: !1261)
!1289 = !DILocation(line: 600, column: 10, scope: !1261)
!1290 = !DILocation(line: 600, column: 3, scope: !1261)
!1291 = !DILocation(line: 603, column: 2, scope: !1262)
!1292 = !DILocation(line: 604, column: 19, scope: !1256)
!1293 = !DILocation(line: 604, column: 25, scope: !1256)
!1294 = !DILocation(line: 604, column: 9, scope: !1256)
!1295 = !DILocation(line: 604, column: 2, scope: !1256)
!1296 = !DILocation(line: 605, column: 1, scope: !1256)
!1297 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !1223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1298 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !1299, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1303)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!7, !1225, !1301}
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !35, line: 35, baseType: !1302)
!1302 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1303 = !{!1304, !1305}
!1304 = !DILocalVariable(name: "size", arg: 1, scope: !1298, file: !12, line: 444, type: !1225)
!1305 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1298, file: !12, line: 445, type: !1301)
!1306 = !DILocation(line: 444, column: 60, scope: !1298)
!1307 = !DILocation(line: 445, column: 16, scope: !1298)
!1308 = !DILocation(line: 447, column: 7, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 447, column: 6)
!1310 = !DILocation(line: 447, column: 6, scope: !1298)
!1311 = !DILocation(line: 448, column: 3, scope: !1309)
!1312 = !DILocation(line: 450, column: 6, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 450, column: 6)
!1314 = !DILocation(line: 450, column: 11, scope: !1313)
!1315 = !DILocation(line: 450, column: 6, scope: !1298)
!1316 = !DILocation(line: 451, column: 3, scope: !1313)
!1317 = !DILocation(line: 453, column: 32, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 453, column: 6)
!1319 = !DILocation(line: 453, column: 37, scope: !1318)
!1320 = !DILocation(line: 453, column: 42, scope: !1318)
!1321 = !DILocation(line: 453, column: 45, scope: !1318)
!1322 = !DILocation(line: 453, column: 50, scope: !1318)
!1323 = !DILocation(line: 453, column: 6, scope: !1298)
!1324 = !DILocation(line: 454, column: 3, scope: !1318)
!1325 = !DILocation(line: 455, column: 32, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 455, column: 6)
!1327 = !DILocation(line: 455, column: 37, scope: !1326)
!1328 = !DILocation(line: 455, column: 43, scope: !1326)
!1329 = !DILocation(line: 455, column: 46, scope: !1326)
!1330 = !DILocation(line: 455, column: 51, scope: !1326)
!1331 = !DILocation(line: 455, column: 6, scope: !1298)
!1332 = !DILocation(line: 456, column: 3, scope: !1326)
!1333 = !DILocation(line: 457, column: 6, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 457, column: 6)
!1335 = !DILocation(line: 457, column: 11, scope: !1334)
!1336 = !DILocation(line: 457, column: 6, scope: !1298)
!1337 = !DILocation(line: 457, column: 26, scope: !1334)
!1338 = !DILocation(line: 458, column: 6, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 458, column: 6)
!1340 = !DILocation(line: 458, column: 11, scope: !1339)
!1341 = !DILocation(line: 458, column: 6, scope: !1298)
!1342 = !DILocation(line: 458, column: 26, scope: !1339)
!1343 = !DILocation(line: 459, column: 6, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 459, column: 6)
!1345 = !DILocation(line: 459, column: 11, scope: !1344)
!1346 = !DILocation(line: 459, column: 6, scope: !1298)
!1347 = !DILocation(line: 459, column: 26, scope: !1344)
!1348 = !DILocation(line: 460, column: 6, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 460, column: 6)
!1350 = !DILocation(line: 460, column: 11, scope: !1349)
!1351 = !DILocation(line: 460, column: 6, scope: !1298)
!1352 = !DILocation(line: 460, column: 26, scope: !1349)
!1353 = !DILocation(line: 461, column: 6, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 461, column: 6)
!1355 = !DILocation(line: 461, column: 11, scope: !1354)
!1356 = !DILocation(line: 461, column: 6, scope: !1298)
!1357 = !DILocation(line: 461, column: 26, scope: !1354)
!1358 = !DILocation(line: 462, column: 6, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 462, column: 6)
!1360 = !DILocation(line: 462, column: 11, scope: !1359)
!1361 = !DILocation(line: 462, column: 6, scope: !1298)
!1362 = !DILocation(line: 462, column: 26, scope: !1359)
!1363 = !DILocation(line: 463, column: 6, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 463, column: 6)
!1365 = !DILocation(line: 463, column: 11, scope: !1364)
!1366 = !DILocation(line: 463, column: 6, scope: !1298)
!1367 = !DILocation(line: 463, column: 26, scope: !1364)
!1368 = !DILocation(line: 464, column: 6, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 464, column: 6)
!1370 = !DILocation(line: 464, column: 11, scope: !1369)
!1371 = !DILocation(line: 464, column: 6, scope: !1298)
!1372 = !DILocation(line: 464, column: 26, scope: !1369)
!1373 = !DILocation(line: 465, column: 6, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 465, column: 6)
!1375 = !DILocation(line: 465, column: 11, scope: !1374)
!1376 = !DILocation(line: 465, column: 6, scope: !1298)
!1377 = !DILocation(line: 465, column: 26, scope: !1374)
!1378 = !DILocation(line: 466, column: 6, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 466, column: 6)
!1380 = !DILocation(line: 466, column: 11, scope: !1379)
!1381 = !DILocation(line: 466, column: 6, scope: !1298)
!1382 = !DILocation(line: 466, column: 26, scope: !1379)
!1383 = !DILocation(line: 467, column: 6, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 467, column: 6)
!1385 = !DILocation(line: 467, column: 11, scope: !1384)
!1386 = !DILocation(line: 467, column: 6, scope: !1298)
!1387 = !DILocation(line: 467, column: 26, scope: !1384)
!1388 = !DILocation(line: 468, column: 6, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 468, column: 6)
!1390 = !DILocation(line: 468, column: 11, scope: !1389)
!1391 = !DILocation(line: 468, column: 6, scope: !1298)
!1392 = !DILocation(line: 468, column: 26, scope: !1389)
!1393 = !DILocation(line: 469, column: 6, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 469, column: 6)
!1395 = !DILocation(line: 469, column: 11, scope: !1394)
!1396 = !DILocation(line: 469, column: 6, scope: !1298)
!1397 = !DILocation(line: 469, column: 26, scope: !1394)
!1398 = !DILocation(line: 470, column: 6, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 470, column: 6)
!1400 = !DILocation(line: 470, column: 11, scope: !1399)
!1401 = !DILocation(line: 470, column: 6, scope: !1298)
!1402 = !DILocation(line: 470, column: 26, scope: !1399)
!1403 = !DILocation(line: 471, column: 6, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 471, column: 6)
!1405 = !DILocation(line: 471, column: 11, scope: !1404)
!1406 = !DILocation(line: 471, column: 6, scope: !1298)
!1407 = !DILocation(line: 471, column: 26, scope: !1404)
!1408 = !DILocation(line: 472, column: 6, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 472, column: 6)
!1410 = !DILocation(line: 472, column: 11, scope: !1409)
!1411 = !DILocation(line: 472, column: 6, scope: !1298)
!1412 = !DILocation(line: 472, column: 26, scope: !1409)
!1413 = !DILocation(line: 473, column: 6, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 473, column: 6)
!1415 = !DILocation(line: 473, column: 11, scope: !1414)
!1416 = !DILocation(line: 473, column: 6, scope: !1298)
!1417 = !DILocation(line: 473, column: 26, scope: !1414)
!1418 = !DILocation(line: 474, column: 6, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 474, column: 6)
!1420 = !DILocation(line: 474, column: 11, scope: !1419)
!1421 = !DILocation(line: 474, column: 6, scope: !1298)
!1422 = !DILocation(line: 474, column: 27, scope: !1419)
!1423 = !DILocation(line: 475, column: 6, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 475, column: 6)
!1425 = !DILocation(line: 475, column: 11, scope: !1424)
!1426 = !DILocation(line: 475, column: 6, scope: !1298)
!1427 = !DILocation(line: 475, column: 32, scope: !1424)
!1428 = !DILocation(line: 477, column: 50, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1298, file: !12, line: 477, column: 6)
!1430 = !{i8 0, i8 2}
!1431 = !{}
!1432 = !DILocation(line: 477, column: 6, scope: !1298)
!1433 = !DILocation(line: 478, column: 3, scope: !1429)
!1434 = !DILocation(line: 478, column: 3, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !12, line: 478, column: 3)
!1436 = distinct !DILexicalBlock(scope: !1429, file: !12, line: 478, column: 3)
!1437 = !{i32 -2143041100}
!1438 = !DILocation(line: 478, column: 3, scope: !1436)
!1439 = !DILocation(line: 480, column: 3, scope: !1429)
!1440 = !DILocation(line: 480, column: 3, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1429, file: !12, line: 480, column: 3)
!1442 = !DILocation(line: 480, column: 3, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1441, file: !12, line: 480, column: 3)
!1444 = !DILocation(line: 480, column: 3, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1441, file: !12, line: 480, column: 3)
!1446 = !{i64 2151926399, i64 2151926428, i64 2151926474, i64 2151926532, i64 2151926586, i64 2151926640, i64 2151926695, i64 2151926726}
!1447 = !DILocation(line: 483, column: 2, scope: !1298)
!1448 = !DILocation(line: 484, column: 1, scope: !1298)
!1449 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !1450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!168, !1452, !40, !1225}
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1454, line: 11, flags: DIFlagFwdDecl)
!1454 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1455 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !1456, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1458)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!11, !40, !36}
!1458 = !{!1459, !1460}
!1459 = !DILocalVariable(name: "flags", arg: 1, scope: !1455, file: !12, line: 401, type: !40)
!1460 = !DILocalVariable(name: "caller", arg: 2, scope: !1455, file: !12, line: 401, type: !36)
!1461 = !DILocation(line: 401, column: 67, scope: !1455)
!1462 = !DILocation(line: 401, column: 88, scope: !1455)
!1463 = !DILocation(line: 407, column: 6, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 407, column: 6)
!1465 = !DILocation(line: 407, column: 6, scope: !1455)
!1466 = !DILocation(line: 413, column: 3, scope: !1464)
!1467 = !DILocation(line: 423, column: 38, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 423, column: 6)
!1469 = !DILocation(line: 423, column: 44, scope: !1468)
!1470 = !DILocation(line: 423, column: 6, scope: !1455)
!1471 = !DILocation(line: 424, column: 3, scope: !1468)
!1472 = !DILocation(line: 426, column: 3, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 425, column: 6)
!1474 = !DILocation(line: 429, column: 1, scope: !1455)
!1475 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !1223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1476 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !1477, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{null}
!1479 = distinct !DISubprogram(name: "native_save_fl", scope: !1240, file: !1240, line: 17, type: !1241, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1480)
!1480 = !{!1481}
!1481 = !DILocalVariable(name: "flags", scope: !1479, file: !1240, line: 19, type: !36)
!1482 = !DILocation(line: 19, column: 2, scope: !1479)
!1483 = !DILocation(line: 19, column: 16, scope: !1479)
!1484 = !DILocation(line: 26, column: 2, scope: !1479)
!1485 = !{i64 1516318, i64 1516339}
!1486 = !DILocation(line: 32, column: 9, scope: !1479)
!1487 = !DILocation(line: 33, column: 1, scope: !1479)
!1488 = !DILocation(line: 32, column: 2, scope: !1479)
!1489 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !1490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{null, !1492}
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
