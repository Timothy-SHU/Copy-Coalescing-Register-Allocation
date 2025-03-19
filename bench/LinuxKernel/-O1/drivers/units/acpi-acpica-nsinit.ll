; ModuleID = 'drivers/acpi/acpica/nsinit.c'
source_filename = "drivers/acpi/acpica/nsinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_init_walk_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_device_walk_info = type { ptr, ptr, i32, i32, i32 }
%struct.acpi_evaluate_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i8, i8, i8 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_package = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, i32, i32 }

@_acpi_module_name = internal constant [7 x i8] c"nsinit\00", align 1, !dbg !0
@.str = private unnamed_addr constant [21 x i8] c"During WalkNamespace\00", align 1, !dbg !924
@acpi_gbl_root_node = external dso_local global ptr, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"_INI\00", align 1, !dbg !929
@.str.2 = private unnamed_addr constant [5 x i8] c"\\_SB\00", align 1, !dbg !934
@acpi_gbl_osi_data = external dso_local global i8, align 1
@acpi_gbl_truncate_io_addresses = external dso_local global i8, align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"During device initialization\00", align 1, !dbg !936
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !941
@.str.5 = private unnamed_addr constant [36 x i8] c"Opcode is not deferred [%4.4s] (%s)\00", align 1, !dbg !943
@.str.6 = private unnamed_addr constant [45 x i8] c"Could not execute arguments for [%4.4s] (%s)\00", align 1, !dbg !948
@.str.7 = private unnamed_addr constant [5 x i8] c"_SB_\00", align 1, !dbg !953
@acpi_gbl_init_handler = external dso_local global ptr, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_initialize_objects() #0 align 16 !dbg !965 {
entry:
  %status = alloca i32, align 4
  %info = alloca %struct.acpi_init_walk_info, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !971
  call void @llvm.dbg.declare(metadata ptr %status, metadata !969, metadata !DIExpression()), !dbg !972
  call void @llvm.lifetime.start.p0(i64 64, ptr %info) #14, !dbg !973
  call void @llvm.dbg.declare(metadata ptr %info, metadata !970, metadata !DIExpression()), !dbg !974
  call void @llvm.memset.p0.i64(ptr align 4 %info, i8 0, i64 64, i1 false), !dbg !975
  %call = call i32 @acpi_walk_namespace(i32 noundef 0, ptr noundef inttoptr (i64 -1 to ptr), i32 noundef -1, ptr noundef @acpi_ns_init_one_object, ptr noundef null, ptr noundef %info, ptr noundef null) #15, !dbg !976
  store i32 %call, ptr %status, align 4, !dbg !977
  %0 = load i32, ptr %status, align 4, !dbg !978
  %tobool = icmp ne i32 %0, 0, !dbg !978
  br i1 %tobool, label %if.then, label %if.end, !dbg !980

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !981
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 75, i32 noundef %1, ptr noundef @.str) #15, !dbg !981
  br label %if.end, !dbg !983

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 64, ptr %info) #14, !dbg !984
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !984
  ret i32 0, !dbg !985
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !986 dso_local i32 @acpi_walk_namespace(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ns_init_one_object(ptr noundef %obj_handle, i32 noundef %level, ptr noundef %context, ptr noundef %return_value) #0 align 16 !dbg !992 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %return_value.addr = alloca ptr, align 8
  %type = alloca i32, align 4
  %status = alloca i32, align 4
  %info = alloca ptr, align 8
  %node = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_handle, ptr %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_handle.addr, metadata !994, metadata !DIExpression()), !dbg !1003
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !995, metadata !DIExpression()), !dbg !1004
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !996, metadata !DIExpression()), !dbg !1005
  store ptr %return_value, ptr %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_value.addr, metadata !997, metadata !DIExpression()), !dbg !1006
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #14, !dbg !1007
  call void @llvm.dbg.declare(metadata ptr %type, metadata !998, metadata !DIExpression()), !dbg !1008
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !1009
  call void @llvm.dbg.declare(metadata ptr %status, metadata !999, metadata !DIExpression()), !dbg !1010
  store i32 0, ptr %status, align 4, !dbg !1010
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #14, !dbg !1011
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1000, metadata !DIExpression()), !dbg !1012
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1013
  store ptr %0, ptr %info, align 8, !dbg !1012
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !1014
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1001, metadata !DIExpression()), !dbg !1015
  %1 = load ptr, ptr %obj_handle.addr, align 8, !dbg !1016
  store ptr %1, ptr %node, align 8, !dbg !1015
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #14, !dbg !1017
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1002, metadata !DIExpression()), !dbg !1018
  %2 = load ptr, ptr %info, align 8, !dbg !1019
  %object_count = getelementptr inbounds %struct.acpi_init_walk_info, ptr %2, i32 0, i32 1, !dbg !1020
  %3 = load i32, ptr %object_count, align 4, !dbg !1021
  %inc = add i32 %3, 1, !dbg !1021
  store i32 %inc, ptr %object_count, align 4, !dbg !1021
  %4 = load ptr, ptr %obj_handle.addr, align 8, !dbg !1022
  %call = call i32 @acpi_ns_get_type(ptr noundef %4) #15, !dbg !1023
  store i32 %call, ptr %type, align 4, !dbg !1024
  %5 = load ptr, ptr %node, align 8, !dbg !1025
  %call1 = call ptr @acpi_ns_get_attached_object(ptr noundef %5) #15, !dbg !1026
  store ptr %call1, ptr %obj_desc, align 8, !dbg !1027
  %6 = load ptr, ptr %obj_desc, align 8, !dbg !1028
  %tobool = icmp ne ptr %6, null, !dbg !1028
  br i1 %tobool, label %if.end, label %if.then, !dbg !1030

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1031
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1031

if.end:                                           ; preds = %entry
  %7 = load i32, ptr %type, align 4, !dbg !1033
  switch i32 %7, label %sw.default [
    i32 10, label %sw.bb
    i32 14, label %sw.bb3
    i32 18, label %sw.bb5
    i32 3, label %sw.bb8
    i32 4, label %sw.bb10
  ], !dbg !1034

sw.bb:                                            ; preds = %if.end
  %8 = load ptr, ptr %info, align 8, !dbg !1035
  %op_region_count = getelementptr inbounds %struct.acpi_init_walk_info, ptr %8, i32 0, i32 7, !dbg !1037
  %9 = load i32, ptr %op_region_count, align 4, !dbg !1038
  %inc2 = add i32 %9, 1, !dbg !1038
  store i32 %inc2, ptr %op_region_count, align 4, !dbg !1038
  br label %sw.epilog, !dbg !1039

sw.bb3:                                           ; preds = %if.end
  %10 = load ptr, ptr %info, align 8, !dbg !1040
  %field_count = getelementptr inbounds %struct.acpi_init_walk_info, ptr %10, i32 0, i32 8, !dbg !1041
  %11 = load i32, ptr %field_count, align 4, !dbg !1042
  %inc4 = add i32 %11, 1, !dbg !1042
  store i32 %inc4, ptr %field_count, align 4, !dbg !1042
  br label %sw.epilog, !dbg !1043

sw.bb5:                                           ; preds = %if.end
  %12 = load ptr, ptr %info, align 8, !dbg !1044
  %field_count6 = getelementptr inbounds %struct.acpi_init_walk_info, ptr %12, i32 0, i32 8, !dbg !1045
  %13 = load i32, ptr %field_count6, align 4, !dbg !1046
  %inc7 = add i32 %13, 1, !dbg !1046
  store i32 %inc7, ptr %field_count6, align 4, !dbg !1046
  br label %sw.epilog, !dbg !1047

sw.bb8:                                           ; preds = %if.end
  %14 = load ptr, ptr %info, align 8, !dbg !1048
  %buffer_count = getelementptr inbounds %struct.acpi_init_walk_info, ptr %14, i32 0, i32 9, !dbg !1049
  %15 = load i32, ptr %buffer_count, align 4, !dbg !1050
  %inc9 = add i32 %15, 1, !dbg !1050
  store i32 %inc9, ptr %buffer_count, align 4, !dbg !1050
  br label %sw.epilog, !dbg !1051

sw.bb10:                                          ; preds = %if.end
  %16 = load ptr, ptr %info, align 8, !dbg !1052
  %package_count = getelementptr inbounds %struct.acpi_init_walk_info, ptr %16, i32 0, i32 10, !dbg !1053
  %17 = load i32, ptr %package_count, align 4, !dbg !1054
  %inc11 = add i32 %17, 1, !dbg !1054
  store i32 %inc11, ptr %package_count, align 4, !dbg !1054
  br label %sw.epilog, !dbg !1055

sw.default:                                       ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1056
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1056

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb8, %sw.bb5, %sw.bb3, %sw.bb
  %18 = load ptr, ptr %obj_desc, align 8, !dbg !1057
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %18, i32 0, i32 4, !dbg !1059
  %19 = load i8, ptr %flags, align 4, !dbg !1059
  %conv = zext i8 %19 to i32, !dbg !1057
  %and = and i32 %conv, 4, !dbg !1060
  %tobool12 = icmp ne i32 %and, 0, !dbg !1060
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !1061

if.then13:                                        ; preds = %sw.epilog
  store i32 0, ptr %retval, align 4, !dbg !1062
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1062

if.end14:                                         ; preds = %sw.epilog
  call void @acpi_ex_enter_interpreter() #15, !dbg !1064
  %20 = load i32, ptr %type, align 4, !dbg !1065
  switch i32 %20, label %sw.default21 [
    i32 18, label %sw.bb15
    i32 4, label %sw.bb18
  ], !dbg !1066

sw.bb15:                                          ; preds = %if.end14
  %21 = load ptr, ptr %info, align 8, !dbg !1067
  %field_init = getelementptr inbounds %struct.acpi_init_walk_info, ptr %21, i32 0, i32 12, !dbg !1069
  %22 = load i32, ptr %field_init, align 4, !dbg !1070
  %inc16 = add i32 %22, 1, !dbg !1070
  store i32 %inc16, ptr %field_init, align 4, !dbg !1070
  %23 = load ptr, ptr %obj_desc, align 8, !dbg !1071
  %call17 = call i32 @acpi_ds_get_bank_field_arguments(ptr noundef %23) #15, !dbg !1072
  store i32 %call17, ptr %status, align 4, !dbg !1073
  br label %sw.epilog24, !dbg !1074

sw.bb18:                                          ; preds = %if.end14
  %24 = load ptr, ptr %info, align 8, !dbg !1075
  %package_init = getelementptr inbounds %struct.acpi_init_walk_info, ptr %24, i32 0, i32 14, !dbg !1076
  %25 = load i32, ptr %package_init, align 4, !dbg !1077
  %inc19 = add i32 %25, 1, !dbg !1077
  store i32 %inc19, ptr %package_init, align 4, !dbg !1077
  %26 = load ptr, ptr %obj_handle.addr, align 8, !dbg !1078
  %27 = load i32, ptr %level.addr, align 4, !dbg !1079
  %call20 = call i32 @acpi_ns_init_one_package(ptr noundef %26, i32 noundef %27, ptr noundef null, ptr noundef null) #15, !dbg !1080
  store i32 %call20, ptr %status, align 4, !dbg !1081
  br label %sw.epilog24, !dbg !1082

sw.default21:                                     ; preds = %if.end14
  store i32 8, ptr %status, align 4, !dbg !1083
  %28 = load i32, ptr %status, align 4, !dbg !1084
  %29 = load ptr, ptr %node, align 8, !dbg !1084
  %call22 = call ptr @acpi_ut_get_node_name(ptr noundef %29) #15, !dbg !1084
  %30 = load i32, ptr %type, align 4, !dbg !1084
  %call23 = call ptr @acpi_ut_get_type_name(i32 noundef %30) #15, !dbg !1084
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 411, i32 noundef %28, ptr noundef @.str.5, ptr noundef %call22, ptr noundef %call23) #15, !dbg !1084
  br label %sw.epilog24, !dbg !1085

sw.epilog24:                                      ; preds = %sw.default21, %sw.bb18, %sw.bb15
  %31 = load i32, ptr %status, align 4, !dbg !1086
  %tobool25 = icmp ne i32 %31, 0, !dbg !1086
  br i1 %tobool25, label %if.then26, label %if.end29, !dbg !1088

if.then26:                                        ; preds = %sw.epilog24
  %32 = load i32, ptr %status, align 4, !dbg !1089
  %33 = load ptr, ptr %node, align 8, !dbg !1089
  %call27 = call ptr @acpi_ut_get_node_name(ptr noundef %33) #15, !dbg !1089
  %34 = load i32, ptr %type, align 4, !dbg !1089
  %call28 = call ptr @acpi_ut_get_type_name(i32 noundef %34) #15, !dbg !1089
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 419, i32 noundef %32, ptr noundef @.str.6, ptr noundef %call27, ptr noundef %call28) #15, !dbg !1089
  br label %if.end29, !dbg !1091

if.end29:                                         ; preds = %if.then26, %sw.epilog24
  call void @acpi_ex_exit_interpreter() #15, !dbg !1092
  store i32 0, ptr %retval, align 4, !dbg !1093
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1093

cleanup:                                          ; preds = %if.end29, %if.then13, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #14, !dbg !1094
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !1094
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #14, !dbg !1094
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !1094
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #14, !dbg !1094
  %35 = load i32, ptr %retval, align 4, !dbg !1094
  ret i32 %35, !dbg !1094
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1095 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_initialize_devices(i32 noundef %flags) #0 align 16 !dbg !1098 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %info = alloca %struct.acpi_device_walk_info, align 8
  %handle = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1102, metadata !DIExpression()), !dbg !1107
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !1108
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1103, metadata !DIExpression()), !dbg !1109
  store i32 0, ptr %status, align 4, !dbg !1109
  call void @llvm.lifetime.start.p0(i64 32, ptr %info) #14, !dbg !1110
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1104, metadata !DIExpression()), !dbg !1111
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #14, !dbg !1112
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !1105, metadata !DIExpression()), !dbg !1113
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1114
  %and = and i32 %0, 64, !dbg !1116
  %tobool = icmp ne i32 %and, 0, !dbg !1116
  br i1 %tobool, label %if.end39, label %if.then, !dbg !1117

if.then:                                          ; preds = %entry
  %device_count = getelementptr inbounds %struct.acpi_device_walk_info, ptr %info, i32 0, i32 2, !dbg !1118
  store i32 0, ptr %device_count, align 8, !dbg !1120
  %num_STA = getelementptr inbounds %struct.acpi_device_walk_info, ptr %info, i32 0, i32 3, !dbg !1121
  store i32 0, ptr %num_STA, align 4, !dbg !1122
  %num_INI = getelementptr inbounds %struct.acpi_device_walk_info, ptr %info, i32 0, i32 4, !dbg !1123
  store i32 0, ptr %num_INI, align 8, !dbg !1124
  %call = call i32 @acpi_ns_walk_namespace(i32 noundef 0, ptr noundef inttoptr (i64 -1 to ptr), i32 noundef -1, i32 noundef 0, ptr noundef @acpi_ns_find_ini_methods, ptr noundef null, ptr noundef %info, ptr noundef null) #15, !dbg !1125
  store i32 %call, ptr %status, align 4, !dbg !1126
  %1 = load i32, ptr %status, align 4, !dbg !1127
  %tobool1 = icmp ne i32 %1, 0, !dbg !1127
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !1129

if.then2:                                         ; preds = %if.then
  br label %error_exit, !dbg !1130

if.end:                                           ; preds = %if.then
  %call3 = call ptr @acpi_os_allocate_zeroed(i64 noundef 88) #15, !dbg !1132
  %evaluate_info = getelementptr inbounds %struct.acpi_device_walk_info, ptr %info, i32 0, i32 1, !dbg !1133
  store ptr %call3, ptr %evaluate_info, align 8, !dbg !1134
  %evaluate_info4 = getelementptr inbounds %struct.acpi_device_walk_info, ptr %info, i32 0, i32 1, !dbg !1135
  %2 = load ptr, ptr %evaluate_info4, align 8, !dbg !1135
  %tobool5 = icmp ne ptr %2, null, !dbg !1137
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !1138

if.then6:                                         ; preds = %if.end
  store i32 4, ptr %status, align 4, !dbg !1139
  br label %error_exit, !dbg !1141

if.end7:                                          ; preds = %if.end
  %3 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1142
  %evaluate_info8 = getelementptr inbounds %struct.acpi_device_walk_info, ptr %info, i32 0, i32 1, !dbg !1143
  %4 = load ptr, ptr %evaluate_info8, align 8, !dbg !1143
  %prefix_node = getelementptr inbounds %struct.acpi_evaluate_info, ptr %4, i32 0, i32 0, !dbg !1144
  store ptr %3, ptr %prefix_node, align 8, !dbg !1145
  %evaluate_info9 = getelementptr inbounds %struct.acpi_device_walk_info, ptr %info, i32 0, i32 1, !dbg !1146
  %5 = load ptr, ptr %evaluate_info9, align 8, !dbg !1146
  %relative_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %5, i32 0, i32 1, !dbg !1147
  store ptr @.str.1, ptr %relative_pathname, align 8, !dbg !1148
  %evaluate_info10 = getelementptr inbounds %struct.acpi_device_walk_info, ptr %info, i32 0, i32 1, !dbg !1149
  %6 = load ptr, ptr %evaluate_info10, align 8, !dbg !1149
  %parameters = getelementptr inbounds %struct.acpi_evaluate_info, ptr %6, i32 0, i32 2, !dbg !1150
  store ptr null, ptr %parameters, align 8, !dbg !1151
  %evaluate_info11 = getelementptr inbounds %struct.acpi_device_walk_info, ptr %info, i32 0, i32 1, !dbg !1152
  %7 = load ptr, ptr %evaluate_info11, align 8, !dbg !1152
  %flags12 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %7, i32 0, i32 15, !dbg !1153
  store i8 1, ptr %flags12, align 2, !dbg !1154
  %evaluate_info13 = getelementptr inbounds %struct.acpi_device_walk_info, ptr %info, i32 0, i32 1, !dbg !1155
  %8 = load ptr, ptr %evaluate_info13, align 8, !dbg !1155
  %call14 = call i32 @acpi_ns_evaluate(ptr noundef %8) #15, !dbg !1156
  store i32 %call14, ptr %status, align 4, !dbg !1157
  %9 = load i32, ptr %status, align 4, !dbg !1158
  %tobool15 = icmp ne i32 %9, 0, !dbg !1158
  br i1 %tobool15, label %if.end18, label %if.then16, !dbg !1160

if.then16:                                        ; preds = %if.end7
  %num_INI17 = getelementptr inbounds %struct.acpi_device_walk_info, ptr %info, i32 0, i32 4, !dbg !1161
  %10 = load i32, ptr %num_INI17, align 8, !dbg !1163
  %inc = add i32 %10, 1, !dbg !1163
  store i32 %inc, ptr %num_INI17, align 8, !dbg !1163
  br label %if.end18, !dbg !1164

if.end18:                                         ; preds = %if.then16, %if.end7
  %call19 = call i32 @acpi_get_handle(ptr noundef null, ptr noundef @.str.2, ptr noundef %handle) #15, !dbg !1165
  store i32 %call19, ptr %status, align 4, !dbg !1166
  %11 = load i32, ptr %status, align 4, !dbg !1167
  %tobool20 = icmp ne i32 %11, 0, !dbg !1167
  br i1 %tobool20, label %if.end38, label %if.then21, !dbg !1169

if.then21:                                        ; preds = %if.end18
  %evaluate_info22 = getelementptr inbounds %struct.acpi_device_walk_info, ptr %info, i32 0, i32 1, !dbg !1170
  %12 = load ptr, ptr %evaluate_info22, align 8, !dbg !1170
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 88, i1 false), !dbg !1172
  %13 = load ptr, ptr %handle, align 8, !dbg !1173
  %evaluate_info23 = getelementptr inbounds %struct.acpi_device_walk_info, ptr %info, i32 0, i32 1, !dbg !1174
  %14 = load ptr, ptr %evaluate_info23, align 8, !dbg !1174
  %prefix_node24 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %14, i32 0, i32 0, !dbg !1175
  store ptr %13, ptr %prefix_node24, align 8, !dbg !1176
  %evaluate_info25 = getelementptr inbounds %struct.acpi_device_walk_info, ptr %info, i32 0, i32 1, !dbg !1177
  %15 = load ptr, ptr %evaluate_info25, align 8, !dbg !1177
  %relative_pathname26 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %15, i32 0, i32 1, !dbg !1178
  store ptr @.str.1, ptr %relative_pathname26, align 8, !dbg !1179
  %evaluate_info27 = getelementptr inbounds %struct.acpi_device_walk_info, ptr %info, i32 0, i32 1, !dbg !1180
  %16 = load ptr, ptr %evaluate_info27, align 8, !dbg !1180
  %parameters28 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %16, i32 0, i32 2, !dbg !1181
  store ptr null, ptr %parameters28, align 8, !dbg !1182
  %evaluate_info29 = getelementptr inbounds %struct.acpi_device_walk_info, ptr %info, i32 0, i32 1, !dbg !1183
  %17 = load ptr, ptr %evaluate_info29, align 8, !dbg !1183
  %flags30 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %17, i32 0, i32 15, !dbg !1184
  store i8 1, ptr %flags30, align 2, !dbg !1185
  %evaluate_info31 = getelementptr inbounds %struct.acpi_device_walk_info, ptr %info, i32 0, i32 1, !dbg !1186
  %18 = load ptr, ptr %evaluate_info31, align 8, !dbg !1186
  %call32 = call i32 @acpi_ns_evaluate(ptr noundef %18) #15, !dbg !1187
  store i32 %call32, ptr %status, align 4, !dbg !1188
  %19 = load i32, ptr %status, align 4, !dbg !1189
  %tobool33 = icmp ne i32 %19, 0, !dbg !1189
  br i1 %tobool33, label %if.end37, label %if.then34, !dbg !1191

