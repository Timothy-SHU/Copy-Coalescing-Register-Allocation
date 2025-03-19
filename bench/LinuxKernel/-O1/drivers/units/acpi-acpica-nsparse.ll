; ModuleID = 'drivers/acpi/acpica/nsparse.c'
source_filename = "drivers/acpi/acpica/nsparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_object_method = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, %union.anon, i32, i16, i8 }
%union.anon = type { ptr }
%struct.acpi_evaluate_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i8, i8, i8 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@_acpi_module_name = internal constant [8 x i8] c"nsparse\00", align 1, !dbg !0
@.str = private unnamed_addr constant [5 x i8] c"OSDT\00", align 1, !dbg !48
@acpi_gbl_root_node = external dso_local global ptr, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !54

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_execute_table(i32 noundef %table_index, ptr noundef %start_node) #0 align 16 !dbg !72 {
entry:
  %retval = alloca i32, align 4
  %table_index.addr = alloca i32, align 4
  %start_node.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %table = alloca ptr, align 8
  %owner_id = alloca i16, align 2
  %info = alloca ptr, align 8
  %aml_length = alloca i32, align 4
  %aml_start = alloca ptr, align 8
  %method_obj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %table_index, ptr %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !835, metadata !DIExpression()), !dbg !926
  store ptr %start_node, ptr %start_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_node.addr, metadata !836, metadata !DIExpression()), !dbg !927
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !928
  call void @llvm.dbg.declare(metadata ptr %status, metadata !837, metadata !DIExpression()), !dbg !929
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #13, !dbg !930
  call void @llvm.dbg.declare(metadata ptr %table, metadata !838, metadata !DIExpression()), !dbg !931
  call void @llvm.lifetime.start.p0(i64 2, ptr %owner_id) #13, !dbg !932
  call void @llvm.dbg.declare(metadata ptr %owner_id, metadata !855, metadata !DIExpression()), !dbg !933
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #13, !dbg !934
  call void @llvm.dbg.declare(metadata ptr %info, metadata !856, metadata !DIExpression()), !dbg !935
  store ptr null, ptr %info, align 8, !dbg !935
  call void @llvm.lifetime.start.p0(i64 4, ptr %aml_length) #13, !dbg !936
  call void @llvm.dbg.declare(metadata ptr %aml_length, metadata !922, metadata !DIExpression()), !dbg !937
  call void @llvm.lifetime.start.p0(i64 8, ptr %aml_start) #13, !dbg !938
  call void @llvm.dbg.declare(metadata ptr %aml_start, metadata !923, metadata !DIExpression()), !dbg !939
  call void @llvm.lifetime.start.p0(i64 8, ptr %method_obj) #13, !dbg !940
  call void @llvm.dbg.declare(metadata ptr %method_obj, metadata !924, metadata !DIExpression()), !dbg !941
  store ptr null, ptr %method_obj, align 8, !dbg !941
  %0 = load i32, ptr %table_index.addr, align 4, !dbg !942
  %call = call i32 @acpi_get_table_by_index(i32 noundef %0, ptr noundef %table) #14, !dbg !943
  store i32 %call, ptr %status, align 4, !dbg !944
  %1 = load i32, ptr %status, align 4, !dbg !945
  %tobool = icmp ne i32 %1, 0, !dbg !945
  br i1 %tobool, label %if.then, label %if.end, !dbg !947

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !948
  store i32 %2, ptr %retval, align 4, !dbg !948
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup37, !dbg !948

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %table, align 8, !dbg !950
  %length = getelementptr inbounds %struct.acpi_table_header, ptr %3, i32 0, i32 1, !dbg !952
  %4 = load i32, ptr %length, align 1, !dbg !952
  %conv = zext i32 %4 to i64, !dbg !950
  %cmp = icmp ult i64 %conv, 36, !dbg !953
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !954

if.then2:                                         ; preds = %if.end
  store i32 8194, ptr %retval, align 4, !dbg !955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup37, !dbg !955

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %table, align 8, !dbg !957
  %add.ptr = getelementptr i8, ptr %5, i64 36, !dbg !958
  store ptr %add.ptr, ptr %aml_start, align 8, !dbg !959
  %6 = load ptr, ptr %table, align 8, !dbg !960
  %length4 = getelementptr inbounds %struct.acpi_table_header, ptr %6, i32 0, i32 1, !dbg !961
  %7 = load i32, ptr %length4, align 1, !dbg !961
  %conv5 = zext i32 %7 to i64, !dbg !960
  %sub = sub i64 %conv5, 36, !dbg !962
  %conv6 = trunc i64 %sub to i32, !dbg !960
  store i32 %conv6, ptr %aml_length, align 4, !dbg !963
  %8 = load i32, ptr %table_index.addr, align 4, !dbg !964
  %call7 = call i32 @acpi_tb_get_owner_id(i32 noundef %8, ptr noundef %owner_id) #14, !dbg !965
  store i32 %call7, ptr %status, align 4, !dbg !966
  %9 = load i32, ptr %status, align 4, !dbg !967
  %tobool8 = icmp ne i32 %9, 0, !dbg !967
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !969

if.then9:                                         ; preds = %if.end3
  %10 = load i32, ptr %status, align 4, !dbg !970
  store i32 %10, ptr %retval, align 4, !dbg !970
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup37, !dbg !970

if.end10:                                         ; preds = %if.end3
  %call11 = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 77, i32 noundef 16, i32 noundef 8) #14, !dbg !972
  store ptr %call11, ptr %method_obj, align 8, !dbg !973
  %11 = load ptr, ptr %method_obj, align 8, !dbg !974
  %tobool12 = icmp ne ptr %11, null, !dbg !974
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !976

if.then13:                                        ; preds = %if.end10
  store i32 4, ptr %retval, align 4, !dbg !977
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup37, !dbg !977

if.end14:                                         ; preds = %if.end10
  %call15 = call ptr @acpi_os_allocate_zeroed(i64 noundef 88) #14, !dbg !979
  store ptr %call15, ptr %info, align 8, !dbg !980
  %12 = load ptr, ptr %info, align 8, !dbg !981
  %tobool16 = icmp ne ptr %12, null, !dbg !981
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !983

if.then17:                                        ; preds = %if.end14
  store i32 4, ptr %status, align 4, !dbg !984
  br label %cleanup, !dbg !986

if.end18:                                         ; preds = %if.end14
  %13 = load ptr, ptr %aml_start, align 8, !dbg !987
  %14 = load ptr, ptr %method_obj, align 8, !dbg !988
  %aml_start19 = getelementptr inbounds %struct.acpi_object_method, ptr %14, i32 0, i32 10, !dbg !989
  store ptr %13, ptr %aml_start19, align 8, !dbg !990
  %15 = load i32, ptr %aml_length, align 4, !dbg !991
  %16 = load ptr, ptr %method_obj, align 8, !dbg !992
  %aml_length20 = getelementptr inbounds %struct.acpi_object_method, ptr %16, i32 0, i32 12, !dbg !993
  store i32 %15, ptr %aml_length20, align 8, !dbg !994
  %17 = load i16, ptr %owner_id, align 2, !dbg !995
  %18 = load ptr, ptr %method_obj, align 8, !dbg !996
  %owner_id21 = getelementptr inbounds %struct.acpi_object_method, ptr %18, i32 0, i32 13, !dbg !997
  store i16 %17, ptr %owner_id21, align 4, !dbg !998
  %19 = load ptr, ptr %method_obj, align 8, !dbg !999
  %info_flags = getelementptr inbounds %struct.acpi_object_method, ptr %19, i32 0, i32 5, !dbg !1000
  %20 = load i8, ptr %info_flags, align 1, !dbg !1001
  %conv22 = zext i8 %20 to i32, !dbg !1001
  %or = or i32 %conv22, 1, !dbg !1001
  %conv23 = trunc i32 %or to i8, !dbg !1001
  store i8 %conv23, ptr %info_flags, align 1, !dbg !1001
  %21 = load ptr, ptr %info, align 8, !dbg !1002
  %pass_number = getelementptr inbounds %struct.acpi_evaluate_info, ptr %21, i32 0, i32 13, !dbg !1003
  store i8 3, ptr %pass_number, align 4, !dbg !1004
  %22 = load ptr, ptr %start_node.addr, align 8, !dbg !1005
  %23 = load ptr, ptr %info, align 8, !dbg !1006
  %node = getelementptr inbounds %struct.acpi_evaluate_info, ptr %23, i32 0, i32 3, !dbg !1007
  store ptr %22, ptr %node, align 8, !dbg !1008
  %24 = load ptr, ptr %method_obj, align 8, !dbg !1009
  %25 = load ptr, ptr %info, align 8, !dbg !1010
  %obj_desc = getelementptr inbounds %struct.acpi_evaluate_info, ptr %25, i32 0, i32 4, !dbg !1011
  store ptr %24, ptr %obj_desc, align 8, !dbg !1012
  %26 = load ptr, ptr %info, align 8, !dbg !1013
  %node24 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %26, i32 0, i32 3, !dbg !1014
  %27 = load ptr, ptr %node24, align 8, !dbg !1014
  %flags = getelementptr inbounds %struct.acpi_namespace_node, ptr %27, i32 0, i32 3, !dbg !1015
  %28 = load i16, ptr %flags, align 2, !dbg !1015
  %29 = load ptr, ptr %info, align 8, !dbg !1016
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, ptr %29, i32 0, i32 12, !dbg !1017
  store i16 %28, ptr %node_flags, align 2, !dbg !1018
  %30 = load ptr, ptr %info, align 8, !dbg !1019
  %node25 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %30, i32 0, i32 3, !dbg !1020
  %31 = load ptr, ptr %node25, align 8, !dbg !1020
  %call26 = call ptr @acpi_ns_get_normalized_pathname(ptr noundef %31, i8 noundef zeroext 1) #14, !dbg !1021
  %32 = load ptr, ptr %info, align 8, !dbg !1022
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %32, i32 0, i32 5, !dbg !1023
  store ptr %call26, ptr %full_pathname, align 8, !dbg !1024
  %33 = load ptr, ptr %info, align 8, !dbg !1025
  %full_pathname27 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %33, i32 0, i32 5, !dbg !1027
  %34 = load ptr, ptr %full_pathname27, align 8, !dbg !1027
  %tobool28 = icmp ne ptr %34, null, !dbg !1025
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !1028

if.then29:                                        ; preds = %if.end18
  store i32 4, ptr %status, align 4, !dbg !1029
  br label %cleanup, !dbg !1031

if.end30:                                         ; preds = %if.end18
  %35 = load ptr, ptr %info, align 8, !dbg !1032
  %call31 = call i32 @acpi_ps_execute_table(ptr noundef %35) #14, !dbg !1033
  store i32 %call31, ptr %status, align 4, !dbg !1034
  br label %cleanup, !dbg !1035

cleanup:                                          ; preds = %if.end30, %if.then29, %if.then17
  call void @llvm.dbg.label(metadata !925), !dbg !1036
  %36 = load ptr, ptr %info, align 8, !dbg !1037
  %tobool32 = icmp ne ptr %36, null, !dbg !1037
  br i1 %tobool32, label %if.then33, label %if.end36, !dbg !1039

if.then33:                                        ; preds = %cleanup
  %37 = load ptr, ptr %info, align 8, !dbg !1040
  %full_pathname34 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %37, i32 0, i32 5, !dbg !1040
  %38 = load ptr, ptr %full_pathname34, align 8, !dbg !1040
  call void @acpi_os_free(ptr noundef %38) #14, !dbg !1040
  %39 = load ptr, ptr %info, align 8, !dbg !1042
  %full_pathname35 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %39, i32 0, i32 5, !dbg !1043
  store ptr null, ptr %full_pathname35, align 8, !dbg !1044
  br label %if.end36, !dbg !1045

if.end36:                                         ; preds = %if.then33, %cleanup
  %40 = load ptr, ptr %info, align 8, !dbg !1046
  call void @acpi_os_free(ptr noundef %40) #14, !dbg !1046
  %41 = load ptr, ptr %method_obj, align 8, !dbg !1047
  call void @acpi_ut_remove_reference(ptr noundef %41) #14, !dbg !1048
  %42 = load i32, ptr %status, align 4, !dbg !1049
  store i32 %42, ptr %retval, align 4, !dbg !1049
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup37, !dbg !1049

cleanup37:                                        ; preds = %if.end36, %if.then13, %if.then9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %method_obj) #13, !dbg !1050
  call void @llvm.lifetime.end.p0(i64 8, ptr %aml_start) #13, !dbg !1050
  call void @llvm.lifetime.end.p0(i64 4, ptr %aml_length) #13, !dbg !1050
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #13, !dbg !1050
  call void @llvm.lifetime.end.p0(i64 2, ptr %owner_id) #13, !dbg !1050
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #13, !dbg !1050
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1050
  %43 = load i32, ptr %retval, align 4, !dbg !1050
  ret i32 %43, !dbg !1050
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1051 dso_local i32 @acpi_get_table_by_index(i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1056 dso_local i32 @acpi_tb_get_owner_id(i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1061 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #4 align 16 !dbg !1066 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1071, metadata !DIExpression()), !dbg !1082
  %0 = load i64, ptr %size.addr, align 8, !dbg !1083
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !1084
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1072, metadata !DIExpression()), !dbg !1084
  br label %do.body, !dbg !1084

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !1085
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1074, metadata !DIExpression()), !dbg !1085
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !1085
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1077, metadata !DIExpression()), !dbg !1085
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1085
  %conv = zext i1 %cmp to i32, !dbg !1085
  store i32 1, ptr %tmp, align 4, !dbg !1085
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !1086
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !1086
  %1 = load i32, ptr %tmp, align 4, !dbg !1085
  %call = call i64 @arch_local_save_flags() #14, !dbg !1086
  store i64 %call, ptr %_flags, align 8, !dbg !1086
  br label %do.cond, !dbg !1086

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1086

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !1087
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1078, metadata !DIExpression()), !dbg !1087
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !1087
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1081, metadata !DIExpression()), !dbg !1087
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1087
  %conv6 = zext i1 %cmp5 to i32, !dbg !1087
  store i32 1, ptr %tmp7, align 4, !dbg !1087
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !1088
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !1088
  %2 = load i32, ptr %tmp7, align 4, !dbg !1087
  %3 = load i64, ptr %_flags, align 8, !dbg !1088
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !1088
  store i32 %call9, ptr %tmp8, align 4, !dbg !1088
  %4 = load i32, ptr %tmp8, align 4, !dbg !1088
  store i32 %4, ptr %tmp1, align 4, !dbg !1086
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !1089
  %5 = load i32, ptr %tmp1, align 4, !dbg !1084
  %tobool = icmp ne i32 %5, 0, !dbg !1089
  %6 = zext i1 %tobool to i64, !dbg !1089
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1089
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !1090
  ret ptr %call10, !dbg !1091
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1092 dso_local ptr @acpi_ns_get_normalized_pathname(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1096 dso_local i32 @acpi_ps_execute_table(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !1100 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1104, metadata !DIExpression()), !dbg !1105
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1106
  call void @kfree(ptr noundef %0) #14, !dbg !1107
  ret void, !dbg !1108
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1109 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_one_complete_parse(i32 noundef %pass_number, i32 noundef %table_index, ptr noundef %start_node) #0 align 16 !dbg !1112 {
entry:
  %retval = alloca i32, align 4
  %pass_number.addr = alloca i32, align 4
  %table_index.addr = alloca i32, align 4
  %start_node.addr = alloca ptr, align 8
  %parse_root = alloca ptr, align 8
  %status = alloca i32, align 4
  %aml_length = alloca i32, align 4
  %aml_start = alloca ptr, align 8
  %walk_state = alloca ptr, align 8
  %table = alloca ptr, align 8
  %owner_id = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %pass_number, ptr %pass_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pass_number.addr, metadata !1116, metadata !DIExpression()), !dbg !1127
  store i32 %table_index, ptr %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !1117, metadata !DIExpression()), !dbg !1128
  store ptr %start_node, ptr %start_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_node.addr, metadata !1118, metadata !DIExpression()), !dbg !1129
  call void @llvm.lifetime.start.p0(i64 8, ptr %parse_root) #13, !dbg !1130
  call void @llvm.dbg.declare(metadata ptr %parse_root, metadata !1119, metadata !DIExpression()), !dbg !1131
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1132
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1120, metadata !DIExpression()), !dbg !1133
  call void @llvm.lifetime.start.p0(i64 4, ptr %aml_length) #13, !dbg !1134
  call void @llvm.dbg.declare(metadata ptr %aml_length, metadata !1121, metadata !DIExpression()), !dbg !1135
  call void @llvm.lifetime.start.p0(i64 8, ptr %aml_start) #13, !dbg !1136
  call void @llvm.dbg.declare(metadata ptr %aml_start, metadata !1122, metadata !DIExpression()), !dbg !1137
  call void @llvm.lifetime.start.p0(i64 8, ptr %walk_state) #13, !dbg !1138
  call void @llvm.dbg.declare(metadata ptr %walk_state, metadata !1123, metadata !DIExpression()), !dbg !1139
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #13, !dbg !1140
  call void @llvm.dbg.declare(metadata ptr %table, metadata !1124, metadata !DIExpression()), !dbg !1141
  call void @llvm.lifetime.start.p0(i64 2, ptr %owner_id) #13, !dbg !1142
  call void @llvm.dbg.declare(metadata ptr %owner_id, metadata !1125, metadata !DIExpression()), !dbg !1143
  %0 = load i32, ptr %table_index.addr, align 4, !dbg !1144
  %call = call i32 @acpi_get_table_by_index(i32 noundef %0, ptr noundef %table) #14, !dbg !1145
  store i32 %call, ptr %status, align 4, !dbg !1146
  %1 = load i32, ptr %status, align 4, !dbg !1147
  %tobool = icmp ne i32 %1, 0, !dbg !1147
  br i1 %tobool, label %if.then, label %if.end, !dbg !1149

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !1150
  store i32 %2, ptr %retval, align 4, !dbg !1150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !1150

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %table, align 8, !dbg !1152
  %length = getelementptr inbounds %struct.acpi_table_header, ptr %3, i32 0, i32 1, !dbg !1154
  %4 = load i32, ptr %length, align 1, !dbg !1154
  %conv = zext i32 %4 to i64, !dbg !1152
  %cmp = icmp ult i64 %conv, 36, !dbg !1155
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1156