if.then34:                                        ; preds = %if.then21
  %num_INI35 = getelementptr inbounds %struct.acpi_device_walk_info, ptr %info, i32 0, i32 4, !dbg !1192
  %20 = load i32, ptr %num_INI35, align 8, !dbg !1194
  %inc36 = add i32 %20, 1, !dbg !1194
  store i32 %inc36, ptr %num_INI35, align 8, !dbg !1194
  br label %if.end37, !dbg !1195

if.end37:                                         ; preds = %if.then34, %if.then21
  br label %if.end38, !dbg !1196

if.end38:                                         ; preds = %if.end37, %if.end18
  br label %if.end39, !dbg !1197

if.end39:                                         ; preds = %if.end38, %entry
  %21 = load i32, ptr %flags.addr, align 4, !dbg !1198
  %and40 = and i32 %21, 128, !dbg !1200
  %tobool41 = icmp ne i32 %and40, 0, !dbg !1200
  br i1 %tobool41, label %if.end47, label %if.then42, !dbg !1201

if.then42:                                        ; preds = %if.end39
  %call43 = call i32 @acpi_ev_initialize_op_regions() #15, !dbg !1202
  store i32 %call43, ptr %status, align 4, !dbg !1204
  %22 = load i32, ptr %status, align 4, !dbg !1205
  %tobool44 = icmp ne i32 %22, 0, !dbg !1205
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !1207

if.then45:                                        ; preds = %if.then42
  br label %error_exit, !dbg !1208

if.end46:                                         ; preds = %if.then42
  br label %if.end47, !dbg !1210

if.end47:                                         ; preds = %if.end46, %if.end39
  %23 = load i32, ptr %flags.addr, align 4, !dbg !1211
  %and48 = and i32 %23, 64, !dbg !1213
  %tobool49 = icmp ne i32 %and48, 0, !dbg !1213
  br i1 %tobool49, label %if.end59, label %if.then50, !dbg !1214

if.then50:                                        ; preds = %if.end47
  %call51 = call i32 @acpi_ns_walk_namespace(i32 noundef 0, ptr noundef inttoptr (i64 -1 to ptr), i32 noundef -1, i32 noundef 0, ptr noundef @acpi_ns_init_one_device, ptr noundef null, ptr noundef %info, ptr noundef null) #15, !dbg !1215
  store i32 %call51, ptr %status, align 4, !dbg !1217
  %24 = load i8, ptr @acpi_gbl_osi_data, align 1, !dbg !1218
  %conv = zext i8 %24 to i32, !dbg !1218
  %cmp = icmp sge i32 %conv, 1, !dbg !1220
  br i1 %cmp, label %if.then53, label %if.end54, !dbg !1221

if.then53:                                        ; preds = %if.then50
  store i8 1, ptr @acpi_gbl_truncate_io_addresses, align 1, !dbg !1222
  br label %if.end54, !dbg !1224

if.end54:                                         ; preds = %if.then53, %if.then50
  %evaluate_info55 = getelementptr inbounds %struct.acpi_device_walk_info, ptr %info, i32 0, i32 1, !dbg !1225
  %25 = load ptr, ptr %evaluate_info55, align 8, !dbg !1225
  call void @acpi_os_free(ptr noundef %25) #15, !dbg !1225
  %26 = load i32, ptr %status, align 4, !dbg !1226
  %tobool56 = icmp ne i32 %26, 0, !dbg !1226
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !1228

if.then57:                                        ; preds = %if.end54
  br label %error_exit, !dbg !1229

if.end58:                                         ; preds = %if.end54
  br label %if.end59, !dbg !1231

if.end59:                                         ; preds = %if.end58, %if.end47
  %27 = load i32, ptr %status, align 4, !dbg !1232
  store i32 %27, ptr %retval, align 4, !dbg !1232
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1232

error_exit:                                       ; preds = %if.then57, %if.then45, %if.then6, %if.then2
  call void @llvm.dbg.label(metadata !1106), !dbg !1233
  %28 = load i32, ptr %status, align 4, !dbg !1234
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 239, i32 noundef %28, ptr noundef @.str.3) #15, !dbg !1234
  %29 = load i32, ptr %status, align 4, !dbg !1235
  store i32 %29, ptr %retval, align 4, !dbg !1235
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1235

cleanup:                                          ; preds = %error_exit, %if.end59
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #14, !dbg !1236
  call void @llvm.lifetime.end.p0(i64 32, ptr %info) #14, !dbg !1236
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !1236
  %30 = load i32, ptr %retval, align 4, !dbg !1236
  ret i32 %30, !dbg !1236
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1237 dso_local i32 @acpi_ns_walk_namespace(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ns_find_ini_methods(ptr noundef %obj_handle, i32 noundef %nesting_level, ptr noundef %context, ptr noundef %return_value) #0 align 16 !dbg !1241 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca ptr, align 8
  %nesting_level.addr = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %return_value.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %node = alloca ptr, align 8
  %parent_node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_handle, ptr %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_handle.addr, metadata !1243, metadata !DIExpression()), !dbg !1250
  store i32 %nesting_level, ptr %nesting_level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nesting_level.addr, metadata !1244, metadata !DIExpression()), !dbg !1251
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1245, metadata !DIExpression()), !dbg !1252
  store ptr %return_value, ptr %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_value.addr, metadata !1246, metadata !DIExpression()), !dbg !1253
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #14, !dbg !1254
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1247, metadata !DIExpression()), !dbg !1255
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1256
  %1 = ptrtoint ptr %0 to i64, !dbg !1256
  %2 = inttoptr i64 %1 to ptr, !dbg !1256
  store ptr %2, ptr %info, align 8, !dbg !1255
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !1257
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1248, metadata !DIExpression()), !dbg !1258
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_node) #14, !dbg !1259
  call void @llvm.dbg.declare(metadata ptr %parent_node, metadata !1249, metadata !DIExpression()), !dbg !1260
  %3 = load ptr, ptr %obj_handle.addr, align 8, !dbg !1261
  %4 = ptrtoint ptr %3 to i64, !dbg !1261
  %5 = inttoptr i64 %4 to ptr, !dbg !1261
  store ptr %5, ptr %node, align 8, !dbg !1262
  %6 = load ptr, ptr %node, align 8, !dbg !1263
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %6, i32 0, i32 2, !dbg !1265
  %7 = load i8, ptr %type, align 1, !dbg !1265
  %conv = zext i8 %7 to i32, !dbg !1263
  %cmp = icmp eq i32 %conv, 6, !dbg !1266
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1267

lor.lhs.false:                                    ; preds = %entry
  %8 = load ptr, ptr %node, align 8, !dbg !1268
  %type2 = getelementptr inbounds %struct.acpi_namespace_node, ptr %8, i32 0, i32 2, !dbg !1269
  %9 = load i8, ptr %type2, align 1, !dbg !1269
  %conv3 = zext i8 %9 to i32, !dbg !1268
  %cmp4 = icmp eq i32 %conv3, 12, !dbg !1270
  br i1 %cmp4, label %if.then, label %lor.lhs.false6, !dbg !1271

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %10 = load ptr, ptr %node, align 8, !dbg !1272
  %type7 = getelementptr inbounds %struct.acpi_namespace_node, ptr %10, i32 0, i32 2, !dbg !1273
  %11 = load i8, ptr %type7, align 1, !dbg !1273
  %conv8 = zext i8 %11 to i32, !dbg !1272
  %cmp9 = icmp eq i32 %conv8, 13, !dbg !1274
  br i1 %cmp9, label %if.then, label %if.end, !dbg !1275

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false, %entry
  %12 = load ptr, ptr %info, align 8, !dbg !1276
  %device_count = getelementptr inbounds %struct.acpi_device_walk_info, ptr %12, i32 0, i32 2, !dbg !1278
  %13 = load i32, ptr %device_count, align 8, !dbg !1279
  %inc = add i32 %13, 1, !dbg !1279
  store i32 %inc, ptr %device_count, align 8, !dbg !1279
  store i32 0, ptr %retval, align 4, !dbg !1280
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1280

if.end:                                           ; preds = %lor.lhs.false6
  %14 = load ptr, ptr %node, align 8, !dbg !1281
  %name = getelementptr inbounds %struct.acpi_namespace_node, ptr %14, i32 0, i32 4, !dbg !1281
  %arraydecay = getelementptr inbounds [4 x i8], ptr %name, i64 0, i64 0, !dbg !1281
  %15 = ptrtoint ptr %arraydecay to i64, !dbg !1281
  %16 = inttoptr i64 %15 to ptr, !dbg !1281
  %17 = load i32, ptr %16, align 4, !dbg !1281
  %18 = load i32, ptr @.str.1, align 4, !dbg !1281
  %cmp11 = icmp eq i32 %17, %18, !dbg !1281
  br i1 %cmp11, label %if.end14, label %if.then13, !dbg !1283

if.then13:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1284

if.end14:                                         ; preds = %if.end
  %19 = load ptr, ptr %node, align 8, !dbg !1286
  %parent = getelementptr inbounds %struct.acpi_namespace_node, ptr %19, i32 0, i32 5, !dbg !1287
  %20 = load ptr, ptr %parent, align 8, !dbg !1287
  store ptr %20, ptr %parent_node, align 8, !dbg !1288
  %21 = load ptr, ptr %parent_node, align 8, !dbg !1289
  %type15 = getelementptr inbounds %struct.acpi_namespace_node, ptr %21, i32 0, i32 2, !dbg !1290
  %22 = load i8, ptr %type15, align 1, !dbg !1290
  %conv16 = zext i8 %22 to i32, !dbg !1289
  switch i32 %conv16, label %sw.default [
    i32 6, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
  ], !dbg !1291

sw.bb:                                            ; preds = %if.end14, %if.end14, %if.end14
  br label %while.cond, !dbg !1292

while.cond:                                       ; preds = %while.body, %sw.bb
  %23 = load ptr, ptr %parent_node, align 8, !dbg !1294
  %tobool = icmp ne ptr %23, null, !dbg !1292
  br i1 %tobool, label %while.body, label %while.end, !dbg !1292

while.body:                                       ; preds = %while.cond
  %24 = load ptr, ptr %parent_node, align 8, !dbg !1295
  %flags = getelementptr inbounds %struct.acpi_namespace_node, ptr %24, i32 0, i32 3, !dbg !1297
  %25 = load i16, ptr %flags, align 2, !dbg !1298
  %conv17 = zext i16 %25 to i32, !dbg !1298
  %or = or i32 %conv17, 16, !dbg !1298
  %conv18 = trunc i32 %or to i16, !dbg !1298
  store i16 %conv18, ptr %flags, align 2, !dbg !1298
  %26 = load ptr, ptr %parent_node, align 8, !dbg !1299
  %parent19 = getelementptr inbounds %struct.acpi_namespace_node, ptr %26, i32 0, i32 5, !dbg !1300
  %27 = load ptr, ptr %parent19, align 8, !dbg !1300
  store ptr %27, ptr %parent_node, align 8, !dbg !1301
  br label %while.cond, !dbg !1292, !llvm.loop !1302

while.end:                                        ; preds = %while.cond
  br label %sw.epilog, !dbg !1306

sw.default:                                       ; preds = %if.end14
  br label %sw.epilog, !dbg !1307

sw.epilog:                                        ; preds = %sw.default, %while.end
  store i32 0, ptr %retval, align 4, !dbg !1308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1308

cleanup:                                          ; preds = %sw.epilog, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_node) #14, !dbg !1309
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !1309
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #14, !dbg !1309
  %28 = load i32, ptr %retval, align 4, !dbg !1309
  ret i32 %28, !dbg !1309
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #5 align 16 !dbg !1310 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1315, metadata !DIExpression()), !dbg !1326
  %0 = load i64, ptr %size.addr, align 8, !dbg !1327
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #14, !dbg !1328
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1316, metadata !DIExpression()), !dbg !1328
  br label %do.body, !dbg !1328

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !1329
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1318, metadata !DIExpression()), !dbg !1329
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !1329
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1321, metadata !DIExpression()), !dbg !1329
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1329
  %conv = zext i1 %cmp to i32, !dbg !1329
  store i32 1, ptr %tmp, align 4, !dbg !1329
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !1330
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !1330
  %1 = load i32, ptr %tmp, align 4, !dbg !1329
  %call = call i64 @arch_local_save_flags() #15, !dbg !1330
  store i64 %call, ptr %_flags, align 8, !dbg !1330
  br label %do.cond, !dbg !1330

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1330

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #14, !dbg !1331
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1322, metadata !DIExpression()), !dbg !1331
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #14, !dbg !1331
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1325, metadata !DIExpression()), !dbg !1331
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1331
  %conv6 = zext i1 %cmp5 to i32, !dbg !1331
  store i32 1, ptr %tmp7, align 4, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #14, !dbg !1332
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #14, !dbg !1332
  %2 = load i32, ptr %tmp7, align 4, !dbg !1331
  %3 = load i64, ptr %_flags, align 8, !dbg !1332
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #15, !dbg !1332
  store i32 %call9, ptr %tmp8, align 4, !dbg !1332
  %4 = load i32, ptr %tmp8, align 4, !dbg !1332
  store i32 %4, ptr %tmp1, align 4, !dbg !1330
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #14, !dbg !1333
  %5 = load i32, ptr %tmp1, align 4, !dbg !1328
  %tobool = icmp ne i32 %5, 0, !dbg !1333
  %6 = zext i1 %tobool to i64, !dbg !1333
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1333
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #16, !dbg !1334
  ret ptr %call10, !dbg !1335
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1336 dso_local i32 @acpi_ns_evaluate(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1339 dso_local i32 @acpi_get_handle(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1343 dso_local i32 @acpi_ev_initialize_op_regions() #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ns_init_one_device(ptr noundef %obj_handle, i32 noundef %nesting_level, ptr noundef %context, ptr noundef %return_value) #0 align 16 !dbg !1345 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca ptr, align 8
  %nesting_level.addr = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %return_value.addr = alloca ptr, align 8
  %walk_info = alloca ptr, align 8
  %info = alloca ptr, align 8
  %flags = alloca i32, align 4
  %status = alloca i32, align 4
  %device_node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_handle, ptr %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_handle.addr, metadata !1347, metadata !DIExpression()), !dbg !1356
  store i32 %nesting_level, ptr %nesting_level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nesting_level.addr, metadata !1348, metadata !DIExpression()), !dbg !1357
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1349, metadata !DIExpression()), !dbg !1358
  store ptr %return_value, ptr %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_value.addr, metadata !1350, metadata !DIExpression()), !dbg !1359
  call void @llvm.lifetime.start.p0(i64 8, ptr %walk_info) #14, !dbg !1360
  call void @llvm.dbg.declare(metadata ptr %walk_info, metadata !1351, metadata !DIExpression()), !dbg !1361
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1362
  %1 = ptrtoint ptr %0 to i64, !dbg !1362
  %2 = inttoptr i64 %1 to ptr, !dbg !1362
  store ptr %2, ptr %walk_info, align 8, !dbg !1361
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #14, !dbg !1363
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1352, metadata !DIExpression()), !dbg !1364
  %3 = load ptr, ptr %walk_info, align 8, !dbg !1365
  %evaluate_info = getelementptr inbounds %struct.acpi_device_walk_info, ptr %3, i32 0, i32 1, !dbg !1366
  %4 = load ptr, ptr %evaluate_info, align 8, !dbg !1366
  store ptr %4, ptr %info, align 8, !dbg !1364
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #14, !dbg !1367
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1353, metadata !DIExpression()), !dbg !1368
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !1369
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1354, metadata !DIExpression()), !dbg !1370
  call void @llvm.lifetime.start.p0(i64 8, ptr %device_node) #14, !dbg !1371
  call void @llvm.dbg.declare(metadata ptr %device_node, metadata !1355, metadata !DIExpression()), !dbg !1372
  %5 = load ptr, ptr %obj_handle.addr, align 8, !dbg !1373
  %6 = ptrtoint ptr %5 to i64, !dbg !1373
  %7 = inttoptr i64 %6 to ptr, !dbg !1373
  store ptr %7, ptr %device_node, align 8, !dbg !1374
  %8 = load ptr, ptr %device_node, align 8, !dbg !1375
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %8, i32 0, i32 2, !dbg !1377
  %9 = load i8, ptr %type, align 1, !dbg !1377
  %conv = zext i8 %9 to i32, !dbg !1375
  %cmp = icmp ne i32 %conv, 6, !dbg !1378
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1379

land.lhs.true:                                    ; preds = %entry
  %10 = load ptr, ptr %device_node, align 8, !dbg !1380
  %type2 = getelementptr inbounds %struct.acpi_namespace_node, ptr %10, i32 0, i32 2, !dbg !1381
  %11 = load i8, ptr %type2, align 1, !dbg !1381
  %conv3 = zext i8 %11 to i32, !dbg !1380
  %cmp4 = icmp ne i32 %conv3, 12, !dbg !1382
  br i1 %cmp4, label %land.lhs.true6, label %if.end, !dbg !1383

land.lhs.true6:                                   ; preds = %land.lhs.true
  %12 = load ptr, ptr %device_node, align 8, !dbg !1384
  %type7 = getelementptr inbounds %struct.acpi_namespace_node, ptr %12, i32 0, i32 2, !dbg !1385
  %13 = load i8, ptr %type7, align 1, !dbg !1385
  %conv8 = zext i8 %13 to i32, !dbg !1384
  %cmp9 = icmp ne i32 %conv8, 13, !dbg !1386
  br i1 %cmp9, label %if.then, label %if.end, !dbg !1387

if.then:                                          ; preds = %land.lhs.true6
  store i32 0, ptr %retval, align 4, !dbg !1388
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1388

if.end:                                           ; preds = %land.lhs.true6, %land.lhs.true, %entry
  %14 = load ptr, ptr %device_node, align 8, !dbg !1390
  %flags11 = getelementptr inbounds %struct.acpi_namespace_node, ptr %14, i32 0, i32 3, !dbg !1392
  %15 = load i16, ptr %flags11, align 2, !dbg !1392
  %conv12 = zext i16 %15 to i32, !dbg !1390
  %and = and i32 %conv12, 16, !dbg !1393
  %tobool = icmp ne i32 %and, 0, !dbg !1393
  br i1 %tobool, label %if.end14, label %if.then13, !dbg !1394

if.then13:                                        ; preds = %if.end
  store i32 16390, ptr %retval, align 4, !dbg !1395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1395

if.end14:                                         ; preds = %if.end
  %16 = load ptr, ptr %device_node, align 8, !dbg !1397
  %call = call i32 @acpi_ut_execute_STA(ptr noundef %16, ptr noundef %flags) #15, !dbg !1398
  store i32 %call, ptr %status, align 4, !dbg !1399
  %17 = load i32, ptr %status, align 4, !dbg !1400
  %tobool15 = icmp ne i32 %17, 0, !dbg !1400
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !1402

if.then16:                                        ; preds = %if.end14
  store i32 0, ptr %retval, align 4, !dbg !1403
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1403

if.end17:                                         ; preds = %if.end14
  %18 = load i32, ptr %flags, align 4, !dbg !1405
  %cmp18 = icmp ne i32 %18, -1, !dbg !1407
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !1408

if.then20:                                        ; preds = %if.end17
  %19 = load ptr, ptr %walk_info, align 8, !dbg !1409
  %num_STA = getelementptr inbounds %struct.acpi_device_walk_info, ptr %19, i32 0, i32 3, !dbg !1411
  %20 = load i32, ptr %num_STA, align 4, !dbg !1412
  %inc = add i32 %20, 1, !dbg !1412
  store i32 %inc, ptr %num_STA, align 4, !dbg !1412
  br label %if.end21, !dbg !1413

if.end21:                                         ; preds = %if.then20, %if.end17
  %21 = load i32, ptr %flags, align 4, !dbg !1414
  %and22 = and i32 %21, 1, !dbg !1416
  %tobool23 = icmp ne i32 %and22, 0, !dbg !1416
  br i1 %tobool23, label %if.end28, label %if.then24, !dbg !1417

if.then24:                                        ; preds = %if.end21
  %22 = load i32, ptr %flags, align 4, !dbg !1418
  %and25 = and i32 %22, 8, !dbg !1421
  %tobool26 = icmp ne i32 %and25, 0, !dbg !1421
  br i1 %tobool26, label %if.then27, label %if.else, !dbg !1422

if.then27:                                        ; preds = %if.then24
  store i32 0, ptr %retval, align 4, !dbg !1423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1423

if.else:                                          ; preds = %if.then24
  store i32 16390, ptr %retval, align 4, !dbg !1425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1425

if.end28:                                         ; preds = %if.end21
  %23 = load ptr, ptr %device_node, align 8, !dbg !1427
  %name = getelementptr inbounds %struct.acpi_namespace_node, ptr %23, i32 0, i32 4, !dbg !1427
  %arraydecay = getelementptr inbounds [4 x i8], ptr %name, i64 0, i64 0, !dbg !1427
  %24 = ptrtoint ptr %arraydecay to i64, !dbg !1427
  %25 = inttoptr i64 %24 to ptr, !dbg !1427
  %26 = load i32, ptr %25, align 4, !dbg !1427
  %27 = load i32, ptr @.str.7, align 4, !dbg !1427
  %cmp29 = icmp eq i32 %26, %27, !dbg !1427
  br i1 %cmp29, label %lor.lhs.false, label %if.then33, !dbg !1429

lor.lhs.false:                                    ; preds = %if.end28
  %28 = load ptr, ptr %device_node, align 8, !dbg !1430
  %parent = getelementptr inbounds %struct.acpi_namespace_node, ptr %28, i32 0, i32 5, !dbg !1431
  %29 = load ptr, ptr %parent, align 8, !dbg !1431
  %30 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1432
  %cmp31 = icmp ne ptr %29, %30, !dbg !1433
  br i1 %cmp31, label %if.then33, label %if.end40, !dbg !1434

if.then33:                                        ; preds = %lor.lhs.false, %if.end28
  %31 = load ptr, ptr %info, align 8, !dbg !1435
  call void @llvm.memset.p0.i64(ptr align 8 %31, i8 0, i64 88, i1 false), !dbg !1437
  %32 = load ptr, ptr %device_node, align 8, !dbg !1438
  %33 = load ptr, ptr %info, align 8, !dbg !1439
  %prefix_node = getelementptr inbounds %struct.acpi_evaluate_info, ptr %33, i32 0, i32 0, !dbg !1440
  store ptr %32, ptr %prefix_node, align 8, !dbg !1441
  %34 = load ptr, ptr %info, align 8, !dbg !1442
  %relative_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %34, i32 0, i32 1, !dbg !1443
  store ptr @.str.1, ptr %relative_pathname, align 8, !dbg !1444
  %35 = load ptr, ptr %info, align 8, !dbg !1445
  %parameters = getelementptr inbounds %struct.acpi_evaluate_info, ptr %35, i32 0, i32 2, !dbg !1446
  store ptr null, ptr %parameters, align 8, !dbg !1447
  %36 = load ptr, ptr %info, align 8, !dbg !1448
  %flags34 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %36, i32 0, i32 15, !dbg !1449
  store i8 1, ptr %flags34, align 2, !dbg !1450
  %37 = load ptr, ptr %info, align 8, !dbg !1451
  %call35 = call i32 @acpi_ns_evaluate(ptr noundef %37) #15, !dbg !1452
  store i32 %call35, ptr %status, align 4, !dbg !1453
  %38 = load i32, ptr %status, align 4, !dbg !1454
  %tobool36 = icmp ne i32 %38, 0, !dbg !1454
  br i1 %tobool36, label %if.end39, label %if.then37, !dbg !1456

if.then37:                                        ; preds = %if.then33
  %39 = load ptr, ptr %walk_info, align 8, !dbg !1457
  %num_INI = getelementptr inbounds %struct.acpi_device_walk_info, ptr %39, i32 0, i32 4, !dbg !1459
  %40 = load i32, ptr %num_INI, align 8, !dbg !1460
  %inc38 = add i32 %40, 1, !dbg !1460
  store i32 %inc38, ptr %num_INI, align 8, !dbg !1460
  br label %if.end39, !dbg !1461

if.end39:                                         ; preds = %if.then37, %if.then33
  br label %if.end40, !dbg !1462

if.end40:                                         ; preds = %if.end39, %lor.lhs.false
  store i32 0, ptr %status, align 4, !dbg !1463
  %41 = load ptr, ptr @acpi_gbl_init_handler, align 8, !dbg !1464
  %tobool41 = icmp ne ptr %41, null, !dbg !1464
  br i1 %tobool41, label %if.then42, label %if.end44, !dbg !1466

if.then42:                                        ; preds = %if.end40
  %42 = load ptr, ptr @acpi_gbl_init_handler, align 8, !dbg !1467
  %43 = load ptr, ptr %device_node, align 8, !dbg !1469
  %call43 = call i32 %42(ptr noundef %43, i32 noundef 1) #15, !dbg !1467
  store i32 %call43, ptr %status, align 4, !dbg !1470
  br label %if.end44, !dbg !1471

if.end44:                                         ; preds = %if.then42, %if.end40
  %44 = load i32, ptr %status, align 4, !dbg !1472
  store i32 %44, ptr %retval, align 4, !dbg !1472
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1472

cleanup:                                          ; preds = %if.end44, %if.else, %if.then27, %if.then16, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %device_node) #14, !dbg !1473
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !1473
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #14, !dbg !1473
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #14, !dbg !1473
  call void @llvm.lifetime.end.p0(i64 8, ptr %walk_info) #14, !dbg !1473
  %45 = load i32, ptr %retval, align 4, !dbg !1473
  ret i32 %45, !dbg !1473
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #5 align 16 !dbg !1474 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1478, metadata !DIExpression()), !dbg !1479
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1480
  call void @kfree(ptr noundef %0) #15, !dbg !1481
  ret void, !dbg !1482
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_init_one_package(ptr noundef %obj_handle, i32 noundef %level, ptr noundef %context, ptr noundef %return_value) #0 align 16 !dbg !1483 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %return_value.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca ptr, align 8
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_handle, ptr %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_handle.addr, metadata !1485, metadata !DIExpression()), !dbg !1492
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !1486, metadata !DIExpression()), !dbg !1493
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1487, metadata !DIExpression()), !dbg !1494
  store ptr %return_value, ptr %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_value.addr, metadata !1488, metadata !DIExpression()), !dbg !1495
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !1496
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1489, metadata !DIExpression()), !dbg !1497
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #14, !dbg !1498
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1490, metadata !DIExpression()), !dbg !1499
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !1500
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1491, metadata !DIExpression()), !dbg !1501
  %0 = load ptr, ptr %obj_handle.addr, align 8, !dbg !1502
  store ptr %0, ptr %node, align 8, !dbg !1501
  %1 = load ptr, ptr %node, align 8, !dbg !1503
  %call = call ptr @acpi_ns_get_attached_object(ptr noundef %1) #15, !dbg !1504
  store ptr %call, ptr %obj_desc, align 8, !dbg !1505
  %2 = load ptr, ptr %obj_desc, align 8, !dbg !1506
  %tobool = icmp ne ptr %2, null, !dbg !1506
  br i1 %tobool, label %if.end, label %if.then, !dbg !1508

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1509
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1509

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %obj_desc, align 8, !dbg !1511
  %flags = getelementptr inbounds %struct.acpi_object_package, ptr %3, i32 0, i32 4, !dbg !1513
  %4 = load i8, ptr %flags, align 4, !dbg !1513
  %conv = zext i8 %4 to i32, !dbg !1511
  %and = and i32 %conv, 4, !dbg !1514
  %tobool1 = icmp ne i32 %and, 0, !dbg !1514
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1515

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1516
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1516

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %obj_desc, align 8, !dbg !1518
  %call4 = call i32 @acpi_ds_get_package_arguments(ptr noundef %5) #15, !dbg !1519
  store i32 %call4, ptr %status, align 4, !dbg !1520
  %6 = load i32, ptr %status, align 4, !dbg !1521
  %tobool5 = icmp ne i32 %6, 0, !dbg !1521
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !1523

if.then6:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !1524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1524

if.end7:                                          ; preds = %if.end3
  %7 = load ptr, ptr %obj_desc, align 8, !dbg !1526
  %call8 = call i32 @acpi_ut_walk_package_tree(ptr noundef %7, ptr noundef null, ptr noundef @acpi_ds_init_package_element, ptr noundef null) #15, !dbg !1527
  store i32 %call8, ptr %status, align 4, !dbg !1528
  %8 = load i32, ptr %status, align 4, !dbg !1529
  %tobool9 = icmp ne i32 %8, 0, !dbg !1529
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !1531

if.then10:                                        ; preds = %if.end7
  store i32 0, ptr %retval, align 4, !dbg !1532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1532