if.then2:                                         ; preds = %if.end
  store i32 8194, ptr %retval, align 4, !dbg !1157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !1157

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %table, align 8, !dbg !1159
  %add.ptr = getelementptr i8, ptr %5, i64 36, !dbg !1160
  store ptr %add.ptr, ptr %aml_start, align 8, !dbg !1161
  %6 = load ptr, ptr %table, align 8, !dbg !1162
  %length4 = getelementptr inbounds %struct.acpi_table_header, ptr %6, i32 0, i32 1, !dbg !1163
  %7 = load i32, ptr %length4, align 1, !dbg !1163
  %conv5 = zext i32 %7 to i64, !dbg !1162
  %sub = sub i64 %conv5, 36, !dbg !1164
  %conv6 = trunc i64 %sub to i32, !dbg !1162
  store i32 %conv6, ptr %aml_length, align 4, !dbg !1165
  %8 = load i32, ptr %table_index.addr, align 4, !dbg !1166
  %call7 = call i32 @acpi_tb_get_owner_id(i32 noundef %8, ptr noundef %owner_id) #14, !dbg !1167
  store i32 %call7, ptr %status, align 4, !dbg !1168
  %9 = load i32, ptr %status, align 4, !dbg !1169
  %tobool8 = icmp ne i32 %9, 0, !dbg !1169
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1171

if.then9:                                         ; preds = %if.end3
  %10 = load i32, ptr %status, align 4, !dbg !1172
  store i32 %10, ptr %retval, align 4, !dbg !1172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !1172

if.end10:                                         ; preds = %if.end3
  %11 = load ptr, ptr %aml_start, align 8, !dbg !1174
  %call11 = call ptr @acpi_ps_create_scope_op(ptr noundef %11) #14, !dbg !1175
  store ptr %call11, ptr %parse_root, align 8, !dbg !1176
  %12 = load ptr, ptr %parse_root, align 8, !dbg !1177
  %tobool12 = icmp ne ptr %12, null, !dbg !1177
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !1179

if.then13:                                        ; preds = %if.end10
  store i32 4, ptr %retval, align 4, !dbg !1180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !1180

if.end14:                                         ; preds = %if.end10
  %13 = load i16, ptr %owner_id, align 2, !dbg !1182
  %call15 = call ptr @acpi_ds_create_walk_state(i16 noundef zeroext %13, ptr noundef null, ptr noundef null, ptr noundef null) #14, !dbg !1183
  store ptr %call15, ptr %walk_state, align 8, !dbg !1184
  %14 = load ptr, ptr %walk_state, align 8, !dbg !1185
  %tobool16 = icmp ne ptr %14, null, !dbg !1185
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !1187

if.then17:                                        ; preds = %if.end14
  %15 = load ptr, ptr %parse_root, align 8, !dbg !1188
  call void @acpi_ps_free_op(ptr noundef %15) #14, !dbg !1190
  store i32 4, ptr %retval, align 4, !dbg !1191
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !1191

if.end18:                                         ; preds = %if.end14
  %16 = load ptr, ptr %walk_state, align 8, !dbg !1192
  %17 = load ptr, ptr %parse_root, align 8, !dbg !1193
  %18 = load ptr, ptr %aml_start, align 8, !dbg !1194
  %19 = load i32, ptr %aml_length, align 4, !dbg !1195
  %20 = load i32, ptr %pass_number.addr, align 4, !dbg !1196
  %conv19 = trunc i32 %20 to i8, !dbg !1197
  %call20 = call i32 @acpi_ds_init_aml_walk(ptr noundef %16, ptr noundef %17, ptr noundef null, ptr noundef %18, i32 noundef %19, ptr noundef null, i8 noundef zeroext %conv19) #14, !dbg !1198
  store i32 %call20, ptr %status, align 4, !dbg !1199
  %21 = load i32, ptr %status, align 4, !dbg !1200
  %tobool21 = icmp ne i32 %21, 0, !dbg !1200
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !1202

if.then22:                                        ; preds = %if.end18
  %22 = load ptr, ptr %walk_state, align 8, !dbg !1203
  call void @acpi_ds_delete_walk_state(ptr noundef %22) #14, !dbg !1205
  br label %cleanup, !dbg !1206

if.end23:                                         ; preds = %if.end18
  %23 = load ptr, ptr %table, align 8, !dbg !1207
  %signature = getelementptr inbounds %struct.acpi_table_header, ptr %23, i32 0, i32 0, !dbg !1207
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature, i64 0, i64 0, !dbg !1207
  %24 = ptrtoint ptr %arraydecay to i64, !dbg !1207
  %25 = inttoptr i64 %24 to ptr, !dbg !1207
  %26 = load i32, ptr %25, align 4, !dbg !1207
  %27 = load i32, ptr @.str, align 4, !dbg !1207
  %cmp24 = icmp eq i32 %26, %27, !dbg !1207
  br i1 %cmp24, label %land.lhs.true, label %if.end29, !dbg !1209

land.lhs.true:                                    ; preds = %if.end23
  %28 = load i32, ptr %pass_number.addr, align 4, !dbg !1210
  %cmp26 = icmp eq i32 %28, 1, !dbg !1211
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !1212

if.then28:                                        ; preds = %land.lhs.true
  %29 = load ptr, ptr %walk_state, align 8, !dbg !1213
  %namespace_override = getelementptr inbounds %struct.acpi_walk_state, ptr %29, i32 0, i32 13, !dbg !1215
  store i8 1, ptr %namespace_override, align 1, !dbg !1216
  br label %if.end29, !dbg !1217

if.end29:                                         ; preds = %if.then28, %land.lhs.true, %if.end23
  %30 = load ptr, ptr %start_node.addr, align 8, !dbg !1218
  %tobool30 = icmp ne ptr %30, null, !dbg !1218
  br i1 %tobool30, label %land.lhs.true31, label %if.end39, !dbg !1220

land.lhs.true31:                                  ; preds = %if.end29
  %31 = load ptr, ptr %start_node.addr, align 8, !dbg !1221
  %32 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1222
  %cmp32 = icmp ne ptr %31, %32, !dbg !1223
  br i1 %cmp32, label %if.then34, label %if.end39, !dbg !1224

if.then34:                                        ; preds = %land.lhs.true31
  %33 = load ptr, ptr %start_node.addr, align 8, !dbg !1225
  %34 = load ptr, ptr %walk_state, align 8, !dbg !1227
  %call35 = call i32 @acpi_ds_scope_stack_push(ptr noundef %33, i32 noundef 8, ptr noundef %34) #14, !dbg !1228
  store i32 %call35, ptr %status, align 4, !dbg !1229
  %35 = load i32, ptr %status, align 4, !dbg !1230
  %tobool36 = icmp ne i32 %35, 0, !dbg !1230
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !1232

if.then37:                                        ; preds = %if.then34
  %36 = load ptr, ptr %walk_state, align 8, !dbg !1233
  call void @acpi_ds_delete_walk_state(ptr noundef %36) #14, !dbg !1235
  br label %cleanup, !dbg !1236

if.end38:                                         ; preds = %if.then34
  br label %if.end39, !dbg !1237

if.end39:                                         ; preds = %if.end38, %land.lhs.true31, %if.end29
  call void @acpi_ex_enter_interpreter() #14, !dbg !1238
  %37 = load ptr, ptr %walk_state, align 8, !dbg !1239
  %call40 = call i32 @acpi_ps_parse_aml(ptr noundef %37) #14, !dbg !1240
  store i32 %call40, ptr %status, align 4, !dbg !1241
  call void @acpi_ex_exit_interpreter() #14, !dbg !1242
  br label %cleanup, !dbg !1242

cleanup:                                          ; preds = %if.end39, %if.then37, %if.then22
  call void @llvm.dbg.label(metadata !1126), !dbg !1243
  %38 = load ptr, ptr %parse_root, align 8, !dbg !1244
  call void @acpi_ps_delete_parse_tree(ptr noundef %38) #14, !dbg !1245
  %39 = load i32, ptr %status, align 4, !dbg !1246
  store i32 %39, ptr %retval, align 4, !dbg !1246
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !1246

cleanup41:                                        ; preds = %cleanup, %if.then17, %if.then13, %if.then9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %owner_id) #13, !dbg !1247
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #13, !dbg !1247
  call void @llvm.lifetime.end.p0(i64 8, ptr %walk_state) #13, !dbg !1247
  call void @llvm.lifetime.end.p0(i64 8, ptr %aml_start) #13, !dbg !1247
  call void @llvm.lifetime.end.p0(i64 4, ptr %aml_length) #13, !dbg !1247
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1247
  call void @llvm.lifetime.end.p0(i64 8, ptr %parse_root) #13, !dbg !1247
  %40 = load i32, ptr %retval, align 4, !dbg !1247
  ret i32 %40, !dbg !1247
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1248 dso_local ptr @acpi_ps_create_scope_op(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1251 dso_local ptr @acpi_ds_create_walk_state(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1255 dso_local void @acpi_ps_free_op(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1258 dso_local i32 @acpi_ds_init_aml_walk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1261 dso_local void @acpi_ds_delete_walk_state(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1264 dso_local i32 @acpi_ds_scope_stack_push(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1267 dso_local void @acpi_ex_enter_interpreter() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1271 dso_local i32 @acpi_ps_parse_aml(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1272 dso_local void @acpi_ex_exit_interpreter() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1273 dso_local void @acpi_ps_delete_parse_tree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_parse_table(i32 noundef %table_index, ptr noundef %start_node) #0 align 16 !dbg !1274 {
entry:
  %table_index.addr = alloca i32, align 4
  %start_node.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store i32 %table_index, ptr %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !1276, metadata !DIExpression()), !dbg !1279
  store ptr %start_node, ptr %start_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_node.addr, metadata !1277, metadata !DIExpression()), !dbg !1280
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1281
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1278, metadata !DIExpression()), !dbg !1282
  %0 = load i32, ptr %table_index.addr, align 4, !dbg !1283
  %1 = load ptr, ptr %start_node.addr, align 8, !dbg !1284
  %call = call i32 @acpi_ns_execute_table(i32 noundef %0, ptr noundef %1) #14, !dbg !1285
  store i32 %call, ptr %status, align 4, !dbg !1286
  %2 = load i32, ptr %status, align 4, !dbg !1287
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1288
  ret i32 %2, !dbg !1287
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1289 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1297, metadata !DIExpression()), !dbg !1299
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1298, metadata !DIExpression()), !dbg !1300
  %0 = load i64, ptr %size.addr, align 8, !dbg !1301
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1302
  %or = or i32 %1, 256, !dbg !1303
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !1304
  ret ptr %call, !dbg !1305
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !1306 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !1310
  ret i64 %call, !dbg !1311
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !1312 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1317, metadata !DIExpression()), !dbg !1318
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1319
  %and = and i64 %0, 512, !dbg !1320
  %tobool = icmp ne i64 %and, 0, !dbg !1321
  %lnot = xor i1 %tobool, true, !dbg !1321
  %lnot.ext = zext i1 %lnot to i32, !dbg !1321
  ret i32 %lnot.ext, !dbg !1322
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1323 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1325, metadata !DIExpression()), !dbg !1330
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1326, metadata !DIExpression()), !dbg !1331
  %0 = load i64, ptr %size.addr, align 8, !dbg !1332
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1333
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1334

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1335
  %tobool = icmp ne i64 %2, 0, !dbg !1335
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1336

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !1337
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1327, metadata !DIExpression()), !dbg !1338
  %3 = load i64, ptr %size.addr, align 8, !dbg !1339
  %cmp = icmp ugt i64 %3, 8192, !dbg !1341
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1342

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1343
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1344
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !1345
  store ptr %call, ptr %retval, align 8, !dbg !1346
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1346

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1347
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !1347
  store i32 %call2, ptr %index, align 4, !dbg !1348
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1349
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1350
  %9 = ptrtoint ptr %8 to i64, !dbg !1350
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !1351
  %idxprom = zext i32 %call3 to i64, !dbg !1352
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1352
  %10 = load i32, ptr %index, align 4, !dbg !1353
  %idxprom4 = zext i32 %10 to i64, !dbg !1352
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1352
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1352
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1354
  %13 = load i64, ptr %size.addr, align 8, !dbg !1355
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !1356
  store ptr %call6, ptr %retval, align 8, !dbg !1357
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1357

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !1358
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1359
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1360
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !1361
  store ptr %call8, ptr %retval, align 8, !dbg !1362
  br label %return, !dbg !1362

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1363
  ret ptr %16, !dbg !1363
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1364 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !1365 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1371, metadata !DIExpression()), !dbg !1373
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1372, metadata !DIExpression()), !dbg !1374
  %0 = load i64, ptr %size.addr, align 8, !dbg !1375
  %tobool = icmp ne i64 %0, 0, !dbg !1375
  br i1 %tobool, label %if.end, label %if.then, !dbg !1377

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1378
  br label %return, !dbg !1378

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1379
  %cmp = icmp ule i64 %1, 8, !dbg !1381
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1382

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1383
  br label %return, !dbg !1383

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1384
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1386
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1387

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1388
  %cmp4 = icmp ule i64 %3, 96, !dbg !1389
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1390

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1391
  br label %return, !dbg !1391

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1392
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1394
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1395

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1396
  %cmp9 = icmp ule i64 %5, 192, !dbg !1397
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1398

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1399
  br label %return, !dbg !1399

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1400
  %cmp12 = icmp ule i64 %6, 8, !dbg !1402
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1403

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1404
  br label %return, !dbg !1404

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1405
  %cmp15 = icmp ule i64 %7, 16, !dbg !1407
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1408

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1409
  br label %return, !dbg !1409

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1410
  %cmp18 = icmp ule i64 %8, 32, !dbg !1412
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1413

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1414
  br label %return, !dbg !1414

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1415
  %cmp21 = icmp ule i64 %9, 64, !dbg !1417
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1418

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1419
  br label %return, !dbg !1419

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1420
  %cmp24 = icmp ule i64 %10, 128, !dbg !1422
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1423

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1424
  br label %return, !dbg !1424

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1425
  %cmp27 = icmp ule i64 %11, 256, !dbg !1427
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1428

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1429
  br label %return, !dbg !1429

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1430
  %cmp30 = icmp ule i64 %12, 512, !dbg !1432
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1433

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1434
  br label %return, !dbg !1434

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1435
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1437
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1438

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1439
  br label %return, !dbg !1439

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1440
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1442
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1443

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1444
  br label %return, !dbg !1444

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1445
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1447
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1448

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1449
  br label %return, !dbg !1449

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1450
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1452
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1453

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1454
  br label %return, !dbg !1454

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1455
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1457
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1458

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1459
  br label %return, !dbg !1459

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1460
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1462
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1463

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1464
  br label %return, !dbg !1464

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1465
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1467
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1468

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1469
  br label %return, !dbg !1469

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1470
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1472
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1473

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1474
  br label %return, !dbg !1474

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1475
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1477
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1478

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1479
  br label %return, !dbg !1479

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1480
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1482
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1483

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1484
  br label %return, !dbg !1484

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1485
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1487
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1488

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1489
  br label %return, !dbg !1489

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1490
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1492
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1493

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1494
  br label %return, !dbg !1494

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1495, !range !1497, !noundef !1498
  %tobool69 = trunc i8 %25 to i1, !dbg !1495
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1499

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1500

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !1501, !srcloc !1504
  unreachable, !dbg !1501

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1505

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1506

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1507

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1509

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1507

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #13, !dbg !1511, !srcloc !1513
  br label %do.end75, !dbg !1511

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1507

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1514
  br label %return, !dbg !1514

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1515
  ret i32 %26, !dbg !1515
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1516 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !1522 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1526, metadata !DIExpression()), !dbg !1528
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1527, metadata !DIExpression()), !dbg !1529
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1530
  %and = and i32 %0, 17, !dbg !1530
  %cmp = icmp eq i32 %and, 0, !dbg !1530
  %lnot = xor i1 %cmp, true, !dbg !1530
  %lnot1 = xor i1 %lnot, true, !dbg !1530
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1530
  %conv = sext i32 %lnot.ext to i64, !dbg !1530
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1530
  %tobool = icmp ne i64 %expval, 0, !dbg !1530
  br i1 %tobool, label %if.then, label %if.end, !dbg !1532

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1533
  br label %return, !dbg !1533

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1534
  %and2 = and i32 %1, 1, !dbg !1536
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1536
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1537

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1538
  br label %return, !dbg !1538

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1539
  br label %return, !dbg !1539

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1541
  ret i32 %2, !dbg !1541
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1542 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1543 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !1544 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1547
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1546, metadata !DIExpression()), !dbg !1548
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !1549, !srcloc !1550
  %0 = load i64, ptr %flags, align 8, !dbg !1551
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1552
  ret i64 %0, !dbg !1553
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1554 dso_local void @kfree(ptr noundef) #3

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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 19, type: !59, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.nsparse.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22nsparse\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/nsparse.ll drivers/acpi/acpica/nsparse.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !27, globals: !47, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsparse.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e227a88046b617ff790a158307917852")
!4 = !{!5, !12, !17}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 10, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "false", value: 0)
!16 = !DIEnumerator(name: "true", value: 1)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !18, line: 364, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!19 = !{!20, !21, !22, !23, !24, !25, !26}
!20 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!21 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!22 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!23 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!24 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!25 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!26 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!27 = !{!28, !34, !38, !35, !42, !43, !46, !45}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !29, line: 421, baseType: !30)
!29 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !31, line: 21, baseType: !32)
!31 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !33, line: 27, baseType: !7)
!33 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !31, line: 17, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !33, line: 21, baseType: !37)
!37 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !29, line: 127, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !31, line: 23, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !33, line: 31, baseType: !41)
!41 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !44, line: 42, baseType: !45)
!44 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!45 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !44, line: 154, baseType: !7)
!47 = !{!48, !0, !54}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !3, line: 206, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 40, elements: !52)
!51 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!52 = !{!53}
!53 = !DISubrange(count: 5)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !18, line: 480, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 168, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 21)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 64, elements: !61)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!61 = !{!62}
!62 = !DISubrange(count: 8)
!63 = !{i32 7, !"Dwarf Version", i32 5}
!64 = !{i32 2, !"Debug Info Version", i32 3}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 8, !"cf-protection-branch", i32 1}
!67 = !{i32 4, !"function_return_thunk_extern", i32 1}
!68 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!69 = !{i32 1, !"Code Model", i32 2}
!70 = !{i32 1, !"override-stack-alignment", i32 8}
!71 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!72 = distinct !DISubprogram(name: "acpi_ns_execute_table", scope: !3, file: !3, line: 44, type: !73, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !834)
!73 = !DISubroutineType(types: !74)
!74 = !{!28, !30, !75}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !77)
!77 = !{!78, !821, !822, !823, !824, !830, !831, !832, !833}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !76, file: !6, line: 134, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !81, line: 369, size: 576, elements: !82)
!81 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!82 = !{!83, !94, !107, !118, !131, !145, !155, !470, !487, !503, !516, !594, !606, !620, !630, !648, !670, !689, !708, !727, !740, !767, !784, !797, !811, !820}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !80, file: !81, line: 370, baseType: !84, size: 128)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !81, line: 73, size: 128, elements: !85)
!85 = !{!86, !87, !88, !89, !93}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !84, file: !81, line: 74, baseType: !79, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !84, file: !81, line: 74, baseType: !35, size: 8, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !84, file: !81, line: 74, baseType: !35, size: 8, offset: 72)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !84, file: !81, line: 74, baseType: !90, size: 16, offset: 80)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !31, line: 19, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !33, line: 24, baseType: !92)
!92 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !84, file: !81, line: 74, baseType: !35, size: 8, offset: 96)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !80, file: !81, line: 371, baseType: !95, size: 192)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !81, line: 76, size: 192, elements: !96)
!96 = !{!97, !98, !99, !100, !101, !102, !106}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !95, file: !81, line: 77, baseType: !79, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !95, file: !81, line: 77, baseType: !35, size: 8, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !95, file: !81, line: 77, baseType: !35, size: 8, offset: 72)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !95, file: !81, line: 77, baseType: !90, size: 16, offset: 80)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !95, file: !81, line: 77, baseType: !35, size: 8, offset: 96)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !95, file: !81, line: 77, baseType: !103, size: 24, offset: 104)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 24, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 3)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !95, file: !81, line: 78, baseType: !39, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !80, file: !81, line: 372, baseType: !108, size: 256)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !81, line: 93, size: 256, elements: !109)
!109 = !{!110, !111, !112, !113, !114, !115, !117}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !108, file: !81, line: 94, baseType: !79, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !108, file: !81, line: 94, baseType: !35, size: 8, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !108, file: !81, line: 94, baseType: !35, size: 8, offset: 72)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !108, file: !81, line: 94, baseType: !90, size: 16, offset: 80)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !108, file: !81, line: 94, baseType: !35, size: 8, offset: 96)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !108, file: !81, line: 94, baseType: !116, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !108, file: !81, line: 94, baseType: !30, size: 32, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !80, file: !81, line: 373, baseType: !119, size: 384)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !81, line: 97, size: 384, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !119, file: !81, line: 98, baseType: !79, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !119, file: !81, line: 98, baseType: !35, size: 8, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !81, line: 98, baseType: !35, size: 8, offset: 72)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !119, file: !81, line: 98, baseType: !90, size: 16, offset: 80)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !81, line: 98, baseType: !35, size: 8, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !119, file: !81, line: 98, baseType: !34, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !119, file: !81, line: 98, baseType: !30, size: 32, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !119, file: !81, line: 99, baseType: !30, size: 32, offset: 224)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !119, file: !81, line: 100, baseType: !34, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !119, file: !81, line: 101, baseType: !75, size: 64, offset: 320)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !80, file: !81, line: 374, baseType: !132, size: 384)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !81, line: 104, size: 384, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !142, !143, !144}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !132, file: !81, line: 105, baseType: !79, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !132, file: !81, line: 105, baseType: !35, size: 8, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !81, line: 105, baseType: !35, size: 8, offset: 72)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !132, file: !81, line: 105, baseType: !90, size: 16, offset: 80)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !132, file: !81, line: 105, baseType: !35, size: 8, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !132, file: !81, line: 105, baseType: !75, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !132, file: !81, line: 106, baseType: !141, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !132, file: !81, line: 107, baseType: !34, size: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !132, file: !81, line: 108, baseType: !30, size: 32, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !132, file: !81, line: 109, baseType: !30, size: 32, offset: 352)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !80, file: !81, line: 375, baseType: !146, size: 192)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !81, line: 118, size: 192, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !146, file: !81, line: 119, baseType: !79, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !146, file: !81, line: 119, baseType: !35, size: 8, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !81, line: 119, baseType: !35, size: 8, offset: 72)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !146, file: !81, line: 119, baseType: !90, size: 16, offset: 80)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !81, line: 119, baseType: !35, size: 8, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !146, file: !81, line: 119, baseType: !154, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !80, file: !81, line: 376, baseType: !156, size: 448)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !81, line: 144, size: 448, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !467, !468, !469}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !156, file: !81, line: 145, baseType: !79, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !156, file: !81, line: 145, baseType: !35, size: 8, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !156, file: !81, line: 145, baseType: !35, size: 8, offset: 72)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !156, file: !81, line: 145, baseType: !90, size: 16, offset: 80)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !156, file: !81, line: 145, baseType: !35, size: 8, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !156, file: !81, line: 145, baseType: !35, size: 8, offset: 104)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !156, file: !81, line: 146, baseType: !35, size: 8, offset: 112)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !156, file: !81, line: 147, baseType: !35, size: 8, offset: 120)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !156, file: !81, line: 148, baseType: !79, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !156, file: !81, line: 149, baseType: !79, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !156, file: !81, line: 150, baseType: !34, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !156, file: !81, line: 154, baseType: !170, size: 64, offset: 320)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !156, file: !81, line: 151, size: 64, elements: !171)
!171 = !{!172, !466}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !170, file: !81, line: 152, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!28, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !179, line: 37, size: 9024, elements: !180)
!179 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!180 = !{!181, !182, !183, !184, !185, !186, !187, !188, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !412, !413, !414, !415, !416, !420, !422, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !449, !450, !451, !452, !453, !454, !455, !456, !458, !464}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !179, line: 38, baseType: !177, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !178, file: !179, line: 39, baseType: !35, size: 8, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !178, file: !179, line: 40, baseType: !35, size: 8, offset: 72)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !178, file: !179, line: 41, baseType: !90, size: 16, offset: 80)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !178, file: !179, line: 42, baseType: !35, size: 8, offset: 96)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !178, file: !179, line: 43, baseType: !35, size: 8, offset: 104)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !178, file: !179, line: 44, baseType: !35, size: 8, offset: 112)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !178, file: !179, line: 45, baseType: !189, size: 16, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !29, line: 445, baseType: !90)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !178, file: !179, line: 46, baseType: !35, size: 8, offset: 144)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !178, file: !179, line: 47, baseType: !35, size: 8, offset: 152)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !178, file: !179, line: 48, baseType: !35, size: 8, offset: 160)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !178, file: !179, line: 49, baseType: !35, size: 8, offset: 168)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !178, file: !179, line: 50, baseType: !35, size: 8, offset: 176)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !178, file: !179, line: 51, baseType: !35, size: 8, offset: 184)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !178, file: !179, line: 52, baseType: !35, size: 8, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !178, file: !179, line: 53, baseType: !35, size: 8, offset: 200)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !178, file: !179, line: 54, baseType: !34, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !178, file: !179, line: 55, baseType: !30, size: 32, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !178, file: !179, line: 56, baseType: !30, size: 32, offset: 352)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !178, file: !179, line: 57, baseType: !30, size: 32, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !178, file: !179, line: 58, baseType: !30, size: 32, offset: 416)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !178, file: !179, line: 60, baseType: !204, size: 640, offset: 448)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 909, size: 640, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !295, !296, !410, !411}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !204, file: !6, line: 910, baseType: !34, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !204, file: !6, line: 911, baseType: !34, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !204, file: !6, line: 912, baseType: !34, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !204, file: !6, line: 913, baseType: !34, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !204, file: !6, line: 914, baseType: !34, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !204, file: !6, line: 915, baseType: !212, size: 64, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 891, size: 1600, elements: !214)
!214 = !{!215, !235, !251}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !213, file: !6, line: 892, baseType: !216, size: 448)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 844, size: 448, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !234}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !216, file: !6, line: 845, baseType: !212, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !216, file: !6, line: 845, baseType: !35, size: 8, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !216, file: !6, line: 845, baseType: !35, size: 8, offset: 72)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !216, file: !6, line: 845, baseType: !90, size: 16, offset: 80)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !216, file: !6, line: 845, baseType: !34, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !6, line: 845, baseType: !212, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !216, file: !6, line: 845, baseType: !75, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !216, file: !6, line: 845, baseType: !226, size: 64, offset: 320)
!226 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 732, size: 64, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !233}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !226, file: !6, line: 733, baseType: !39, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !226, file: !6, line: 734, baseType: !30, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !226, file: !6, line: 735, baseType: !116, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !226, file: !6, line: 736, baseType: !34, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !226, file: !6, line: 737, baseType: !116, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !226, file: !6, line: 738, baseType: !212, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !216, file: !6, line: 845, baseType: !35, size: 8, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !213, file: !6, line: 893, baseType: !236, size: 640)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 851, size: 640, elements: !237)
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !236, file: !6, line: 852, baseType: !212, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !236, file: !6, line: 852, baseType: !35, size: 8, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !236, file: !6, line: 852, baseType: !35, size: 8, offset: 72)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !236, file: !6, line: 852, baseType: !90, size: 16, offset: 80)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !236, file: !6, line: 852, baseType: !34, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !236, file: !6, line: 852, baseType: !212, size: 64, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !236, file: !6, line: 852, baseType: !75, size: 64, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !236, file: !6, line: 852, baseType: !226, size: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !236, file: !6, line: 852, baseType: !35, size: 8, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !236, file: !6, line: 852, baseType: !116, size: 64, offset: 448)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !236, file: !6, line: 853, baseType: !34, size: 64, offset: 512)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !236, file: !6, line: 854, baseType: !30, size: 32, offset: 576)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !236, file: !6, line: 855, baseType: !30, size: 32, offset: 608)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !213, file: !6, line: 894, baseType: !252, size: 1600)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 862, size: 1600, elements: !253)
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !252, file: !6, line: 863, baseType: !212, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !252, file: !6, line: 863, baseType: !35, size: 8, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !252, file: !6, line: 863, baseType: !35, size: 8, offset: 72)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !252, file: !6, line: 863, baseType: !90, size: 16, offset: 80)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !252, file: !6, line: 863, baseType: !34, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !252, file: !6, line: 863, baseType: !212, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !252, file: !6, line: 863, baseType: !75, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !252, file: !6, line: 863, baseType: !226, size: 64, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !252, file: !6, line: 863, baseType: !35, size: 8, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !252, file: !6, line: 863, baseType: !212, size: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !252, file: !6, line: 864, baseType: !212, size: 64, offset: 512)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !252, file: !6, line: 865, baseType: !116, size: 64, offset: 576)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !252, file: !6, line: 866, baseType: !35, size: 8, offset: 640)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !252, file: !6, line: 867, baseType: !116, size: 64, offset: 704)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !252, file: !6, line: 868, baseType: !116, size: 64, offset: 768)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !252, file: !6, line: 869, baseType: !116, size: 64, offset: 832)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !252, file: !6, line: 870, baseType: !271, size: 32, offset: 896)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 32, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 4)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !252, file: !6, line: 871, baseType: !30, size: 32, offset: 928)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !252, file: !6, line: 872, baseType: !30, size: 32, offset: 960)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !252, file: !6, line: 873, baseType: !30, size: 32, offset: 992)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !252, file: !6, line: 874, baseType: !30, size: 32, offset: 1024)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !252, file: !6, line: 875, baseType: !30, size: 32, offset: 1056)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !252, file: !6, line: 876, baseType: !30, size: 32, offset: 1088)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !252, file: !6, line: 877, baseType: !30, size: 32, offset: 1120)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !252, file: !6, line: 878, baseType: !30, size: 32, offset: 1152)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !252, file: !6, line: 879, baseType: !30, size: 32, offset: 1184)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !252, file: !6, line: 880, baseType: !30, size: 32, offset: 1216)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !252, file: !6, line: 881, baseType: !30, size: 32, offset: 1248)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !252, file: !6, line: 882, baseType: !30, size: 32, offset: 1280)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !252, file: !6, line: 883, baseType: !30, size: 32, offset: 1312)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !252, file: !6, line: 884, baseType: !90, size: 16, offset: 1344)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !252, file: !6, line: 885, baseType: !35, size: 8, offset: 1360)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !252, file: !6, line: 886, baseType: !35, size: 8, offset: 1368)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !252, file: !6, line: 887, baseType: !35, size: 8, offset: 1376)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !252, file: !6, line: 888, baseType: !292, size: 160, offset: 1384)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 160, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 20)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !204, file: !6, line: 916, baseType: !75, size: 64, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !204, file: !6, line: 917, baseType: !297, size: 64, offset: 448)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 679, size: 640, elements: !299)
!299 = !{!300, !308, !321, !330, !339, !352, !366, !378, !388}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !298, file: !6, line: 680, baseType: !301, size: 128)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 575, size: 128, elements: !302)
!302 = !{!303, !304, !305, !306, !307}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !6, line: 576, baseType: !154, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !301, file: !6, line: 576, baseType: !35, size: 8, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !6, line: 576, baseType: !35, size: 8, offset: 72)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !301, file: !6, line: 576, baseType: !90, size: 16, offset: 80)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !301, file: !6, line: 576, baseType: !90, size: 16, offset: 96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !298, file: !6, line: 681, baseType: !309, size: 384)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 604, size: 384, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !6, line: 605, baseType: !154, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !309, file: !6, line: 605, baseType: !35, size: 8, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !6, line: 605, baseType: !35, size: 8, offset: 72)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !309, file: !6, line: 605, baseType: !90, size: 16, offset: 80)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !309, file: !6, line: 605, baseType: !90, size: 16, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !309, file: !6, line: 606, baseType: !90, size: 16, offset: 112)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !309, file: !6, line: 607, baseType: !212, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !309, file: !6, line: 608, baseType: !34, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !309, file: !6, line: 609, baseType: !34, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !309, file: !6, line: 610, baseType: !39, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !298, file: !6, line: 682, baseType: !322, size: 192)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 582, size: 192, elements: !323)
!323 = !{!324, !325, !326, !327, !328, !329}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !322, file: !6, line: 583, baseType: !154, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !322, file: !6, line: 583, baseType: !35, size: 8, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !6, line: 583, baseType: !35, size: 8, offset: 72)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !322, file: !6, line: 583, baseType: !90, size: 16, offset: 80)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !322, file: !6, line: 583, baseType: !90, size: 16, offset: 96)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !322, file: !6, line: 584, baseType: !79, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !298, file: !6, line: 683, baseType: !331, size: 192)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 616, size: 192, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !331, file: !6, line: 617, baseType: !154, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !331, file: !6, line: 617, baseType: !35, size: 8, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !331, file: !6, line: 617, baseType: !35, size: 8, offset: 72)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !331, file: !6, line: 617, baseType: !90, size: 16, offset: 80)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !331, file: !6, line: 617, baseType: !90, size: 16, offset: 96)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !331, file: !6, line: 618, baseType: !75, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !298, file: !6, line: 684, baseType: !340, size: 448)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 621, size: 448, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !350, !351}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !340, file: !6, line: 622, baseType: !154, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !340, file: !6, line: 622, baseType: !35, size: 8, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !6, line: 622, baseType: !35, size: 8, offset: 72)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !340, file: !6, line: 622, baseType: !90, size: 16, offset: 80)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !340, file: !6, line: 622, baseType: !90, size: 16, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !340, file: !6, line: 623, baseType: !30, size: 32, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !340, file: !6, line: 624, baseType: !212, size: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !340, file: !6, line: 625, baseType: !34, size: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !340, file: !6, line: 626, baseType: !34, size: 64, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !340, file: !6, line: 627, baseType: !30, size: 32, offset: 384)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !298, file: !6, line: 685, baseType: !353, size: 512)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 590, size: 512, elements: !354)
!354 = !{!355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !6, line: 591, baseType: !154, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !353, file: !6, line: 591, baseType: !35, size: 8, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !353, file: !6, line: 591, baseType: !35, size: 8, offset: 72)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !353, file: !6, line: 591, baseType: !90, size: 16, offset: 80)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !353, file: !6, line: 591, baseType: !90, size: 16, offset: 96)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !353, file: !6, line: 592, baseType: !30, size: 32, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !353, file: !6, line: 593, baseType: !79, size: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !353, file: !6, line: 594, baseType: !79, size: 64, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !353, file: !6, line: 595, baseType: !177, size: 64, offset: 320)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !353, file: !6, line: 596, baseType: !154, size: 64, offset: 384)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !353, file: !6, line: 597, baseType: !30, size: 32, offset: 448)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !298, file: !6, line: 686, baseType: !367, size: 320)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 634, size: 320, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !367, file: !6, line: 635, baseType: !154, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !367, file: !6, line: 635, baseType: !35, size: 8, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !367, file: !6, line: 635, baseType: !35, size: 8, offset: 72)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !367, file: !6, line: 635, baseType: !90, size: 16, offset: 80)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !367, file: !6, line: 635, baseType: !90, size: 16, offset: 96)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !367, file: !6, line: 636, baseType: !35, size: 8, offset: 112)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !367, file: !6, line: 637, baseType: !177, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !367, file: !6, line: 638, baseType: !79, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !367, file: !6, line: 639, baseType: !39, size: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !298, file: !6, line: 687, baseType: !379, size: 640)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 646, size: 640, elements: !380)
!380 = !{!381, !382, !383, !384, !385, !386}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !379, file: !6, line: 647, baseType: !154, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !379, file: !6, line: 647, baseType: !35, size: 8, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !379, file: !6, line: 647, baseType: !35, size: 8, offset: 72)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !379, file: !6, line: 647, baseType: !90, size: 16, offset: 80)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !379, file: !6, line: 647, baseType: !90, size: 16, offset: 96)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !379, file: !6, line: 648, baseType: !387, size: 512, offset: 128)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 512, elements: !61)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !298, file: !6, line: 688, baseType: !389, size: 320)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 669, size: 320, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !389, file: !6, line: 670, baseType: !154, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !389, file: !6, line: 670, baseType: !35, size: 8, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !389, file: !6, line: 670, baseType: !35, size: 8, offset: 72)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !389, file: !6, line: 670, baseType: !90, size: 16, offset: 80)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !389, file: !6, line: 670, baseType: !90, size: 16, offset: 96)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !389, file: !6, line: 671, baseType: !35, size: 8, offset: 112)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !389, file: !6, line: 672, baseType: !75, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !389, file: !6, line: 673, baseType: !79, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !389, file: !6, line: 674, baseType: !400, size: 64, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 660, size: 128, elements: !402)
!402 = !{!403, !409}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !401, file: !6, line: 661, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !29, line: 1061, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !408, !30, !154}
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !29, line: 424, baseType: !154)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !401, file: !6, line: 662, baseType: !154, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !204, file: !6, line: 918, baseType: !212, size: 64, offset: 512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !204, file: !6, line: 919, baseType: !30, size: 32, offset: 576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !178, file: !179, line: 61, baseType: !30, size: 32, offset: 1088)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !178, file: !179, line: 62, baseType: !30, size: 32, offset: 1120)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !178, file: !179, line: 63, baseType: !90, size: 16, offset: 1152)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !178, file: !179, line: 64, baseType: !35, size: 8, offset: 1168)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !178, file: !179, line: 66, baseType: !417, size: 2688, offset: 1216)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 2688, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 7)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !178, file: !179, line: 67, baseType: !421, size: 3072, offset: 3904)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 3072, elements: !61)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !178, file: !179, line: 68, baseType: !423, size: 576, offset: 6976)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 576, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 9)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !178, file: !179, line: 69, baseType: !141, size: 64, offset: 7552)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !178, file: !179, line: 71, baseType: !34, size: 64, offset: 7616)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !178, file: !179, line: 72, baseType: !141, size: 64, offset: 7680)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !178, file: !179, line: 73, baseType: !297, size: 64, offset: 7744)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !178, file: !179, line: 74, baseType: !75, size: 64, offset: 7808)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !178, file: !179, line: 75, baseType: !79, size: 64, offset: 7872)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !178, file: !179, line: 76, baseType: !75, size: 64, offset: 7936)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !178, file: !179, line: 77, baseType: !212, size: 64, offset: 8000)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !178, file: !179, line: 78, baseType: !79, size: 64, offset: 8064)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !178, file: !179, line: 79, baseType: !75, size: 64, offset: 8128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !178, file: !179, line: 80, baseType: !116, size: 64, offset: 8192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !178, file: !179, line: 81, baseType: !212, size: 64, offset: 8256)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !178, file: !179, line: 82, baseType: !439, size: 64, offset: 8320)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 718, size: 128, elements: !442)
!442 = !{!443, !444, !445, !446, !447, !448}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !441, file: !6, line: 722, baseType: !30, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !441, file: !6, line: 723, baseType: !30, size: 32, offset: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !441, file: !6, line: 724, baseType: !90, size: 16, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !441, file: !6, line: 725, baseType: !35, size: 8, offset: 80)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !441, file: !6, line: 726, baseType: !35, size: 8, offset: 88)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !441, file: !6, line: 727, baseType: !35, size: 8, offset: 96)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !178, file: !179, line: 83, baseType: !212, size: 64, offset: 8384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !178, file: !179, line: 84, baseType: !79, size: 64, offset: 8448)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !178, file: !179, line: 85, baseType: !297, size: 64, offset: 8512)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !178, file: !179, line: 86, baseType: !79, size: 64, offset: 8576)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !178, file: !179, line: 87, baseType: !297, size: 64, offset: 8640)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !178, file: !179, line: 88, baseType: !212, size: 64, offset: 8704)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !178, file: !179, line: 89, baseType: !212, size: 64, offset: 8768)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !178, file: !179, line: 90, baseType: !457, size: 64, offset: 8832)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !178, file: !179, line: 91, baseType: !459, size: 64, offset: 8896)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 652, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!28, !177, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !178, file: !179, line: 92, baseType: !465, size: 64, offset: 8960)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 656, baseType: !174)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !170, file: !81, line: 153, baseType: !79, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !156, file: !81, line: 156, baseType: !30, size: 32, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !156, file: !81, line: 157, baseType: !189, size: 16, offset: 416)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !156, file: !81, line: 158, baseType: !35, size: 8, offset: 432)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !80, file: !81, line: 377, baseType: !471, size: 576)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !81, line: 122, size: 576, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !471, file: !81, line: 123, baseType: !79, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !471, file: !81, line: 123, baseType: !35, size: 8, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !471, file: !81, line: 123, baseType: !35, size: 8, offset: 72)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !471, file: !81, line: 123, baseType: !90, size: 16, offset: 80)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !471, file: !81, line: 123, baseType: !35, size: 8, offset: 96)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !471, file: !81, line: 123, baseType: !35, size: 8, offset: 104)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !471, file: !81, line: 124, baseType: !90, size: 16, offset: 112)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !471, file: !81, line: 125, baseType: !154, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !471, file: !81, line: 126, baseType: !39, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !471, file: !81, line: 127, baseType: !457, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !471, file: !81, line: 128, baseType: !79, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !471, file: !81, line: 129, baseType: !79, size: 64, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !471, file: !81, line: 130, baseType: !75, size: 64, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !471, file: !81, line: 131, baseType: !35, size: 8, offset: 512)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !80, file: !81, line: 378, baseType: !488, size: 512)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !81, line: 134, size: 512, elements: !489)
!489 = !{!490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !501, !502}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !488, file: !81, line: 135, baseType: !79, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !488, file: !81, line: 135, baseType: !35, size: 8, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !488, file: !81, line: 135, baseType: !35, size: 8, offset: 72)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !488, file: !81, line: 135, baseType: !90, size: 16, offset: 80)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !488, file: !81, line: 135, baseType: !35, size: 8, offset: 96)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !488, file: !81, line: 135, baseType: !35, size: 8, offset: 104)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !488, file: !81, line: 136, baseType: !75, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !488, file: !81, line: 137, baseType: !79, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !488, file: !81, line: 138, baseType: !79, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !488, file: !81, line: 139, baseType: !500, size: 64, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !29, line: 129, baseType: !39)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !488, file: !81, line: 140, baseType: !30, size: 32, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !488, file: !81, line: 141, baseType: !154, size: 64, offset: 448)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !80, file: !81, line: 379, baseType: !504, size: 320)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !81, line: 185, size: 320, elements: !505)
!505 = !{!506, !507, !508, !509, !510, !511, !515}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !504, file: !81, line: 186, baseType: !79, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !504, file: !81, line: 186, baseType: !35, size: 8, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !504, file: !81, line: 186, baseType: !35, size: 8, offset: 72)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !504, file: !81, line: 186, baseType: !90, size: 16, offset: 80)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !504, file: !81, line: 186, baseType: !35, size: 8, offset: 96)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !504, file: !81, line: 186, baseType: !512, size: 128, offset: 128)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 128, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 2)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !504, file: !81, line: 186, baseType: !79, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !80, file: !81, line: 380, baseType: !517, size: 384)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !81, line: 188, size: 384, elements: !518)
!518 = !{!519, !520, !521, !522, !523, !524, !525, !526}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !517, file: !81, line: 189, baseType: !79, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !517, file: !81, line: 189, baseType: !35, size: 8, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !517, file: !81, line: 189, baseType: !35, size: 8, offset: 72)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !517, file: !81, line: 189, baseType: !90, size: 16, offset: 80)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !517, file: !81, line: 189, baseType: !35, size: 8, offset: 96)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !517, file: !81, line: 190, baseType: !512, size: 128, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !517, file: !81, line: 190, baseType: !79, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !517, file: !81, line: 190, baseType: !527, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !529)
!529 = !{!530, !531, !532, !533, !541, !556, !588, !589, !590, !591, !592, !593}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !528, file: !6, line: 481, baseType: !75, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !528, file: !6, line: 482, baseType: !527, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !528, file: !6, line: 483, baseType: !527, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !528, file: !6, line: 484, baseType: !534, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !536)
!536 = !{!537, !538, !539, !540}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !535, file: !6, line: 498, baseType: !534, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !535, file: !6, line: 499, baseType: !534, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !535, file: !6, line: 500, baseType: !527, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !535, file: !6, line: 501, baseType: !30, size: 32, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !528, file: !6, line: 485, baseType: !542, size: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !544)
!544 = !{!545, !550, !551, !552, !553, !554, !555}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !543, file: !6, line: 467, baseType: !546, size: 128)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !547)
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !546, file: !6, line: 460, baseType: !35, size: 8)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !546, file: !6, line: 461, baseType: !39, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !543, file: !6, line: 468, baseType: !546, size: 128, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !543, file: !6, line: 469, baseType: !90, size: 16, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !543, file: !6, line: 470, baseType: !35, size: 8, offset: 272)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !543, file: !6, line: 471, baseType: !35, size: 8, offset: 280)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !543, file: !6, line: 472, baseType: !35, size: 8, offset: 288)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !543, file: !6, line: 473, baseType: !35, size: 8, offset: 296)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !528, file: !6, line: 486, baseType: !557, size: 64, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !559)
!559 = !{!560, !583, !584, !585, !586, !587}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !558, file: !6, line: 449, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !562)
!562 = !{!563, !564, !577}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !561, file: !6, line: 439, baseType: !75, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !561, file: !6, line: 440, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !567)
!567 = !{!568, !573, !574, !575, !576}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !566, file: !6, line: 420, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !29, line: 1058, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!30, !408, !30, !154}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !566, file: !6, line: 421, baseType: !154, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !566, file: !6, line: 422, baseType: !75, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !566, file: !6, line: 423, baseType: !35, size: 8, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !566, file: !6, line: 424, baseType: !35, size: 8, offset: 200)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !561, file: !6, line: 441, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !580)
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !579, file: !6, line: 430, baseType: !75, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !579, file: !6, line: 431, baseType: !578, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !558, file: !6, line: 450, baseType: !542, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !558, file: !6, line: 451, baseType: !35, size: 8, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !558, file: !6, line: 452, baseType: !35, size: 8, offset: 136)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !558, file: !6, line: 453, baseType: !35, size: 8, offset: 144)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !558, file: !6, line: 454, baseType: !35, size: 8, offset: 152)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !528, file: !6, line: 487, baseType: !39, size: 64, offset: 384)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !528, file: !6, line: 488, baseType: !30, size: 32, offset: 448)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !528, file: !6, line: 489, baseType: !90, size: 16, offset: 480)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !528, file: !6, line: 490, baseType: !90, size: 16, offset: 496)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !528, file: !6, line: 491, baseType: !35, size: 8, offset: 512)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !528, file: !6, line: 492, baseType: !35, size: 8, offset: 520)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !80, file: !81, line: 381, baseType: !595, size: 384)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !81, line: 193, size: 384, elements: !596)
!596 = !{!597, !598, !599, !600, !601, !602, !603, !604, !605}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !595, file: !81, line: 194, baseType: !79, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !595, file: !81, line: 194, baseType: !35, size: 8, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !595, file: !81, line: 194, baseType: !35, size: 8, offset: 72)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !595, file: !81, line: 194, baseType: !90, size: 16, offset: 80)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !595, file: !81, line: 194, baseType: !35, size: 8, offset: 96)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !595, file: !81, line: 194, baseType: !512, size: 128, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !595, file: !81, line: 194, baseType: !79, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !595, file: !81, line: 194, baseType: !30, size: 32, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !595, file: !81, line: 195, baseType: !30, size: 32, offset: 352)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !80, file: !81, line: 382, baseType: !607, size: 384)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !81, line: 198, size: 384, elements: !608)
!608 = !{!609, !610, !611, !612, !613, !614, !615, !616, !617, !618}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !607, file: !81, line: 199, baseType: !79, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !607, file: !81, line: 199, baseType: !35, size: 8, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !607, file: !81, line: 199, baseType: !35, size: 8, offset: 72)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !607, file: !81, line: 199, baseType: !90, size: 16, offset: 80)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !607, file: !81, line: 199, baseType: !35, size: 8, offset: 96)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !607, file: !81, line: 201, baseType: !35, size: 8, offset: 104)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !607, file: !81, line: 202, baseType: !35, size: 8, offset: 112)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !607, file: !81, line: 203, baseType: !512, size: 128, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !607, file: !81, line: 203, baseType: !79, size: 64, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !607, file: !81, line: 203, baseType: !619, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !29, line: 128, baseType: !39)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !80, file: !81, line: 383, baseType: !621, size: 320)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !81, line: 206, size: 320, elements: !622)
!622 = !{!623, !624, !625, !626, !627, !628, !629}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !621, file: !81, line: 207, baseType: !79, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !621, file: !81, line: 207, baseType: !35, size: 8, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !621, file: !81, line: 207, baseType: !35, size: 8, offset: 72)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !621, file: !81, line: 207, baseType: !90, size: 16, offset: 80)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !621, file: !81, line: 207, baseType: !35, size: 8, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !621, file: !81, line: 207, baseType: !512, size: 128, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !621, file: !81, line: 207, baseType: !79, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !80, file: !81, line: 384, baseType: !631, size: 384)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !81, line: 234, size: 384, elements: !632)
!632 = !{!633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !631, file: !81, line: 235, baseType: !79, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !631, file: !81, line: 235, baseType: !35, size: 8, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !631, file: !81, line: 235, baseType: !35, size: 8, offset: 72)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !631, file: !81, line: 235, baseType: !90, size: 16, offset: 80)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !631, file: !81, line: 235, baseType: !35, size: 8, offset: 96)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !631, file: !81, line: 235, baseType: !35, size: 8, offset: 104)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !631, file: !81, line: 235, baseType: !35, size: 8, offset: 112)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !631, file: !81, line: 235, baseType: !35, size: 8, offset: 120)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !631, file: !81, line: 235, baseType: !75, size: 64, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !631, file: !81, line: 235, baseType: !30, size: 32, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !631, file: !81, line: 235, baseType: !30, size: 32, offset: 224)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !631, file: !81, line: 235, baseType: !30, size: 32, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !631, file: !81, line: 235, baseType: !35, size: 8, offset: 288)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !631, file: !81, line: 235, baseType: !35, size: 8, offset: 296)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !631, file: !81, line: 235, baseType: !79, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !80, file: !81, line: 385, baseType: !649, size: 576)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !81, line: 238, size: 576, elements: !650)
!650 = !{!651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !649, file: !81, line: 239, baseType: !79, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !649, file: !81, line: 239, baseType: !35, size: 8, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !649, file: !81, line: 239, baseType: !35, size: 8, offset: 72)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !649, file: !81, line: 239, baseType: !90, size: 16, offset: 80)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !649, file: !81, line: 239, baseType: !35, size: 8, offset: 96)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !649, file: !81, line: 239, baseType: !35, size: 8, offset: 104)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !649, file: !81, line: 239, baseType: !35, size: 8, offset: 112)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !649, file: !81, line: 239, baseType: !35, size: 8, offset: 120)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !649, file: !81, line: 239, baseType: !75, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !649, file: !81, line: 239, baseType: !30, size: 32, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !649, file: !81, line: 239, baseType: !30, size: 32, offset: 224)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !649, file: !81, line: 239, baseType: !30, size: 32, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !649, file: !81, line: 239, baseType: !35, size: 8, offset: 288)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !649, file: !81, line: 239, baseType: !35, size: 8, offset: 296)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !649, file: !81, line: 239, baseType: !90, size: 16, offset: 304)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !649, file: !81, line: 240, baseType: !79, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !649, file: !81, line: 241, baseType: !34, size: 64, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !649, file: !81, line: 242, baseType: !90, size: 16, offset: 448)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !649, file: !81, line: 243, baseType: !34, size: 64, offset: 512)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !80, file: !81, line: 386, baseType: !671, size: 384)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !81, line: 263, size: 384, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !671, file: !81, line: 264, baseType: !79, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !81, line: 264, baseType: !35, size: 8, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !81, line: 264, baseType: !35, size: 8, offset: 72)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !671, file: !81, line: 264, baseType: !90, size: 16, offset: 80)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !81, line: 264, baseType: !35, size: 8, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !671, file: !81, line: 264, baseType: !35, size: 8, offset: 104)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !671, file: !81, line: 264, baseType: !35, size: 8, offset: 112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !671, file: !81, line: 264, baseType: !35, size: 8, offset: 120)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !671, file: !81, line: 264, baseType: !75, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !671, file: !81, line: 264, baseType: !30, size: 32, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !671, file: !81, line: 264, baseType: !30, size: 32, offset: 224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !671, file: !81, line: 264, baseType: !30, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !671, file: !81, line: 264, baseType: !35, size: 8, offset: 288)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !671, file: !81, line: 264, baseType: !35, size: 8, offset: 296)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !671, file: !81, line: 264, baseType: !35, size: 8, offset: 304)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !671, file: !81, line: 265, baseType: !79, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !80, file: !81, line: 387, baseType: !690, size: 448)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !81, line: 246, size: 448, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !690, file: !81, line: 247, baseType: !79, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !690, file: !81, line: 247, baseType: !35, size: 8, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !81, line: 247, baseType: !35, size: 8, offset: 72)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !690, file: !81, line: 247, baseType: !90, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !81, line: 247, baseType: !35, size: 8, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !690, file: !81, line: 247, baseType: !35, size: 8, offset: 104)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !690, file: !81, line: 247, baseType: !35, size: 8, offset: 112)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !690, file: !81, line: 247, baseType: !35, size: 8, offset: 120)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !690, file: !81, line: 247, baseType: !75, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !690, file: !81, line: 247, baseType: !30, size: 32, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !690, file: !81, line: 247, baseType: !30, size: 32, offset: 224)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !690, file: !81, line: 247, baseType: !30, size: 32, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !690, file: !81, line: 247, baseType: !35, size: 8, offset: 288)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !690, file: !81, line: 247, baseType: !35, size: 8, offset: 296)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !690, file: !81, line: 247, baseType: !79, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !690, file: !81, line: 248, baseType: !79, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !80, file: !81, line: 388, baseType: !709, size: 448)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !81, line: 251, size: 448, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !709, file: !81, line: 252, baseType: !79, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !81, line: 252, baseType: !35, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !81, line: 252, baseType: !35, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !709, file: !81, line: 252, baseType: !90, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !81, line: 252, baseType: !35, size: 8, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !709, file: !81, line: 252, baseType: !35, size: 8, offset: 104)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !709, file: !81, line: 252, baseType: !35, size: 8, offset: 112)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !709, file: !81, line: 252, baseType: !35, size: 8, offset: 120)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !81, line: 252, baseType: !75, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !709, file: !81, line: 252, baseType: !30, size: 32, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !709, file: !81, line: 252, baseType: !30, size: 32, offset: 224)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !709, file: !81, line: 252, baseType: !30, size: 32, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !709, file: !81, line: 252, baseType: !35, size: 8, offset: 288)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !709, file: !81, line: 252, baseType: !35, size: 8, offset: 296)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !709, file: !81, line: 257, baseType: !79, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !709, file: !81, line: 258, baseType: !79, size: 64, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !80, file: !81, line: 389, baseType: !728, size: 512)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !81, line: 274, size: 512, elements: !729)
!729 = !{!730, !731, !732, !733, !734, !735, !736, !737, !738, !739}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !728, file: !81, line: 275, baseType: !79, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !728, file: !81, line: 275, baseType: !35, size: 8, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !728, file: !81, line: 275, baseType: !35, size: 8, offset: 72)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !728, file: !81, line: 275, baseType: !90, size: 16, offset: 80)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !728, file: !81, line: 275, baseType: !35, size: 8, offset: 96)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !728, file: !81, line: 275, baseType: !75, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !728, file: !81, line: 276, baseType: !30, size: 32, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !728, file: !81, line: 277, baseType: !404, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !728, file: !81, line: 278, baseType: !154, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !728, file: !81, line: 279, baseType: !512, size: 128, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !80, file: !81, line: 390, baseType: !741, size: 576)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !81, line: 282, size: 576, elements: !742)
!742 = !{!743, !744, !745, !746, !747, !748, !749, !750, !756, !757, !758, !759, !765, !766}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !741, file: !81, line: 283, baseType: !79, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !741, file: !81, line: 283, baseType: !35, size: 8, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !741, file: !81, line: 283, baseType: !35, size: 8, offset: 72)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !741, file: !81, line: 283, baseType: !90, size: 16, offset: 80)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !741, file: !81, line: 283, baseType: !35, size: 8, offset: 96)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !741, file: !81, line: 283, baseType: !35, size: 8, offset: 104)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !741, file: !81, line: 284, baseType: !35, size: 8, offset: 112)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !741, file: !81, line: 285, baseType: !751, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !29, line: 1093, baseType: !752)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!28, !30, !500, !30, !755, !154, !154}
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !741, file: !81, line: 286, baseType: !75, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !741, file: !81, line: 287, baseType: !154, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !741, file: !81, line: 288, baseType: !154, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !741, file: !81, line: 289, baseType: !760, size: 64, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !29, line: 1126, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!28, !408, !30, !154, !764}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !741, file: !81, line: 290, baseType: !79, size: 64, offset: 448)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !741, file: !81, line: 291, baseType: !79, size: 64, offset: 512)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !80, file: !81, line: 391, baseType: !768, size: 512)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !81, line: 309, size: 512, elements: !769)
!769 = !{!770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !768, file: !81, line: 310, baseType: !79, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !768, file: !81, line: 310, baseType: !35, size: 8, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !768, file: !81, line: 310, baseType: !35, size: 8, offset: 72)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !768, file: !81, line: 310, baseType: !90, size: 16, offset: 80)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !768, file: !81, line: 310, baseType: !35, size: 8, offset: 96)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !768, file: !81, line: 310, baseType: !35, size: 8, offset: 104)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !768, file: !81, line: 311, baseType: !35, size: 8, offset: 112)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !768, file: !81, line: 312, baseType: !35, size: 8, offset: 120)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !768, file: !81, line: 313, baseType: !154, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !768, file: !81, line: 314, baseType: !75, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !768, file: !81, line: 315, baseType: !141, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !768, file: !81, line: 316, baseType: !34, size: 64, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !768, file: !81, line: 317, baseType: !34, size: 64, offset: 384)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !768, file: !81, line: 318, baseType: !30, size: 32, offset: 448)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !80, file: !81, line: 392, baseType: !785, size: 448)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !81, line: 342, size: 448, elements: !786)
!786 = !{!787, !788, !789, !790, !791, !792, !793, !794, !795, !796}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !785, file: !81, line: 343, baseType: !79, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !785, file: !81, line: 343, baseType: !35, size: 8, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !785, file: !81, line: 343, baseType: !35, size: 8, offset: 72)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !785, file: !81, line: 343, baseType: !90, size: 16, offset: 80)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !785, file: !81, line: 343, baseType: !35, size: 8, offset: 96)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !785, file: !81, line: 343, baseType: !75, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !785, file: !81, line: 344, baseType: !75, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !785, file: !81, line: 345, baseType: !154, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !785, file: !81, line: 346, baseType: !34, size: 64, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !785, file: !81, line: 347, baseType: !30, size: 32, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !80, file: !81, line: 393, baseType: !798, size: 256)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !81, line: 352, size: 256, elements: !799)
!799 = !{!800, !801, !802, !803, !804, !805, !810}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !798, file: !81, line: 353, baseType: !79, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !798, file: !81, line: 353, baseType: !35, size: 8, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !798, file: !81, line: 353, baseType: !35, size: 8, offset: 72)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !798, file: !81, line: 353, baseType: !90, size: 16, offset: 80)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !798, file: !81, line: 353, baseType: !35, size: 8, offset: 96)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !798, file: !81, line: 353, baseType: !806, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !29, line: 1064, baseType: !807)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !408, !154}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !798, file: !81, line: 354, baseType: !154, size: 64, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !80, file: !81, line: 394, baseType: !812, size: 192)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !81, line: 359, size: 192, elements: !813)
!813 = !{!814, !815, !816, !817, !818, !819}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !812, file: !81, line: 360, baseType: !79, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !812, file: !81, line: 360, baseType: !35, size: 8, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !812, file: !81, line: 360, baseType: !35, size: 8, offset: 72)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !812, file: !81, line: 360, baseType: !90, size: 16, offset: 80)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !812, file: !81, line: 360, baseType: !35, size: 8, offset: 96)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !812, file: !81, line: 360, baseType: !79, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !80, file: !81, line: 401, baseType: !76, size: 384)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !76, file: !6, line: 135, baseType: !35, size: 8, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !76, file: !6, line: 136, baseType: !35, size: 8, offset: 72)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !76, file: !6, line: 137, baseType: !90, size: 16, offset: 80)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !76, file: !6, line: 138, baseType: !825, size: 32, offset: 96)
!825 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !826, line: 328, size: 32, elements: !827)
!826 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !825, file: !826, line: 329, baseType: !30, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !825, file: !826, line: 330, baseType: !271, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !76, file: !6, line: 139, baseType: !75, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !76, file: !6, line: 140, baseType: !75, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !76, file: !6, line: 141, baseType: !75, size: 64, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !76, file: !6, line: 142, baseType: !189, size: 16, offset: 320)
!834 = !{!835, !836, !837, !838, !855, !856, !922, !923, !924, !925}
!835 = !DILocalVariable(name: "table_index", arg: 1, scope: !72, file: !3, line: 44, type: !30)
!836 = !DILocalVariable(name: "start_node", arg: 2, scope: !72, file: !3, line: 44, type: !75)
!837 = !DILocalVariable(name: "status", scope: !72, file: !3, line: 46, type: !28)
!838 = !DILocalVariable(name: "table", scope: !72, file: !3, line: 47, type: !839)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !826, line: 68, size: 288, elements: !841)
!841 = !{!842, !843, !844, !845, !846, !850, !852, !853, !854}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !840, file: !826, line: 69, baseType: !271, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !840, file: !826, line: 70, baseType: !30, size: 32, offset: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !840, file: !826, line: 71, baseType: !35, size: 8, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !840, file: !826, line: 72, baseType: !35, size: 8, offset: 72)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !840, file: !826, line: 73, baseType: !847, size: 48, offset: 80)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 48, elements: !848)
!848 = !{!849}
!849 = !DISubrange(count: 6)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !840, file: !826, line: 74, baseType: !851, size: 64, offset: 128)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !61)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !840, file: !826, line: 75, baseType: !30, size: 32, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !840, file: !826, line: 76, baseType: !271, size: 32, offset: 224)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !840, file: !826, line: 77, baseType: !30, size: 32, offset: 256)
!855 = !DILocalVariable(name: "owner_id", scope: !72, file: !3, line: 48, type: !189)
!856 = !DILocalVariable(name: "info", scope: !72, file: !3, line: 49, type: !857)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !179, line: 152, size: 704, elements: !859)
!859 = !{!860, !861, !863, !864, !865, !866, !867, !913, !914, !915, !916, !917, !918, !919, !920, !921}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !858, file: !179, line: 155, baseType: !75, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !858, file: !179, line: 156, baseType: !862, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !858, file: !179, line: 157, baseType: !141, size: 64, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !858, file: !179, line: 159, baseType: !75, size: 64, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !858, file: !179, line: 160, baseType: !79, size: 64, offset: 256)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !858, file: !179, line: 161, baseType: !116, size: 64, offset: 320)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !858, file: !179, line: 163, baseType: !868, size: 64, offset: 384)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !870)
!870 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !6, line: 351, size: 56, elements: !871)
!871 = !{!872, !878, !887, !895, !904}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !870, file: !6, line: 352, baseType: !873, size: 56)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !6, line: 295, size: 56, elements: !874)
!874 = !{!875, !876, !877}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !873, file: !6, line: 296, baseType: !271, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !873, file: !6, line: 297, baseType: !90, size: 16, offset: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !873, file: !6, line: 298, baseType: !35, size: 8, offset: 48)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !870, file: !6, line: 353, baseType: !879, size: 56)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !6, line: 314, size: 56, elements: !880)
!880 = !{!881, !882, !883, !884, !885, !886}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !879, file: !6, line: 315, baseType: !35, size: 8)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !879, file: !6, line: 316, baseType: !35, size: 8, offset: 8)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !879, file: !6, line: 317, baseType: !35, size: 8, offset: 16)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !879, file: !6, line: 318, baseType: !35, size: 8, offset: 24)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !879, file: !6, line: 319, baseType: !35, size: 8, offset: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !879, file: !6, line: 320, baseType: !90, size: 16, offset: 40)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !870, file: !6, line: 354, baseType: !888, size: 56)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !6, line: 325, size: 56, elements: !889)
!889 = !{!890, !891, !892, !894}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !888, file: !6, line: 326, baseType: !35, size: 8)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !888, file: !6, line: 327, baseType: !35, size: 8, offset: 8)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !888, file: !6, line: 328, baseType: !893, size: 32, offset: 16)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !272)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !888, file: !6, line: 329, baseType: !35, size: 8, offset: 48)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !870, file: !6, line: 355, baseType: !896, size: 56)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !6, line: 334, size: 56, elements: !897)
!897 = !{!898, !899, !900, !902, !903}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !896, file: !6, line: 335, baseType: !35, size: 8)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !896, file: !6, line: 336, baseType: !35, size: 8, offset: 8)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !896, file: !6, line: 337, baseType: !901, size: 16, offset: 16)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 16, elements: !513)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !896, file: !6, line: 338, baseType: !35, size: 8, offset: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !896, file: !6, line: 339, baseType: !90, size: 16, offset: 40)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !870, file: !6, line: 356, baseType: !905, size: 56)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !6, line: 342, size: 56, elements: !906)
!906 = !{!907, !908, !909, !910, !911, !912}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !905, file: !6, line: 343, baseType: !35, size: 8)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !905, file: !6, line: 344, baseType: !35, size: 8, offset: 8)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !905, file: !6, line: 345, baseType: !35, size: 8, offset: 16)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !905, file: !6, line: 346, baseType: !35, size: 8, offset: 24)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !905, file: !6, line: 347, baseType: !35, size: 8, offset: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !905, file: !6, line: 348, baseType: !90, size: 16, offset: 40)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !858, file: !179, line: 164, baseType: !79, size: 64, offset: 448)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !858, file: !179, line: 165, baseType: !79, size: 64, offset: 512)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !858, file: !179, line: 167, baseType: !30, size: 32, offset: 576)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !858, file: !179, line: 168, baseType: !30, size: 32, offset: 608)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !858, file: !179, line: 169, baseType: !90, size: 16, offset: 640)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !858, file: !179, line: 170, baseType: !90, size: 16, offset: 656)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !858, file: !179, line: 171, baseType: !35, size: 8, offset: 672)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !858, file: !179, line: 172, baseType: !35, size: 8, offset: 680)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !858, file: !179, line: 173, baseType: !35, size: 8, offset: 688)
!922 = !DILocalVariable(name: "aml_length", scope: !72, file: !3, line: 50, type: !30)
!923 = !DILocalVariable(name: "aml_start", scope: !72, file: !3, line: 51, type: !34)
!924 = !DILocalVariable(name: "method_obj", scope: !72, file: !3, line: 52, type: !79)
!925 = !DILabel(scope: !72, name: "cleanup", file: !3, line: 124)
!926 = !DILocation(line: 44, column: 27, scope: !72)
!927 = !DILocation(line: 44, column: 68, scope: !72)
!928 = !DILocation(line: 46, column: 2, scope: !72)
!929 = !DILocation(line: 46, column: 14, scope: !72)
!930 = !DILocation(line: 47, column: 2, scope: !72)
!931 = !DILocation(line: 47, column: 28, scope: !72)
!932 = !DILocation(line: 48, column: 2, scope: !72)
!933 = !DILocation(line: 48, column: 16, scope: !72)
!934 = !DILocation(line: 49, column: 2, scope: !72)
!935 = !DILocation(line: 49, column: 29, scope: !72)
!936 = !DILocation(line: 50, column: 2, scope: !72)
!937 = !DILocation(line: 50, column: 6, scope: !72)
!938 = !DILocation(line: 51, column: 2, scope: !72)
!939 = !DILocation(line: 51, column: 6, scope: !72)
!940 = !DILocation(line: 52, column: 2, scope: !72)
!941 = !DILocation(line: 52, column: 29, scope: !72)
!942 = !DILocation(line: 56, column: 35, scope: !72)
!943 = !DILocation(line: 56, column: 11, scope: !72)
!944 = !DILocation(line: 56, column: 9, scope: !72)
!945 = !DILocation(line: 57, column: 6, scope: !946)
!946 = distinct !DILexicalBlock(scope: !72, file: !3, line: 57, column: 6)
!947 = !DILocation(line: 57, column: 6, scope: !72)
!948 = !DILocation(line: 58, column: 3, scope: !949)
!949 = distinct !DILexicalBlock(scope: !946, file: !3, line: 57, column: 28)
!950 = !DILocation(line: 63, column: 6, scope: !951)
!951 = distinct !DILexicalBlock(scope: !72, file: !3, line: 63, column: 6)
!952 = !DILocation(line: 63, column: 13, scope: !951)
!953 = !DILocation(line: 63, column: 20, scope: !951)
!954 = !DILocation(line: 63, column: 6, scope: !72)
!955 = !DILocation(line: 64, column: 3, scope: !956)
!956 = distinct !DILexicalBlock(scope: !951, file: !3, line: 63, column: 56)
!957 = !DILocation(line: 67, column: 20, scope: !72)
!958 = !DILocation(line: 67, column: 26, scope: !72)
!959 = !DILocation(line: 67, column: 12, scope: !72)
!960 = !DILocation(line: 68, column: 15, scope: !72)
!961 = !DILocation(line: 68, column: 22, scope: !72)
!962 = !DILocation(line: 68, column: 29, scope: !72)
!963 = !DILocation(line: 68, column: 13, scope: !72)
!964 = !DILocation(line: 70, column: 32, scope: !72)
!965 = !DILocation(line: 70, column: 11, scope: !72)
!966 = !DILocation(line: 70, column: 9, scope: !72)
!967 = !DILocation(line: 71, column: 6, scope: !968)
!968 = distinct !DILexicalBlock(scope: !72, file: !3, line: 71, column: 6)
!969 = !DILocation(line: 71, column: 6, scope: !72)
!970 = !DILocation(line: 72, column: 3, scope: !971)
!971 = distinct !DILexicalBlock(scope: !968, file: !3, line: 71, column: 28)
!972 = !DILocation(line: 77, column: 15, scope: !72)
!973 = !DILocation(line: 77, column: 13, scope: !72)
!974 = !DILocation(line: 78, column: 7, scope: !975)
!975 = distinct !DILexicalBlock(scope: !72, file: !3, line: 78, column: 6)
!976 = !DILocation(line: 78, column: 6, scope: !72)
!977 = !DILocation(line: 79, column: 3, scope: !978)
!978 = distinct !DILexicalBlock(scope: !975, file: !3, line: 78, column: 19)
!979 = !DILocation(line: 84, column: 9, scope: !72)
!980 = !DILocation(line: 84, column: 7, scope: !72)
!981 = !DILocation(line: 85, column: 7, scope: !982)
!982 = distinct !DILexicalBlock(scope: !72, file: !3, line: 85, column: 6)
!983 = !DILocation(line: 85, column: 6, scope: !72)
!984 = !DILocation(line: 86, column: 10, scope: !985)
!985 = distinct !DILexicalBlock(scope: !982, file: !3, line: 85, column: 13)
!986 = !DILocation(line: 87, column: 3, scope: !985)
!987 = !DILocation(line: 95, column: 33, scope: !72)
!988 = !DILocation(line: 95, column: 2, scope: !72)
!989 = !DILocation(line: 95, column: 21, scope: !72)
!990 = !DILocation(line: 95, column: 31, scope: !72)
!991 = !DILocation(line: 96, column: 34, scope: !72)
!992 = !DILocation(line: 96, column: 2, scope: !72)
!993 = !DILocation(line: 96, column: 21, scope: !72)
!994 = !DILocation(line: 96, column: 32, scope: !72)
!995 = !DILocation(line: 97, column: 32, scope: !72)
!996 = !DILocation(line: 97, column: 2, scope: !72)
!997 = !DILocation(line: 97, column: 21, scope: !72)
!998 = !DILocation(line: 97, column: 30, scope: !72)
!999 = !DILocation(line: 98, column: 2, scope: !72)
!1000 = !DILocation(line: 98, column: 21, scope: !72)
!1001 = !DILocation(line: 98, column: 32, scope: !72)
!1002 = !DILocation(line: 100, column: 2, scope: !72)
!1003 = !DILocation(line: 100, column: 8, scope: !72)
!1004 = !DILocation(line: 100, column: 20, scope: !72)
!1005 = !DILocation(line: 101, column: 15, scope: !72)
!1006 = !DILocation(line: 101, column: 2, scope: !72)
!1007 = !DILocation(line: 101, column: 8, scope: !72)
!1008 = !DILocation(line: 101, column: 13, scope: !72)
!1009 = !DILocation(line: 102, column: 19, scope: !72)
!1010 = !DILocation(line: 102, column: 2, scope: !72)
!1011 = !DILocation(line: 102, column: 8, scope: !72)
!1012 = !DILocation(line: 102, column: 17, scope: !72)
!1013 = !DILocation(line: 103, column: 21, scope: !72)
!1014 = !DILocation(line: 103, column: 27, scope: !72)
!1015 = !DILocation(line: 103, column: 33, scope: !72)
!1016 = !DILocation(line: 103, column: 2, scope: !72)
!1017 = !DILocation(line: 103, column: 8, scope: !72)
!1018 = !DILocation(line: 103, column: 19, scope: !72)
!1019 = !DILocation(line: 104, column: 56, scope: !72)
!1020 = !DILocation(line: 104, column: 62, scope: !72)
!1021 = !DILocation(line: 104, column: 24, scope: !72)
!1022 = !DILocation(line: 104, column: 2, scope: !72)
!1023 = !DILocation(line: 104, column: 8, scope: !72)
!1024 = !DILocation(line: 104, column: 22, scope: !72)
!1025 = !DILocation(line: 105, column: 7, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !72, file: !3, line: 105, column: 6)
!1027 = !DILocation(line: 105, column: 13, scope: !1026)
!1028 = !DILocation(line: 105, column: 6, scope: !72)
!1029 = !DILocation(line: 106, column: 10, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 105, column: 28)
!1031 = !DILocation(line: 107, column: 3, scope: !1030)
!1032 = !DILocation(line: 116, column: 33, scope: !72)
!1033 = !DILocation(line: 116, column: 11, scope: !72)
!1034 = !DILocation(line: 116, column: 9, scope: !72)
!1035 = !DILocation(line: 116, column: 2, scope: !72)
!1036 = !DILocation(line: 124, column: 1, scope: !72)
!1037 = !DILocation(line: 125, column: 6, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !72, file: !3, line: 125, column: 6)
!1039 = !DILocation(line: 125, column: 6, scope: !72)
!1040 = !DILocation(line: 126, column: 3, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 125, column: 12)
!1042 = !DILocation(line: 127, column: 3, scope: !1041)
!1043 = !DILocation(line: 127, column: 9, scope: !1041)
!1044 = !DILocation(line: 127, column: 23, scope: !1041)
!1045 = !DILocation(line: 128, column: 2, scope: !1041)
!1046 = !DILocation(line: 129, column: 2, scope: !72)
!1047 = !DILocation(line: 130, column: 27, scope: !72)
!1048 = !DILocation(line: 130, column: 2, scope: !72)
!1049 = !DILocation(line: 131, column: 2, scope: !72)
!1050 = !DILocation(line: 132, column: 1, scope: !72)
!1051 = !DISubprogram(name: "acpi_get_table_by_index", scope: !1052, file: !1052, line: 495, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1052 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!28, !30, !1055}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!1056 = !DISubprogram(name: "acpi_tb_get_owner_id", scope: !1057, file: !1057, line: 116, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1057 = !DIFile(filename: "drivers/acpi/acpica/actables.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb0787ba059aac7511e633019dab5fb8")
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!28, !30, !1060}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!1061 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !1062, file: !1062, line: 436, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1062 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!79, !862, !30, !30, !1065}
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !29, line: 644, baseType: !30)
!1066 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1067, file: !1067, line: 55, type: !1068, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1070)
!1067 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!154, !38}
!1070 = !{!1071, !1072, !1074, !1077, !1078, !1081}
!1071 = !DILocalVariable(name: "size", arg: 1, scope: !1066, file: !1067, line: 55, type: !38)
!1072 = !DILocalVariable(name: "_flags", scope: !1073, file: !1067, line: 57, type: !45)
!1073 = distinct !DILexicalBlock(scope: !1066, file: !1067, line: 57, column: 23)
!1074 = !DILocalVariable(name: "__dummy", scope: !1075, file: !1067, line: 57, type: !45)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !1067, line: 57, column: 23)
!1076 = distinct !DILexicalBlock(scope: !1073, file: !1067, line: 57, column: 23)
!1077 = !DILocalVariable(name: "__dummy2", scope: !1075, file: !1067, line: 57, type: !45)
!1078 = !DILocalVariable(name: "__dummy", scope: !1079, file: !1067, line: 57, type: !45)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !1067, line: 57, column: 23)
!1080 = distinct !DILexicalBlock(scope: !1073, file: !1067, line: 57, column: 23)
!1081 = !DILocalVariable(name: "__dummy2", scope: !1079, file: !1067, line: 57, type: !45)
!1082 = !DILocation(line: 55, column: 55, scope: !1066)
!1083 = !DILocation(line: 57, column: 17, scope: !1066)
!1084 = !DILocation(line: 57, column: 23, scope: !1073)
!1085 = !DILocation(line: 57, column: 23, scope: !1075)
!1086 = !DILocation(line: 57, column: 23, scope: !1076)
!1087 = !DILocation(line: 57, column: 23, scope: !1079)
!1088 = !DILocation(line: 57, column: 23, scope: !1080)
!1089 = !DILocation(line: 57, column: 23, scope: !1066)
!1090 = !DILocation(line: 57, column: 9, scope: !1066)
!1091 = !DILocation(line: 57, column: 2, scope: !1066)
!1092 = !DISubprogram(name: "acpi_ns_get_normalized_pathname", scope: !1093, file: !1093, line: 261, type: !1094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1093 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!116, !75, !35}
!1096 = !DISubprogram(name: "acpi_ps_execute_table", scope: !1097, file: !1097, line: 47, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1097 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!28, !857}
!1100 = distinct !DISubprogram(name: "acpi_os_free", scope: !1067, file: !1067, line: 60, type: !1101, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1103)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{null, !154}
!1103 = !{!1104}
!1104 = !DILocalVariable(name: "memory", arg: 1, scope: !1100, file: !1067, line: 60, type: !154)
!1105 = !DILocation(line: 60, column: 39, scope: !1100)
!1106 = !DILocation(line: 62, column: 8, scope: !1100)
!1107 = !DILocation(line: 62, column: 2, scope: !1100)
!1108 = !DILocation(line: 63, column: 1, scope: !1100)
!1109 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1062, file: !1062, line: 369, type: !1110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !79}
!1112 = distinct !DISubprogram(name: "acpi_ns_one_complete_parse", scope: !3, file: !3, line: 148, type: !1113, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1115)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!28, !30, !30, !75}
!1115 = !{!1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126}
!1116 = !DILocalVariable(name: "pass_number", arg: 1, scope: !1112, file: !3, line: 148, type: !30)
!1117 = !DILocalVariable(name: "table_index", arg: 2, scope: !1112, file: !3, line: 149, type: !30)
!1118 = !DILocalVariable(name: "start_node", arg: 3, scope: !1112, file: !3, line: 150, type: !75)
!1119 = !DILocalVariable(name: "parse_root", scope: !1112, file: !3, line: 152, type: !212)
!1120 = !DILocalVariable(name: "status", scope: !1112, file: !3, line: 153, type: !28)
!1121 = !DILocalVariable(name: "aml_length", scope: !1112, file: !3, line: 154, type: !30)
!1122 = !DILocalVariable(name: "aml_start", scope: !1112, file: !3, line: 155, type: !34)
!1123 = !DILocalVariable(name: "walk_state", scope: !1112, file: !3, line: 156, type: !177)
!1124 = !DILocalVariable(name: "table", scope: !1112, file: !3, line: 157, type: !839)
!1125 = !DILocalVariable(name: "owner_id", scope: !1112, file: !3, line: 158, type: !189)
!1126 = !DILabel(scope: !1112, name: "cleanup", file: !3, line: 231)
!1127 = !DILocation(line: 148, column: 32, scope: !1112)
!1128 = !DILocation(line: 149, column: 11, scope: !1112)
!1129 = !DILocation(line: 150, column: 35, scope: !1112)
!1130 = !DILocation(line: 152, column: 2, scope: !1112)
!1131 = !DILocation(line: 152, column: 27, scope: !1112)
!1132 = !DILocation(line: 153, column: 2, scope: !1112)
!1133 = !DILocation(line: 153, column: 14, scope: !1112)
!1134 = !DILocation(line: 154, column: 2, scope: !1112)
!1135 = !DILocation(line: 154, column: 6, scope: !1112)
!1136 = !DILocation(line: 155, column: 2, scope: !1112)
!1137 = !DILocation(line: 155, column: 6, scope: !1112)
!1138 = !DILocation(line: 156, column: 2, scope: !1112)
!1139 = !DILocation(line: 156, column: 26, scope: !1112)
!1140 = !DILocation(line: 157, column: 2, scope: !1112)
!1141 = !DILocation(line: 157, column: 28, scope: !1112)
!1142 = !DILocation(line: 158, column: 2, scope: !1112)
!1143 = !DILocation(line: 158, column: 16, scope: !1112)
!1144 = !DILocation(line: 162, column: 35, scope: !1112)
!1145 = !DILocation(line: 162, column: 11, scope: !1112)
!1146 = !DILocation(line: 162, column: 9, scope: !1112)
!1147 = !DILocation(line: 163, column: 6, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 163, column: 6)
!1149 = !DILocation(line: 163, column: 6, scope: !1112)
!1150 = !DILocation(line: 164, column: 3, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 163, column: 28)
!1152 = !DILocation(line: 169, column: 6, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 169, column: 6)
!1154 = !DILocation(line: 169, column: 13, scope: !1153)
!1155 = !DILocation(line: 169, column: 20, scope: !1153)
!1156 = !DILocation(line: 169, column: 6, scope: !1112)
!1157 = !DILocation(line: 170, column: 3, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 169, column: 56)
!1159 = !DILocation(line: 173, column: 20, scope: !1112)
!1160 = !DILocation(line: 173, column: 26, scope: !1112)
!1161 = !DILocation(line: 173, column: 12, scope: !1112)
!1162 = !DILocation(line: 174, column: 15, scope: !1112)
!1163 = !DILocation(line: 174, column: 22, scope: !1112)
!1164 = !DILocation(line: 174, column: 29, scope: !1112)
!1165 = !DILocation(line: 174, column: 13, scope: !1112)
!1166 = !DILocation(line: 176, column: 32, scope: !1112)
!1167 = !DILocation(line: 176, column: 11, scope: !1112)
!1168 = !DILocation(line: 176, column: 9, scope: !1112)
!1169 = !DILocation(line: 177, column: 6, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 177, column: 6)
!1171 = !DILocation(line: 177, column: 6, scope: !1112)
!1172 = !DILocation(line: 178, column: 3, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 177, column: 28)
!1174 = !DILocation(line: 183, column: 39, scope: !1112)
!1175 = !DILocation(line: 183, column: 15, scope: !1112)
!1176 = !DILocation(line: 183, column: 13, scope: !1112)
!1177 = !DILocation(line: 184, column: 7, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 184, column: 6)
!1179 = !DILocation(line: 184, column: 6, scope: !1112)
!1180 = !DILocation(line: 185, column: 3, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 184, column: 19)
!1182 = !DILocation(line: 190, column: 41, scope: !1112)
!1183 = !DILocation(line: 190, column: 15, scope: !1112)
!1184 = !DILocation(line: 190, column: 13, scope: !1112)
!1185 = !DILocation(line: 191, column: 7, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 191, column: 6)
!1187 = !DILocation(line: 191, column: 6, scope: !1112)
!1188 = !DILocation(line: 192, column: 19, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 191, column: 19)
!1190 = !DILocation(line: 192, column: 3, scope: !1189)
!1191 = !DILocation(line: 193, column: 3, scope: !1189)
!1192 = !DILocation(line: 196, column: 33, scope: !1112)
!1193 = !DILocation(line: 196, column: 45, scope: !1112)
!1194 = !DILocation(line: 197, column: 12, scope: !1112)
!1195 = !DILocation(line: 197, column: 23, scope: !1112)
!1196 = !DILocation(line: 198, column: 16, scope: !1112)
!1197 = !DILocation(line: 198, column: 12, scope: !1112)
!1198 = !DILocation(line: 196, column: 11, scope: !1112)
!1199 = !DILocation(line: 196, column: 9, scope: !1112)
!1200 = !DILocation(line: 199, column: 6, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 199, column: 6)
!1202 = !DILocation(line: 199, column: 6, scope: !1112)
!1203 = !DILocation(line: 200, column: 29, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 199, column: 28)
!1205 = !DILocation(line: 200, column: 3, scope: !1204)
!1206 = !DILocation(line: 201, column: 3, scope: !1204)
!1207 = !DILocation(line: 206, column: 6, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 206, column: 6)
!1209 = !DILocation(line: 206, column: 60, scope: !1208)
!1210 = !DILocation(line: 207, column: 6, scope: !1208)
!1211 = !DILocation(line: 207, column: 18, scope: !1208)
!1212 = !DILocation(line: 206, column: 6, scope: !1112)
!1213 = !DILocation(line: 208, column: 3, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 207, column: 44)
!1215 = !DILocation(line: 208, column: 15, scope: !1214)
!1216 = !DILocation(line: 208, column: 34, scope: !1214)
!1217 = !DILocation(line: 209, column: 2, scope: !1214)
!1218 = !DILocation(line: 213, column: 6, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 213, column: 6)
!1220 = !DILocation(line: 213, column: 17, scope: !1219)
!1221 = !DILocation(line: 213, column: 20, scope: !1219)
!1222 = !DILocation(line: 213, column: 34, scope: !1219)
!1223 = !DILocation(line: 213, column: 31, scope: !1219)
!1224 = !DILocation(line: 213, column: 6, scope: !1112)
!1225 = !DILocation(line: 215, column: 32, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 213, column: 54)
!1227 = !DILocation(line: 216, column: 11, scope: !1226)
!1228 = !DILocation(line: 215, column: 7, scope: !1226)
!1229 = !DILocation(line: 214, column: 10, scope: !1226)
!1230 = !DILocation(line: 217, column: 7, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 217, column: 7)
!1232 = !DILocation(line: 217, column: 7, scope: !1226)
!1233 = !DILocation(line: 218, column: 30, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 217, column: 29)
!1235 = !DILocation(line: 218, column: 4, scope: !1234)
!1236 = !DILocation(line: 219, column: 4, scope: !1234)
!1237 = !DILocation(line: 221, column: 2, scope: !1226)
!1238 = !DILocation(line: 227, column: 2, scope: !1112)
!1239 = !DILocation(line: 228, column: 29, scope: !1112)
!1240 = !DILocation(line: 228, column: 11, scope: !1112)
!1241 = !DILocation(line: 228, column: 9, scope: !1112)
!1242 = !DILocation(line: 229, column: 2, scope: !1112)
!1243 = !DILocation(line: 231, column: 1, scope: !1112)
!1244 = !DILocation(line: 232, column: 28, scope: !1112)
!1245 = !DILocation(line: 232, column: 2, scope: !1112)
!1246 = !DILocation(line: 233, column: 2, scope: !1112)
!1247 = !DILocation(line: 234, column: 1, scope: !1112)
!1248 = !DISubprogram(name: "acpi_ps_create_scope_op", scope: !1097, file: !1097, line: 200, type: !1249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!212, !34}
!1251 = !DISubprogram(name: "acpi_ds_create_walk_state", scope: !1252, file: !1252, line: 294, type: !1253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1252 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!177, !189, !212, !79, !457}
!1255 = !DISubprogram(name: "acpi_ps_free_op", scope: !1097, file: !1097, line: 206, type: !1256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !212}
!1258 = !DISubprogram(name: "acpi_ds_init_aml_walk", scope: !1252, file: !1252, line: 303, type: !1259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!28, !177, !212, !75, !34, !30, !857, !35}
!1261 = !DISubprogram(name: "acpi_ds_delete_walk_state", scope: !1252, file: !1252, line: 314, type: !1262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{null, !177}
!1264 = !DISubprogram(name: "acpi_ds_scope_stack_push", scope: !1252, file: !1252, line: 277, type: !1265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!28, !75, !1065, !177}
!1267 = !DISubprogram(name: "acpi_ex_enter_interpreter", scope: !1268, file: !1268, line: 464, type: !1269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1268 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null}
!1271 = !DISubprogram(name: "acpi_ps_parse_aml", scope: !1097, file: !1097, line: 117, type: !175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1272 = !DISubprogram(name: "acpi_ex_exit_interpreter", scope: !1268, file: !1268, line: 466, type: !1269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1273 = !DISubprogram(name: "acpi_ps_delete_parse_tree", scope: !1097, file: !1097, line: 195, type: !1256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1274 = distinct !DISubprogram(name: "acpi_ns_parse_table", scope: !3, file: !3, line: 250, type: !73, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1275)
!1275 = !{!1276, !1277, !1278}
!1276 = !DILocalVariable(name: "table_index", arg: 1, scope: !1274, file: !3, line: 250, type: !30)
!1277 = !DILocalVariable(name: "start_node", arg: 2, scope: !1274, file: !3, line: 250, type: !75)
!1278 = !DILocalVariable(name: "status", scope: !1274, file: !3, line: 252, type: !28)
!1279 = !DILocation(line: 250, column: 25, scope: !1274)
!1280 = !DILocation(line: 250, column: 66, scope: !1274)
!1281 = !DILocation(line: 252, column: 2, scope: !1274)
!1282 = !DILocation(line: 252, column: 14, scope: !1274)
!1283 = !DILocation(line: 268, column: 33, scope: !1274)
!1284 = !DILocation(line: 268, column: 46, scope: !1274)
!1285 = !DILocation(line: 268, column: 11, scope: !1274)
!1286 = !DILocation(line: 268, column: 9, scope: !1274)
!1287 = !DILocation(line: 270, column: 2, scope: !1274)
!1288 = !DILocation(line: 271, column: 1, scope: !1274)
!1289 = distinct !DISubprogram(name: "kzalloc", scope: !18, file: !18, line: 719, type: !1290, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1296)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!154, !1292, !46}
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 61, baseType: !1293)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1294, line: 72, baseType: !1295)
!1294 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1294, line: 16, baseType: !45)
!1296 = !{!1297, !1298}
!1297 = !DILocalVariable(name: "size", arg: 1, scope: !1289, file: !18, line: 719, type: !1292)
!1298 = !DILocalVariable(name: "flags", arg: 2, scope: !1289, file: !18, line: 719, type: !46)
!1299 = !DILocation(line: 719, column: 52, scope: !1289)
!1300 = !DILocation(line: 719, column: 64, scope: !1289)
!1301 = !DILocation(line: 721, column: 17, scope: !1289)
!1302 = !DILocation(line: 721, column: 23, scope: !1289)
!1303 = !DILocation(line: 721, column: 29, scope: !1289)
!1304 = !DILocation(line: 721, column: 9, scope: !1289)
!1305 = !DILocation(line: 721, column: 2, scope: !1289)
!1306 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1307, file: !1307, line: 65, type: !1308, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1307 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!45}
!1310 = !DILocation(line: 67, column: 9, scope: !1306)
!1311 = !DILocation(line: 67, column: 2, scope: !1306)
!1312 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1307, file: !1307, line: 120, type: !1313, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1316)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!1315, !45}
!1315 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1316 = !{!1317}
!1317 = !DILocalVariable(name: "flags", arg: 1, scope: !1312, file: !1307, line: 120, type: !45)
!1318 = !DILocation(line: 120, column: 67, scope: !1312)
!1319 = !DILocation(line: 122, column: 11, scope: !1312)
!1320 = !DILocation(line: 122, column: 17, scope: !1312)
!1321 = !DILocation(line: 122, column: 9, scope: !1312)
!1322 = !DILocation(line: 122, column: 2, scope: !1312)
!1323 = distinct !DISubprogram(name: "kmalloc", scope: !18, file: !18, line: 591, type: !1290, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1324)
!1324 = !{!1325, !1326, !1327}
!1325 = !DILocalVariable(name: "size", arg: 1, scope: !1323, file: !18, line: 591, type: !1292)
!1326 = !DILocalVariable(name: "flags", arg: 2, scope: !1323, file: !18, line: 591, type: !46)
!1327 = !DILocalVariable(name: "index", scope: !1328, file: !18, line: 594, type: !7)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !18, line: 593, column: 42)
!1329 = distinct !DILexicalBlock(scope: !1323, file: !18, line: 593, column: 6)
!1330 = !DILocation(line: 591, column: 61, scope: !1323)
!1331 = !DILocation(line: 591, column: 73, scope: !1323)
!1332 = !DILocation(line: 593, column: 27, scope: !1329)
!1333 = !DILocation(line: 593, column: 6, scope: !1329)
!1334 = !DILocation(line: 593, column: 33, scope: !1329)
!1335 = !DILocation(line: 593, column: 36, scope: !1329)
!1336 = !DILocation(line: 593, column: 6, scope: !1323)
!1337 = !DILocation(line: 594, column: 3, scope: !1328)
!1338 = !DILocation(line: 594, column: 16, scope: !1328)
!1339 = !DILocation(line: 596, column: 7, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1328, file: !18, line: 596, column: 7)
!1341 = !DILocation(line: 596, column: 12, scope: !1340)
!1342 = !DILocation(line: 596, column: 7, scope: !1328)
!1343 = !DILocation(line: 597, column: 25, scope: !1340)
!1344 = !DILocation(line: 597, column: 31, scope: !1340)
!1345 = !DILocation(line: 597, column: 11, scope: !1340)
!1346 = !DILocation(line: 597, column: 4, scope: !1340)
!1347 = !DILocation(line: 599, column: 11, scope: !1328)
!1348 = !DILocation(line: 599, column: 9, scope: !1328)
!1349 = !DILocation(line: 601, column: 33, scope: !1328)
!1350 = !DILocation(line: 601, column: 40, scope: !1328)
!1351 = !DILocation(line: 601, column: 20, scope: !1328)
!1352 = !DILocation(line: 601, column: 5, scope: !1328)
!1353 = !DILocation(line: 601, column: 51, scope: !1328)
!1354 = !DILocation(line: 602, column: 5, scope: !1328)
!1355 = !DILocation(line: 602, column: 12, scope: !1328)
!1356 = !DILocation(line: 600, column: 10, scope: !1328)
!1357 = !DILocation(line: 600, column: 3, scope: !1328)
!1358 = !DILocation(line: 603, column: 2, scope: !1329)
!1359 = !DILocation(line: 604, column: 19, scope: !1323)
!1360 = !DILocation(line: 604, column: 25, scope: !1323)
!1361 = !DILocation(line: 604, column: 9, scope: !1323)
!1362 = !DILocation(line: 604, column: 2, scope: !1323)
!1363 = !DILocation(line: 605, column: 1, scope: !1323)
!1364 = !DISubprogram(name: "kmalloc_large", scope: !18, file: !18, line: 531, type: !1290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1365 = distinct !DISubprogram(name: "__kmalloc_index", scope: !18, file: !18, line: 444, type: !1366, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1370)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!7, !1292, !1368}
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !44, line: 35, baseType: !1369)
!1369 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1370 = !{!1371, !1372}
!1371 = !DILocalVariable(name: "size", arg: 1, scope: !1365, file: !18, line: 444, type: !1292)
!1372 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1365, file: !18, line: 445, type: !1368)
!1373 = !DILocation(line: 444, column: 60, scope: !1365)
!1374 = !DILocation(line: 445, column: 16, scope: !1365)
!1375 = !DILocation(line: 447, column: 7, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 447, column: 6)
!1377 = !DILocation(line: 447, column: 6, scope: !1365)
!1378 = !DILocation(line: 448, column: 3, scope: !1376)
!1379 = !DILocation(line: 450, column: 6, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 450, column: 6)
!1381 = !DILocation(line: 450, column: 11, scope: !1380)
!1382 = !DILocation(line: 450, column: 6, scope: !1365)
!1383 = !DILocation(line: 451, column: 3, scope: !1380)
!1384 = !DILocation(line: 453, column: 32, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 453, column: 6)
!1386 = !DILocation(line: 453, column: 37, scope: !1385)
!1387 = !DILocation(line: 453, column: 42, scope: !1385)
!1388 = !DILocation(line: 453, column: 45, scope: !1385)
!1389 = !DILocation(line: 453, column: 50, scope: !1385)
!1390 = !DILocation(line: 453, column: 6, scope: !1365)
!1391 = !DILocation(line: 454, column: 3, scope: !1385)
!1392 = !DILocation(line: 455, column: 32, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 455, column: 6)
!1394 = !DILocation(line: 455, column: 37, scope: !1393)
!1395 = !DILocation(line: 455, column: 43, scope: !1393)
!1396 = !DILocation(line: 455, column: 46, scope: !1393)
!1397 = !DILocation(line: 455, column: 51, scope: !1393)
!1398 = !DILocation(line: 455, column: 6, scope: !1365)
!1399 = !DILocation(line: 456, column: 3, scope: !1393)
!1400 = !DILocation(line: 457, column: 6, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 457, column: 6)
!1402 = !DILocation(line: 457, column: 11, scope: !1401)
!1403 = !DILocation(line: 457, column: 6, scope: !1365)
!1404 = !DILocation(line: 457, column: 26, scope: !1401)
!1405 = !DILocation(line: 458, column: 6, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 458, column: 6)
!1407 = !DILocation(line: 458, column: 11, scope: !1406)
!1408 = !DILocation(line: 458, column: 6, scope: !1365)
!1409 = !DILocation(line: 458, column: 26, scope: !1406)
!1410 = !DILocation(line: 459, column: 6, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 459, column: 6)
!1412 = !DILocation(line: 459, column: 11, scope: !1411)
!1413 = !DILocation(line: 459, column: 6, scope: !1365)
!1414 = !DILocation(line: 459, column: 26, scope: !1411)
!1415 = !DILocation(line: 460, column: 6, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 460, column: 6)
!1417 = !DILocation(line: 460, column: 11, scope: !1416)
!1418 = !DILocation(line: 460, column: 6, scope: !1365)
!1419 = !DILocation(line: 460, column: 26, scope: !1416)
!1420 = !DILocation(line: 461, column: 6, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 461, column: 6)
!1422 = !DILocation(line: 461, column: 11, scope: !1421)
!1423 = !DILocation(line: 461, column: 6, scope: !1365)
!1424 = !DILocation(line: 461, column: 26, scope: !1421)
!1425 = !DILocation(line: 462, column: 6, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 462, column: 6)
!1427 = !DILocation(line: 462, column: 11, scope: !1426)
!1428 = !DILocation(line: 462, column: 6, scope: !1365)
!1429 = !DILocation(line: 462, column: 26, scope: !1426)
!1430 = !DILocation(line: 463, column: 6, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 463, column: 6)
!1432 = !DILocation(line: 463, column: 11, scope: !1431)
!1433 = !DILocation(line: 463, column: 6, scope: !1365)
!1434 = !DILocation(line: 463, column: 26, scope: !1431)
!1435 = !DILocation(line: 464, column: 6, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 464, column: 6)
!1437 = !DILocation(line: 464, column: 11, scope: !1436)
!1438 = !DILocation(line: 464, column: 6, scope: !1365)
!1439 = !DILocation(line: 464, column: 26, scope: !1436)
!1440 = !DILocation(line: 465, column: 6, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 465, column: 6)
!1442 = !DILocation(line: 465, column: 11, scope: !1441)
!1443 = !DILocation(line: 465, column: 6, scope: !1365)
!1444 = !DILocation(line: 465, column: 26, scope: !1441)
!1445 = !DILocation(line: 466, column: 6, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 466, column: 6)
!1447 = !DILocation(line: 466, column: 11, scope: !1446)
!1448 = !DILocation(line: 466, column: 6, scope: !1365)
!1449 = !DILocation(line: 466, column: 26, scope: !1446)
!1450 = !DILocation(line: 467, column: 6, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 467, column: 6)
!1452 = !DILocation(line: 467, column: 11, scope: !1451)
!1453 = !DILocation(line: 467, column: 6, scope: !1365)
!1454 = !DILocation(line: 467, column: 26, scope: !1451)
!1455 = !DILocation(line: 468, column: 6, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 468, column: 6)
!1457 = !DILocation(line: 468, column: 11, scope: !1456)
!1458 = !DILocation(line: 468, column: 6, scope: !1365)
!1459 = !DILocation(line: 468, column: 26, scope: !1456)
!1460 = !DILocation(line: 469, column: 6, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 469, column: 6)
!1462 = !DILocation(line: 469, column: 11, scope: !1461)
!1463 = !DILocation(line: 469, column: 6, scope: !1365)
!1464 = !DILocation(line: 469, column: 26, scope: !1461)
!1465 = !DILocation(line: 470, column: 6, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 470, column: 6)
!1467 = !DILocation(line: 470, column: 11, scope: !1466)
!1468 = !DILocation(line: 470, column: 6, scope: !1365)
!1469 = !DILocation(line: 470, column: 26, scope: !1466)
!1470 = !DILocation(line: 471, column: 6, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 471, column: 6)
!1472 = !DILocation(line: 471, column: 11, scope: !1471)
!1473 = !DILocation(line: 471, column: 6, scope: !1365)
!1474 = !DILocation(line: 471, column: 26, scope: !1471)
!1475 = !DILocation(line: 472, column: 6, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 472, column: 6)
!1477 = !DILocation(line: 472, column: 11, scope: !1476)
!1478 = !DILocation(line: 472, column: 6, scope: !1365)
!1479 = !DILocation(line: 472, column: 26, scope: !1476)
!1480 = !DILocation(line: 473, column: 6, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 473, column: 6)
!1482 = !DILocation(line: 473, column: 11, scope: !1481)
!1483 = !DILocation(line: 473, column: 6, scope: !1365)
!1484 = !DILocation(line: 473, column: 26, scope: !1481)
!1485 = !DILocation(line: 474, column: 6, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 474, column: 6)
!1487 = !DILocation(line: 474, column: 11, scope: !1486)
!1488 = !DILocation(line: 474, column: 6, scope: !1365)
!1489 = !DILocation(line: 474, column: 27, scope: !1486)
!1490 = !DILocation(line: 475, column: 6, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 475, column: 6)
!1492 = !DILocation(line: 475, column: 11, scope: !1491)
!1493 = !DILocation(line: 475, column: 6, scope: !1365)
!1494 = !DILocation(line: 475, column: 32, scope: !1491)
!1495 = !DILocation(line: 477, column: 50, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1365, file: !18, line: 477, column: 6)
!1497 = !{i8 0, i8 2}
!1498 = !{}
!1499 = !DILocation(line: 477, column: 6, scope: !1365)
!1500 = !DILocation(line: 478, column: 3, scope: !1496)
!1501 = !DILocation(line: 478, column: 3, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !18, line: 478, column: 3)
!1503 = distinct !DILexicalBlock(scope: !1496, file: !18, line: 478, column: 3)
!1504 = !{i32 -2143041979}
!1505 = !DILocation(line: 478, column: 3, scope: !1503)
!1506 = !DILocation(line: 480, column: 3, scope: !1496)
!1507 = !DILocation(line: 480, column: 3, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1496, file: !18, line: 480, column: 3)
!1509 = !DILocation(line: 480, column: 3, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1508, file: !18, line: 480, column: 3)
!1511 = !DILocation(line: 480, column: 3, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1508, file: !18, line: 480, column: 3)
!1513 = !{i64 2151925520, i64 2151925549, i64 2151925595, i64 2151925653, i64 2151925707, i64 2151925761, i64 2151925816, i64 2151925847}
!1514 = !DILocation(line: 483, column: 2, scope: !1365)
!1515 = !DILocation(line: 484, column: 1, scope: !1365)
!1516 = !DISubprogram(name: "kmalloc_trace", scope: !18, file: !18, line: 525, type: !1517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!154, !1519, !46, !1292}
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1521, line: 11, flags: DIFlagFwdDecl)
!1521 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1522 = distinct !DISubprogram(name: "kmalloc_type", scope: !18, file: !18, line: 401, type: !1523, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1525)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!17, !46, !45}
!1525 = !{!1526, !1527}
!1526 = !DILocalVariable(name: "flags", arg: 1, scope: !1522, file: !18, line: 401, type: !46)
!1527 = !DILocalVariable(name: "caller", arg: 2, scope: !1522, file: !18, line: 401, type: !45)
!1528 = !DILocation(line: 401, column: 67, scope: !1522)
!1529 = !DILocation(line: 401, column: 88, scope: !1522)
!1530 = !DILocation(line: 407, column: 6, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1522, file: !18, line: 407, column: 6)
!1532 = !DILocation(line: 407, column: 6, scope: !1522)
!1533 = !DILocation(line: 413, column: 3, scope: !1531)
!1534 = !DILocation(line: 423, column: 38, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1522, file: !18, line: 423, column: 6)
!1536 = !DILocation(line: 423, column: 44, scope: !1535)
!1537 = !DILocation(line: 423, column: 6, scope: !1522)
!1538 = !DILocation(line: 424, column: 3, scope: !1535)
!1539 = !DILocation(line: 426, column: 3, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1522, file: !18, line: 425, column: 6)
!1541 = !DILocation(line: 429, column: 1, scope: !1522)
!1542 = !DISubprogram(name: "__kmalloc", scope: !18, file: !18, line: 488, type: !1290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1543 = !DISubprogram(name: "__compiletime_assert_173", scope: !18, file: !18, line: 478, type: !1269, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1544 = distinct !DISubprogram(name: "native_save_fl", scope: !1307, file: !1307, line: 17, type: !1308, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1545)
!1545 = !{!1546}
!1546 = !DILocalVariable(name: "flags", scope: !1544, file: !1307, line: 19, type: !45)
!1547 = !DILocation(line: 19, column: 2, scope: !1544)
!1548 = !DILocation(line: 19, column: 16, scope: !1544)
!1549 = !DILocation(line: 26, column: 2, scope: !1544)
!1550 = !{i64 1515439, i64 1515460}
!1551 = !DILocation(line: 32, column: 9, scope: !1544)
!1552 = !DILocation(line: 33, column: 1, scope: !1544)
!1553 = !DILocation(line: 32, column: 2, scope: !1544)
!1554 = !DISubprogram(name: "kfree", scope: !18, file: !18, line: 227, type: !1555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{null, !1557}
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