if.end11:                                         ; preds = %if.end7
  %9 = load ptr, ptr %obj_desc, align 8, !dbg !1534
  %flags12 = getelementptr inbounds %struct.acpi_object_package, ptr %9, i32 0, i32 4, !dbg !1535
  %10 = load i8, ptr %flags12, align 4, !dbg !1536
  %conv13 = zext i8 %10 to i32, !dbg !1536
  %or = or i32 %conv13, 4, !dbg !1536
  %conv14 = trunc i32 %or to i8, !dbg !1536
  store i8 %conv14, ptr %flags12, align 4, !dbg !1536
  store i32 0, ptr %retval, align 4, !dbg !1537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1537

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !1538
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #14, !dbg !1538
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !1538
  %11 = load i32, ptr %retval, align 4, !dbg !1538
  ret i32 %11, !dbg !1538
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1539 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1542 dso_local i32 @acpi_ds_get_package_arguments(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1546 dso_local i32 @acpi_ut_walk_package_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ds_init_package_element(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !1554 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1562, metadata !DIExpression()), !dbg !1564
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1563, metadata !DIExpression()), !dbg !1565
  %0 = load i64, ptr %size.addr, align 8, !dbg !1566
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1567
  %or = or i32 %1, 256, !dbg !1568
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !1569
  ret ptr %call, !dbg !1570
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #7 align 16 !dbg !1571 {
entry:
  %call = call i64 @native_save_fl() #15, !dbg !1575
  ret i64 %call, !dbg !1576
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #7 align 16 !dbg !1577 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1582, metadata !DIExpression()), !dbg !1583
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1584
  %and = and i64 %0, 512, !dbg !1585
  %tobool = icmp ne i64 %and, 0, !dbg !1586
  %lnot = xor i1 %tobool, true, !dbg !1586
  %lnot.ext = zext i1 %lnot to i32, !dbg !1586
  ret i32 %lnot.ext, !dbg !1587
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !1588 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1590, metadata !DIExpression()), !dbg !1595
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1591, metadata !DIExpression()), !dbg !1596
  %0 = load i64, ptr %size.addr, align 8, !dbg !1597
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1598
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1599

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1600
  %tobool = icmp ne i64 %2, 0, !dbg !1600
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1601

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !1602
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1592, metadata !DIExpression()), !dbg !1603
  %3 = load i64, ptr %size.addr, align 8, !dbg !1604
  %cmp = icmp ugt i64 %3, 8192, !dbg !1606
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1607

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1608
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1609
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !1610
  store ptr %call, ptr %retval, align 8, !dbg !1611
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1611

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1612
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !1612
  store i32 %call2, ptr %index, align 4, !dbg !1613
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1614
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1615
  %9 = ptrtoint ptr %8 to i64, !dbg !1615
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !1616
  %idxprom = zext i32 %call3 to i64, !dbg !1617
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1617
  %10 = load i32, ptr %index, align 4, !dbg !1618
  %idxprom4 = zext i32 %10 to i64, !dbg !1617
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1617
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1617
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1619
  %13 = load i64, ptr %size.addr, align 8, !dbg !1620
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !1621
  store ptr %call6, ptr %retval, align 8, !dbg !1622
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1622

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !1623
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1624
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1625
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !1626
  store ptr %call8, ptr %retval, align 8, !dbg !1627
  br label %return, !dbg !1627

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1628
  ret ptr %16, !dbg !1628
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1629 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !1630 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1636, metadata !DIExpression()), !dbg !1638
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1637, metadata !DIExpression()), !dbg !1639
  %0 = load i64, ptr %size.addr, align 8, !dbg !1640
  %tobool = icmp ne i64 %0, 0, !dbg !1640
  br i1 %tobool, label %if.end, label %if.then, !dbg !1642

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1643
  br label %return, !dbg !1643

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1644
  %cmp = icmp ule i64 %1, 8, !dbg !1646
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1647

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1648
  br label %return, !dbg !1648

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1649
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1651
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1652

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1653
  %cmp4 = icmp ule i64 %3, 96, !dbg !1654
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1655

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1656
  br label %return, !dbg !1656

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1657
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1659
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1660

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1661
  %cmp9 = icmp ule i64 %5, 192, !dbg !1662
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1663

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1664
  br label %return, !dbg !1664

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1665
  %cmp12 = icmp ule i64 %6, 8, !dbg !1667
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1668

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1669
  br label %return, !dbg !1669

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1670
  %cmp15 = icmp ule i64 %7, 16, !dbg !1672
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1673

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1674
  br label %return, !dbg !1674

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1675
  %cmp18 = icmp ule i64 %8, 32, !dbg !1677
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1678

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1679
  br label %return, !dbg !1679

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1680
  %cmp21 = icmp ule i64 %9, 64, !dbg !1682
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1683

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1684
  br label %return, !dbg !1684

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1685
  %cmp24 = icmp ule i64 %10, 128, !dbg !1687
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1688

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1689
  br label %return, !dbg !1689

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1690
  %cmp27 = icmp ule i64 %11, 256, !dbg !1692
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1693

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1694
  br label %return, !dbg !1694

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1695
  %cmp30 = icmp ule i64 %12, 512, !dbg !1697
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1698

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1699
  br label %return, !dbg !1699

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1700
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1702
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1703

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1704
  br label %return, !dbg !1704

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1705
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1707
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1708

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1709
  br label %return, !dbg !1709

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1710
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1712
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1713

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1714
  br label %return, !dbg !1714

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1715
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1717
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1718

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1719
  br label %return, !dbg !1719

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1720
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1722
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1723

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1724
  br label %return, !dbg !1724

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1725
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1727
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1728

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1729
  br label %return, !dbg !1729

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1730
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1732
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1733

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1734
  br label %return, !dbg !1734

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1735
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1737
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1738

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1739
  br label %return, !dbg !1739

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1740
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1742
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1743

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1744
  br label %return, !dbg !1744

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1745
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1747
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1748

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1749
  br label %return, !dbg !1749

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1750
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1752
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1753

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1754
  br label %return, !dbg !1754

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1755
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1757
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1758

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1759
  br label %return, !dbg !1759

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1760, !range !1762, !noundef !1763
  %tobool69 = trunc i8 %25 to i1, !dbg !1760
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1764

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1765

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #18, !dbg !1766, !srcloc !1769
  unreachable, !dbg !1766

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1770

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1771

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1772

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1774

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1772

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #14, !dbg !1776, !srcloc !1778
  br label %do.end75, !dbg !1776

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1772

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1779
  br label %return, !dbg !1779

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1780
  ret i32 %26, !dbg !1780
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1781 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !1787 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1791, metadata !DIExpression()), !dbg !1793
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1792, metadata !DIExpression()), !dbg !1794
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1795
  %and = and i32 %0, 17, !dbg !1795
  %cmp = icmp eq i32 %and, 0, !dbg !1795
  %lnot = xor i1 %cmp, true, !dbg !1795
  %lnot1 = xor i1 %lnot, true, !dbg !1795
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1795
  %conv = sext i32 %lnot.ext to i64, !dbg !1795
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1795
  %tobool = icmp ne i64 %expval, 0, !dbg !1795
  br i1 %tobool, label %if.then, label %if.end, !dbg !1797

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1798
  br label %return, !dbg !1798

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1799
  %and2 = and i32 %1, 1, !dbg !1801
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1801
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1802

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1803
  br label %return, !dbg !1803

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1804
  br label %return, !dbg !1804

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1806
  ret i32 %2, !dbg !1806
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1807 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1808 dso_local void @__compiletime_assert_173() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #7 align 16 !dbg !1811 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !1814
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1813, metadata !DIExpression()), !dbg !1815
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #14, !dbg !1816, !srcloc !1817
  %0 = load i64, ptr %flags, align 8, !dbg !1818
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !1819
  ret i64 %0, !dbg !1820
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1821 dso_local void @kfree(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1826 dso_local i32 @acpi_ns_get_type(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1829 dso_local void @acpi_ex_enter_interpreter() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1831 dso_local i32 @acpi_ds_get_bank_field_arguments(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1832 dso_local ptr @acpi_ut_get_node_name(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1835 dso_local ptr @acpi_ut_get_type_name(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1838 dso_local void @acpi_ex_exit_interpreter() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1839 dso_local i32 @acpi_ut_execute_STA(ptr noundef, ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!956, !957, !958, !959, !960, !961, !962, !963}
!llvm.ident = !{!964}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !955, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.nsinit.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22nsinit\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/nsinit.ll drivers/acpi/acpica/nsinit.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !923, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsinit.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2cf071e85779fcb2954ca1c472cea74c")
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
!21 = !{!22, !24, !25, !28, !29, !34, !36, !37, !802, !27, !803, !822, !922}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !23, line: 424, baseType: !24)
!23 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !26, line: 42, baseType: !27)
!26 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !23, line: 127, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !30, line: 23, baseType: !31)
!30 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !32, line: 31, baseType: !33)
!32 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!33 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !30, line: 21, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !32, line: 27, baseType: !7)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !23, line: 421, baseType: !34)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !39, line: 133, size: 384, elements: !40)
!39 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!40 = !{!41, !789, !790, !791, !792, !798, !799, !800, !801}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !38, file: !39, line: 134, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !44, line: 369, size: 576, elements: !45)
!44 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!45 = !{!46, !60, !73, !85, !99, !113, !122, !438, !455, !471, !484, !562, !574, !588, !598, !616, !638, !657, !676, !695, !708, !735, !752, !765, !779, !788}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !43, file: !44, line: 370, baseType: !47, size: 128)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !44, line: 73, size: 128, elements: !48)
!48 = !{!49, !50, !54, !55, !59}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !47, file: !44, line: 74, baseType: !42, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !47, file: !44, line: 74, baseType: !51, size: 8, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !30, line: 17, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !32, line: 21, baseType: !53)
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !47, file: !44, line: 74, baseType: !51, size: 8, offset: 72)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !47, file: !44, line: 74, baseType: !56, size: 16, offset: 80)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !30, line: 19, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !32, line: 24, baseType: !58)
!58 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !47, file: !44, line: 74, baseType: !51, size: 8, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !43, file: !44, line: 371, baseType: !61, size: 192)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !44, line: 76, size: 192, elements: !62)
!62 = !{!63, !64, !65, !66, !67, !68, !72}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !61, file: !44, line: 77, baseType: !42, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !61, file: !44, line: 77, baseType: !51, size: 8, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !61, file: !44, line: 77, baseType: !51, size: 8, offset: 72)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !61, file: !44, line: 77, baseType: !56, size: 16, offset: 80)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !61, file: !44, line: 77, baseType: !51, size: 8, offset: 96)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !61, file: !44, line: 77, baseType: !69, size: 24, offset: 104)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 24, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 3)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !61, file: !44, line: 78, baseType: !29, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !43, file: !44, line: 372, baseType: !74, size: 256)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !44, line: 93, size: 256, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !84}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !74, file: !44, line: 94, baseType: !42, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !74, file: !44, line: 94, baseType: !51, size: 8, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !74, file: !44, line: 94, baseType: !51, size: 8, offset: 72)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !74, file: !44, line: 94, baseType: !56, size: 16, offset: 80)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !74, file: !44, line: 94, baseType: !51, size: 8, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !74, file: !44, line: 94, baseType: !82, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !74, file: !44, line: 94, baseType: !34, size: 32, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !43, file: !44, line: 373, baseType: !86, size: 384)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !44, line: 97, size: 384, elements: !87)
!87 = !{!88, !89, !90, !91, !92, !93, !95, !96, !97, !98}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !86, file: !44, line: 98, baseType: !42, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !86, file: !44, line: 98, baseType: !51, size: 8, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !86, file: !44, line: 98, baseType: !51, size: 8, offset: 72)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !86, file: !44, line: 98, baseType: !56, size: 16, offset: 80)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !86, file: !44, line: 98, baseType: !51, size: 8, offset: 96)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !86, file: !44, line: 98, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !86, file: !44, line: 98, baseType: !34, size: 32, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !86, file: !44, line: 99, baseType: !34, size: 32, offset: 224)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !86, file: !44, line: 100, baseType: !94, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !86, file: !44, line: 101, baseType: !37, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !43, file: !44, line: 374, baseType: !100, size: 384)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !44, line: 104, size: 384, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107, !108, !110, !111, !112}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !100, file: !44, line: 105, baseType: !42, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !100, file: !44, line: 105, baseType: !51, size: 8, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !44, line: 105, baseType: !51, size: 8, offset: 72)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !100, file: !44, line: 105, baseType: !56, size: 16, offset: 80)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !44, line: 105, baseType: !51, size: 8, offset: 96)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !100, file: !44, line: 105, baseType: !37, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !100, file: !44, line: 106, baseType: !109, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !100, file: !44, line: 107, baseType: !94, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !100, file: !44, line: 108, baseType: !34, size: 32, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !100, file: !44, line: 109, baseType: !34, size: 32, offset: 352)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !43, file: !44, line: 375, baseType: !114, size: 192)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !44, line: 118, size: 192, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !121}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !114, file: !44, line: 119, baseType: !42, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !114, file: !44, line: 119, baseType: !51, size: 8, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !44, line: 119, baseType: !51, size: 8, offset: 72)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !114, file: !44, line: 119, baseType: !56, size: 16, offset: 80)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !114, file: !44, line: 119, baseType: !51, size: 8, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !114, file: !44, line: 119, baseType: !24, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !43, file: !44, line: 376, baseType: !123, size: 448)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !44, line: 144, size: 448, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !435, !436, !437}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !123, file: !44, line: 145, baseType: !42, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !123, file: !44, line: 145, baseType: !51, size: 8, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !44, line: 145, baseType: !51, size: 8, offset: 72)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !123, file: !44, line: 145, baseType: !56, size: 16, offset: 80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !44, line: 145, baseType: !51, size: 8, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !123, file: !44, line: 145, baseType: !51, size: 8, offset: 104)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !123, file: !44, line: 146, baseType: !51, size: 8, offset: 112)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !123, file: !44, line: 147, baseType: !51, size: 8, offset: 120)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !123, file: !44, line: 148, baseType: !42, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !123, file: !44, line: 149, baseType: !42, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !123, file: !44, line: 150, baseType: !94, size: 64, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !123, file: !44, line: 154, baseType: !137, size: 64, offset: 320)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !123, file: !44, line: 151, size: 64, elements: !138)
!138 = !{!139, !434}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !137, file: !44, line: 152, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !39, line: 248, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!36, !144}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !146, line: 37, size: 9024, elements: !147)
!146 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !380, !381, !382, !383, !384, !388, !390, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !417, !418, !419, !420, !421, !422, !423, !424, !426, !432}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !146, line: 38, baseType: !144, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !145, file: !146, line: 39, baseType: !51, size: 8, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !145, file: !146, line: 40, baseType: !51, size: 8, offset: 72)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !145, file: !146, line: 41, baseType: !56, size: 16, offset: 80)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !145, file: !146, line: 42, baseType: !51, size: 8, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !145, file: !146, line: 43, baseType: !51, size: 8, offset: 104)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !145, file: !146, line: 44, baseType: !51, size: 8, offset: 112)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !145, file: !146, line: 45, baseType: !156, size: 16, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !23, line: 445, baseType: !56)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !145, file: !146, line: 46, baseType: !51, size: 8, offset: 144)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !145, file: !146, line: 47, baseType: !51, size: 8, offset: 152)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !145, file: !146, line: 48, baseType: !51, size: 8, offset: 160)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !145, file: !146, line: 49, baseType: !51, size: 8, offset: 168)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !145, file: !146, line: 50, baseType: !51, size: 8, offset: 176)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !145, file: !146, line: 51, baseType: !51, size: 8, offset: 184)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !145, file: !146, line: 52, baseType: !51, size: 8, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !145, file: !146, line: 53, baseType: !51, size: 8, offset: 200)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !145, file: !146, line: 54, baseType: !94, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !145, file: !146, line: 55, baseType: !34, size: 32, offset: 320)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !145, file: !146, line: 56, baseType: !34, size: 32, offset: 352)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !145, file: !146, line: 57, baseType: !34, size: 32, offset: 384)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !145, file: !146, line: 58, baseType: !34, size: 32, offset: 416)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !145, file: !146, line: 60, baseType: !171, size: 640, offset: 448)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !39, line: 909, size: 640, elements: !172)
!172 = !{!173, !174, !175, !176, !177, !178, !262, !263, !378, !379}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !171, file: !39, line: 910, baseType: !94, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !171, file: !39, line: 911, baseType: !94, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !171, file: !39, line: 912, baseType: !94, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !171, file: !39, line: 913, baseType: !94, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !171, file: !39, line: 914, baseType: !94, size: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !171, file: !39, line: 915, baseType: !179, size: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !39, line: 891, size: 1600, elements: !181)
!181 = !{!182, !202, !218}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !180, file: !39, line: 892, baseType: !183, size: 448)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !39, line: 844, size: 448, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192, !201}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !183, file: !39, line: 845, baseType: !179, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !183, file: !39, line: 845, baseType: !51, size: 8, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !39, line: 845, baseType: !51, size: 8, offset: 72)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !183, file: !39, line: 845, baseType: !56, size: 16, offset: 80)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !183, file: !39, line: 845, baseType: !94, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !39, line: 845, baseType: !179, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !183, file: !39, line: 845, baseType: !37, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !183, file: !39, line: 845, baseType: !193, size: 64, offset: 320)
!193 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !39, line: 732, size: 64, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !193, file: !39, line: 733, baseType: !29, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !193, file: !39, line: 734, baseType: !34, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !193, file: !39, line: 735, baseType: !82, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !193, file: !39, line: 736, baseType: !94, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !39, line: 737, baseType: !82, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !193, file: !39, line: 738, baseType: !179, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !183, file: !39, line: 845, baseType: !51, size: 8, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !180, file: !39, line: 893, baseType: !203, size: 640)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !39, line: 851, size: 640, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !203, file: !39, line: 852, baseType: !179, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !203, file: !39, line: 852, baseType: !51, size: 8, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !203, file: !39, line: 852, baseType: !51, size: 8, offset: 72)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !203, file: !39, line: 852, baseType: !56, size: 16, offset: 80)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !203, file: !39, line: 852, baseType: !94, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !203, file: !39, line: 852, baseType: !179, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !203, file: !39, line: 852, baseType: !37, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !203, file: !39, line: 852, baseType: !193, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !203, file: !39, line: 852, baseType: !51, size: 8, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !203, file: !39, line: 852, baseType: !82, size: 64, offset: 448)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !203, file: !39, line: 853, baseType: !94, size: 64, offset: 512)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !203, file: !39, line: 854, baseType: !34, size: 32, offset: 576)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !39, line: 855, baseType: !34, size: 32, offset: 608)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !180, file: !39, line: 894, baseType: !219, size: 1600)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !39, line: 862, size: 1600, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !219, file: !39, line: 863, baseType: !179, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !219, file: !39, line: 863, baseType: !51, size: 8, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !219, file: !39, line: 863, baseType: !51, size: 8, offset: 72)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !219, file: !39, line: 863, baseType: !56, size: 16, offset: 80)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !219, file: !39, line: 863, baseType: !94, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !219, file: !39, line: 863, baseType: !179, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !219, file: !39, line: 863, baseType: !37, size: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !219, file: !39, line: 863, baseType: !193, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !219, file: !39, line: 863, baseType: !51, size: 8, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !219, file: !39, line: 863, baseType: !179, size: 64, offset: 448)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !219, file: !39, line: 864, baseType: !179, size: 64, offset: 512)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !219, file: !39, line: 865, baseType: !82, size: 64, offset: 576)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !219, file: !39, line: 866, baseType: !51, size: 8, offset: 640)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !219, file: !39, line: 867, baseType: !82, size: 64, offset: 704)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !219, file: !39, line: 868, baseType: !82, size: 64, offset: 768)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !219, file: !39, line: 869, baseType: !82, size: 64, offset: 832)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !219, file: !39, line: 870, baseType: !238, size: 32, offset: 896)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 32, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 4)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !219, file: !39, line: 871, baseType: !34, size: 32, offset: 928)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !219, file: !39, line: 872, baseType: !34, size: 32, offset: 960)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !219, file: !39, line: 873, baseType: !34, size: 32, offset: 992)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !219, file: !39, line: 874, baseType: !34, size: 32, offset: 1024)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !219, file: !39, line: 875, baseType: !34, size: 32, offset: 1056)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !219, file: !39, line: 876, baseType: !34, size: 32, offset: 1088)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !219, file: !39, line: 877, baseType: !34, size: 32, offset: 1120)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !219, file: !39, line: 878, baseType: !34, size: 32, offset: 1152)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !219, file: !39, line: 879, baseType: !34, size: 32, offset: 1184)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !219, file: !39, line: 880, baseType: !34, size: 32, offset: 1216)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !219, file: !39, line: 881, baseType: !34, size: 32, offset: 1248)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !219, file: !39, line: 882, baseType: !34, size: 32, offset: 1280)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !219, file: !39, line: 883, baseType: !34, size: 32, offset: 1312)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !219, file: !39, line: 884, baseType: !56, size: 16, offset: 1344)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !219, file: !39, line: 885, baseType: !51, size: 8, offset: 1360)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !219, file: !39, line: 886, baseType: !51, size: 8, offset: 1368)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !219, file: !39, line: 887, baseType: !51, size: 8, offset: 1376)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !219, file: !39, line: 888, baseType: !259, size: 160, offset: 1384)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 160, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 20)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !171, file: !39, line: 916, baseType: !37, size: 64, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !171, file: !39, line: 917, baseType: !264, size: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !39, line: 679, size: 640, elements: !266)
!266 = !{!267, !275, !288, !297, !306, !319, !333, !345, !357}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !265, file: !39, line: 680, baseType: !268, size: 128)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !39, line: 575, size: 128, elements: !269)
!269 = !{!270, !271, !272, !273, !274}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !39, line: 576, baseType: !24, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !268, file: !39, line: 576, baseType: !51, size: 8, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !268, file: !39, line: 576, baseType: !51, size: 8, offset: 72)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !268, file: !39, line: 576, baseType: !56, size: 16, offset: 80)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !268, file: !39, line: 576, baseType: !56, size: 16, offset: 96)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !265, file: !39, line: 681, baseType: !276, size: 384)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !39, line: 604, size: 384, elements: !277)
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286, !287}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !276, file: !39, line: 605, baseType: !24, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !276, file: !39, line: 605, baseType: !51, size: 8, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !276, file: !39, line: 605, baseType: !51, size: 8, offset: 72)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !276, file: !39, line: 605, baseType: !56, size: 16, offset: 80)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !276, file: !39, line: 605, baseType: !56, size: 16, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !276, file: !39, line: 606, baseType: !56, size: 16, offset: 112)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !276, file: !39, line: 607, baseType: !179, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !276, file: !39, line: 608, baseType: !94, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !276, file: !39, line: 609, baseType: !94, size: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !276, file: !39, line: 610, baseType: !29, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !265, file: !39, line: 682, baseType: !289, size: 192)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !39, line: 582, size: 192, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !39, line: 583, baseType: !24, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !289, file: !39, line: 583, baseType: !51, size: 8, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !289, file: !39, line: 583, baseType: !51, size: 8, offset: 72)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !289, file: !39, line: 583, baseType: !56, size: 16, offset: 80)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !289, file: !39, line: 583, baseType: !56, size: 16, offset: 96)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !289, file: !39, line: 584, baseType: !42, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !265, file: !39, line: 683, baseType: !298, size: 192)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !39, line: 616, size: 192, elements: !299)
!299 = !{!300, !301, !302, !303, !304, !305}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !39, line: 617, baseType: !24, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !298, file: !39, line: 617, baseType: !51, size: 8, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !298, file: !39, line: 617, baseType: !51, size: 8, offset: 72)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !298, file: !39, line: 617, baseType: !56, size: 16, offset: 80)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !298, file: !39, line: 617, baseType: !56, size: 16, offset: 96)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !298, file: !39, line: 618, baseType: !37, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !265, file: !39, line: 684, baseType: !307, size: 448)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !39, line: 621, size: 448, elements: !308)
!308 = !{!309, !310, !311, !312, !313, !314, !315, !316, !317, !318}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !307, file: !39, line: 622, baseType: !24, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !307, file: !39, line: 622, baseType: !51, size: 8, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !307, file: !39, line: 622, baseType: !51, size: 8, offset: 72)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !307, file: !39, line: 622, baseType: !56, size: 16, offset: 80)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !307, file: !39, line: 622, baseType: !56, size: 16, offset: 96)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !307, file: !39, line: 623, baseType: !34, size: 32, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !307, file: !39, line: 624, baseType: !179, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !307, file: !39, line: 625, baseType: !94, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !307, file: !39, line: 626, baseType: !94, size: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !307, file: !39, line: 627, baseType: !34, size: 32, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !265, file: !39, line: 685, baseType: !320, size: 512)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !39, line: 590, size: 512, elements: !321)
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !39, line: 591, baseType: !24, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !320, file: !39, line: 591, baseType: !51, size: 8, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !39, line: 591, baseType: !51, size: 8, offset: 72)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !320, file: !39, line: 591, baseType: !56, size: 16, offset: 80)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !320, file: !39, line: 591, baseType: !56, size: 16, offset: 96)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !320, file: !39, line: 592, baseType: !34, size: 32, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !320, file: !39, line: 593, baseType: !42, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !320, file: !39, line: 594, baseType: !42, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !320, file: !39, line: 595, baseType: !144, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !320, file: !39, line: 596, baseType: !24, size: 64, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !320, file: !39, line: 597, baseType: !34, size: 32, offset: 448)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !265, file: !39, line: 686, baseType: !334, size: 320)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !39, line: 634, size: 320, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !39, line: 635, baseType: !24, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !334, file: !39, line: 635, baseType: !51, size: 8, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !39, line: 635, baseType: !51, size: 8, offset: 72)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !334, file: !39, line: 635, baseType: !56, size: 16, offset: 80)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !334, file: !39, line: 635, baseType: !56, size: 16, offset: 96)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !334, file: !39, line: 636, baseType: !51, size: 8, offset: 112)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !334, file: !39, line: 637, baseType: !144, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !334, file: !39, line: 638, baseType: !42, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !334, file: !39, line: 639, baseType: !29, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !265, file: !39, line: 687, baseType: !346, size: 640)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !39, line: 646, size: 640, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !39, line: 647, baseType: !24, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !346, file: !39, line: 647, baseType: !51, size: 8, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !39, line: 647, baseType: !51, size: 8, offset: 72)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !346, file: !39, line: 647, baseType: !56, size: 16, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !39, line: 647, baseType: !56, size: 16, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !346, file: !39, line: 648, baseType: !354, size: 512, offset: 128)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 512, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 8)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !265, file: !39, line: 688, baseType: !358, size: 320)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !39, line: 669, size: 320, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367, !368}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !39, line: 670, baseType: !24, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !358, file: !39, line: 670, baseType: !51, size: 8, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !358, file: !39, line: 670, baseType: !51, size: 8, offset: 72)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !358, file: !39, line: 670, baseType: !56, size: 16, offset: 80)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !358, file: !39, line: 670, baseType: !56, size: 16, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !358, file: !39, line: 671, baseType: !51, size: 8, offset: 112)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !358, file: !39, line: 672, baseType: !37, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !358, file: !39, line: 673, baseType: !42, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !358, file: !39, line: 674, baseType: !369, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !39, line: 660, size: 128, elements: !371)
!371 = !{!372, !377}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !370, file: !39, line: 661, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !23, line: 1061, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !22, !34, !24}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !370, file: !39, line: 662, baseType: !24, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !171, file: !39, line: 918, baseType: !179, size: 64, offset: 512)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !171, file: !39, line: 919, baseType: !34, size: 32, offset: 576)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !145, file: !146, line: 61, baseType: !34, size: 32, offset: 1088)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !145, file: !146, line: 62, baseType: !34, size: 32, offset: 1120)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !145, file: !146, line: 63, baseType: !56, size: 16, offset: 1152)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !145, file: !146, line: 64, baseType: !51, size: 8, offset: 1168)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !145, file: !146, line: 66, baseType: !385, size: 2688, offset: 1216)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2688, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 7)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !145, file: !146, line: 67, baseType: !389, size: 3072, offset: 3904)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 3072, elements: !355)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !145, file: !146, line: 68, baseType: !391, size: 576, offset: 6976)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 576, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 9)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !145, file: !146, line: 69, baseType: !109, size: 64, offset: 7552)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !145, file: !146, line: 71, baseType: !94, size: 64, offset: 7616)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !145, file: !146, line: 72, baseType: !109, size: 64, offset: 7680)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !145, file: !146, line: 73, baseType: !264, size: 64, offset: 7744)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !145, file: !146, line: 74, baseType: !37, size: 64, offset: 7808)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !145, file: !146, line: 75, baseType: !42, size: 64, offset: 7872)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !145, file: !146, line: 76, baseType: !37, size: 64, offset: 7936)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !145, file: !146, line: 77, baseType: !179, size: 64, offset: 8000)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !145, file: !146, line: 78, baseType: !42, size: 64, offset: 8064)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !145, file: !146, line: 79, baseType: !37, size: 64, offset: 8128)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !145, file: !146, line: 80, baseType: !82, size: 64, offset: 8192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !145, file: !146, line: 81, baseType: !179, size: 64, offset: 8256)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !145, file: !146, line: 82, baseType: !407, size: 64, offset: 8320)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !39, line: 718, size: 128, elements: !410)
!410 = !{!411, !412, !413, !414, !415, !416}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !409, file: !39, line: 722, baseType: !34, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !409, file: !39, line: 723, baseType: !34, size: 32, offset: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !409, file: !39, line: 724, baseType: !56, size: 16, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !409, file: !39, line: 725, baseType: !51, size: 8, offset: 80)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !409, file: !39, line: 726, baseType: !51, size: 8, offset: 88)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !409, file: !39, line: 727, baseType: !51, size: 8, offset: 96)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !145, file: !146, line: 83, baseType: !179, size: 64, offset: 8384)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !145, file: !146, line: 84, baseType: !42, size: 64, offset: 8448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !145, file: !146, line: 85, baseType: !264, size: 64, offset: 8512)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !145, file: !146, line: 86, baseType: !42, size: 64, offset: 8576)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !145, file: !146, line: 87, baseType: !264, size: 64, offset: 8640)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !145, file: !146, line: 88, baseType: !179, size: 64, offset: 8704)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !145, file: !146, line: 89, baseType: !179, size: 64, offset: 8768)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !145, file: !146, line: 90, baseType: !425, size: 64, offset: 8832)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !145, file: !146, line: 91, baseType: !427, size: 64, offset: 8896)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !39, line: 652, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!36, !144, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !145, file: !146, line: 92, baseType: !433, size: 64, offset: 8960)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !39, line: 656, baseType: !141)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !137, file: !44, line: 153, baseType: !42, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !123, file: !44, line: 156, baseType: !34, size: 32, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !123, file: !44, line: 157, baseType: !156, size: 16, offset: 416)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !123, file: !44, line: 158, baseType: !51, size: 8, offset: 432)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !43, file: !44, line: 377, baseType: !439, size: 576)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !44, line: 122, size: 576, elements: !440)
!440 = !{!441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !439, file: !44, line: 123, baseType: !42, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !439, file: !44, line: 123, baseType: !51, size: 8, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !439, file: !44, line: 123, baseType: !51, size: 8, offset: 72)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !439, file: !44, line: 123, baseType: !56, size: 16, offset: 80)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !439, file: !44, line: 123, baseType: !51, size: 8, offset: 96)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !439, file: !44, line: 123, baseType: !51, size: 8, offset: 104)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !439, file: !44, line: 124, baseType: !56, size: 16, offset: 112)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !439, file: !44, line: 125, baseType: !24, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !439, file: !44, line: 126, baseType: !29, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !439, file: !44, line: 127, baseType: !425, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !439, file: !44, line: 128, baseType: !42, size: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !439, file: !44, line: 129, baseType: !42, size: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !439, file: !44, line: 130, baseType: !37, size: 64, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !439, file: !44, line: 131, baseType: !51, size: 8, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !43, file: !44, line: 378, baseType: !456, size: 512)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !44, line: 134, size: 512, elements: !457)
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !469, !470}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !456, file: !44, line: 135, baseType: !42, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !456, file: !44, line: 135, baseType: !51, size: 8, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !456, file: !44, line: 135, baseType: !51, size: 8, offset: 72)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !456, file: !44, line: 135, baseType: !56, size: 16, offset: 80)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !456, file: !44, line: 135, baseType: !51, size: 8, offset: 96)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !456, file: !44, line: 135, baseType: !51, size: 8, offset: 104)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !456, file: !44, line: 136, baseType: !37, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !456, file: !44, line: 137, baseType: !42, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !456, file: !44, line: 138, baseType: !42, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !456, file: !44, line: 139, baseType: !468, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !23, line: 129, baseType: !29)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !456, file: !44, line: 140, baseType: !34, size: 32, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !456, file: !44, line: 141, baseType: !24, size: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !43, file: !44, line: 379, baseType: !472, size: 320)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !44, line: 185, size: 320, elements: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !483}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !472, file: !44, line: 186, baseType: !42, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !472, file: !44, line: 186, baseType: !51, size: 8, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !472, file: !44, line: 186, baseType: !51, size: 8, offset: 72)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !472, file: !44, line: 186, baseType: !56, size: 16, offset: 80)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !472, file: !44, line: 186, baseType: !51, size: 8, offset: 96)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !472, file: !44, line: 186, baseType: !480, size: 128, offset: 128)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 128, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 2)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !472, file: !44, line: 186, baseType: !42, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !43, file: !44, line: 380, baseType: !485, size: 384)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !44, line: 188, size: 384, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !493, !494}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !485, file: !44, line: 189, baseType: !42, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !44, line: 189, baseType: !51, size: 8, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !44, line: 189, baseType: !51, size: 8, offset: 72)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !485, file: !44, line: 189, baseType: !56, size: 16, offset: 80)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !44, line: 189, baseType: !51, size: 8, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !485, file: !44, line: 190, baseType: !480, size: 128, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !485, file: !44, line: 190, baseType: !42, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !485, file: !44, line: 190, baseType: !495, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !39, line: 480, size: 576, elements: !497)
!497 = !{!498, !499, !500, !501, !509, !524, !556, !557, !558, !559, !560, !561}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !496, file: !39, line: 481, baseType: !37, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !496, file: !39, line: 482, baseType: !495, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !496, file: !39, line: 483, baseType: !495, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !496, file: !39, line: 484, baseType: !502, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !39, line: 497, size: 256, elements: !504)
!504 = !{!505, !506, !507, !508}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !503, file: !39, line: 498, baseType: !502, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !503, file: !39, line: 499, baseType: !502, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !503, file: !39, line: 500, baseType: !495, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !503, file: !39, line: 501, baseType: !34, size: 32, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !496, file: !39, line: 485, baseType: !510, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !39, line: 466, size: 320, elements: !512)
!512 = !{!513, !518, !519, !520, !521, !522, !523}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !511, file: !39, line: 467, baseType: !514, size: 128)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !39, line: 459, size: 128, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !514, file: !39, line: 460, baseType: !51, size: 8)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !514, file: !39, line: 461, baseType: !29, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !511, file: !39, line: 468, baseType: !514, size: 128, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !511, file: !39, line: 469, baseType: !56, size: 16, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !511, file: !39, line: 470, baseType: !51, size: 8, offset: 272)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !511, file: !39, line: 471, baseType: !51, size: 8, offset: 280)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !511, file: !39, line: 472, baseType: !51, size: 8, offset: 288)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !511, file: !39, line: 473, baseType: !51, size: 8, offset: 296)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !496, file: !39, line: 486, baseType: !525, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !39, line: 448, size: 192, elements: !527)
!527 = !{!528, !551, !552, !553, !554, !555}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !526, file: !39, line: 449, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !39, line: 438, size: 64, elements: !530)
!530 = !{!531, !532, !545}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !529, file: !39, line: 439, baseType: !37, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !529, file: !39, line: 440, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !39, line: 419, size: 256, elements: !535)
!535 = !{!536, !541, !542, !543, !544}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !534, file: !39, line: 420, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !23, line: 1058, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!34, !22, !34, !24}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !534, file: !39, line: 421, baseType: !24, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !534, file: !39, line: 422, baseType: !37, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !534, file: !39, line: 423, baseType: !51, size: 8, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !534, file: !39, line: 424, baseType: !51, size: 8, offset: 200)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !529, file: !39, line: 441, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !39, line: 429, size: 128, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !547, file: !39, line: 430, baseType: !37, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !547, file: !39, line: 431, baseType: !546, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !526, file: !39, line: 450, baseType: !510, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !526, file: !39, line: 451, baseType: !51, size: 8, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !526, file: !39, line: 452, baseType: !51, size: 8, offset: 136)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !526, file: !39, line: 453, baseType: !51, size: 8, offset: 144)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !526, file: !39, line: 454, baseType: !51, size: 8, offset: 152)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !496, file: !39, line: 487, baseType: !29, size: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !496, file: !39, line: 488, baseType: !34, size: 32, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !496, file: !39, line: 489, baseType: !56, size: 16, offset: 480)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !496, file: !39, line: 490, baseType: !56, size: 16, offset: 496)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !496, file: !39, line: 491, baseType: !51, size: 8, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !496, file: !39, line: 492, baseType: !51, size: 8, offset: 520)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !43, file: !44, line: 381, baseType: !563, size: 384)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !44, line: 193, size: 384, elements: !564)
!564 = !{!565, !566, !567, !568, !569, !570, !571, !572, !573}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !563, file: !44, line: 194, baseType: !42, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !563, file: !44, line: 194, baseType: !51, size: 8, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !563, file: !44, line: 194, baseType: !51, size: 8, offset: 72)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !563, file: !44, line: 194, baseType: !56, size: 16, offset: 80)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !563, file: !44, line: 194, baseType: !51, size: 8, offset: 96)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !563, file: !44, line: 194, baseType: !480, size: 128, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !563, file: !44, line: 194, baseType: !42, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !563, file: !44, line: 194, baseType: !34, size: 32, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !563, file: !44, line: 195, baseType: !34, size: 32, offset: 352)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !43, file: !44, line: 382, baseType: !575, size: 384)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !44, line: 198, size: 384, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !575, file: !44, line: 199, baseType: !42, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !575, file: !44, line: 199, baseType: !51, size: 8, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !575, file: !44, line: 199, baseType: !51, size: 8, offset: 72)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !575, file: !44, line: 199, baseType: !56, size: 16, offset: 80)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !575, file: !44, line: 199, baseType: !51, size: 8, offset: 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !575, file: !44, line: 201, baseType: !51, size: 8, offset: 104)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !575, file: !44, line: 202, baseType: !51, size: 8, offset: 112)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !575, file: !44, line: 203, baseType: !480, size: 128, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !575, file: !44, line: 203, baseType: !42, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !575, file: !44, line: 203, baseType: !587, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !23, line: 128, baseType: !29)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !43, file: !44, line: 383, baseType: !589, size: 320)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !44, line: 206, size: 320, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !589, file: !44, line: 207, baseType: !42, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !589, file: !44, line: 207, baseType: !51, size: 8, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !589, file: !44, line: 207, baseType: !51, size: 8, offset: 72)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !589, file: !44, line: 207, baseType: !56, size: 16, offset: 80)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !589, file: !44, line: 207, baseType: !51, size: 8, offset: 96)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !589, file: !44, line: 207, baseType: !480, size: 128, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !589, file: !44, line: 207, baseType: !42, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !43, file: !44, line: 384, baseType: !599, size: 384)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !44, line: 234, size: 384, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !599, file: !44, line: 235, baseType: !42, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !599, file: !44, line: 235, baseType: !51, size: 8, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !599, file: !44, line: 235, baseType: !51, size: 8, offset: 72)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !599, file: !44, line: 235, baseType: !56, size: 16, offset: 80)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !44, line: 235, baseType: !51, size: 8, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !599, file: !44, line: 235, baseType: !51, size: 8, offset: 104)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !599, file: !44, line: 235, baseType: !51, size: 8, offset: 112)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !599, file: !44, line: 235, baseType: !51, size: 8, offset: 120)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !599, file: !44, line: 235, baseType: !37, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !599, file: !44, line: 235, baseType: !34, size: 32, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !599, file: !44, line: 235, baseType: !34, size: 32, offset: 224)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !599, file: !44, line: 235, baseType: !34, size: 32, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !599, file: !44, line: 235, baseType: !51, size: 8, offset: 288)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !599, file: !44, line: 235, baseType: !51, size: 8, offset: 296)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !599, file: !44, line: 235, baseType: !42, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !43, file: !44, line: 385, baseType: !617, size: 576)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !44, line: 238, size: 576, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !617, file: !44, line: 239, baseType: !42, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !617, file: !44, line: 239, baseType: !51, size: 8, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !617, file: !44, line: 239, baseType: !51, size: 8, offset: 72)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !617, file: !44, line: 239, baseType: !56, size: 16, offset: 80)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !617, file: !44, line: 239, baseType: !51, size: 8, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !617, file: !44, line: 239, baseType: !51, size: 8, offset: 104)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !617, file: !44, line: 239, baseType: !51, size: 8, offset: 112)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !617, file: !44, line: 239, baseType: !51, size: 8, offset: 120)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !617, file: !44, line: 239, baseType: !37, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !617, file: !44, line: 239, baseType: !34, size: 32, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !617, file: !44, line: 239, baseType: !34, size: 32, offset: 224)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !617, file: !44, line: 239, baseType: !34, size: 32, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !617, file: !44, line: 239, baseType: !51, size: 8, offset: 288)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !617, file: !44, line: 239, baseType: !51, size: 8, offset: 296)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !617, file: !44, line: 239, baseType: !56, size: 16, offset: 304)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !617, file: !44, line: 240, baseType: !42, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !617, file: !44, line: 241, baseType: !94, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !617, file: !44, line: 242, baseType: !56, size: 16, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !617, file: !44, line: 243, baseType: !94, size: 64, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !43, file: !44, line: 386, baseType: !639, size: 384)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !44, line: 263, size: 384, elements: !640)
!640 = !{!641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !639, file: !44, line: 264, baseType: !42, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !639, file: !44, line: 264, baseType: !51, size: 8, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !639, file: !44, line: 264, baseType: !51, size: 8, offset: 72)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !639, file: !44, line: 264, baseType: !56, size: 16, offset: 80)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !639, file: !44, line: 264, baseType: !51, size: 8, offset: 96)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !639, file: !44, line: 264, baseType: !51, size: 8, offset: 104)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !639, file: !44, line: 264, baseType: !51, size: 8, offset: 112)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !639, file: !44, line: 264, baseType: !51, size: 8, offset: 120)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !639, file: !44, line: 264, baseType: !37, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !639, file: !44, line: 264, baseType: !34, size: 32, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !639, file: !44, line: 264, baseType: !34, size: 32, offset: 224)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !639, file: !44, line: 264, baseType: !34, size: 32, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !639, file: !44, line: 264, baseType: !51, size: 8, offset: 288)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !639, file: !44, line: 264, baseType: !51, size: 8, offset: 296)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !639, file: !44, line: 264, baseType: !51, size: 8, offset: 304)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !639, file: !44, line: 265, baseType: !42, size: 64, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !43, file: !44, line: 387, baseType: !658, size: 448)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !44, line: 246, size: 448, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !658, file: !44, line: 247, baseType: !42, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !658, file: !44, line: 247, baseType: !51, size: 8, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !658, file: !44, line: 247, baseType: !51, size: 8, offset: 72)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !658, file: !44, line: 247, baseType: !56, size: 16, offset: 80)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !44, line: 247, baseType: !51, size: 8, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !658, file: !44, line: 247, baseType: !51, size: 8, offset: 104)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !658, file: !44, line: 247, baseType: !51, size: 8, offset: 112)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !658, file: !44, line: 247, baseType: !51, size: 8, offset: 120)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !658, file: !44, line: 247, baseType: !37, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !658, file: !44, line: 247, baseType: !34, size: 32, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !658, file: !44, line: 247, baseType: !34, size: 32, offset: 224)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !658, file: !44, line: 247, baseType: !34, size: 32, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !658, file: !44, line: 247, baseType: !51, size: 8, offset: 288)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !658, file: !44, line: 247, baseType: !51, size: 8, offset: 296)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !658, file: !44, line: 247, baseType: !42, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !658, file: !44, line: 248, baseType: !42, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !43, file: !44, line: 388, baseType: !677, size: 448)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !44, line: 251, size: 448, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !677, file: !44, line: 252, baseType: !42, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !677, file: !44, line: 252, baseType: !51, size: 8, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !677, file: !44, line: 252, baseType: !51, size: 8, offset: 72)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !677, file: !44, line: 252, baseType: !56, size: 16, offset: 80)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !44, line: 252, baseType: !51, size: 8, offset: 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !677, file: !44, line: 252, baseType: !51, size: 8, offset: 104)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !677, file: !44, line: 252, baseType: !51, size: 8, offset: 112)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !677, file: !44, line: 252, baseType: !51, size: 8, offset: 120)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !677, file: !44, line: 252, baseType: !37, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !677, file: !44, line: 252, baseType: !34, size: 32, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !677, file: !44, line: 252, baseType: !34, size: 32, offset: 224)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !677, file: !44, line: 252, baseType: !34, size: 32, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !677, file: !44, line: 252, baseType: !51, size: 8, offset: 288)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !677, file: !44, line: 252, baseType: !51, size: 8, offset: 296)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !677, file: !44, line: 257, baseType: !42, size: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !677, file: !44, line: 258, baseType: !42, size: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !43, file: !44, line: 389, baseType: !696, size: 512)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !44, line: 274, size: 512, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !696, file: !44, line: 275, baseType: !42, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !696, file: !44, line: 275, baseType: !51, size: 8, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !696, file: !44, line: 275, baseType: !51, size: 8, offset: 72)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !696, file: !44, line: 275, baseType: !56, size: 16, offset: 80)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !44, line: 275, baseType: !51, size: 8, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !696, file: !44, line: 275, baseType: !37, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !696, file: !44, line: 276, baseType: !34, size: 32, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !696, file: !44, line: 277, baseType: !373, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !696, file: !44, line: 278, baseType: !24, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !696, file: !44, line: 279, baseType: !480, size: 128, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !43, file: !44, line: 390, baseType: !709, size: 576)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !44, line: 282, size: 576, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !724, !725, !726, !727, !733, !734}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !709, file: !44, line: 283, baseType: !42, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !44, line: 283, baseType: !51, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !44, line: 283, baseType: !51, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !709, file: !44, line: 283, baseType: !56, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !44, line: 283, baseType: !51, size: 8, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !709, file: !44, line: 283, baseType: !51, size: 8, offset: 104)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !709, file: !44, line: 284, baseType: !51, size: 8, offset: 112)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !709, file: !44, line: 285, baseType: !719, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !23, line: 1093, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!36, !34, !468, !34, !723, !24, !24}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !44, line: 286, baseType: !37, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !709, file: !44, line: 287, baseType: !24, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !709, file: !44, line: 288, baseType: !24, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !709, file: !44, line: 289, baseType: !728, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !23, line: 1126, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!36, !22, !34, !24, !732}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !709, file: !44, line: 290, baseType: !42, size: 64, offset: 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !44, line: 291, baseType: !42, size: 64, offset: 512)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !43, file: !44, line: 391, baseType: !736, size: 512)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !44, line: 309, size: 512, elements: !737)
!737 = !{!738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !736, file: !44, line: 310, baseType: !42, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !736, file: !44, line: 310, baseType: !51, size: 8, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !736, file: !44, line: 310, baseType: !51, size: 8, offset: 72)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !736, file: !44, line: 310, baseType: !56, size: 16, offset: 80)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !736, file: !44, line: 310, baseType: !51, size: 8, offset: 96)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !736, file: !44, line: 310, baseType: !51, size: 8, offset: 104)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !736, file: !44, line: 311, baseType: !51, size: 8, offset: 112)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !736, file: !44, line: 312, baseType: !51, size: 8, offset: 120)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !736, file: !44, line: 313, baseType: !24, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !736, file: !44, line: 314, baseType: !37, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !736, file: !44, line: 315, baseType: !109, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !736, file: !44, line: 316, baseType: !94, size: 64, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !736, file: !44, line: 317, baseType: !94, size: 64, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !736, file: !44, line: 318, baseType: !34, size: 32, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !43, file: !44, line: 392, baseType: !753, size: 448)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !44, line: 342, size: 448, elements: !754)
!754 = !{!755, !756, !757, !758, !759, !760, !761, !762, !763, !764}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !753, file: !44, line: 343, baseType: !42, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !753, file: !44, line: 343, baseType: !51, size: 8, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !753, file: !44, line: 343, baseType: !51, size: 8, offset: 72)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !753, file: !44, line: 343, baseType: !56, size: 16, offset: 80)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !753, file: !44, line: 343, baseType: !51, size: 8, offset: 96)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !753, file: !44, line: 343, baseType: !37, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !753, file: !44, line: 344, baseType: !37, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !753, file: !44, line: 345, baseType: !24, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !753, file: !44, line: 346, baseType: !94, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !753, file: !44, line: 347, baseType: !34, size: 32, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !43, file: !44, line: 393, baseType: !766, size: 256)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !44, line: 352, size: 256, elements: !767)
!767 = !{!768, !769, !770, !771, !772, !773, !778}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !766, file: !44, line: 353, baseType: !42, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !766, file: !44, line: 353, baseType: !51, size: 8, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !766, file: !44, line: 353, baseType: !51, size: 8, offset: 72)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !766, file: !44, line: 353, baseType: !56, size: 16, offset: 80)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !766, file: !44, line: 353, baseType: !51, size: 8, offset: 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !766, file: !44, line: 353, baseType: !774, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !23, line: 1064, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !22, !24}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !766, file: !44, line: 354, baseType: !24, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !43, file: !44, line: 394, baseType: !780, size: 192)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !44, line: 359, size: 192, elements: !781)
!781 = !{!782, !783, !784, !785, !786, !787}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !780, file: !44, line: 360, baseType: !42, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !780, file: !44, line: 360, baseType: !51, size: 8, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !780, file: !44, line: 360, baseType: !51, size: 8, offset: 72)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !780, file: !44, line: 360, baseType: !56, size: 16, offset: 80)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !780, file: !44, line: 360, baseType: !51, size: 8, offset: 96)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !780, file: !44, line: 360, baseType: !42, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !43, file: !44, line: 401, baseType: !38, size: 384)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !38, file: !39, line: 135, baseType: !51, size: 8, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !38, file: !39, line: 136, baseType: !51, size: 8, offset: 72)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !38, file: !39, line: 137, baseType: !56, size: 16, offset: 80)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !38, file: !39, line: 138, baseType: !793, size: 32, offset: 96)
!793 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !794, line: 328, size: 32, elements: !795)
!794 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !793, file: !794, line: 329, baseType: !34, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !793, file: !794, line: 330, baseType: !238, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !38, file: !39, line: 139, baseType: !37, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !38, file: !39, line: 140, baseType: !37, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !38, file: !39, line: 141, baseType: !37, size: 64, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !38, file: !39, line: 142, baseType: !156, size: 16, offset: 320)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !26, line: 154, baseType: !7)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_init_walk_info", file: !146, line: 97, size: 512, elements: !805)
!805 = !{!806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "table_index", scope: !804, file: !146, line: 98, baseType: !34, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "object_count", scope: !804, file: !146, line: 99, baseType: !34, size: 32, offset: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "method_count", scope: !804, file: !146, line: 100, baseType: !34, size: 32, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "serial_method_count", scope: !804, file: !146, line: 101, baseType: !34, size: 32, offset: 96)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "non_serial_method_count", scope: !804, file: !146, line: 102, baseType: !34, size: 32, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "serialized_method_count", scope: !804, file: !146, line: 103, baseType: !34, size: 32, offset: 160)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "device_count", scope: !804, file: !146, line: 104, baseType: !34, size: 32, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "op_region_count", scope: !804, file: !146, line: 105, baseType: !34, size: 32, offset: 224)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "field_count", scope: !804, file: !146, line: 106, baseType: !34, size: 32, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_count", scope: !804, file: !146, line: 107, baseType: !34, size: 32, offset: 288)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "package_count", scope: !804, file: !146, line: 108, baseType: !34, size: 32, offset: 320)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "op_region_init", scope: !804, file: !146, line: 109, baseType: !34, size: 32, offset: 352)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "field_init", scope: !804, file: !146, line: 110, baseType: !34, size: 32, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_init", scope: !804, file: !146, line: 111, baseType: !34, size: 32, offset: 416)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "package_init", scope: !804, file: !146, line: 112, baseType: !34, size: 32, offset: 448)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !804, file: !146, line: 113, baseType: !156, size: 16, offset: 480)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_walk_info", file: !146, line: 187, size: 256, elements: !824)
!824 = !{!825, !852, !919, !920, !921}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "table_desc", scope: !823, file: !146, line: 188, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_desc", file: !794, line: 335, size: 256, elements: !828)
!828 = !{!829, !830, !847, !848, !849, !850, !851}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !827, file: !794, line: 336, baseType: !468, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !827, file: !794, line: 337, baseType: !831, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !794, line: 68, size: 288, elements: !833)
!833 = !{!834, !835, !836, !837, !838, !842, !844, !845, !846}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !832, file: !794, line: 69, baseType: !238, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !832, file: !794, line: 70, baseType: !34, size: 32, offset: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !832, file: !794, line: 71, baseType: !51, size: 8, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !832, file: !794, line: 72, baseType: !51, size: 8, offset: 72)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !832, file: !794, line: 73, baseType: !839, size: 48, offset: 80)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 48, elements: !840)
!840 = !{!841}
!841 = !DISubrange(count: 6)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !832, file: !794, line: 74, baseType: !843, size: 64, offset: 128)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 64, elements: !355)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !832, file: !794, line: 75, baseType: !34, size: 32, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !832, file: !794, line: 76, baseType: !238, size: 32, offset: 224)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !832, file: !794, line: 77, baseType: !34, size: 32, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !827, file: !794, line: 338, baseType: !34, size: 32, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !827, file: !794, line: 339, baseType: !793, size: 32, offset: 160)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !827, file: !794, line: 340, baseType: !156, size: 16, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !827, file: !794, line: 341, baseType: !51, size: 8, offset: 208)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "validation_count", scope: !827, file: !794, line: 342, baseType: !56, size: 16, offset: 224)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "evaluate_info", scope: !823, file: !146, line: 189, baseType: !853, size: 64, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !146, line: 152, size: 704, elements: !855)
!855 = !{!856, !857, !860, !861, !862, !863, !864, !910, !911, !912, !913, !914, !915, !916, !917, !918}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !854, file: !146, line: 155, baseType: !37, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !854, file: !146, line: 156, baseType: !858, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !854, file: !146, line: 157, baseType: !109, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !854, file: !146, line: 159, baseType: !37, size: 64, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !854, file: !146, line: 160, baseType: !42, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !854, file: !146, line: 161, baseType: !82, size: 64, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !854, file: !146, line: 163, baseType: !865, size: 64, offset: 384)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !867)
!867 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !39, line: 351, size: 56, elements: !868)
!868 = !{!869, !875, !884, !892, !901}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !867, file: !39, line: 352, baseType: !870, size: 56)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !39, line: 295, size: 56, elements: !871)
!871 = !{!872, !873, !874}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !870, file: !39, line: 296, baseType: !238, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !870, file: !39, line: 297, baseType: !56, size: 16, offset: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !870, file: !39, line: 298, baseType: !51, size: 8, offset: 48)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !867, file: !39, line: 353, baseType: !876, size: 56)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !39, line: 314, size: 56, elements: !877)
!877 = !{!878, !879, !880, !881, !882, !883}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !876, file: !39, line: 315, baseType: !51, size: 8)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !876, file: !39, line: 316, baseType: !51, size: 8, offset: 8)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !876, file: !39, line: 317, baseType: !51, size: 8, offset: 16)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !876, file: !39, line: 318, baseType: !51, size: 8, offset: 24)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !876, file: !39, line: 319, baseType: !51, size: 8, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !876, file: !39, line: 320, baseType: !56, size: 16, offset: 40)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !867, file: !39, line: 354, baseType: !885, size: 56)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !39, line: 325, size: 56, elements: !886)
!886 = !{!887, !888, !889, !891}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !885, file: !39, line: 326, baseType: !51, size: 8)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !885, file: !39, line: 327, baseType: !51, size: 8, offset: 8)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !885, file: !39, line: 328, baseType: !890, size: 32, offset: 16)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 32, elements: !239)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !885, file: !39, line: 329, baseType: !51, size: 8, offset: 48)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !867, file: !39, line: 355, baseType: !893, size: 56)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !39, line: 334, size: 56, elements: !894)
!894 = !{!895, !896, !897, !899, !900}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !893, file: !39, line: 335, baseType: !51, size: 8)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !893, file: !39, line: 336, baseType: !51, size: 8, offset: 8)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !893, file: !39, line: 337, baseType: !898, size: 16, offset: 16)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 16, elements: !481)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !893, file: !39, line: 338, baseType: !51, size: 8, offset: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !893, file: !39, line: 339, baseType: !56, size: 16, offset: 40)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !867, file: !39, line: 356, baseType: !902, size: 56)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !39, line: 342, size: 56, elements: !903)
!903 = !{!904, !905, !906, !907, !908, !909}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !902, file: !39, line: 343, baseType: !51, size: 8)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !902, file: !39, line: 344, baseType: !51, size: 8, offset: 8)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !902, file: !39, line: 345, baseType: !51, size: 8, offset: 16)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !902, file: !39, line: 346, baseType: !51, size: 8, offset: 24)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !902, file: !39, line: 347, baseType: !51, size: 8, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !902, file: !39, line: 348, baseType: !56, size: 16, offset: 40)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !854, file: !146, line: 164, baseType: !42, size: 64, offset: 448)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !854, file: !146, line: 165, baseType: !42, size: 64, offset: 512)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !854, file: !146, line: 167, baseType: !34, size: 32, offset: 576)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !854, file: !146, line: 168, baseType: !34, size: 32, offset: 608)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !854, file: !146, line: 169, baseType: !56, size: 16, offset: 640)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !854, file: !146, line: 170, baseType: !56, size: 16, offset: 656)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !854, file: !146, line: 171, baseType: !51, size: 8, offset: 672)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !854, file: !146, line: 172, baseType: !51, size: 8, offset: 680)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !854, file: !146, line: 173, baseType: !51, size: 8, offset: 688)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "device_count", scope: !823, file: !146, line: 190, baseType: !34, size: 32, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "num_STA", scope: !823, file: !146, line: 191, baseType: !34, size: 32, offset: 160)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "num_INI", scope: !823, file: !146, line: 192, baseType: !34, size: 32, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!923 = !{!924, !929, !934, !936, !0, !941, !943, !948, !953}
!924 = !DIGlobalVariableExpression(var: !925, expr: !DIExpression())
!925 = distinct !DIGlobalVariable(scope: null, file: !3, line: 75, type: !926, isLocal: true, isDefinition: true)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 168, elements: !927)
!927 = !{!928}
!928 = !DISubrange(count: 21)
!929 = !DIGlobalVariableExpression(var: !930, expr: !DIExpression())
!930 = distinct !DIGlobalVariable(scope: null, file: !3, line: 152, type: !931, isLocal: true, isDefinition: true)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 40, elements: !932)
!932 = !{!933}
!933 = !DISubrange(count: 5)
!934 = !DIGlobalVariableExpression(var: !935, expr: !DIExpression())
!935 = distinct !DIGlobalVariable(scope: null, file: !3, line: 166, type: !931, isLocal: true, isDefinition: true)
!936 = !DIGlobalVariableExpression(var: !937, expr: !DIExpression())
!937 = distinct !DIGlobalVariable(scope: null, file: !3, line: 239, type: !938, isLocal: true, isDefinition: true)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 232, elements: !939)
!939 = !{!940}
!940 = !DISubrange(count: 29)
!941 = !DIGlobalVariableExpression(var: !942, expr: !DIExpression())
!942 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !926, isLocal: true, isDefinition: true)
!943 = !DIGlobalVariableExpression(var: !944, expr: !DIExpression())
!944 = distinct !DIGlobalVariable(scope: null, file: !3, line: 411, type: !945, isLocal: true, isDefinition: true)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 288, elements: !946)
!946 = !{!947}
!947 = !DISubrange(count: 36)
!948 = !DIGlobalVariableExpression(var: !949, expr: !DIExpression())
!949 = distinct !DIGlobalVariable(scope: null, file: !3, line: 419, type: !950, isLocal: true, isDefinition: true)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 360, elements: !951)
!951 = !{!952}
!952 = !DISubrange(count: 45)
!953 = !DIGlobalVariableExpression(var: !954, expr: !DIExpression())
!954 = distinct !DIGlobalVariable(scope: null, file: !3, line: 633, type: !931, isLocal: true, isDefinition: true)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !859, size: 56, elements: !386)
!956 = !{i32 7, !"Dwarf Version", i32 5}
!957 = !{i32 2, !"Debug Info Version", i32 3}
!958 = !{i32 1, !"wchar_size", i32 2}
!959 = !{i32 8, !"cf-protection-branch", i32 1}
!960 = !{i32 4, !"function_return_thunk_extern", i32 1}
!961 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!962 = !{i32 1, !"Code Model", i32 2}
!963 = !{i32 1, !"override-stack-alignment", i32 8}
!964 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!965 = distinct !DISubprogram(name: "acpi_ns_initialize_objects", scope: !3, file: !3, line: 46, type: !966, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !968)
!966 = !DISubroutineType(types: !967)
!967 = !{!36}
!968 = !{!969, !970}
!969 = !DILocalVariable(name: "status", scope: !965, file: !3, line: 48, type: !36)
!970 = !DILocalVariable(name: "info", scope: !965, file: !3, line: 49, type: !804)
!971 = !DILocation(line: 48, column: 2, scope: !965)
!972 = !DILocation(line: 48, column: 14, scope: !965)
!973 = !DILocation(line: 49, column: 2, scope: !965)
!974 = !DILocation(line: 49, column: 29, scope: !965)
!975 = !DILocation(line: 62, column: 2, scope: !965)
!976 = !DILocation(line: 71, column: 11, scope: !965)
!977 = !DILocation(line: 71, column: 9, scope: !965)
!978 = !DILocation(line: 74, column: 6, scope: !979)
!979 = distinct !DILexicalBlock(scope: !965, file: !3, line: 74, column: 6)
!980 = !DILocation(line: 74, column: 6, scope: !965)
!981 = !DILocation(line: 75, column: 3, scope: !982)
!982 = distinct !DILexicalBlock(scope: !979, file: !3, line: 74, column: 28)
!983 = !DILocation(line: 76, column: 2, scope: !982)
!984 = !DILocation(line: 87, column: 1, scope: !965)
!985 = !DILocation(line: 86, column: 2, scope: !965)
!986 = !DISubprogram(name: "acpi_walk_namespace", scope: !987, file: !987, line: 509, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!987 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!988 = !DISubroutineType(types: !989)
!989 = !{!36, !990, !22, !34, !991, !991, !24, !732}
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !23, line: 644, baseType: !34)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_callback", file: !23, line: 1135, baseType: !729)
!992 = distinct !DISubprogram(name: "acpi_ns_init_one_object", scope: !3, file: !3, line: 316, type: !730, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !993)
!993 = !{!994, !995, !996, !997, !998, !999, !1000, !1001, !1002}
!994 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !992, file: !3, line: 316, type: !22)
!995 = !DILocalVariable(name: "level", arg: 2, scope: !992, file: !3, line: 317, type: !34)
!996 = !DILocalVariable(name: "context", arg: 3, scope: !992, file: !3, line: 317, type: !24)
!997 = !DILocalVariable(name: "return_value", arg: 4, scope: !992, file: !3, line: 317, type: !732)
!998 = !DILocalVariable(name: "type", scope: !992, file: !3, line: 319, type: !990)
!999 = !DILocalVariable(name: "status", scope: !992, file: !3, line: 320, type: !36)
!1000 = !DILocalVariable(name: "info", scope: !992, file: !3, line: 321, type: !803)
!1001 = !DILocalVariable(name: "node", scope: !992, file: !3, line: 323, type: !37)
!1002 = !DILocalVariable(name: "obj_desc", scope: !992, file: !3, line: 325, type: !42)
!1003 = !DILocation(line: 316, column: 37, scope: !992)
!1004 = !DILocation(line: 317, column: 8, scope: !992)
!1005 = !DILocation(line: 317, column: 21, scope: !992)
!1006 = !DILocation(line: 317, column: 37, scope: !992)
!1007 = !DILocation(line: 319, column: 2, scope: !992)
!1008 = !DILocation(line: 319, column: 19, scope: !992)
!1009 = !DILocation(line: 320, column: 2, scope: !992)
!1010 = !DILocation(line: 320, column: 14, scope: !992)
!1011 = !DILocation(line: 321, column: 2, scope: !992)
!1012 = !DILocation(line: 321, column: 30, scope: !992)
!1013 = !DILocation(line: 322, column: 36, scope: !992)
!1014 = !DILocation(line: 323, column: 2, scope: !992)
!1015 = !DILocation(line: 323, column: 30, scope: !992)
!1016 = !DILocation(line: 324, column: 36, scope: !992)
!1017 = !DILocation(line: 325, column: 2, scope: !992)
!1018 = !DILocation(line: 325, column: 29, scope: !992)
!1019 = !DILocation(line: 329, column: 2, scope: !992)
!1020 = !DILocation(line: 329, column: 8, scope: !992)
!1021 = !DILocation(line: 329, column: 20, scope: !992)
!1022 = !DILocation(line: 333, column: 26, scope: !992)
!1023 = !DILocation(line: 333, column: 9, scope: !992)
!1024 = !DILocation(line: 333, column: 7, scope: !992)
!1025 = !DILocation(line: 334, column: 41, scope: !992)
!1026 = !DILocation(line: 334, column: 13, scope: !992)
!1027 = !DILocation(line: 334, column: 11, scope: !992)
!1028 = !DILocation(line: 335, column: 7, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !992, file: !3, line: 335, column: 6)
!1030 = !DILocation(line: 335, column: 6, scope: !992)
!1031 = !DILocation(line: 336, column: 3, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 335, column: 17)
!1033 = !DILocation(line: 341, column: 10, scope: !992)
!1034 = !DILocation(line: 341, column: 2, scope: !992)
!1035 = !DILocation(line: 344, column: 3, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !992, file: !3, line: 341, column: 16)
!1037 = !DILocation(line: 344, column: 9, scope: !1036)
!1038 = !DILocation(line: 344, column: 24, scope: !1036)
!1039 = !DILocation(line: 345, column: 3, scope: !1036)
!1040 = !DILocation(line: 349, column: 3, scope: !1036)
!1041 = !DILocation(line: 349, column: 9, scope: !1036)
!1042 = !DILocation(line: 349, column: 20, scope: !1036)
!1043 = !DILocation(line: 350, column: 3, scope: !1036)
!1044 = !DILocation(line: 354, column: 3, scope: !1036)
!1045 = !DILocation(line: 354, column: 9, scope: !1036)
!1046 = !DILocation(line: 354, column: 20, scope: !1036)
!1047 = !DILocation(line: 355, column: 3, scope: !1036)
!1048 = !DILocation(line: 359, column: 3, scope: !1036)
!1049 = !DILocation(line: 359, column: 9, scope: !1036)
!1050 = !DILocation(line: 359, column: 21, scope: !1036)
!1051 = !DILocation(line: 360, column: 3, scope: !1036)
!1052 = !DILocation(line: 364, column: 3, scope: !1036)
!1053 = !DILocation(line: 364, column: 9, scope: !1036)
!1054 = !DILocation(line: 364, column: 22, scope: !1036)
!1055 = !DILocation(line: 365, column: 3, scope: !1036)
!1056 = !DILocation(line: 371, column: 3, scope: !1036)
!1057 = !DILocation(line: 376, column: 6, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !992, file: !3, line: 376, column: 6)
!1059 = !DILocation(line: 376, column: 23, scope: !1058)
!1060 = !DILocation(line: 376, column: 29, scope: !1058)
!1061 = !DILocation(line: 376, column: 6, scope: !992)
!1062 = !DILocation(line: 377, column: 3, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 376, column: 50)
!1064 = !DILocation(line: 382, column: 2, scope: !992)
!1065 = !DILocation(line: 388, column: 10, scope: !992)
!1066 = !DILocation(line: 388, column: 2, scope: !992)
!1067 = !DILocation(line: 393, column: 3, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !992, file: !3, line: 388, column: 16)
!1069 = !DILocation(line: 393, column: 9, scope: !1068)
!1070 = !DILocation(line: 393, column: 19, scope: !1068)
!1071 = !DILocation(line: 394, column: 45, scope: !1068)
!1072 = !DILocation(line: 394, column: 12, scope: !1068)
!1073 = !DILocation(line: 394, column: 10, scope: !1068)
!1074 = !DILocation(line: 395, column: 3, scope: !1068)
!1075 = !DILocation(line: 401, column: 3, scope: !1068)
!1076 = !DILocation(line: 401, column: 9, scope: !1068)
!1077 = !DILocation(line: 401, column: 21, scope: !1068)
!1078 = !DILocation(line: 403, column: 32, scope: !1068)
!1079 = !DILocation(line: 403, column: 44, scope: !1068)
!1080 = !DILocation(line: 403, column: 7, scope: !1068)
!1081 = !DILocation(line: 402, column: 10, scope: !1068)
!1082 = !DILocation(line: 404, column: 3, scope: !1068)
!1083 = !DILocation(line: 410, column: 10, scope: !1068)
!1084 = !DILocation(line: 411, column: 3, scope: !1068)
!1085 = !DILocation(line: 415, column: 3, scope: !1068)
!1086 = !DILocation(line: 418, column: 6, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !992, file: !3, line: 418, column: 6)
!1088 = !DILocation(line: 418, column: 6, scope: !992)
!1089 = !DILocation(line: 419, column: 3, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 418, column: 28)
!1091 = !DILocation(line: 423, column: 2, scope: !1090)
!1092 = !DILocation(line: 429, column: 2, scope: !992)
!1093 = !DILocation(line: 430, column: 2, scope: !992)
!1094 = !DILocation(line: 431, column: 1, scope: !992)
!1095 = !DISubprogram(name: "acpi_exception", scope: !987, file: !987, line: 906, type: !1096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{null, !858, !34, !36, !858, null}
!1098 = distinct !DISubprogram(name: "acpi_ns_initialize_devices", scope: !3, file: !3, line: 105, type: !1099, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1101)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!36, !34}
!1101 = !{!1102, !1103, !1104, !1105, !1106}
!1102 = !DILocalVariable(name: "flags", arg: 1, scope: !1098, file: !3, line: 105, type: !34)
!1103 = !DILocalVariable(name: "status", scope: !1098, file: !3, line: 107, type: !36)
!1104 = !DILocalVariable(name: "info", scope: !1098, file: !3, line: 108, type: !823)
!1105 = !DILocalVariable(name: "handle", scope: !1098, file: !3, line: 109, type: !22)
!1106 = !DILabel(scope: !1098, name: "error_exit", file: !3, line: 238)
!1107 = !DILocation(line: 105, column: 44, scope: !1098)
!1108 = !DILocation(line: 107, column: 2, scope: !1098)
!1109 = !DILocation(line: 107, column: 14, scope: !1098)
!1110 = !DILocation(line: 108, column: 2, scope: !1098)
!1111 = !DILocation(line: 108, column: 31, scope: !1098)
!1112 = !DILocation(line: 109, column: 2, scope: !1098)
!1113 = !DILocation(line: 109, column: 14, scope: !1098)
!1114 = !DILocation(line: 113, column: 8, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 113, column: 6)
!1116 = !DILocation(line: 113, column: 14, scope: !1115)
!1117 = !DILocation(line: 113, column: 6, scope: !1098)
!1118 = !DILocation(line: 119, column: 8, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 113, column: 38)
!1120 = !DILocation(line: 119, column: 21, scope: !1119)
!1121 = !DILocation(line: 120, column: 8, scope: !1119)
!1122 = !DILocation(line: 120, column: 16, scope: !1119)
!1123 = !DILocation(line: 121, column: 8, scope: !1119)
!1124 = !DILocation(line: 121, column: 16, scope: !1119)
!1125 = !DILocation(line: 129, column: 12, scope: !1119)
!1126 = !DILocation(line: 129, column: 10, scope: !1119)
!1127 = !DILocation(line: 133, column: 7, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 133, column: 7)
!1129 = !DILocation(line: 133, column: 7, scope: !1119)
!1130 = !DILocation(line: 134, column: 4, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 133, column: 29)
!1132 = !DILocation(line: 140, column: 7, scope: !1119)
!1133 = !DILocation(line: 139, column: 8, scope: !1119)
!1134 = !DILocation(line: 139, column: 22, scope: !1119)
!1135 = !DILocation(line: 141, column: 13, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 141, column: 7)
!1137 = !DILocation(line: 141, column: 8, scope: !1136)
!1138 = !DILocation(line: 141, column: 7, scope: !1119)
!1139 = !DILocation(line: 142, column: 11, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 141, column: 28)
!1141 = !DILocation(line: 143, column: 4, scope: !1140)
!1142 = !DILocation(line: 151, column: 37, scope: !1119)
!1143 = !DILocation(line: 151, column: 8, scope: !1119)
!1144 = !DILocation(line: 151, column: 23, scope: !1119)
!1145 = !DILocation(line: 151, column: 35, scope: !1119)
!1146 = !DILocation(line: 152, column: 8, scope: !1119)
!1147 = !DILocation(line: 152, column: 23, scope: !1119)
!1148 = !DILocation(line: 152, column: 41, scope: !1119)
!1149 = !DILocation(line: 153, column: 8, scope: !1119)
!1150 = !DILocation(line: 153, column: 23, scope: !1119)
!1151 = !DILocation(line: 153, column: 34, scope: !1119)
!1152 = !DILocation(line: 154, column: 8, scope: !1119)
!1153 = !DILocation(line: 154, column: 23, scope: !1119)
!1154 = !DILocation(line: 154, column: 29, scope: !1119)
!1155 = !DILocation(line: 156, column: 34, scope: !1119)
!1156 = !DILocation(line: 156, column: 12, scope: !1119)
!1157 = !DILocation(line: 156, column: 10, scope: !1119)
!1158 = !DILocation(line: 157, column: 7, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 157, column: 7)
!1160 = !DILocation(line: 157, column: 7, scope: !1119)
!1161 = !DILocation(line: 158, column: 9, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 157, column: 29)
!1163 = !DILocation(line: 158, column: 16, scope: !1162)
!1164 = !DILocation(line: 159, column: 3, scope: !1162)
!1165 = !DILocation(line: 166, column: 12, scope: !1119)
!1166 = !DILocation(line: 166, column: 10, scope: !1119)
!1167 = !DILocation(line: 167, column: 7, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 167, column: 7)
!1169 = !DILocation(line: 167, column: 7, scope: !1119)
!1170 = !DILocation(line: 168, column: 16, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 167, column: 29)
!1172 = !DILocation(line: 168, column: 4, scope: !1171)
!1173 = !DILocation(line: 170, column: 38, scope: !1171)
!1174 = !DILocation(line: 170, column: 9, scope: !1171)
!1175 = !DILocation(line: 170, column: 24, scope: !1171)
!1176 = !DILocation(line: 170, column: 36, scope: !1171)
!1177 = !DILocation(line: 171, column: 9, scope: !1171)
!1178 = !DILocation(line: 171, column: 24, scope: !1171)
!1179 = !DILocation(line: 171, column: 42, scope: !1171)
!1180 = !DILocation(line: 173, column: 9, scope: !1171)
!1181 = !DILocation(line: 173, column: 24, scope: !1171)
!1182 = !DILocation(line: 173, column: 35, scope: !1171)
!1183 = !DILocation(line: 174, column: 9, scope: !1171)
!1184 = !DILocation(line: 174, column: 24, scope: !1171)
!1185 = !DILocation(line: 174, column: 30, scope: !1171)
!1186 = !DILocation(line: 176, column: 35, scope: !1171)
!1187 = !DILocation(line: 176, column: 13, scope: !1171)
!1188 = !DILocation(line: 176, column: 11, scope: !1171)
!1189 = !DILocation(line: 177, column: 8, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 177, column: 8)
!1191 = !DILocation(line: 177, column: 8, scope: !1171)
!1192 = !DILocation(line: 178, column: 10, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 177, column: 30)
!1194 = !DILocation(line: 178, column: 17, scope: !1193)
!1195 = !DILocation(line: 179, column: 4, scope: !1193)
!1196 = !DILocation(line: 180, column: 3, scope: !1171)
!1197 = !DILocation(line: 181, column: 2, scope: !1119)
!1198 = !DILocation(line: 196, column: 8, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 196, column: 6)
!1200 = !DILocation(line: 196, column: 14, scope: !1199)
!1201 = !DILocation(line: 196, column: 6, scope: !1098)
!1202 = !DILocation(line: 200, column: 12, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 196, column: 45)
!1204 = !DILocation(line: 200, column: 10, scope: !1203)
!1205 = !DILocation(line: 201, column: 7, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 201, column: 7)
!1207 = !DILocation(line: 201, column: 7, scope: !1203)
!1208 = !DILocation(line: 202, column: 4, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 201, column: 29)
!1210 = !DILocation(line: 204, column: 2, scope: !1203)
!1211 = !DILocation(line: 206, column: 8, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 206, column: 6)
!1213 = !DILocation(line: 206, column: 14, scope: !1212)
!1214 = !DILocation(line: 206, column: 6, scope: !1098)
!1215 = !DILocation(line: 210, column: 12, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 206, column: 38)
!1217 = !DILocation(line: 210, column: 10, scope: !1216)
!1218 = !DILocation(line: 220, column: 7, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 220, column: 7)
!1220 = !DILocation(line: 220, column: 25, scope: !1219)
!1221 = !DILocation(line: 220, column: 7, scope: !1216)
!1222 = !DILocation(line: 221, column: 35, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 220, column: 47)
!1224 = !DILocation(line: 222, column: 3, scope: !1223)
!1225 = !DILocation(line: 224, column: 3, scope: !1216)
!1226 = !DILocation(line: 225, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 225, column: 7)
!1228 = !DILocation(line: 225, column: 7, scope: !1216)
!1229 = !DILocation(line: 226, column: 4, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 225, column: 29)
!1231 = !DILocation(line: 234, column: 2, scope: !1216)
!1232 = !DILocation(line: 236, column: 2, scope: !1098)
!1233 = !DILocation(line: 238, column: 1, scope: !1098)
!1234 = !DILocation(line: 239, column: 2, scope: !1098)
!1235 = !DILocation(line: 240, column: 2, scope: !1098)
!1236 = !DILocation(line: 241, column: 1, scope: !1098)
!1237 = !DISubprogram(name: "acpi_ns_walk_namespace", scope: !1238, file: !1238, line: 77, type: !1239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1238 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!36, !990, !22, !34, !34, !991, !991, !24, !732}
!1241 = distinct !DISubprogram(name: "acpi_ns_find_ini_methods", scope: !3, file: !3, line: 450, type: !730, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1242)
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248, !1249}
!1243 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !1241, file: !3, line: 450, type: !22)
!1244 = !DILocalVariable(name: "nesting_level", arg: 2, scope: !1241, file: !3, line: 451, type: !34)
!1245 = !DILocalVariable(name: "context", arg: 3, scope: !1241, file: !3, line: 451, type: !24)
!1246 = !DILocalVariable(name: "return_value", arg: 4, scope: !1241, file: !3, line: 451, type: !732)
!1247 = !DILocalVariable(name: "info", scope: !1241, file: !3, line: 453, type: !822)
!1248 = !DILocalVariable(name: "node", scope: !1241, file: !3, line: 455, type: !37)
!1249 = !DILocalVariable(name: "parent_node", scope: !1241, file: !3, line: 456, type: !37)
!1250 = !DILocation(line: 450, column: 38, scope: !1241)
!1251 = !DILocation(line: 451, column: 9, scope: !1241)
!1252 = !DILocation(line: 451, column: 30, scope: !1241)
!1253 = !DILocation(line: 451, column: 46, scope: !1241)
!1254 = !DILocation(line: 453, column: 2, scope: !1241)
!1255 = !DILocation(line: 453, column: 32, scope: !1241)
!1256 = !DILocation(line: 454, column: 6, scope: !1241)
!1257 = !DILocation(line: 455, column: 2, scope: !1241)
!1258 = !DILocation(line: 455, column: 30, scope: !1241)
!1259 = !DILocation(line: 456, column: 2, scope: !1241)
!1260 = !DILocation(line: 456, column: 30, scope: !1241)
!1261 = !DILocation(line: 460, column: 9, scope: !1241)
!1262 = !DILocation(line: 460, column: 7, scope: !1241)
!1263 = !DILocation(line: 461, column: 7, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 461, column: 6)
!1265 = !DILocation(line: 461, column: 13, scope: !1264)
!1266 = !DILocation(line: 461, column: 18, scope: !1264)
!1267 = !DILocation(line: 461, column: 39, scope: !1264)
!1268 = !DILocation(line: 462, column: 7, scope: !1264)
!1269 = !DILocation(line: 462, column: 13, scope: !1264)
!1270 = !DILocation(line: 462, column: 18, scope: !1264)
!1271 = !DILocation(line: 462, column: 42, scope: !1264)
!1272 = !DILocation(line: 463, column: 7, scope: !1264)
!1273 = !DILocation(line: 463, column: 13, scope: !1264)
!1274 = !DILocation(line: 463, column: 18, scope: !1264)
!1275 = !DILocation(line: 461, column: 6, scope: !1241)
!1276 = !DILocation(line: 464, column: 3, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 463, column: 41)
!1278 = !DILocation(line: 464, column: 9, scope: !1277)
!1279 = !DILocation(line: 464, column: 21, scope: !1277)
!1280 = !DILocation(line: 465, column: 3, scope: !1277)
!1281 = !DILocation(line: 470, column: 7, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 470, column: 6)
!1283 = !DILocation(line: 470, column: 6, scope: !1241)
!1284 = !DILocation(line: 471, column: 3, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 470, column: 65)
!1286 = !DILocation(line: 478, column: 16, scope: !1241)
!1287 = !DILocation(line: 478, column: 22, scope: !1241)
!1288 = !DILocation(line: 478, column: 14, scope: !1241)
!1289 = !DILocation(line: 479, column: 10, scope: !1241)
!1290 = !DILocation(line: 479, column: 23, scope: !1241)
!1291 = !DILocation(line: 479, column: 2, scope: !1241)
!1292 = !DILocation(line: 486, column: 3, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 479, column: 29)
!1294 = !DILocation(line: 486, column: 10, scope: !1293)
!1295 = !DILocation(line: 487, column: 4, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 486, column: 23)
!1297 = !DILocation(line: 487, column: 17, scope: !1296)
!1298 = !DILocation(line: 487, column: 23, scope: !1296)
!1299 = !DILocation(line: 488, column: 18, scope: !1296)
!1300 = !DILocation(line: 488, column: 31, scope: !1296)
!1301 = !DILocation(line: 488, column: 16, scope: !1296)
!1302 = distinct !{!1302, !1292, !1303, !1304, !1305}
!1303 = !DILocation(line: 489, column: 3, scope: !1293)
!1304 = !{!"llvm.loop.mustprogress"}
!1305 = !{!"llvm.loop.unroll.disable"}
!1306 = !DILocation(line: 490, column: 3, scope: !1293)
!1307 = !DILocation(line: 494, column: 3, scope: !1293)
!1308 = !DILocation(line: 497, column: 2, scope: !1241)
!1309 = !DILocation(line: 498, column: 1, scope: !1241)
!1310 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1311, file: !1311, line: 55, type: !1312, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1314)
!1311 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!24, !28}
!1314 = !{!1315, !1316, !1318, !1321, !1322, !1325}
!1315 = !DILocalVariable(name: "size", arg: 1, scope: !1310, file: !1311, line: 55, type: !28)
!1316 = !DILocalVariable(name: "_flags", scope: !1317, file: !1311, line: 57, type: !27)
!1317 = distinct !DILexicalBlock(scope: !1310, file: !1311, line: 57, column: 23)
!1318 = !DILocalVariable(name: "__dummy", scope: !1319, file: !1311, line: 57, type: !27)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !1311, line: 57, column: 23)
!1320 = distinct !DILexicalBlock(scope: !1317, file: !1311, line: 57, column: 23)
!1321 = !DILocalVariable(name: "__dummy2", scope: !1319, file: !1311, line: 57, type: !27)
!1322 = !DILocalVariable(name: "__dummy", scope: !1323, file: !1311, line: 57, type: !27)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !1311, line: 57, column: 23)
!1324 = distinct !DILexicalBlock(scope: !1317, file: !1311, line: 57, column: 23)
!1325 = !DILocalVariable(name: "__dummy2", scope: !1323, file: !1311, line: 57, type: !27)
!1326 = !DILocation(line: 55, column: 55, scope: !1310)
!1327 = !DILocation(line: 57, column: 17, scope: !1310)
!1328 = !DILocation(line: 57, column: 23, scope: !1317)
!1329 = !DILocation(line: 57, column: 23, scope: !1319)
!1330 = !DILocation(line: 57, column: 23, scope: !1320)
!1331 = !DILocation(line: 57, column: 23, scope: !1323)
!1332 = !DILocation(line: 57, column: 23, scope: !1324)
!1333 = !DILocation(line: 57, column: 23, scope: !1310)
!1334 = !DILocation(line: 57, column: 9, scope: !1310)
!1335 = !DILocation(line: 57, column: 2, scope: !1310)
!1336 = !DISubprogram(name: "acpi_ns_evaluate", scope: !1238, file: !1238, line: 208, type: !1337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!36, !853}
!1339 = !DISubprogram(name: "acpi_get_handle", scope: !987, file: !987, line: 527, type: !1340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!36, !22, !858, !1342}
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!1343 = !DISubprogram(name: "acpi_ev_initialize_op_regions", scope: !1344, file: !1344, line: 173, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1344 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!1345 = distinct !DISubprogram(name: "acpi_ns_init_one_device", scope: !3, file: !3, line: 515, type: !730, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1346)
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355}
!1347 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !1345, file: !3, line: 515, type: !22)
!1348 = !DILocalVariable(name: "nesting_level", arg: 2, scope: !1345, file: !3, line: 516, type: !34)
!1349 = !DILocalVariable(name: "context", arg: 3, scope: !1345, file: !3, line: 516, type: !24)
!1350 = !DILocalVariable(name: "return_value", arg: 4, scope: !1345, file: !3, line: 516, type: !732)
!1351 = !DILocalVariable(name: "walk_info", scope: !1345, file: !3, line: 518, type: !822)
!1352 = !DILocalVariable(name: "info", scope: !1345, file: !3, line: 520, type: !853)
!1353 = !DILocalVariable(name: "flags", scope: !1345, file: !3, line: 521, type: !34)
!1354 = !DILocalVariable(name: "status", scope: !1345, file: !3, line: 522, type: !36)
!1355 = !DILocalVariable(name: "device_node", scope: !1345, file: !3, line: 523, type: !37)
!1356 = !DILocation(line: 515, column: 37, scope: !1345)
!1357 = !DILocation(line: 516, column: 8, scope: !1345)
!1358 = !DILocation(line: 516, column: 29, scope: !1345)
!1359 = !DILocation(line: 516, column: 45, scope: !1345)
!1360 = !DILocation(line: 518, column: 2, scope: !1345)
!1361 = !DILocation(line: 518, column: 32, scope: !1345)
!1362 = !DILocation(line: 519, column: 6, scope: !1345)
!1363 = !DILocation(line: 520, column: 2, scope: !1345)
!1364 = !DILocation(line: 520, column: 29, scope: !1345)
!1365 = !DILocation(line: 520, column: 36, scope: !1345)
!1366 = !DILocation(line: 520, column: 47, scope: !1345)
!1367 = !DILocation(line: 521, column: 2, scope: !1345)
!1368 = !DILocation(line: 521, column: 6, scope: !1345)
!1369 = !DILocation(line: 522, column: 2, scope: !1345)
!1370 = !DILocation(line: 522, column: 14, scope: !1345)
!1371 = !DILocation(line: 523, column: 2, scope: !1345)
!1372 = !DILocation(line: 523, column: 30, scope: !1345)
!1373 = !DILocation(line: 529, column: 16, scope: !1345)
!1374 = !DILocation(line: 529, column: 14, scope: !1345)
!1375 = !DILocation(line: 530, column: 7, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 530, column: 6)
!1377 = !DILocation(line: 530, column: 20, scope: !1376)
!1378 = !DILocation(line: 530, column: 25, scope: !1376)
!1379 = !DILocation(line: 530, column: 46, scope: !1376)
!1380 = !DILocation(line: 531, column: 7, scope: !1376)
!1381 = !DILocation(line: 531, column: 20, scope: !1376)
!1382 = !DILocation(line: 531, column: 25, scope: !1376)
!1383 = !DILocation(line: 531, column: 49, scope: !1376)
!1384 = !DILocation(line: 532, column: 7, scope: !1376)
!1385 = !DILocation(line: 532, column: 20, scope: !1376)
!1386 = !DILocation(line: 532, column: 25, scope: !1376)
!1387 = !DILocation(line: 530, column: 6, scope: !1345)
!1388 = !DILocation(line: 533, column: 3, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 532, column: 48)
!1390 = !DILocation(line: 543, column: 8, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 543, column: 6)
!1392 = !DILocation(line: 543, column: 21, scope: !1391)
!1393 = !DILocation(line: 543, column: 27, scope: !1391)
!1394 = !DILocation(line: 543, column: 6, scope: !1345)
!1395 = !DILocation(line: 544, column: 3, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 543, column: 53)
!1397 = !DILocation(line: 561, column: 31, scope: !1345)
!1398 = !DILocation(line: 561, column: 11, scope: !1345)
!1399 = !DILocation(line: 561, column: 9, scope: !1345)
!1400 = !DILocation(line: 562, column: 6, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 562, column: 6)
!1402 = !DILocation(line: 562, column: 6, scope: !1345)
!1403 = !DILocation(line: 566, column: 3, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 562, column: 28)
!1405 = !DILocation(line: 579, column: 6, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 579, column: 6)
!1407 = !DILocation(line: 579, column: 12, scope: !1406)
!1408 = !DILocation(line: 579, column: 6, scope: !1345)
!1409 = !DILocation(line: 580, column: 3, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 579, column: 32)
!1411 = !DILocation(line: 580, column: 14, scope: !1410)
!1412 = !DILocation(line: 580, column: 21, scope: !1410)
!1413 = !DILocation(line: 581, column: 2, scope: !1410)
!1414 = !DILocation(line: 589, column: 8, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 589, column: 6)
!1416 = !DILocation(line: 589, column: 14, scope: !1415)
!1417 = !DILocation(line: 589, column: 6, scope: !1345)
!1418 = !DILocation(line: 593, column: 7, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 593, column: 7)
!1420 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 589, column: 42)
!1421 = !DILocation(line: 593, column: 13, scope: !1419)
!1422 = !DILocation(line: 593, column: 7, scope: !1420)
!1423 = !DILocation(line: 609, column: 4, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 593, column: 44)
!1425 = !DILocation(line: 622, column: 4, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 610, column: 10)
!1427 = !DILocation(line: 633, column: 7, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 633, column: 6)
!1429 = !DILocation(line: 633, column: 61, scope: !1428)
!1430 = !DILocation(line: 634, column: 6, scope: !1428)
!1431 = !DILocation(line: 634, column: 19, scope: !1428)
!1432 = !DILocation(line: 634, column: 29, scope: !1428)
!1433 = !DILocation(line: 634, column: 26, scope: !1428)
!1434 = !DILocation(line: 633, column: 6, scope: !1345)
!1435 = !DILocation(line: 639, column: 10, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 634, column: 49)
!1437 = !DILocation(line: 639, column: 3, scope: !1436)
!1438 = !DILocation(line: 640, column: 23, scope: !1436)
!1439 = !DILocation(line: 640, column: 3, scope: !1436)
!1440 = !DILocation(line: 640, column: 9, scope: !1436)
!1441 = !DILocation(line: 640, column: 21, scope: !1436)
!1442 = !DILocation(line: 641, column: 3, scope: !1436)
!1443 = !DILocation(line: 641, column: 9, scope: !1436)
!1444 = !DILocation(line: 641, column: 27, scope: !1436)
!1445 = !DILocation(line: 642, column: 3, scope: !1436)
!1446 = !DILocation(line: 642, column: 9, scope: !1436)
!1447 = !DILocation(line: 642, column: 20, scope: !1436)
!1448 = !DILocation(line: 643, column: 3, scope: !1436)
!1449 = !DILocation(line: 643, column: 9, scope: !1436)
!1450 = !DILocation(line: 643, column: 15, scope: !1436)
!1451 = !DILocation(line: 645, column: 29, scope: !1436)
!1452 = !DILocation(line: 645, column: 12, scope: !1436)
!1453 = !DILocation(line: 645, column: 10, scope: !1436)
!1454 = !DILocation(line: 646, column: 7, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 646, column: 7)
!1456 = !DILocation(line: 646, column: 7, scope: !1436)
!1457 = !DILocation(line: 647, column: 4, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 646, column: 29)
!1459 = !DILocation(line: 647, column: 15, scope: !1458)
!1460 = !DILocation(line: 647, column: 22, scope: !1458)
!1461 = !DILocation(line: 648, column: 3, scope: !1458)
!1462 = !DILocation(line: 663, column: 2, scope: !1436)
!1463 = !DILocation(line: 667, column: 9, scope: !1345)
!1464 = !DILocation(line: 673, column: 6, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 673, column: 6)
!1466 = !DILocation(line: 673, column: 6, scope: !1345)
!1467 = !DILocation(line: 675, column: 7, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 673, column: 29)
!1469 = !DILocation(line: 675, column: 29, scope: !1468)
!1470 = !DILocation(line: 674, column: 10, scope: !1468)
!1471 = !DILocation(line: 676, column: 2, scope: !1468)
!1472 = !DILocation(line: 678, column: 2, scope: !1345)
!1473 = !DILocation(line: 679, column: 1, scope: !1345)
!1474 = distinct !DISubprogram(name: "acpi_os_free", scope: !1311, file: !1311, line: 60, type: !1475, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1477)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{null, !24}
!1477 = !{!1478}
!1478 = !DILocalVariable(name: "memory", arg: 1, scope: !1474, file: !1311, line: 60, type: !24)
!1479 = !DILocation(line: 60, column: 39, scope: !1474)
!1480 = !DILocation(line: 62, column: 8, scope: !1474)
!1481 = !DILocation(line: 62, column: 2, scope: !1474)
!1482 = !DILocation(line: 63, column: 1, scope: !1474)
!1483 = distinct !DISubprogram(name: "acpi_ns_init_one_package", scope: !3, file: !3, line: 260, type: !730, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1484)
!1484 = !{!1485, !1486, !1487, !1488, !1489, !1490, !1491}
!1485 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !1483, file: !3, line: 260, type: !22)
!1486 = !DILocalVariable(name: "level", arg: 2, scope: !1483, file: !3, line: 261, type: !34)
!1487 = !DILocalVariable(name: "context", arg: 3, scope: !1483, file: !3, line: 261, type: !24)
!1488 = !DILocalVariable(name: "return_value", arg: 4, scope: !1483, file: !3, line: 261, type: !732)
!1489 = !DILocalVariable(name: "status", scope: !1483, file: !3, line: 263, type: !36)
!1490 = !DILocalVariable(name: "obj_desc", scope: !1483, file: !3, line: 264, type: !42)
!1491 = !DILocalVariable(name: "node", scope: !1483, file: !3, line: 265, type: !37)
!1492 = !DILocation(line: 260, column: 38, scope: !1483)
!1493 = !DILocation(line: 261, column: 9, scope: !1483)
!1494 = !DILocation(line: 261, column: 22, scope: !1483)
!1495 = !DILocation(line: 261, column: 38, scope: !1483)
!1496 = !DILocation(line: 263, column: 2, scope: !1483)
!1497 = !DILocation(line: 263, column: 14, scope: !1483)
!1498 = !DILocation(line: 264, column: 2, scope: !1483)
!1499 = !DILocation(line: 264, column: 29, scope: !1483)
!1500 = !DILocation(line: 265, column: 2, scope: !1483)
!1501 = !DILocation(line: 265, column: 30, scope: !1483)
!1502 = !DILocation(line: 266, column: 36, scope: !1483)
!1503 = !DILocation(line: 268, column: 41, scope: !1483)
!1504 = !DILocation(line: 268, column: 13, scope: !1483)
!1505 = !DILocation(line: 268, column: 11, scope: !1483)
!1506 = !DILocation(line: 269, column: 7, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 269, column: 6)
!1508 = !DILocation(line: 269, column: 6, scope: !1483)
!1509 = !DILocation(line: 270, column: 3, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 269, column: 17)
!1511 = !DILocation(line: 275, column: 6, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 275, column: 6)
!1513 = !DILocation(line: 275, column: 24, scope: !1512)
!1514 = !DILocation(line: 275, column: 30, scope: !1512)
!1515 = !DILocation(line: 275, column: 6, scope: !1483)
!1516 = !DILocation(line: 276, column: 3, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 275, column: 51)
!1518 = !DILocation(line: 279, column: 41, scope: !1483)
!1519 = !DILocation(line: 279, column: 11, scope: !1483)
!1520 = !DILocation(line: 279, column: 9, scope: !1483)
!1521 = !DILocation(line: 280, column: 6, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 280, column: 6)
!1523 = !DILocation(line: 280, column: 6, scope: !1483)
!1524 = !DILocation(line: 281, column: 3, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 280, column: 28)
!1526 = !DILocation(line: 285, column: 32, scope: !1483)
!1527 = !DILocation(line: 285, column: 6, scope: !1483)
!1528 = !DILocation(line: 284, column: 9, scope: !1483)
!1529 = !DILocation(line: 287, column: 6, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 287, column: 6)
!1531 = !DILocation(line: 287, column: 6, scope: !1483)
!1532 = !DILocation(line: 288, column: 3, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 287, column: 28)
!1534 = !DILocation(line: 291, column: 2, scope: !1483)
!1535 = !DILocation(line: 291, column: 20, scope: !1483)
!1536 = !DILocation(line: 291, column: 26, scope: !1483)
!1537 = !DILocation(line: 292, column: 2, scope: !1483)
!1538 = !DILocation(line: 293, column: 1, scope: !1483)
!1539 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !1238, file: !1238, line: 298, type: !1540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!42, !37}
!1542 = !DISubprogram(name: "acpi_ds_get_package_arguments", scope: !1543, file: !1543, line: 29, type: !1544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1543 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!36, !42}
!1546 = !DISubprogram(name: "acpi_ut_walk_package_tree", scope: !1547, file: !1547, line: 564, type: !1548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1547 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!36, !42, !24, !1550, !24}
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_pkg_callback", file: !1547, line: 129, baseType: !1551)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!36, !51, !42, !264, !24}
!1554 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !1555, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1561)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!24, !1557, !802}
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 61, baseType: !1558)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1559, line: 72, baseType: !1560)
!1559 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1559, line: 16, baseType: !27)
!1561 = !{!1562, !1563}
!1562 = !DILocalVariable(name: "size", arg: 1, scope: !1554, file: !12, line: 719, type: !1557)
!1563 = !DILocalVariable(name: "flags", arg: 2, scope: !1554, file: !12, line: 719, type: !802)
!1564 = !DILocation(line: 719, column: 52, scope: !1554)
!1565 = !DILocation(line: 719, column: 64, scope: !1554)
!1566 = !DILocation(line: 721, column: 17, scope: !1554)
!1567 = !DILocation(line: 721, column: 23, scope: !1554)
!1568 = !DILocation(line: 721, column: 29, scope: !1554)
!1569 = !DILocation(line: 721, column: 9, scope: !1554)
!1570 = !DILocation(line: 721, column: 2, scope: !1554)
!1571 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1572, file: !1572, line: 65, type: !1573, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1572 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!27}
!1575 = !DILocation(line: 67, column: 9, scope: !1571)
!1576 = !DILocation(line: 67, column: 2, scope: !1571)
!1577 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1572, file: !1572, line: 120, type: !1578, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1581)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!1580, !27}
!1580 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1581 = !{!1582}
!1582 = !DILocalVariable(name: "flags", arg: 1, scope: !1577, file: !1572, line: 120, type: !27)
!1583 = !DILocation(line: 120, column: 67, scope: !1577)
!1584 = !DILocation(line: 122, column: 11, scope: !1577)
!1585 = !DILocation(line: 122, column: 17, scope: !1577)
!1586 = !DILocation(line: 122, column: 9, scope: !1577)
!1587 = !DILocation(line: 122, column: 2, scope: !1577)
!1588 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !1555, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1589)
!1589 = !{!1590, !1591, !1592}
!1590 = !DILocalVariable(name: "size", arg: 1, scope: !1588, file: !12, line: 591, type: !1557)
!1591 = !DILocalVariable(name: "flags", arg: 2, scope: !1588, file: !12, line: 591, type: !802)
!1592 = !DILocalVariable(name: "index", scope: !1593, file: !12, line: 594, type: !7)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !12, line: 593, column: 42)
!1594 = distinct !DILexicalBlock(scope: !1588, file: !12, line: 593, column: 6)
!1595 = !DILocation(line: 591, column: 61, scope: !1588)
!1596 = !DILocation(line: 591, column: 73, scope: !1588)
!1597 = !DILocation(line: 593, column: 27, scope: !1594)
!1598 = !DILocation(line: 593, column: 6, scope: !1594)
!1599 = !DILocation(line: 593, column: 33, scope: !1594)
!1600 = !DILocation(line: 593, column: 36, scope: !1594)
!1601 = !DILocation(line: 593, column: 6, scope: !1588)
!1602 = !DILocation(line: 594, column: 3, scope: !1593)
!1603 = !DILocation(line: 594, column: 16, scope: !1593)
!1604 = !DILocation(line: 596, column: 7, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1593, file: !12, line: 596, column: 7)
!1606 = !DILocation(line: 596, column: 12, scope: !1605)
!1607 = !DILocation(line: 596, column: 7, scope: !1593)
!1608 = !DILocation(line: 597, column: 25, scope: !1605)
!1609 = !DILocation(line: 597, column: 31, scope: !1605)
!1610 = !DILocation(line: 597, column: 11, scope: !1605)
!1611 = !DILocation(line: 597, column: 4, scope: !1605)
!1612 = !DILocation(line: 599, column: 11, scope: !1593)
!1613 = !DILocation(line: 599, column: 9, scope: !1593)
!1614 = !DILocation(line: 601, column: 33, scope: !1593)
!1615 = !DILocation(line: 601, column: 40, scope: !1593)
!1616 = !DILocation(line: 601, column: 20, scope: !1593)
!1617 = !DILocation(line: 601, column: 5, scope: !1593)
!1618 = !DILocation(line: 601, column: 51, scope: !1593)
!1619 = !DILocation(line: 602, column: 5, scope: !1593)
!1620 = !DILocation(line: 602, column: 12, scope: !1593)
!1621 = !DILocation(line: 600, column: 10, scope: !1593)
!1622 = !DILocation(line: 600, column: 3, scope: !1593)
!1623 = !DILocation(line: 603, column: 2, scope: !1594)
!1624 = !DILocation(line: 604, column: 19, scope: !1588)
!1625 = !DILocation(line: 604, column: 25, scope: !1588)
!1626 = !DILocation(line: 604, column: 9, scope: !1588)
!1627 = !DILocation(line: 604, column: 2, scope: !1588)
!1628 = !DILocation(line: 605, column: 1, scope: !1588)
!1629 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !1555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1630 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !1631, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1635)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!7, !1557, !1633}
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !26, line: 35, baseType: !1634)
!1634 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1635 = !{!1636, !1637}
!1636 = !DILocalVariable(name: "size", arg: 1, scope: !1630, file: !12, line: 444, type: !1557)
!1637 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1630, file: !12, line: 445, type: !1633)
!1638 = !DILocation(line: 444, column: 60, scope: !1630)
!1639 = !DILocation(line: 445, column: 16, scope: !1630)
!1640 = !DILocation(line: 447, column: 7, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 447, column: 6)
!1642 = !DILocation(line: 447, column: 6, scope: !1630)
!1643 = !DILocation(line: 448, column: 3, scope: !1641)
!1644 = !DILocation(line: 450, column: 6, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 450, column: 6)
!1646 = !DILocation(line: 450, column: 11, scope: !1645)
!1647 = !DILocation(line: 450, column: 6, scope: !1630)
!1648 = !DILocation(line: 451, column: 3, scope: !1645)
!1649 = !DILocation(line: 453, column: 32, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 453, column: 6)
!1651 = !DILocation(line: 453, column: 37, scope: !1650)
!1652 = !DILocation(line: 453, column: 42, scope: !1650)
!1653 = !DILocation(line: 453, column: 45, scope: !1650)
!1654 = !DILocation(line: 453, column: 50, scope: !1650)
!1655 = !DILocation(line: 453, column: 6, scope: !1630)
!1656 = !DILocation(line: 454, column: 3, scope: !1650)
!1657 = !DILocation(line: 455, column: 32, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 455, column: 6)
!1659 = !DILocation(line: 455, column: 37, scope: !1658)
!1660 = !DILocation(line: 455, column: 43, scope: !1658)
!1661 = !DILocation(line: 455, column: 46, scope: !1658)
!1662 = !DILocation(line: 455, column: 51, scope: !1658)
!1663 = !DILocation(line: 455, column: 6, scope: !1630)
!1664 = !DILocation(line: 456, column: 3, scope: !1658)
!1665 = !DILocation(line: 457, column: 6, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 457, column: 6)
!1667 = !DILocation(line: 457, column: 11, scope: !1666)
!1668 = !DILocation(line: 457, column: 6, scope: !1630)
!1669 = !DILocation(line: 457, column: 26, scope: !1666)
!1670 = !DILocation(line: 458, column: 6, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 458, column: 6)
!1672 = !DILocation(line: 458, column: 11, scope: !1671)
!1673 = !DILocation(line: 458, column: 6, scope: !1630)
!1674 = !DILocation(line: 458, column: 26, scope: !1671)
!1675 = !DILocation(line: 459, column: 6, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 459, column: 6)
!1677 = !DILocation(line: 459, column: 11, scope: !1676)
!1678 = !DILocation(line: 459, column: 6, scope: !1630)
!1679 = !DILocation(line: 459, column: 26, scope: !1676)
!1680 = !DILocation(line: 460, column: 6, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 460, column: 6)
!1682 = !DILocation(line: 460, column: 11, scope: !1681)
!1683 = !DILocation(line: 460, column: 6, scope: !1630)
!1684 = !DILocation(line: 460, column: 26, scope: !1681)
!1685 = !DILocation(line: 461, column: 6, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 461, column: 6)
!1687 = !DILocation(line: 461, column: 11, scope: !1686)
!1688 = !DILocation(line: 461, column: 6, scope: !1630)
!1689 = !DILocation(line: 461, column: 26, scope: !1686)
!1690 = !DILocation(line: 462, column: 6, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 462, column: 6)
!1692 = !DILocation(line: 462, column: 11, scope: !1691)
!1693 = !DILocation(line: 462, column: 6, scope: !1630)
!1694 = !DILocation(line: 462, column: 26, scope: !1691)
!1695 = !DILocation(line: 463, column: 6, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 463, column: 6)
!1697 = !DILocation(line: 463, column: 11, scope: !1696)
!1698 = !DILocation(line: 463, column: 6, scope: !1630)
!1699 = !DILocation(line: 463, column: 26, scope: !1696)
!1700 = !DILocation(line: 464, column: 6, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 464, column: 6)
!1702 = !DILocation(line: 464, column: 11, scope: !1701)
!1703 = !DILocation(line: 464, column: 6, scope: !1630)
!1704 = !DILocation(line: 464, column: 26, scope: !1701)
!1705 = !DILocation(line: 465, column: 6, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 465, column: 6)
!1707 = !DILocation(line: 465, column: 11, scope: !1706)
!1708 = !DILocation(line: 465, column: 6, scope: !1630)
!1709 = !DILocation(line: 465, column: 26, scope: !1706)
!1710 = !DILocation(line: 466, column: 6, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 466, column: 6)
!1712 = !DILocation(line: 466, column: 11, scope: !1711)
!1713 = !DILocation(line: 466, column: 6, scope: !1630)
!1714 = !DILocation(line: 466, column: 26, scope: !1711)
!1715 = !DILocation(line: 467, column: 6, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 467, column: 6)
!1717 = !DILocation(line: 467, column: 11, scope: !1716)
!1718 = !DILocation(line: 467, column: 6, scope: !1630)
!1719 = !DILocation(line: 467, column: 26, scope: !1716)
!1720 = !DILocation(line: 468, column: 6, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 468, column: 6)
!1722 = !DILocation(line: 468, column: 11, scope: !1721)
!1723 = !DILocation(line: 468, column: 6, scope: !1630)
!1724 = !DILocation(line: 468, column: 26, scope: !1721)
!1725 = !DILocation(line: 469, column: 6, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 469, column: 6)
!1727 = !DILocation(line: 469, column: 11, scope: !1726)
!1728 = !DILocation(line: 469, column: 6, scope: !1630)
!1729 = !DILocation(line: 469, column: 26, scope: !1726)
!1730 = !DILocation(line: 470, column: 6, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 470, column: 6)
!1732 = !DILocation(line: 470, column: 11, scope: !1731)
!1733 = !DILocation(line: 470, column: 6, scope: !1630)
!1734 = !DILocation(line: 470, column: 26, scope: !1731)
!1735 = !DILocation(line: 471, column: 6, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 471, column: 6)
!1737 = !DILocation(line: 471, column: 11, scope: !1736)
!1738 = !DILocation(line: 471, column: 6, scope: !1630)
!1739 = !DILocation(line: 471, column: 26, scope: !1736)
!1740 = !DILocation(line: 472, column: 6, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 472, column: 6)
!1742 = !DILocation(line: 472, column: 11, scope: !1741)
!1743 = !DILocation(line: 472, column: 6, scope: !1630)
!1744 = !DILocation(line: 472, column: 26, scope: !1741)
!1745 = !DILocation(line: 473, column: 6, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 473, column: 6)
!1747 = !DILocation(line: 473, column: 11, scope: !1746)
!1748 = !DILocation(line: 473, column: 6, scope: !1630)
!1749 = !DILocation(line: 473, column: 26, scope: !1746)
!1750 = !DILocation(line: 474, column: 6, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 474, column: 6)
!1752 = !DILocation(line: 474, column: 11, scope: !1751)
!1753 = !DILocation(line: 474, column: 6, scope: !1630)
!1754 = !DILocation(line: 474, column: 27, scope: !1751)
!1755 = !DILocation(line: 475, column: 6, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 475, column: 6)
!1757 = !DILocation(line: 475, column: 11, scope: !1756)
!1758 = !DILocation(line: 475, column: 6, scope: !1630)
!1759 = !DILocation(line: 475, column: 32, scope: !1756)
!1760 = !DILocation(line: 477, column: 50, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1630, file: !12, line: 477, column: 6)
!1762 = !{i8 0, i8 2}
!1763 = !{}
!1764 = !DILocation(line: 477, column: 6, scope: !1630)
!1765 = !DILocation(line: 478, column: 3, scope: !1761)
!1766 = !DILocation(line: 478, column: 3, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !12, line: 478, column: 3)
!1768 = distinct !DILexicalBlock(scope: !1761, file: !12, line: 478, column: 3)
!1769 = !{i32 -2143030484}
!1770 = !DILocation(line: 478, column: 3, scope: !1768)
!1771 = !DILocation(line: 480, column: 3, scope: !1761)
!1772 = !DILocation(line: 480, column: 3, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1761, file: !12, line: 480, column: 3)
!1774 = !DILocation(line: 480, column: 3, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1773, file: !12, line: 480, column: 3)
!1776 = !DILocation(line: 480, column: 3, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1773, file: !12, line: 480, column: 3)
!1778 = !{i64 2151937015, i64 2151937044, i64 2151937090, i64 2151937148, i64 2151937202, i64 2151937256, i64 2151937311, i64 2151937342}
!1779 = !DILocation(line: 483, column: 2, scope: !1630)
!1780 = !DILocation(line: 484, column: 1, scope: !1630)
!1781 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !1782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!24, !1784, !802, !1557}
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1786, line: 11, flags: DIFlagFwdDecl)
!1786 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1787 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !1788, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1790)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!11, !802, !27}
!1790 = !{!1791, !1792}
!1791 = !DILocalVariable(name: "flags", arg: 1, scope: !1787, file: !12, line: 401, type: !802)
!1792 = !DILocalVariable(name: "caller", arg: 2, scope: !1787, file: !12, line: 401, type: !27)
!1793 = !DILocation(line: 401, column: 67, scope: !1787)
!1794 = !DILocation(line: 401, column: 88, scope: !1787)
!1795 = !DILocation(line: 407, column: 6, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1787, file: !12, line: 407, column: 6)
!1797 = !DILocation(line: 407, column: 6, scope: !1787)
!1798 = !DILocation(line: 413, column: 3, scope: !1796)
!1799 = !DILocation(line: 423, column: 38, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1787, file: !12, line: 423, column: 6)
!1801 = !DILocation(line: 423, column: 44, scope: !1800)
!1802 = !DILocation(line: 423, column: 6, scope: !1787)
!1803 = !DILocation(line: 424, column: 3, scope: !1800)
!1804 = !DILocation(line: 426, column: 3, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1787, file: !12, line: 425, column: 6)
!1806 = !DILocation(line: 429, column: 1, scope: !1787)
!1807 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !1555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1808 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !1809, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{null}
!1811 = distinct !DISubprogram(name: "native_save_fl", scope: !1572, file: !1572, line: 17, type: !1573, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1812)
!1812 = !{!1813}
!1813 = !DILocalVariable(name: "flags", scope: !1811, file: !1572, line: 19, type: !27)
!1814 = !DILocation(line: 19, column: 2, scope: !1811)
!1815 = !DILocation(line: 19, column: 16, scope: !1811)
!1816 = !DILocation(line: 26, column: 2, scope: !1811)
!1817 = !{i64 1526934, i64 1526955}
!1818 = !DILocation(line: 32, column: 9, scope: !1811)
!1819 = !DILocation(line: 33, column: 1, scope: !1811)
!1820 = !DILocation(line: 32, column: 2, scope: !1811)
!1821 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !1822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{null, !1824}
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1826 = !DISubprogram(name: "acpi_ns_get_type", scope: !1238, file: !1238, line: 379, type: !1827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!990, !37}
!1829 = !DISubprogram(name: "acpi_ex_enter_interpreter", scope: !1830, file: !1830, line: 464, type: !1809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1830 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1831 = !DISubprogram(name: "acpi_ds_get_bank_field_arguments", scope: !1543, file: !1543, line: 23, type: !1544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1832 = !DISubprogram(name: "acpi_ut_get_node_name", scope: !1547, file: !1547, line: 227, type: !1833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!858, !24}
!1835 = !DISubprogram(name: "acpi_ut_get_type_name", scope: !1547, file: !1547, line: 225, type: !1836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!858, !990}
!1838 = !DISubprogram(name: "acpi_ex_exit_interpreter", scope: !1830, file: !1830, line: 466, type: !1809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1839 = !DISubprogram(name: "acpi_ut_execute_STA", scope: !1547, file: !1547, line: 392, type: !1840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!36, !37, !922}
