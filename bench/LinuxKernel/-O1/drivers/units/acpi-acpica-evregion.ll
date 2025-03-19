; ModuleID = 'drivers/acpi/acpica/evregion.c'
source_filename = "drivers/acpi/acpica/evregion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_reg_walk_info = type { i32, i32, i8 }
%struct.acpi_object_region = type { ptr, i8, i8, i16, i8, i8, ptr, ptr, ptr, i64, i32, ptr }
%struct.acpi_object_addr_handler = type { ptr, i8, i8, i16, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_object_region_field = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, i16, ptr, ptr, i16, ptr }
%struct.acpi_pcc_info = type { i8, i16, ptr }
%struct.acpi_ffh_info = type { i64, i64 }
%struct.acpi_object_extra = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_connection_info = type { ptr, i16, i8 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_evaluate_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i8, i8, i8 }
%struct.acpi_object_list = type { i32, ptr }
%union.acpi_object = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32, i64, i32 }
%struct.anon = type { i32, i64 }

@acpi_gbl_root_node = external dso_local global ptr, align 8
@acpi_gbl_default_address_spaces = external dso_local global [0 x i8], align 1
@_acpi_module_name = internal constant [9 x i8] c"evregion\00", align 1, !dbg !0
@.str = private unnamed_addr constant [40 x i8] c"No handler for Region [%4.4s] (%p) [%s]\00", align 1, !dbg !54
@.str.1 = private unnamed_addr constant [36 x i8] c"No init routine for region(%p) [%s]\00", align 1, !dbg !60
@.str.2 = private unnamed_addr constant [35 x i8] c"During region initialization: [%s]\00", align 1, !dbg !65
@.str.3 = private unnamed_addr constant [29 x i8] c"Returned by Handler for [%s]\00", align 1, !dbg !70
@.str.4 = private unnamed_addr constant [45 x i8] c"Timeout from EC hardware or EC device driver\00", align 1, !dbg !75
@.str.5 = private unnamed_addr constant [23 x i8] c"from region _REG, [%s]\00", align 1, !dbg !80
@.str.6 = private unnamed_addr constant [39 x i8] c"from region handler - deactivate, [%s]\00", align 1, !dbg !85
@.str.7 = private unnamed_addr constant [42 x i8] c"Circular handler list in region object %p\00", align 1, !dbg !90
@.str.8 = private unnamed_addr constant [5 x i8] c"_REG\00", align 1, !dbg !95
@acpi_gbl_namespace_initialized = external dso_local global i8, align 1
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !100

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_initialize_op_regions() #0 align 16 !dbg !118 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !124
  call void @llvm.dbg.declare(metadata ptr %status, metadata !122, metadata !DIExpression()), !dbg !125
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !126
  call void @llvm.dbg.declare(metadata ptr %i, metadata !123, metadata !DIExpression()), !dbg !127
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #14, !dbg !128
  store i32 %call, ptr %status, align 4, !dbg !129
  %0 = load i32, ptr %status, align 4, !dbg !130
  %tobool = icmp ne i32 %0, 0, !dbg !130
  br i1 %tobool, label %if.then, label %if.end, !dbg !132

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !133
  store i32 %1, ptr %retval, align 4, !dbg !133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !133

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !135
  br label %for.cond, !dbg !137

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !138
  %cmp = icmp ult i32 %2, 4, !dbg !140
  br i1 %cmp, label %for.body, label %for.end, !dbg !141

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !142
  %4 = load i32, ptr %i, align 4, !dbg !145
  %idxprom = zext i32 %4 to i64, !dbg !146
  %arrayidx = getelementptr [0 x i8], ptr @acpi_gbl_default_address_spaces, i64 0, i64 %idxprom, !dbg !146
  %5 = load i8, ptr %arrayidx, align 1, !dbg !146
  %call1 = call zeroext i8 @acpi_ev_has_default_handler(ptr noundef %3, i8 noundef zeroext %5) #14, !dbg !147
  %tobool2 = icmp ne i8 %call1, 0, !dbg !147
  br i1 %tobool2, label %if.then3, label %if.end6, !dbg !148

if.then3:                                         ; preds = %for.body
  %6 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !149
  %7 = load i32, ptr %i, align 4, !dbg !151
  %idxprom4 = zext i32 %7 to i64, !dbg !152
  %arrayidx5 = getelementptr [0 x i8], ptr @acpi_gbl_default_address_spaces, i64 0, i64 %idxprom4, !dbg !152
  %8 = load i8, ptr %arrayidx5, align 1, !dbg !152
  call void @acpi_ev_execute_reg_methods(ptr noundef %6, i32 noundef -1, i8 noundef zeroext %8, i32 noundef 1) #14, !dbg !153
  br label %if.end6, !dbg !154

if.end6:                                          ; preds = %if.then3, %for.body
  br label %for.inc, !dbg !155

for.inc:                                          ; preds = %if.end6
  %9 = load i32, ptr %i, align 4, !dbg !156
  %inc = add i32 %9, 1, !dbg !156
  store i32 %inc, ptr %i, align 4, !dbg !156
  br label %for.cond, !dbg !157, !llvm.loop !158

for.end:                                          ; preds = %for.cond
  %call7 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #14, !dbg !162
  %10 = load i32, ptr %status, align 4, !dbg !163
  store i32 %10, ptr %retval, align 4, !dbg !163
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !163

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !164
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !164
  %11 = load i32, ptr %retval, align 4, !dbg !164
  ret i32 %11, !dbg !164
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !165 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !170 dso_local zeroext i8 @acpi_ev_has_default_handler(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ev_execute_reg_methods(ptr noundef %node, i32 noundef %max_depth, i8 noundef zeroext %space_id, i32 noundef %function) #0 align 16 !dbg !930 {
entry:
  %node.addr = alloca ptr, align 8
  %max_depth.addr = alloca i32, align 4
  %space_id.addr = alloca i8, align 1
  %function.addr = alloca i32, align 4
  %info = alloca %struct.acpi_reg_walk_info, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !934, metadata !DIExpression()), !dbg !939
  store i32 %max_depth, ptr %max_depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_depth.addr, metadata !935, metadata !DIExpression()), !dbg !940
  store i8 %space_id, ptr %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %space_id.addr, metadata !936, metadata !DIExpression()), !dbg !941
  store i32 %function, ptr %function.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !937, metadata !DIExpression()), !dbg !942
  call void @llvm.lifetime.start.p0(i64 12, ptr %info) #13, !dbg !943
  call void @llvm.dbg.declare(metadata ptr %info, metadata !938, metadata !DIExpression()), !dbg !944
  %0 = load i8, ptr %space_id.addr, align 1, !dbg !945
  %conv = zext i8 %0 to i32, !dbg !945
  %cmp = icmp eq i32 %conv, 0, !dbg !947
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !948

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr %space_id.addr, align 1, !dbg !949
  %conv2 = zext i8 %1 to i32, !dbg !949
  %cmp3 = icmp eq i32 %conv2, 1, !dbg !950
  br i1 %cmp3, label %if.then, label %lor.lhs.false5, !dbg !951

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = load i8, ptr %space_id.addr, align 1, !dbg !952
  %conv6 = zext i8 %2 to i32, !dbg !952
  %cmp7 = icmp eq i32 %conv6, 126, !dbg !953
  br i1 %cmp7, label %if.then, label %if.end, !dbg !954

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !955

if.end:                                           ; preds = %lor.lhs.false5
  %3 = load i8, ptr %space_id.addr, align 1, !dbg !957
  %space_id9 = getelementptr inbounds %struct.acpi_reg_walk_info, ptr %info, i32 0, i32 2, !dbg !958
  store i8 %3, ptr %space_id9, align 4, !dbg !959
  %4 = load i32, ptr %function.addr, align 4, !dbg !960
  %function10 = getelementptr inbounds %struct.acpi_reg_walk_info, ptr %info, i32 0, i32 0, !dbg !961
  store i32 %4, ptr %function10, align 4, !dbg !962
  %reg_run_count = getelementptr inbounds %struct.acpi_reg_walk_info, ptr %info, i32 0, i32 1, !dbg !963
  store i32 0, ptr %reg_run_count, align 4, !dbg !964
  %5 = load ptr, ptr %node.addr, align 8, !dbg !965
  %6 = load i32, ptr %max_depth.addr, align 4, !dbg !966
  %call = call i32 @acpi_ns_walk_namespace(i32 noundef 0, ptr noundef %5, i32 noundef %6, i32 noundef 1, ptr noundef @acpi_ev_reg_run, ptr noundef null, ptr noundef %info, ptr noundef null) #14, !dbg !967
  %7 = load i8, ptr %space_id.addr, align 1, !dbg !968
  %conv11 = zext i8 %7 to i32, !dbg !968
  %cmp12 = icmp eq i32 %conv11, 3, !dbg !970
  br i1 %cmp12, label %if.then18, label %lor.lhs.false14, !dbg !971

lor.lhs.false14:                                  ; preds = %if.end
  %8 = load i8, ptr %space_id.addr, align 1, !dbg !972
  %conv15 = zext i8 %8 to i32, !dbg !972
  %cmp16 = icmp eq i32 %conv15, 8, !dbg !973
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !974

if.then18:                                        ; preds = %lor.lhs.false14, %if.end
  %9 = load ptr, ptr %node.addr, align 8, !dbg !975
  %10 = load i8, ptr %space_id.addr, align 1, !dbg !977
  call void @acpi_ev_execute_orphan_reg_method(ptr noundef %9, i8 noundef zeroext %10) #14, !dbg !978
  br label %if.end19, !dbg !979

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !980

cleanup:                                          ; preds = %if.end19, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr %info) #13, !dbg !981
  ret void, !dbg !981
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !982 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_address_space_dispatch(ptr noundef %region_obj, ptr noundef %field_obj, i32 noundef %function, i32 noundef %region_offset, i32 noundef %bit_width, ptr noundef %value) #0 align 16 !dbg !983 {
entry:
  %retval = alloca i32, align 4
  %region_obj.addr = alloca ptr, align 8
  %field_obj.addr = alloca ptr, align 8
  %function.addr = alloca i32, align 4
  %region_offset.addr = alloca i32, align 4
  %bit_width.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %handler = alloca ptr, align 8
  %region_setup = alloca ptr, align 8
  %handler_desc = alloca ptr, align 8
  %region_obj2 = alloca ptr, align 8
  %region_context = alloca ptr, align 8
  %context = alloca ptr, align 8
  %context_mutex = alloca ptr, align 8
  %context_locked = alloca i8, align 1
  %address = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ctx = alloca ptr, align 8
  %ctx31 = alloca ptr, align 8
  store ptr %region_obj, ptr %region_obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_obj.addr, metadata !987, metadata !DIExpression()), !dbg !1029
  store ptr %field_obj, ptr %field_obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %field_obj.addr, metadata !988, metadata !DIExpression()), !dbg !1030
  store i32 %function, ptr %function.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !989, metadata !DIExpression()), !dbg !1031
  store i32 %region_offset, ptr %region_offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %region_offset.addr, metadata !990, metadata !DIExpression()), !dbg !1032
  store i32 %bit_width, ptr %bit_width.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit_width.addr, metadata !991, metadata !DIExpression()), !dbg !1033
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !992, metadata !DIExpression()), !dbg !1034
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1035
  call void @llvm.dbg.declare(metadata ptr %status, metadata !993, metadata !DIExpression()), !dbg !1036
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler) #13, !dbg !1037
  call void @llvm.dbg.declare(metadata ptr %handler, metadata !994, metadata !DIExpression()), !dbg !1038
  call void @llvm.lifetime.start.p0(i64 8, ptr %region_setup) #13, !dbg !1039
  call void @llvm.dbg.declare(metadata ptr %region_setup, metadata !995, metadata !DIExpression()), !dbg !1040
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler_desc) #13, !dbg !1041
  call void @llvm.dbg.declare(metadata ptr %handler_desc, metadata !996, metadata !DIExpression()), !dbg !1042
  call void @llvm.lifetime.start.p0(i64 8, ptr %region_obj2) #13, !dbg !1043
  call void @llvm.dbg.declare(metadata ptr %region_obj2, metadata !997, metadata !DIExpression()), !dbg !1044
  call void @llvm.lifetime.start.p0(i64 8, ptr %region_context) #13, !dbg !1045
  call void @llvm.dbg.declare(metadata ptr %region_context, metadata !998, metadata !DIExpression()), !dbg !1046
  store ptr null, ptr %region_context, align 8, !dbg !1046
  call void @llvm.lifetime.start.p0(i64 8, ptr %context) #13, !dbg !1047
  call void @llvm.dbg.declare(metadata ptr %context, metadata !999, metadata !DIExpression()), !dbg !1048
  call void @llvm.lifetime.start.p0(i64 8, ptr %context_mutex) #13, !dbg !1049
  call void @llvm.dbg.declare(metadata ptr %context_mutex, metadata !1006, metadata !DIExpression()), !dbg !1050
  call void @llvm.lifetime.start.p0(i64 1, ptr %context_locked) #13, !dbg !1051
  call void @llvm.dbg.declare(metadata ptr %context_locked, metadata !1007, metadata !DIExpression()), !dbg !1052
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #13, !dbg !1053
  call void @llvm.dbg.declare(metadata ptr %address, metadata !1008, metadata !DIExpression()), !dbg !1054
  %0 = load ptr, ptr %region_obj.addr, align 8, !dbg !1055
  %call = call ptr @acpi_ns_get_secondary_object(ptr noundef %0) #14, !dbg !1056
  store ptr %call, ptr %region_obj2, align 8, !dbg !1057
  %1 = load ptr, ptr %region_obj2, align 8, !dbg !1058
  %tobool = icmp ne ptr %1, null, !dbg !1058
  br i1 %tobool, label %if.end, label %if.then, !dbg !1060

if.then:                                          ; preds = %entry
  store i32 6, ptr %retval, align 4, !dbg !1061
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1061

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %region_obj.addr, align 8, !dbg !1063
  %handler1 = getelementptr inbounds %struct.acpi_object_region, ptr %2, i32 0, i32 7, !dbg !1064
  %3 = load ptr, ptr %handler1, align 8, !dbg !1064
  store ptr %3, ptr %handler_desc, align 8, !dbg !1065
  %4 = load ptr, ptr %handler_desc, align 8, !dbg !1066
  %tobool2 = icmp ne ptr %4, null, !dbg !1066
  br i1 %tobool2, label %if.end6, label %if.then3, !dbg !1068

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %region_obj.addr, align 8, !dbg !1069
  %node = getelementptr inbounds %struct.acpi_object_region, ptr %5, i32 0, i32 6, !dbg !1069
  %6 = load ptr, ptr %node, align 8, !dbg !1069
  %call4 = call ptr @acpi_ut_get_node_name(ptr noundef %6) #14, !dbg !1069
  %7 = load ptr, ptr %region_obj.addr, align 8, !dbg !1069
  %8 = load ptr, ptr %region_obj.addr, align 8, !dbg !1069
  %space_id = getelementptr inbounds %struct.acpi_object_region, ptr %8, i32 0, i32 5, !dbg !1069
  %9 = load i8, ptr %space_id, align 1, !dbg !1069
  %call5 = call ptr @acpi_ut_get_region_name(i8 noundef zeroext %9) #14, !dbg !1069
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 131, ptr noundef @.str, ptr noundef %call4, ptr noundef %7, ptr noundef %call5) #14, !dbg !1069
  store i32 6, ptr %retval, align 4, !dbg !1071
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1071

if.end6:                                          ; preds = %if.end
  %10 = load ptr, ptr %handler_desc, align 8, !dbg !1072
  %context7 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %10, i32 0, i32 9, !dbg !1073
  %11 = load ptr, ptr %context7, align 8, !dbg !1073
  store ptr %11, ptr %context, align 8, !dbg !1074
  %12 = load ptr, ptr %handler_desc, align 8, !dbg !1075
  %context_mutex8 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %12, i32 0, i32 10, !dbg !1076
  %13 = load ptr, ptr %context_mutex8, align 8, !dbg !1076
  store ptr %13, ptr %context_mutex, align 8, !dbg !1077
  store i8 0, ptr %context_locked, align 1, !dbg !1078
  %14 = load ptr, ptr %region_obj.addr, align 8, !dbg !1079
  %flags = getelementptr inbounds %struct.acpi_object_region, ptr %14, i32 0, i32 4, !dbg !1080
  %15 = load i8, ptr %flags, align 4, !dbg !1080
  %conv = zext i8 %15 to i32, !dbg !1079
  %and = and i32 %conv, 32, !dbg !1081
  %tobool9 = icmp ne i32 %and, 0, !dbg !1081
  br i1 %tobool9, label %if.end58, label %if.then10, !dbg !1082

if.then10:                                        ; preds = %if.end6
  %16 = load ptr, ptr %handler_desc, align 8, !dbg !1083
  %setup = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %16, i32 0, i32 11, !dbg !1084
  %17 = load ptr, ptr %setup, align 8, !dbg !1084
  store ptr %17, ptr %region_setup, align 8, !dbg !1085
  %18 = load ptr, ptr %region_setup, align 8, !dbg !1086
  %tobool11 = icmp ne ptr %18, null, !dbg !1086
  br i1 %tobool11, label %if.end15, label %if.then12, !dbg !1088

if.then12:                                        ; preds = %if.then10
  %19 = load ptr, ptr %region_obj.addr, align 8, !dbg !1089
  %20 = load ptr, ptr %region_obj.addr, align 8, !dbg !1089
  %space_id13 = getelementptr inbounds %struct.acpi_object_region, ptr %20, i32 0, i32 5, !dbg !1089
  %21 = load i8, ptr %space_id13, align 1, !dbg !1089
  %call14 = call ptr @acpi_ut_get_region_name(i8 noundef zeroext %21) #14, !dbg !1089
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 158, ptr noundef @.str.1, ptr noundef %19, ptr noundef %call14) #14, !dbg !1089
  store i32 6, ptr %retval, align 4, !dbg !1091
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1091

if.end15:                                         ; preds = %if.then10
  %22 = load ptr, ptr %region_obj.addr, align 8, !dbg !1092
  %space_id16 = getelementptr inbounds %struct.acpi_object_region, ptr %22, i32 0, i32 5, !dbg !1093
  %23 = load i8, ptr %space_id16, align 1, !dbg !1093
  %conv17 = zext i8 %23 to i32, !dbg !1092
  %cmp = icmp eq i32 %conv17, 10, !dbg !1094
  br i1 %cmp, label %if.then19, label %if.end25, !dbg !1095

if.then19:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #13, !dbg !1096
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1009, metadata !DIExpression()), !dbg !1097
  %24 = load ptr, ptr %handler_desc, align 8, !dbg !1098
  %context20 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %24, i32 0, i32 9, !dbg !1099
  %25 = load ptr, ptr %context20, align 8, !dbg !1099
  store ptr %25, ptr %ctx, align 8, !dbg !1097
  %26 = load ptr, ptr %field_obj.addr, align 8, !dbg !1100
  %internal_pcc_buffer = getelementptr inbounds %struct.acpi_object_region_field, ptr %26, i32 0, i32 18, !dbg !1101
  %27 = load ptr, ptr %internal_pcc_buffer, align 8, !dbg !1101
  %28 = load ptr, ptr %ctx, align 8, !dbg !1102
  %internal_buffer = getelementptr inbounds %struct.acpi_pcc_info, ptr %28, i32 0, i32 2, !dbg !1103
  store ptr %27, ptr %internal_buffer, align 8, !dbg !1104
  %29 = load ptr, ptr %region_obj.addr, align 8, !dbg !1105
  %length = getelementptr inbounds %struct.acpi_object_region, ptr %29, i32 0, i32 10, !dbg !1106
  %30 = load i32, ptr %length, align 8, !dbg !1106
  %conv21 = trunc i32 %30 to i16, !dbg !1107
  %31 = load ptr, ptr %ctx, align 8, !dbg !1108
  %length22 = getelementptr inbounds %struct.acpi_pcc_info, ptr %31, i32 0, i32 1, !dbg !1109
  store i16 %conv21, ptr %length22, align 2, !dbg !1110
  %32 = load ptr, ptr %region_obj.addr, align 8, !dbg !1111
  %address23 = getelementptr inbounds %struct.acpi_object_region, ptr %32, i32 0, i32 9, !dbg !1112
  %33 = load i64, ptr %address23, align 8, !dbg !1112
  %conv24 = trunc i64 %33 to i8, !dbg !1113
  %34 = load ptr, ptr %ctx, align 8, !dbg !1114
  %subspace_id = getelementptr inbounds %struct.acpi_pcc_info, ptr %34, i32 0, i32 0, !dbg !1115
  store i8 %conv24, ptr %subspace_id, align 8, !dbg !1116
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #13, !dbg !1117
  br label %if.end25, !dbg !1118

if.end25:                                         ; preds = %if.then19, %if.end15
  %35 = load ptr, ptr %region_obj.addr, align 8, !dbg !1119
  %space_id26 = getelementptr inbounds %struct.acpi_object_region, ptr %35, i32 0, i32 5, !dbg !1120
  %36 = load i8, ptr %space_id26, align 1, !dbg !1120
  %conv27 = zext i8 %36 to i32, !dbg !1119
  %cmp28 = icmp eq i32 %conv27, 127, !dbg !1121
  br i1 %cmp28, label %if.then30, label %if.end37, !dbg !1122

if.then30:                                        ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx31) #13, !dbg !1123
  call void @llvm.dbg.declare(metadata ptr %ctx31, metadata !1020, metadata !DIExpression()), !dbg !1124
  %37 = load ptr, ptr %handler_desc, align 8, !dbg !1125
  %context32 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %37, i32 0, i32 9, !dbg !1126
  %38 = load ptr, ptr %context32, align 8, !dbg !1126
  store ptr %38, ptr %ctx31, align 8, !dbg !1124
  %39 = load ptr, ptr %region_obj.addr, align 8, !dbg !1127
  %length33 = getelementptr inbounds %struct.acpi_object_region, ptr %39, i32 0, i32 10, !dbg !1128
  %40 = load i32, ptr %length33, align 8, !dbg !1128
  %conv34 = zext i32 %40 to i64, !dbg !1127
  %41 = load ptr, ptr %ctx31, align 8, !dbg !1129
  %length35 = getelementptr inbounds %struct.acpi_ffh_info, ptr %41, i32 0, i32 1, !dbg !1130
  store i64 %conv34, ptr %length35, align 8, !dbg !1131
  %42 = load ptr, ptr %region_obj.addr, align 8, !dbg !1132
  %address36 = getelementptr inbounds %struct.acpi_object_region, ptr %42, i32 0, i32 9, !dbg !1133
  %43 = load i64, ptr %address36, align 8, !dbg !1133
  %44 = load ptr, ptr %ctx31, align 8, !dbg !1134
  %offset = getelementptr inbounds %struct.acpi_ffh_info, ptr %44, i32 0, i32 0, !dbg !1135
  store i64 %43, ptr %offset, align 8, !dbg !1136
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx31) #13, !dbg !1137
  br label %if.end37, !dbg !1138

if.end37:                                         ; preds = %if.then30, %if.end25
  call void @acpi_ex_exit_interpreter() #14, !dbg !1139
  %45 = load ptr, ptr %region_setup, align 8, !dbg !1140
  %46 = load ptr, ptr %region_obj.addr, align 8, !dbg !1141
  %47 = load ptr, ptr %context, align 8, !dbg !1142
  %call38 = call i32 %45(ptr noundef %46, i32 noundef 0, ptr noundef %47, ptr noundef %region_context) #14, !dbg !1140
  store i32 %call38, ptr %status, align 4, !dbg !1143
  call void @acpi_ex_enter_interpreter() #14, !dbg !1144
  %48 = load i32, ptr %status, align 4, !dbg !1145
  %tobool39 = icmp ne i32 %48, 0, !dbg !1145
  br i1 %tobool39, label %if.then40, label %if.end43, !dbg !1147

if.then40:                                        ; preds = %if.end37
  %49 = load i32, ptr %status, align 4, !dbg !1148
  %50 = load ptr, ptr %region_obj.addr, align 8, !dbg !1148
  %space_id41 = getelementptr inbounds %struct.acpi_object_region, ptr %50, i32 0, i32 5, !dbg !1148
  %51 = load i8, ptr %space_id41, align 1, !dbg !1148
  %call42 = call ptr @acpi_ut_get_region_name(i8 noundef zeroext %51) #14, !dbg !1148
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 202, i32 noundef %49, ptr noundef @.str.2, ptr noundef %call42) #14, !dbg !1148
  %52 = load i32, ptr %status, align 4, !dbg !1150
  store i32 %52, ptr %retval, align 4, !dbg !1150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1150

if.end43:                                         ; preds = %if.end37
  %53 = load ptr, ptr %region_obj.addr, align 8, !dbg !1151
  %flags44 = getelementptr inbounds %struct.acpi_object_region, ptr %53, i32 0, i32 4, !dbg !1153
  %54 = load i8, ptr %flags44, align 4, !dbg !1153
  %conv45 = zext i8 %54 to i32, !dbg !1151
  %and46 = and i32 %conv45, 32, !dbg !1154
  %tobool47 = icmp ne i32 %and46, 0, !dbg !1154
  br i1 %tobool47, label %if.end57, label %if.then48, !dbg !1155

if.then48:                                        ; preds = %if.end43
  %55 = load ptr, ptr %region_obj.addr, align 8, !dbg !1156
  %flags49 = getelementptr inbounds %struct.acpi_object_region, ptr %55, i32 0, i32 4, !dbg !1158
  %56 = load i8, ptr %flags49, align 4, !dbg !1159
  %conv50 = zext i8 %56 to i32, !dbg !1159
  %or = or i32 %conv50, 32, !dbg !1159
  %conv51 = trunc i32 %or to i8, !dbg !1159
  store i8 %conv51, ptr %flags49, align 4, !dbg !1159
  %57 = load ptr, ptr %region_obj2, align 8, !dbg !1160
  %region_context52 = getelementptr inbounds %struct.acpi_object_extra, ptr %57, i32 0, i32 7, !dbg !1162
  %58 = load ptr, ptr %region_context52, align 8, !dbg !1162
  %tobool53 = icmp ne ptr %58, null, !dbg !1163
  br i1 %tobool53, label %if.end56, label %if.then54, !dbg !1164

if.then54:                                        ; preds = %if.then48
  %59 = load ptr, ptr %region_context, align 8, !dbg !1165
  %60 = load ptr, ptr %region_obj2, align 8, !dbg !1167
  %region_context55 = getelementptr inbounds %struct.acpi_object_extra, ptr %60, i32 0, i32 7, !dbg !1168
  store ptr %59, ptr %region_context55, align 8, !dbg !1169
  br label %if.end56, !dbg !1170

if.end56:                                         ; preds = %if.then54, %if.then48
  br label %if.end57, !dbg !1171

if.end57:                                         ; preds = %if.end56, %if.end43
  br label %if.end58, !dbg !1172

if.end58:                                         ; preds = %if.end57, %if.end6
  %61 = load ptr, ptr %handler_desc, align 8, !dbg !1173
  %handler59 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %61, i32 0, i32 7, !dbg !1174
  %62 = load ptr, ptr %handler59, align 8, !dbg !1174
  store ptr %62, ptr %handler, align 8, !dbg !1175
  %63 = load ptr, ptr %region_obj.addr, align 8, !dbg !1176
  %address60 = getelementptr inbounds %struct.acpi_object_region, ptr %63, i32 0, i32 9, !dbg !1177
  %64 = load i64, ptr %address60, align 8, !dbg !1177
  %65 = load i32, ptr %region_offset.addr, align 4, !dbg !1178
  %conv61 = zext i32 %65 to i64, !dbg !1178
  %add = add i64 %64, %conv61, !dbg !1179
  store i64 %add, ptr %address, align 8, !dbg !1180
  %66 = load ptr, ptr %handler_desc, align 8, !dbg !1181
  %handler_flags = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %66, i32 0, i32 6, !dbg !1183
  %67 = load i8, ptr %handler_flags, align 2, !dbg !1183
  %conv62 = zext i8 %67 to i32, !dbg !1181
  %and63 = and i32 %conv62, 1, !dbg !1184
  %tobool64 = icmp ne i32 %and63, 0, !dbg !1184
  br i1 %tobool64, label %if.end66, label %if.then65, !dbg !1185

if.then65:                                        ; preds = %if.end58
  call void @acpi_ex_exit_interpreter() #14, !dbg !1186
  br label %if.end66, !dbg !1188

if.end66:                                         ; preds = %if.then65, %if.end58
  %68 = load ptr, ptr %region_obj.addr, align 8, !dbg !1189
  %space_id67 = getelementptr inbounds %struct.acpi_object_region, ptr %68, i32 0, i32 5, !dbg !1191
  %69 = load i8, ptr %space_id67, align 1, !dbg !1191
  %conv68 = zext i8 %69 to i32, !dbg !1189
  %cmp69 = icmp eq i32 %conv68, 9, !dbg !1192
  br i1 %cmp69, label %land.lhs.true, label %lor.lhs.false, !dbg !1193

lor.lhs.false:                                    ; preds = %if.end66
  %70 = load ptr, ptr %region_obj.addr, align 8, !dbg !1194
  %space_id71 = getelementptr inbounds %struct.acpi_object_region, ptr %70, i32 0, i32 5, !dbg !1195
  %71 = load i8, ptr %space_id71, align 1, !dbg !1195
  %conv72 = zext i8 %71 to i32, !dbg !1194
  %cmp73 = icmp eq i32 %conv72, 8, !dbg !1196
  br i1 %cmp73, label %land.lhs.true, label %if.end92, !dbg !1197

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end66
  %72 = load ptr, ptr %context, align 8, !dbg !1198
  %tobool75 = icmp ne ptr %72, null, !dbg !1198
  br i1 %tobool75, label %land.lhs.true76, label %if.end92, !dbg !1199

land.lhs.true76:                                  ; preds = %land.lhs.true
  %73 = load ptr, ptr %field_obj.addr, align 8, !dbg !1200
  %tobool77 = icmp ne ptr %73, null, !dbg !1200
  br i1 %tobool77, label %if.then78, label %if.end92, !dbg !1201

if.then78:                                        ; preds = %land.lhs.true76
  %74 = load ptr, ptr %context_mutex, align 8, !dbg !1202
  %call79 = call i32 @acpi_os_wait_semaphore(ptr noundef %74, i32 noundef 1, i16 noundef zeroext -1) #14, !dbg !1202
  store i32 %call79, ptr %status, align 4, !dbg !1204
  %75 = load i32, ptr %status, align 4, !dbg !1205
  %tobool80 = icmp ne i32 %75, 0, !dbg !1205
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !1207

if.then81:                                        ; preds = %if.then78
  br label %re_enter_interpreter, !dbg !1208

if.end82:                                         ; preds = %if.then78
  store i8 1, ptr %context_locked, align 1, !dbg !1210
  %76 = load ptr, ptr %field_obj.addr, align 8, !dbg !1211
  %resource_buffer = getelementptr inbounds %struct.acpi_object_region_field, ptr %76, i32 0, i32 16, !dbg !1212
  %77 = load ptr, ptr %resource_buffer, align 8, !dbg !1212
  %78 = load ptr, ptr %context, align 8, !dbg !1213
  %connection = getelementptr inbounds %struct.acpi_connection_info, ptr %78, i32 0, i32 0, !dbg !1214
  store ptr %77, ptr %connection, align 8, !dbg !1215
  %79 = load ptr, ptr %field_obj.addr, align 8, !dbg !1216
  %resource_length = getelementptr inbounds %struct.acpi_object_region_field, ptr %79, i32 0, i32 14, !dbg !1217
  %80 = load i16, ptr %resource_length, align 2, !dbg !1217
  %81 = load ptr, ptr %context, align 8, !dbg !1218
  %length83 = getelementptr inbounds %struct.acpi_connection_info, ptr %81, i32 0, i32 1, !dbg !1219
  store i16 %80, ptr %length83, align 8, !dbg !1220
  %82 = load ptr, ptr %field_obj.addr, align 8, !dbg !1221
  %access_length = getelementptr inbounds %struct.acpi_object_region_field, ptr %82, i32 0, i32 13, !dbg !1222
  %83 = load i8, ptr %access_length, align 1, !dbg !1222
  %84 = load ptr, ptr %context, align 8, !dbg !1223
  %access_length84 = getelementptr inbounds %struct.acpi_connection_info, ptr %84, i32 0, i32 2, !dbg !1224
  store i8 %83, ptr %access_length84, align 2, !dbg !1225
  %85 = load ptr, ptr %region_obj.addr, align 8, !dbg !1226
  %space_id85 = getelementptr inbounds %struct.acpi_object_region, ptr %85, i32 0, i32 5, !dbg !1228
  %86 = load i8, ptr %space_id85, align 1, !dbg !1228
  %conv86 = zext i8 %86 to i32, !dbg !1226
  %cmp87 = icmp eq i32 %conv86, 8, !dbg !1229
  br i1 %cmp87, label %if.then89, label %if.end91, !dbg !1230

if.then89:                                        ; preds = %if.end82
  %87 = load ptr, ptr %field_obj.addr, align 8, !dbg !1231
  %pin_number_index = getelementptr inbounds %struct.acpi_object_region_field, ptr %87, i32 0, i32 17, !dbg !1233
  %88 = load i16, ptr %pin_number_index, align 8, !dbg !1233
  %conv90 = zext i16 %88 to i64, !dbg !1231
  store i64 %conv90, ptr %address, align 8, !dbg !1234
  %89 = load ptr, ptr %field_obj.addr, align 8, !dbg !1235
  %bit_length = getelementptr inbounds %struct.acpi_object_region_field, ptr %89, i32 0, i32 9, !dbg !1236
  %90 = load i32, ptr %bit_length, align 8, !dbg !1236
  store i32 %90, ptr %bit_width.addr, align 4, !dbg !1237
  br label %if.end91, !dbg !1238

if.end91:                                         ; preds = %if.then89, %if.end82
  br label %if.end92, !dbg !1239

if.end92:                                         ; preds = %if.end91, %land.lhs.true76, %land.lhs.true, %lor.lhs.false
  %91 = load ptr, ptr %handler, align 8, !dbg !1240
  %92 = load i32, ptr %function.addr, align 4, !dbg !1241
  %93 = load i64, ptr %address, align 8, !dbg !1242
  %94 = load i32, ptr %bit_width.addr, align 4, !dbg !1243
  %95 = load ptr, ptr %value.addr, align 8, !dbg !1244
  %96 = load ptr, ptr %context, align 8, !dbg !1245
  %97 = load ptr, ptr %region_obj2, align 8, !dbg !1246
  %region_context93 = getelementptr inbounds %struct.acpi_object_extra, ptr %97, i32 0, i32 7, !dbg !1247
  %98 = load ptr, ptr %region_context93, align 8, !dbg !1247
  %call94 = call i32 %91(i32 noundef %92, i64 noundef %93, i32 noundef %94, ptr noundef %95, ptr noundef %96, ptr noundef %98) #14, !dbg !1240
  store i32 %call94, ptr %status, align 4, !dbg !1248
  %99 = load i8, ptr %context_locked, align 1, !dbg !1249
  %tobool95 = icmp ne i8 %99, 0, !dbg !1249
  br i1 %tobool95, label %if.then96, label %if.end98, !dbg !1251

if.then96:                                        ; preds = %if.end92
  %100 = load ptr, ptr %context_mutex, align 8, !dbg !1252
  %call97 = call i32 @acpi_os_signal_semaphore(ptr noundef %100, i32 noundef 1) #14, !dbg !1252
  br label %if.end98, !dbg !1254

if.end98:                                         ; preds = %if.then96, %if.end92
  %101 = load i32, ptr %status, align 4, !dbg !1255
  %tobool99 = icmp ne i32 %101, 0, !dbg !1255
  br i1 %tobool99, label %if.then100, label %if.end112, !dbg !1257

if.then100:                                       ; preds = %if.end98
  %102 = load i32, ptr %status, align 4, !dbg !1258
  %103 = load ptr, ptr %region_obj.addr, align 8, !dbg !1258
  %space_id101 = getelementptr inbounds %struct.acpi_object_region, ptr %103, i32 0, i32 5, !dbg !1258
  %104 = load i8, ptr %space_id101, align 1, !dbg !1258
  %call102 = call ptr @acpi_ut_get_region_name(i8 noundef zeroext %104) #14, !dbg !1258
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 301, i32 noundef %102, ptr noundef @.str.3, ptr noundef %call102) #14, !dbg !1258
  %105 = load ptr, ptr %region_obj.addr, align 8, !dbg !1260
  %space_id103 = getelementptr inbounds %struct.acpi_object_region, ptr %105, i32 0, i32 5, !dbg !1262
  %106 = load i8, ptr %space_id103, align 1, !dbg !1262
  %conv104 = zext i8 %106 to i32, !dbg !1260
  %cmp105 = icmp eq i32 %conv104, 3, !dbg !1263
  br i1 %cmp105, label %land.lhs.true107, label %if.end111, !dbg !1264

land.lhs.true107:                                 ; preds = %if.then100
  %107 = load i32, ptr %status, align 4, !dbg !1265
  %cmp108 = icmp eq i32 %107, 17, !dbg !1266
  br i1 %cmp108, label %if.then110, label %if.end111, !dbg !1267

if.then110:                                       ; preds = %land.lhs.true107
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 311, ptr noundef @.str.4) #14, !dbg !1268
  br label %if.end111, !dbg !1270

if.end111:                                        ; preds = %if.then110, %land.lhs.true107, %if.then100
  br label %if.end112, !dbg !1271

if.end112:                                        ; preds = %if.end111, %if.end98
  br label %re_enter_interpreter, !dbg !1255

re_enter_interpreter:                             ; preds = %if.end112, %if.then81
  call void @llvm.dbg.label(metadata !1028), !dbg !1272
  %108 = load ptr, ptr %handler_desc, align 8, !dbg !1273
  %handler_flags113 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %108, i32 0, i32 6, !dbg !1275
  %109 = load i8, ptr %handler_flags113, align 2, !dbg !1275
  %conv114 = zext i8 %109 to i32, !dbg !1273
  %and115 = and i32 %conv114, 1, !dbg !1276
  %tobool116 = icmp ne i32 %and115, 0, !dbg !1276
  br i1 %tobool116, label %if.end118, label %if.then117, !dbg !1277

if.then117:                                       ; preds = %re_enter_interpreter
  call void @acpi_ex_enter_interpreter() #14, !dbg !1278
  br label %if.end118, !dbg !1280

if.end118:                                        ; preds = %if.then117, %re_enter_interpreter
  %110 = load i32, ptr %status, align 4, !dbg !1281
  store i32 %110, ptr %retval, align 4, !dbg !1281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1281

cleanup:                                          ; preds = %if.end118, %if.then40, %if.then12, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #13, !dbg !1282
  call void @llvm.lifetime.end.p0(i64 1, ptr %context_locked) #13, !dbg !1282
  call void @llvm.lifetime.end.p0(i64 8, ptr %context_mutex) #13, !dbg !1282
  call void @llvm.lifetime.end.p0(i64 8, ptr %context) #13, !dbg !1282
  call void @llvm.lifetime.end.p0(i64 8, ptr %region_context) #13, !dbg !1282
  call void @llvm.lifetime.end.p0(i64 8, ptr %region_obj2) #13, !dbg !1282
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler_desc) #13, !dbg !1282
  call void @llvm.lifetime.end.p0(i64 8, ptr %region_setup) #13, !dbg !1282
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler) #13, !dbg !1282
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1282
  %111 = load i32, ptr %retval, align 4, !dbg !1282
  ret i32 %111, !dbg !1282
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1283 dso_local ptr @acpi_ns_get_secondary_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1287 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1292 dso_local ptr @acpi_ut_get_node_name(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1295 dso_local ptr @acpi_ut_get_region_name(i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1298 dso_local void @acpi_ex_exit_interpreter() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1302 dso_local void @acpi_ex_enter_interpreter() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1303 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1306 dso_local i32 @acpi_os_wait_semaphore(ptr noundef, i32 noundef, i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1310 dso_local i32 @acpi_os_signal_semaphore(ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ev_detach_region(ptr noundef %region_obj, i8 noundef zeroext %acpi_ns_is_locked) #0 align 16 !dbg !1313 {
entry:
  %region_obj.addr = alloca ptr, align 8
  %acpi_ns_is_locked.addr = alloca i8, align 1
  %handler_obj = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %start_desc = alloca ptr, align 8
  %last_obj_ptr = alloca ptr, align 8
  %region_setup = alloca ptr, align 8
  %region_context = alloca ptr, align 8
  %region_obj2 = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %region_obj, ptr %region_obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_obj.addr, metadata !1317, metadata !DIExpression()), !dbg !1327
  store i8 %acpi_ns_is_locked, ptr %acpi_ns_is_locked.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %acpi_ns_is_locked.addr, metadata !1318, metadata !DIExpression()), !dbg !1328
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler_obj) #13, !dbg !1329
  call void @llvm.dbg.declare(metadata ptr %handler_obj, metadata !1319, metadata !DIExpression()), !dbg !1330
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #13, !dbg !1331
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1320, metadata !DIExpression()), !dbg !1332
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_desc) #13, !dbg !1333
  call void @llvm.dbg.declare(metadata ptr %start_desc, metadata !1321, metadata !DIExpression()), !dbg !1334
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_obj_ptr) #13, !dbg !1335
  call void @llvm.dbg.declare(metadata ptr %last_obj_ptr, metadata !1322, metadata !DIExpression()), !dbg !1336
  call void @llvm.lifetime.start.p0(i64 8, ptr %region_setup) #13, !dbg !1337
  call void @llvm.dbg.declare(metadata ptr %region_setup, metadata !1323, metadata !DIExpression()), !dbg !1338
  call void @llvm.lifetime.start.p0(i64 8, ptr %region_context) #13, !dbg !1339
  call void @llvm.dbg.declare(metadata ptr %region_context, metadata !1324, metadata !DIExpression()), !dbg !1340
  call void @llvm.lifetime.start.p0(i64 8, ptr %region_obj2) #13, !dbg !1341
  call void @llvm.dbg.declare(metadata ptr %region_obj2, metadata !1325, metadata !DIExpression()), !dbg !1342
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1343
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1326, metadata !DIExpression()), !dbg !1344
  %0 = load ptr, ptr %region_obj.addr, align 8, !dbg !1345
  %call = call ptr @acpi_ns_get_secondary_object(ptr noundef %0) #14, !dbg !1346
  store ptr %call, ptr %region_obj2, align 8, !dbg !1347
  %1 = load ptr, ptr %region_obj2, align 8, !dbg !1348
  %tobool = icmp ne ptr %1, null, !dbg !1348
  br i1 %tobool, label %if.end, label %if.then, !dbg !1350

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1351

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %region_obj2, align 8, !dbg !1353
  %region_context1 = getelementptr inbounds %struct.acpi_object_extra, ptr %2, i32 0, i32 7, !dbg !1354
  store ptr %region_context1, ptr %region_context, align 8, !dbg !1355
  %3 = load ptr, ptr %region_obj.addr, align 8, !dbg !1356
  %handler = getelementptr inbounds %struct.acpi_object_region, ptr %3, i32 0, i32 7, !dbg !1357
  %4 = load ptr, ptr %handler, align 8, !dbg !1357
  store ptr %4, ptr %handler_obj, align 8, !dbg !1358
  %5 = load ptr, ptr %handler_obj, align 8, !dbg !1359
  %tobool2 = icmp ne ptr %5, null, !dbg !1359
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1361

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1362

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %handler_obj, align 8, !dbg !1364
  %region_list = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %6, i32 0, i32 12, !dbg !1365
  %7 = load ptr, ptr %region_list, align 8, !dbg !1365
  store ptr %7, ptr %obj_desc, align 8, !dbg !1366
  %8 = load ptr, ptr %obj_desc, align 8, !dbg !1367
  store ptr %8, ptr %start_desc, align 8, !dbg !1368
  %9 = load ptr, ptr %handler_obj, align 8, !dbg !1369
  %region_list5 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %9, i32 0, i32 12, !dbg !1370
  store ptr %region_list5, ptr %last_obj_ptr, align 8, !dbg !1371
  br label %while.cond, !dbg !1372

while.cond:                                       ; preds = %if.end51, %if.end4
  %10 = load ptr, ptr %obj_desc, align 8, !dbg !1373
  %tobool6 = icmp ne ptr %10, null, !dbg !1372
  br i1 %tobool6, label %while.body, label %while.end, !dbg !1372

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %obj_desc, align 8, !dbg !1374
  %12 = load ptr, ptr %region_obj.addr, align 8, !dbg !1377
  %cmp = icmp eq ptr %11, %12, !dbg !1378
  br i1 %cmp, label %if.then7, label %if.end45, !dbg !1379

if.then7:                                         ; preds = %while.body
  %13 = load ptr, ptr %obj_desc, align 8, !dbg !1380
  %next = getelementptr inbounds %struct.acpi_object_region, ptr %13, i32 0, i32 8, !dbg !1382
  %14 = load ptr, ptr %next, align 8, !dbg !1382
  %15 = load ptr, ptr %last_obj_ptr, align 8, !dbg !1383
  store ptr %14, ptr %15, align 8, !dbg !1384
  %16 = load ptr, ptr %obj_desc, align 8, !dbg !1385
  %next8 = getelementptr inbounds %struct.acpi_object_region, ptr %16, i32 0, i32 8, !dbg !1386
  store ptr null, ptr %next8, align 8, !dbg !1387
  %17 = load i8, ptr %acpi_ns_is_locked.addr, align 1, !dbg !1388
  %tobool9 = icmp ne i8 %17, 0, !dbg !1388
  br i1 %tobool9, label %if.then10, label %if.end15, !dbg !1390

if.then10:                                        ; preds = %if.then7
  %call11 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #14, !dbg !1391
  store i32 %call11, ptr %status, align 4, !dbg !1393
  %18 = load i32, ptr %status, align 4, !dbg !1394
  %tobool12 = icmp ne i32 %18, 0, !dbg !1394
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !1396

if.then13:                                        ; preds = %if.then10
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1397

if.end14:                                         ; preds = %if.then10
  br label %if.end15, !dbg !1399

if.end15:                                         ; preds = %if.end14, %if.then7
  %19 = load ptr, ptr %region_obj.addr, align 8, !dbg !1400
  %call16 = call i32 @acpi_ev_execute_reg_method(ptr noundef %19, i32 noundef 0) #14, !dbg !1401
  store i32 %call16, ptr %status, align 4, !dbg !1402
  %20 = load i32, ptr %status, align 4, !dbg !1403
  %tobool17 = icmp ne i32 %20, 0, !dbg !1403
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !1405

if.then18:                                        ; preds = %if.end15
  %21 = load i32, ptr %status, align 4, !dbg !1406
  %22 = load ptr, ptr %region_obj.addr, align 8, !dbg !1406
  %space_id = getelementptr inbounds %struct.acpi_object_region, ptr %22, i32 0, i32 5, !dbg !1406
  %23 = load i8, ptr %space_id, align 1, !dbg !1406
  %call19 = call ptr @acpi_ut_get_region_name(i8 noundef zeroext %23) #14, !dbg !1406
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 408, i32 noundef %21, ptr noundef @.str.5, ptr noundef %call19) #14, !dbg !1406
  br label %if.end20, !dbg !1408

if.end20:                                         ; preds = %if.then18, %if.end15
  %24 = load i8, ptr %acpi_ns_is_locked.addr, align 1, !dbg !1409
  %tobool21 = icmp ne i8 %24, 0, !dbg !1409
  br i1 %tobool21, label %if.then22, label %if.end27, !dbg !1411

if.then22:                                        ; preds = %if.end20
  %call23 = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #14, !dbg !1412
  store i32 %call23, ptr %status, align 4, !dbg !1414
  %25 = load i32, ptr %status, align 4, !dbg !1415
  %tobool24 = icmp ne i32 %25, 0, !dbg !1415
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !1417

if.then25:                                        ; preds = %if.then22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1418

if.end26:                                         ; preds = %if.then22
  br label %if.end27, !dbg !1420

if.end27:                                         ; preds = %if.end26, %if.end20
  %26 = load ptr, ptr %region_obj.addr, align 8, !dbg !1421
  %flags = getelementptr inbounds %struct.acpi_object_region, ptr %26, i32 0, i32 4, !dbg !1423
  %27 = load i8, ptr %flags, align 4, !dbg !1423
  %conv = zext i8 %27 to i32, !dbg !1421
  %and = and i32 %conv, 32, !dbg !1424
  %tobool28 = icmp ne i32 %and, 0, !dbg !1424
  br i1 %tobool28, label %if.then29, label %if.end43, !dbg !1425

if.then29:                                        ; preds = %if.end27
  %28 = load ptr, ptr %handler_obj, align 8, !dbg !1426
  %setup = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %28, i32 0, i32 11, !dbg !1428
  %29 = load ptr, ptr %setup, align 8, !dbg !1428
  store ptr %29, ptr %region_setup, align 8, !dbg !1429
  %30 = load ptr, ptr %region_setup, align 8, !dbg !1430
  %31 = load ptr, ptr %region_obj.addr, align 8, !dbg !1431
  %32 = load ptr, ptr %handler_obj, align 8, !dbg !1432
  %context = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %32, i32 0, i32 9, !dbg !1433
  %33 = load ptr, ptr %context, align 8, !dbg !1433
  %34 = load ptr, ptr %region_context, align 8, !dbg !1434
  %call30 = call i32 %30(ptr noundef %31, i32 noundef 1, ptr noundef %33, ptr noundef %34) #14, !dbg !1430
  store i32 %call30, ptr %status, align 4, !dbg !1435
  %35 = load ptr, ptr %region_context, align 8, !dbg !1436
  %tobool31 = icmp ne ptr %35, null, !dbg !1436
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !1438

if.then32:                                        ; preds = %if.then29
  %36 = load ptr, ptr %region_context, align 8, !dbg !1439
  store ptr null, ptr %36, align 8, !dbg !1441
  br label %if.end33, !dbg !1442

if.end33:                                         ; preds = %if.then32, %if.then29
  %37 = load i32, ptr %status, align 4, !dbg !1443
  %tobool34 = icmp ne i32 %37, 0, !dbg !1443
  br i1 %tobool34, label %if.then35, label %if.end38, !dbg !1445

if.then35:                                        ; preds = %if.end33
  %38 = load i32, ptr %status, align 4, !dbg !1446
  %39 = load ptr, ptr %region_obj.addr, align 8, !dbg !1446
  %space_id36 = getelementptr inbounds %struct.acpi_object_region, ptr %39, i32 0, i32 5, !dbg !1446
  %40 = load i8, ptr %space_id36, align 1, !dbg !1446
  %call37 = call ptr @acpi_ut_get_region_name(i8 noundef zeroext %40) #14, !dbg !1446
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 445, i32 noundef %38, ptr noundef @.str.6, ptr noundef %call37) #14, !dbg !1446
  br label %if.end38, !dbg !1448

if.end38:                                         ; preds = %if.then35, %if.end33
  %41 = load ptr, ptr %region_obj.addr, align 8, !dbg !1449
  %flags39 = getelementptr inbounds %struct.acpi_object_region, ptr %41, i32 0, i32 4, !dbg !1450
  %42 = load i8, ptr %flags39, align 4, !dbg !1451
  %conv40 = zext i8 %42 to i32, !dbg !1451
  %and41 = and i32 %conv40, -33, !dbg !1451
  %conv42 = trunc i32 %and41 to i8, !dbg !1451
  store i8 %conv42, ptr %flags39, align 4, !dbg !1451
  br label %if.end43, !dbg !1452

if.end43:                                         ; preds = %if.end38, %if.end27
  %43 = load ptr, ptr %region_obj.addr, align 8, !dbg !1453
  %handler44 = getelementptr inbounds %struct.acpi_object_region, ptr %43, i32 0, i32 7, !dbg !1454
  store ptr null, ptr %handler44, align 8, !dbg !1455
  %44 = load ptr, ptr %handler_obj, align 8, !dbg !1456
  call void @acpi_ut_remove_reference(ptr noundef %44) #14, !dbg !1457
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1458

if.end45:                                         ; preds = %while.body
  %45 = load ptr, ptr %obj_desc, align 8, !dbg !1459
  %next46 = getelementptr inbounds %struct.acpi_object_region, ptr %45, i32 0, i32 8, !dbg !1460
  store ptr %next46, ptr %last_obj_ptr, align 8, !dbg !1461
  %46 = load ptr, ptr %obj_desc, align 8, !dbg !1462
  %next47 = getelementptr inbounds %struct.acpi_object_region, ptr %46, i32 0, i32 8, !dbg !1463
  %47 = load ptr, ptr %next47, align 8, !dbg !1463
  store ptr %47, ptr %obj_desc, align 8, !dbg !1464
  %48 = load ptr, ptr %obj_desc, align 8, !dbg !1465
  %49 = load ptr, ptr %start_desc, align 8, !dbg !1467
  %cmp48 = icmp eq ptr %48, %49, !dbg !1468
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !1469

if.then50:                                        ; preds = %if.end45
  %50 = load ptr, ptr %region_obj.addr, align 8, !dbg !1470
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 479, ptr noundef @.str.7, ptr noundef %50) #14, !dbg !1470
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1472

if.end51:                                         ; preds = %if.end45
  br label %while.cond, !dbg !1372, !llvm.loop !1473

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1475

cleanup:                                          ; preds = %while.end, %if.then50, %if.end43, %if.then25, %if.then13, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1476
  call void @llvm.lifetime.end.p0(i64 8, ptr %region_obj2) #13, !dbg !1476
  call void @llvm.lifetime.end.p0(i64 8, ptr %region_context) #13, !dbg !1476
  call void @llvm.lifetime.end.p0(i64 8, ptr %region_setup) #13, !dbg !1476
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_obj_ptr) #13, !dbg !1476
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_desc) #13, !dbg !1476
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #13, !dbg !1476
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler_obj) #13, !dbg !1476
  ret void, !dbg !1476
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_execute_reg_method(ptr noundef %region_obj, i32 noundef %function) #0 align 16 !dbg !1477 {
entry:
  %retval = alloca i32, align 4
  %region_obj.addr = alloca ptr, align 8
  %function.addr = alloca i32, align 4
  %info = alloca ptr, align 8
  %args = alloca [3 x ptr], align 16
  %region_obj2 = alloca ptr, align 8
  %reg_name_ptr = alloca ptr, align 8
  %method_node = alloca ptr, align 8
  %node = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %region_obj, ptr %region_obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_obj.addr, metadata !1481, metadata !DIExpression()), !dbg !1559
  store i32 %function, ptr %function.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !1482, metadata !DIExpression()), !dbg !1560
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #13, !dbg !1561
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1483, metadata !DIExpression()), !dbg !1562
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #13, !dbg !1563
  call void @llvm.dbg.declare(metadata ptr %args, metadata !1548, metadata !DIExpression()), !dbg !1564
  call void @llvm.lifetime.start.p0(i64 8, ptr %region_obj2) #13, !dbg !1565
  call void @llvm.dbg.declare(metadata ptr %region_obj2, metadata !1550, metadata !DIExpression()), !dbg !1566
  call void @llvm.lifetime.start.p0(i64 8, ptr %reg_name_ptr) #13, !dbg !1567
  call void @llvm.dbg.declare(metadata ptr %reg_name_ptr, metadata !1551, metadata !DIExpression()), !dbg !1568
  store ptr @.str.8, ptr %reg_name_ptr, align 8, !dbg !1568
  call void @llvm.lifetime.start.p0(i64 8, ptr %method_node) #13, !dbg !1569
  call void @llvm.dbg.declare(metadata ptr %method_node, metadata !1554, metadata !DIExpression()), !dbg !1570
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !1571
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1555, metadata !DIExpression()), !dbg !1572
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1573
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1556, metadata !DIExpression()), !dbg !1574
  %0 = load i8, ptr @acpi_gbl_namespace_initialized, align 1, !dbg !1575
  %tobool = icmp ne i8 %0, 0, !dbg !1575
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1577

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %region_obj.addr, align 8, !dbg !1578
  %handler = getelementptr inbounds %struct.acpi_object_region, ptr %1, i32 0, i32 7, !dbg !1579
  %2 = load ptr, ptr %handler, align 8, !dbg !1579
  %cmp = icmp eq ptr %2, null, !dbg !1580
  br i1 %cmp, label %if.then, label %if.end, !dbg !1581

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !1582
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1582

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %region_obj.addr, align 8, !dbg !1584
  %call = call ptr @acpi_ns_get_secondary_object(ptr noundef %3) #14, !dbg !1585
  store ptr %call, ptr %region_obj2, align 8, !dbg !1586
  %4 = load ptr, ptr %region_obj2, align 8, !dbg !1587
  %tobool1 = icmp ne ptr %4, null, !dbg !1587
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1589

if.then2:                                         ; preds = %if.end
  store i32 6, ptr %retval, align 4, !dbg !1590
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1590

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %region_obj.addr, align 8, !dbg !1592
  %node4 = getelementptr inbounds %struct.acpi_object_region, ptr %5, i32 0, i32 6, !dbg !1593
  %6 = load ptr, ptr %node4, align 8, !dbg !1593
  %parent = getelementptr inbounds %struct.acpi_namespace_node, ptr %6, i32 0, i32 5, !dbg !1594
  %7 = load ptr, ptr %parent, align 8, !dbg !1594
  store ptr %7, ptr %node, align 8, !dbg !1595
  %8 = load ptr, ptr %reg_name_ptr, align 8, !dbg !1596
  %9 = load i32, ptr %8, align 4, !dbg !1597
  %10 = load ptr, ptr %node, align 8, !dbg !1598
  %call5 = call i32 @acpi_ns_search_one_scope(i32 noundef %9, ptr noundef %10, i32 noundef 8, ptr noundef %method_node) #14, !dbg !1599
  store i32 %call5, ptr %status, align 4, !dbg !1600
  %11 = load i32, ptr %status, align 4, !dbg !1601
  %tobool6 = icmp ne i32 %11, 0, !dbg !1601
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1603

if.then7:                                         ; preds = %if.end3
  %12 = load ptr, ptr %method_node, align 8, !dbg !1604
  %13 = load ptr, ptr %region_obj2, align 8, !dbg !1606
  %method_REG = getelementptr inbounds %struct.acpi_object_extra, ptr %13, i32 0, i32 5, !dbg !1607
  store ptr %12, ptr %method_REG, align 8, !dbg !1608
  br label %if.end8, !dbg !1609

if.end8:                                          ; preds = %if.then7, %if.end3
  %14 = load ptr, ptr %region_obj2, align 8, !dbg !1610
  %method_REG9 = getelementptr inbounds %struct.acpi_object_extra, ptr %14, i32 0, i32 5, !dbg !1612
  %15 = load ptr, ptr %method_REG9, align 8, !dbg !1612
  %cmp10 = icmp eq ptr %15, null, !dbg !1613
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !1614

if.then11:                                        ; preds = %if.end8
  store i32 0, ptr %retval, align 4, !dbg !1615
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1615

if.end12:                                         ; preds = %if.end8
  %16 = load i32, ptr %function.addr, align 4, !dbg !1617
  %cmp13 = icmp eq i32 %16, 1, !dbg !1619
  br i1 %cmp13, label %land.lhs.true, label %lor.lhs.false15, !dbg !1620

land.lhs.true:                                    ; preds = %if.end12
  %17 = load ptr, ptr %region_obj.addr, align 8, !dbg !1621
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %17, i32 0, i32 4, !dbg !1622
  %18 = load i8, ptr %flags, align 4, !dbg !1622
  %conv = zext i8 %18 to i32, !dbg !1621
  %and = and i32 %conv, 16, !dbg !1623
  %tobool14 = icmp ne i32 %and, 0, !dbg !1623
  br i1 %tobool14, label %if.then23, label %lor.lhs.false15, !dbg !1624

lor.lhs.false15:                                  ; preds = %land.lhs.true, %if.end12
  %19 = load i32, ptr %function.addr, align 4, !dbg !1625
  %cmp16 = icmp eq i32 %19, 0, !dbg !1626
  br i1 %cmp16, label %land.lhs.true18, label %if.end24, !dbg !1627

land.lhs.true18:                                  ; preds = %lor.lhs.false15
  %20 = load ptr, ptr %region_obj.addr, align 8, !dbg !1628
  %flags19 = getelementptr inbounds %struct.acpi_object_common, ptr %20, i32 0, i32 4, !dbg !1629
  %21 = load i8, ptr %flags19, align 4, !dbg !1629
  %conv20 = zext i8 %21 to i32, !dbg !1628
  %and21 = and i32 %conv20, 16, !dbg !1630
  %tobool22 = icmp ne i32 %and21, 0, !dbg !1630
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !1631

if.then23:                                        ; preds = %land.lhs.true18, %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !1632
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1632

if.end24:                                         ; preds = %land.lhs.true18, %lor.lhs.false15
  %call25 = call ptr @acpi_os_allocate_zeroed(i64 noundef 88) #14, !dbg !1634
  store ptr %call25, ptr %info, align 8, !dbg !1635
  %22 = load ptr, ptr %info, align 8, !dbg !1636
  %tobool26 = icmp ne ptr %22, null, !dbg !1636
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !1638

if.then27:                                        ; preds = %if.end24
  store i32 4, ptr %retval, align 4, !dbg !1639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1639

if.end28:                                         ; preds = %if.end24
  %23 = load ptr, ptr %region_obj2, align 8, !dbg !1641
  %method_REG29 = getelementptr inbounds %struct.acpi_object_extra, ptr %23, i32 0, i32 5, !dbg !1642
  %24 = load ptr, ptr %method_REG29, align 8, !dbg !1642
  %25 = load ptr, ptr %info, align 8, !dbg !1643
  %prefix_node = getelementptr inbounds %struct.acpi_evaluate_info, ptr %25, i32 0, i32 0, !dbg !1644
  store ptr %24, ptr %prefix_node, align 8, !dbg !1645
  %26 = load ptr, ptr %info, align 8, !dbg !1646
  %relative_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %26, i32 0, i32 1, !dbg !1647
  store ptr null, ptr %relative_pathname, align 8, !dbg !1648
  %arraydecay = getelementptr inbounds [3 x ptr], ptr %args, i64 0, i64 0, !dbg !1649
  %27 = load ptr, ptr %info, align 8, !dbg !1650
  %parameters = getelementptr inbounds %struct.acpi_evaluate_info, ptr %27, i32 0, i32 2, !dbg !1651
  store ptr %arraydecay, ptr %parameters, align 8, !dbg !1652
  %28 = load ptr, ptr %info, align 8, !dbg !1653
  %flags30 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %28, i32 0, i32 15, !dbg !1654
  store i8 1, ptr %flags30, align 2, !dbg !1655
  %29 = load ptr, ptr %region_obj.addr, align 8, !dbg !1656
  %space_id = getelementptr inbounds %struct.acpi_object_region, ptr %29, i32 0, i32 5, !dbg !1657
  %30 = load i8, ptr %space_id, align 1, !dbg !1657
  %conv31 = zext i8 %30 to i64, !dbg !1658
  %call32 = call ptr @acpi_ut_create_integer_object(i64 noundef %conv31) #14, !dbg !1659
  %arrayidx = getelementptr [3 x ptr], ptr %args, i64 0, i64 0, !dbg !1660
  store ptr %call32, ptr %arrayidx, align 16, !dbg !1661
  %arrayidx33 = getelementptr [3 x ptr], ptr %args, i64 0, i64 0, !dbg !1662
  %31 = load ptr, ptr %arrayidx33, align 16, !dbg !1662
  %tobool34 = icmp ne ptr %31, null, !dbg !1662
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !1664

if.then35:                                        ; preds = %if.end28
  store i32 4, ptr %status, align 4, !dbg !1665
  br label %cleanup1, !dbg !1667

if.end36:                                         ; preds = %if.end28
  %32 = load i32, ptr %function.addr, align 4, !dbg !1668
  %conv37 = zext i32 %32 to i64, !dbg !1669
  %call38 = call ptr @acpi_ut_create_integer_object(i64 noundef %conv37) #14, !dbg !1670
  %arrayidx39 = getelementptr [3 x ptr], ptr %args, i64 0, i64 1, !dbg !1671
  store ptr %call38, ptr %arrayidx39, align 8, !dbg !1672
  %arrayidx40 = getelementptr [3 x ptr], ptr %args, i64 0, i64 1, !dbg !1673
  %33 = load ptr, ptr %arrayidx40, align 8, !dbg !1673
  %tobool41 = icmp ne ptr %33, null, !dbg !1673
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !1675

if.then42:                                        ; preds = %if.end36
  store i32 4, ptr %status, align 4, !dbg !1676
  br label %cleanup2, !dbg !1678

if.end43:                                         ; preds = %if.end36
  %arrayidx44 = getelementptr [3 x ptr], ptr %args, i64 0, i64 2, !dbg !1679
  store ptr null, ptr %arrayidx44, align 16, !dbg !1680
  %34 = load ptr, ptr %info, align 8, !dbg !1681
  %call45 = call i32 @acpi_ns_evaluate(ptr noundef %34) #14, !dbg !1682
  store i32 %call45, ptr %status, align 4, !dbg !1683
  %arrayidx46 = getelementptr [3 x ptr], ptr %args, i64 0, i64 1, !dbg !1684
  %35 = load ptr, ptr %arrayidx46, align 8, !dbg !1684
  call void @acpi_ut_remove_reference(ptr noundef %35) #14, !dbg !1685
  %36 = load i32, ptr %status, align 4, !dbg !1686
  %tobool47 = icmp ne i32 %36, 0, !dbg !1686
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !1688

if.then48:                                        ; preds = %if.end43
  br label %cleanup2, !dbg !1689

if.end49:                                         ; preds = %if.end43
  %37 = load i32, ptr %function.addr, align 4, !dbg !1691
  %cmp50 = icmp eq i32 %37, 1, !dbg !1693
  br i1 %cmp50, label %if.then52, label %if.else, !dbg !1694

if.then52:                                        ; preds = %if.end49
  %38 = load ptr, ptr %region_obj.addr, align 8, !dbg !1695
  %flags53 = getelementptr inbounds %struct.acpi_object_common, ptr %38, i32 0, i32 4, !dbg !1697
  %39 = load i8, ptr %flags53, align 4, !dbg !1698
  %conv54 = zext i8 %39 to i32, !dbg !1698
  %or = or i32 %conv54, 16, !dbg !1698
  %conv55 = trunc i32 %or to i8, !dbg !1698
  store i8 %conv55, ptr %flags53, align 4, !dbg !1698
  br label %if.end60, !dbg !1699

if.else:                                          ; preds = %if.end49
  %40 = load ptr, ptr %region_obj.addr, align 8, !dbg !1700
  %flags56 = getelementptr inbounds %struct.acpi_object_common, ptr %40, i32 0, i32 4, !dbg !1702
  %41 = load i8, ptr %flags56, align 4, !dbg !1703
  %conv57 = zext i8 %41 to i32, !dbg !1703
  %and58 = and i32 %conv57, -17, !dbg !1703
  %conv59 = trunc i32 %and58 to i8, !dbg !1703
  store i8 %conv59, ptr %flags56, align 4, !dbg !1703
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then52
  br label %cleanup2, !dbg !1704

cleanup2:                                         ; preds = %if.end60, %if.then48, %if.then42
  call void @llvm.dbg.label(metadata !1557), !dbg !1705
  %arrayidx61 = getelementptr [3 x ptr], ptr %args, i64 0, i64 0, !dbg !1706
  %42 = load ptr, ptr %arrayidx61, align 16, !dbg !1706
  call void @acpi_ut_remove_reference(ptr noundef %42) #14, !dbg !1707
  br label %cleanup1, !dbg !1707

cleanup1:                                         ; preds = %cleanup2, %if.then35
  call void @llvm.dbg.label(metadata !1558), !dbg !1708
  %43 = load ptr, ptr %info, align 8, !dbg !1709
  call void @acpi_os_free(ptr noundef %43) #14, !dbg !1709
  %44 = load i32, ptr %status, align 4, !dbg !1710
  store i32 %44, ptr %retval, align 4, !dbg !1710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1710

cleanup:                                          ; preds = %cleanup1, %if.then27, %if.then23, %if.then11, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1711
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !1711
  call void @llvm.lifetime.end.p0(i64 8, ptr %method_node) #13, !dbg !1711
  call void @llvm.lifetime.end.p0(i64 8, ptr %reg_name_ptr) #13, !dbg !1711
  call void @llvm.lifetime.end.p0(i64 8, ptr %region_obj2) #13, !dbg !1711
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #13, !dbg !1711
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #13, !dbg !1711
  %45 = load i32, ptr %retval, align 4, !dbg !1711
  ret i32 %45, !dbg !1711
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1712 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_attach_region(ptr noundef %handler_obj, ptr noundef %region_obj, i8 noundef zeroext %acpi_ns_is_locked) #0 align 16 !dbg !1715 {
entry:
  %retval = alloca i32, align 4
  %handler_obj.addr = alloca ptr, align 8
  %region_obj.addr = alloca ptr, align 8
  %acpi_ns_is_locked.addr = alloca i8, align 1
  store ptr %handler_obj, ptr %handler_obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler_obj.addr, metadata !1719, metadata !DIExpression()), !dbg !1722
  store ptr %region_obj, ptr %region_obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_obj.addr, metadata !1720, metadata !DIExpression()), !dbg !1723
  store i8 %acpi_ns_is_locked, ptr %acpi_ns_is_locked.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %acpi_ns_is_locked.addr, metadata !1721, metadata !DIExpression()), !dbg !1724
  %0 = load ptr, ptr %region_obj.addr, align 8, !dbg !1725
  %handler = getelementptr inbounds %struct.acpi_object_region, ptr %0, i32 0, i32 7, !dbg !1727
  %1 = load ptr, ptr %handler, align 8, !dbg !1727
  %tobool = icmp ne ptr %1, null, !dbg !1725
  br i1 %tobool, label %if.then, label %if.end, !dbg !1728

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4, !dbg !1729
  br label %return, !dbg !1729

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %handler_obj.addr, align 8, !dbg !1731
  %region_list = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %2, i32 0, i32 12, !dbg !1732
  %3 = load ptr, ptr %region_list, align 8, !dbg !1732
  %4 = load ptr, ptr %region_obj.addr, align 8, !dbg !1733
  %next = getelementptr inbounds %struct.acpi_object_region, ptr %4, i32 0, i32 8, !dbg !1734
  store ptr %3, ptr %next, align 8, !dbg !1735
  %5 = load ptr, ptr %region_obj.addr, align 8, !dbg !1736
  %6 = load ptr, ptr %handler_obj.addr, align 8, !dbg !1737
  %region_list1 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %6, i32 0, i32 12, !dbg !1738
  store ptr %5, ptr %region_list1, align 8, !dbg !1739
  %7 = load ptr, ptr %handler_obj.addr, align 8, !dbg !1740
  %8 = load ptr, ptr %region_obj.addr, align 8, !dbg !1741
  %handler2 = getelementptr inbounds %struct.acpi_object_region, ptr %8, i32 0, i32 7, !dbg !1742
  store ptr %7, ptr %handler2, align 8, !dbg !1743
  %9 = load ptr, ptr %handler_obj.addr, align 8, !dbg !1744
  call void @acpi_ut_add_reference(ptr noundef %9) #14, !dbg !1745
  store i32 0, ptr %retval, align 4, !dbg !1746
  br label %return, !dbg !1746

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval, align 4, !dbg !1747
  ret i32 %10, !dbg !1747
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1748 dso_local void @acpi_ut_add_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1749 dso_local i32 @acpi_ns_search_one_scope(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #4 align 16 !dbg !1754 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1759, metadata !DIExpression()), !dbg !1770
  %0 = load i64, ptr %size.addr, align 8, !dbg !1771
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !1772
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1760, metadata !DIExpression()), !dbg !1772
  br label %do.body, !dbg !1772

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !1773
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1762, metadata !DIExpression()), !dbg !1773
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !1773
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1765, metadata !DIExpression()), !dbg !1773
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1773
  %conv = zext i1 %cmp to i32, !dbg !1773
  store i32 1, ptr %tmp, align 4, !dbg !1773
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !1774
  %1 = load i32, ptr %tmp, align 4, !dbg !1773
  %call = call i64 @arch_local_save_flags() #14, !dbg !1774
  store i64 %call, ptr %_flags, align 8, !dbg !1774
  br label %do.cond, !dbg !1774

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1774

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !1775
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1766, metadata !DIExpression()), !dbg !1775
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !1775
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1769, metadata !DIExpression()), !dbg !1775
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1775
  %conv6 = zext i1 %cmp5 to i32, !dbg !1775
  store i32 1, ptr %tmp7, align 4, !dbg !1775
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !1776
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !1776
  %2 = load i32, ptr %tmp7, align 4, !dbg !1775
  %3 = load i64, ptr %_flags, align 8, !dbg !1776
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !1776
  store i32 %call9, ptr %tmp8, align 4, !dbg !1776
  %4 = load i32, ptr %tmp8, align 4, !dbg !1776
  store i32 %4, ptr %tmp1, align 4, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !1777
  %5 = load i32, ptr %tmp1, align 4, !dbg !1772
  %tobool = icmp ne i32 %5, 0, !dbg !1777
  %6 = zext i1 %tobool to i64, !dbg !1777
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1777
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !1778
  ret ptr %call10, !dbg !1779
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1780 dso_local ptr @acpi_ut_create_integer_object(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1783 dso_local i32 @acpi_ns_evaluate(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !1786 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1790, metadata !DIExpression()), !dbg !1791
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1792
  call void @kfree(ptr noundef %0) #14, !dbg !1793
  ret void, !dbg !1794
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1795 dso_local i32 @acpi_ns_walk_namespace(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ev_reg_run(ptr noundef %obj_handle, i32 noundef %level, ptr noundef %context, ptr noundef %return_value) #0 align 16 !dbg !1799 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %return_value.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %node = alloca ptr, align 8
  %status = alloca i32, align 4
  %info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_handle, ptr %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_handle.addr, metadata !1801, metadata !DIExpression()), !dbg !1809
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !1802, metadata !DIExpression()), !dbg !1810
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1803, metadata !DIExpression()), !dbg !1811
  store ptr %return_value, ptr %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_value.addr, metadata !1804, metadata !DIExpression()), !dbg !1812
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #13, !dbg !1813
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1805, metadata !DIExpression()), !dbg !1814
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !1815
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1806, metadata !DIExpression()), !dbg !1816
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1817
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1807, metadata !DIExpression()), !dbg !1818
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #13, !dbg !1819
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1808, metadata !DIExpression()), !dbg !1820
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1821
  %1 = ptrtoint ptr %0 to i64, !dbg !1821
  %2 = inttoptr i64 %1 to ptr, !dbg !1821
  store ptr %2, ptr %info, align 8, !dbg !1822
  %3 = load ptr, ptr %obj_handle.addr, align 8, !dbg !1823
  %call = call ptr @acpi_ns_validate_handle(ptr noundef %3) #14, !dbg !1824
  store ptr %call, ptr %node, align 8, !dbg !1825
  %4 = load ptr, ptr %node, align 8, !dbg !1826
  %tobool = icmp ne ptr %4, null, !dbg !1826
  br i1 %tobool, label %if.end, label %if.then, !dbg !1828

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1829
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1829

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %node, align 8, !dbg !1831
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %5, i32 0, i32 2, !dbg !1833
  %6 = load i8, ptr %type, align 1, !dbg !1833
  %conv = zext i8 %6 to i32, !dbg !1831
  %cmp = icmp ne i32 %conv, 10, !dbg !1834
  br i1 %cmp, label %land.lhs.true, label %if.end5, !dbg !1835

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %node, align 8, !dbg !1836
  %8 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1837
  %cmp2 = icmp ne ptr %7, %8, !dbg !1838
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !1839

if.then4:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !1840
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1840

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %9 = load ptr, ptr %node, align 8, !dbg !1842
  %call6 = call ptr @acpi_ns_get_attached_object(ptr noundef %9) #14, !dbg !1843
  store ptr %call6, ptr %obj_desc, align 8, !dbg !1844
  %10 = load ptr, ptr %obj_desc, align 8, !dbg !1845
  %tobool7 = icmp ne ptr %10, null, !dbg !1845
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !1847

if.then8:                                         ; preds = %if.end5
  store i32 0, ptr %retval, align 4, !dbg !1848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1848

if.end9:                                          ; preds = %if.end5
  %11 = load ptr, ptr %obj_desc, align 8, !dbg !1850
  %space_id = getelementptr inbounds %struct.acpi_object_region, ptr %11, i32 0, i32 5, !dbg !1852
  %12 = load i8, ptr %space_id, align 1, !dbg !1852
  %conv10 = zext i8 %12 to i32, !dbg !1850
  %13 = load ptr, ptr %info, align 8, !dbg !1853
  %space_id11 = getelementptr inbounds %struct.acpi_reg_walk_info, ptr %13, i32 0, i32 2, !dbg !1854
  %14 = load i8, ptr %space_id11, align 4, !dbg !1854
  %conv12 = zext i8 %14 to i32, !dbg !1853
  %cmp13 = icmp ne i32 %conv10, %conv12, !dbg !1855
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !1856

if.then15:                                        ; preds = %if.end9
  store i32 0, ptr %retval, align 4, !dbg !1857
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1857

if.end16:                                         ; preds = %if.end9
  %15 = load ptr, ptr %info, align 8, !dbg !1859
  %reg_run_count = getelementptr inbounds %struct.acpi_reg_walk_info, ptr %15, i32 0, i32 1, !dbg !1860
  %16 = load i32, ptr %reg_run_count, align 4, !dbg !1861
  %inc = add i32 %16, 1, !dbg !1861
  store i32 %inc, ptr %reg_run_count, align 4, !dbg !1861
  %17 = load ptr, ptr %obj_desc, align 8, !dbg !1862
  %18 = load ptr, ptr %info, align 8, !dbg !1863
  %function = getelementptr inbounds %struct.acpi_reg_walk_info, ptr %18, i32 0, i32 0, !dbg !1864
  %19 = load i32, ptr %function, align 4, !dbg !1864
  %call17 = call i32 @acpi_ev_execute_reg_method(ptr noundef %17, i32 noundef %19) #14, !dbg !1865
  store i32 %call17, ptr %status, align 4, !dbg !1866
  %20 = load i32, ptr %status, align 4, !dbg !1867
  store i32 %20, ptr %retval, align 4, !dbg !1868
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1868

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #13, !dbg !1869
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1869
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !1869
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #13, !dbg !1869
  %21 = load i32, ptr %retval, align 4, !dbg !1869
  ret i32 %21, !dbg !1869
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_ev_execute_orphan_reg_method(ptr noundef %device_node, i8 noundef zeroext %space_id) #0 align 16 !dbg !1870 {
entry:
  %device_node.addr = alloca ptr, align 8
  %space_id.addr = alloca i8, align 1
  %reg_method = alloca ptr, align 8
  %next_node = alloca ptr, align 8
  %status = alloca i32, align 4
  %args = alloca %struct.acpi_object_list, align 8
  %objects = alloca [2 x %union.acpi_object], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device_node, ptr %device_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_node.addr, metadata !1874, metadata !DIExpression()), !dbg !1933
  store i8 %space_id, ptr %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %space_id.addr, metadata !1875, metadata !DIExpression()), !dbg !1934
  call void @llvm.lifetime.start.p0(i64 8, ptr %reg_method) #13, !dbg !1935
  call void @llvm.dbg.declare(metadata ptr %reg_method, metadata !1876, metadata !DIExpression()), !dbg !1936
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_node) #13, !dbg !1937
  call void @llvm.dbg.declare(metadata ptr %next_node, metadata !1877, metadata !DIExpression()), !dbg !1938
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1939
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1878, metadata !DIExpression()), !dbg !1940
  call void @llvm.lifetime.start.p0(i64 16, ptr %args) #13, !dbg !1941
  call void @llvm.dbg.declare(metadata ptr %args, metadata !1879, metadata !DIExpression()), !dbg !1942
  call void @llvm.lifetime.start.p0(i64 48, ptr %objects) #13, !dbg !1943
  call void @llvm.dbg.declare(metadata ptr %objects, metadata !1930, metadata !DIExpression()), !dbg !1944
  %0 = load ptr, ptr %device_node.addr, align 8, !dbg !1945
  %tobool = icmp ne ptr %0, null, !dbg !1945
  br i1 %tobool, label %if.end, label %if.then, !dbg !1947

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1948

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_release_mutex(i32 noundef 1) #14, !dbg !1950
  %1 = load ptr, ptr %device_node.addr, align 8, !dbg !1951
  %call1 = call i32 @acpi_get_handle(ptr noundef %1, ptr noundef @.str.8, ptr noundef %reg_method) #14, !dbg !1952
  store i32 %call1, ptr %status, align 4, !dbg !1953
  %2 = load i32, ptr %status, align 4, !dbg !1954
  %tobool2 = icmp ne i32 %2, 0, !dbg !1954
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1956

if.then3:                                         ; preds = %if.end
  br label %exit, !dbg !1957

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %device_node.addr, align 8, !dbg !1959
  %call5 = call ptr @acpi_ns_get_next_node(ptr noundef %3, ptr noundef null) #14, !dbg !1960
  store ptr %call5, ptr %next_node, align 8, !dbg !1961
  br label %while.cond, !dbg !1962

while.cond:                                       ; preds = %if.end17, %if.end4
  %4 = load ptr, ptr %next_node, align 8, !dbg !1963
  %tobool6 = icmp ne ptr %4, null, !dbg !1962
  br i1 %tobool6, label %while.body, label %while.end, !dbg !1962

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %next_node, align 8, !dbg !1964
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %5, i32 0, i32 2, !dbg !1967
  %6 = load i8, ptr %type, align 1, !dbg !1967
  %conv = zext i8 %6 to i32, !dbg !1964
  %cmp = icmp eq i32 %conv, 10, !dbg !1968
  br i1 %cmp, label %land.lhs.true, label %if.end17, !dbg !1969

land.lhs.true:                                    ; preds = %while.body
  %7 = load ptr, ptr %next_node, align 8, !dbg !1970
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %7, i32 0, i32 0, !dbg !1971
  %8 = load ptr, ptr %object, align 8, !dbg !1971
  %tobool8 = icmp ne ptr %8, null, !dbg !1972
  br i1 %tobool8, label %land.lhs.true9, label %if.end17, !dbg !1973

land.lhs.true9:                                   ; preds = %land.lhs.true
  %9 = load ptr, ptr %next_node, align 8, !dbg !1974
  %object10 = getelementptr inbounds %struct.acpi_namespace_node, ptr %9, i32 0, i32 0, !dbg !1975
  %10 = load ptr, ptr %object10, align 8, !dbg !1975
  %space_id11 = getelementptr inbounds %struct.acpi_object_region, ptr %10, i32 0, i32 5, !dbg !1976
  %11 = load i8, ptr %space_id11, align 1, !dbg !1976
  %conv12 = zext i8 %11 to i32, !dbg !1974
  %12 = load i8, ptr %space_id.addr, align 1, !dbg !1977
  %conv13 = zext i8 %12 to i32, !dbg !1977
  %cmp14 = icmp eq i32 %conv12, %conv13, !dbg !1978
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !1979

if.then16:                                        ; preds = %land.lhs.true9
  br label %exit, !dbg !1980

if.end17:                                         ; preds = %land.lhs.true9, %land.lhs.true, %while.body
  %13 = load ptr, ptr %device_node.addr, align 8, !dbg !1982
  %14 = load ptr, ptr %next_node, align 8, !dbg !1983
  %call18 = call ptr @acpi_ns_get_next_node(ptr noundef %13, ptr noundef %14) #14, !dbg !1984
  store ptr %call18, ptr %next_node, align 8, !dbg !1985
  br label %while.cond, !dbg !1962, !llvm.loop !1986

while.end:                                        ; preds = %while.cond
  %count = getelementptr inbounds %struct.acpi_object_list, ptr %args, i32 0, i32 0, !dbg !1988
  store i32 2, ptr %count, align 8, !dbg !1989
  %arraydecay = getelementptr inbounds [2 x %union.acpi_object], ptr %objects, i64 0, i64 0, !dbg !1990
  %pointer = getelementptr inbounds %struct.acpi_object_list, ptr %args, i32 0, i32 1, !dbg !1991
  store ptr %arraydecay, ptr %pointer, align 8, !dbg !1992
  %arrayidx = getelementptr [2 x %union.acpi_object], ptr %objects, i64 0, i64 0, !dbg !1993
  store i32 1, ptr %arrayidx, align 16, !dbg !1994
  %15 = load i8, ptr %space_id.addr, align 1, !dbg !1995
  %conv19 = zext i8 %15 to i64, !dbg !1995
  %arrayidx20 = getelementptr [2 x %union.acpi_object], ptr %objects, i64 0, i64 0, !dbg !1996
  %value = getelementptr inbounds %struct.anon, ptr %arrayidx20, i32 0, i32 1, !dbg !1997
  store i64 %conv19, ptr %value, align 8, !dbg !1998
  %arrayidx21 = getelementptr [2 x %union.acpi_object], ptr %objects, i64 0, i64 1, !dbg !1999
  store i32 1, ptr %arrayidx21, align 8, !dbg !2000
  %arrayidx22 = getelementptr [2 x %union.acpi_object], ptr %objects, i64 0, i64 1, !dbg !2001
  %value23 = getelementptr inbounds %struct.anon, ptr %arrayidx22, i32 0, i32 1, !dbg !2002
  store i64 1, ptr %value23, align 8, !dbg !2003
  %16 = load ptr, ptr %reg_method, align 8, !dbg !2004
  %call24 = call i32 @acpi_evaluate_object(ptr noundef %16, ptr noundef null, ptr noundef %args, ptr noundef null) #14, !dbg !2005
  br label %exit, !dbg !2006

exit:                                             ; preds = %while.end, %if.then16, %if.then3
  call void @llvm.dbg.label(metadata !1932), !dbg !2007
  %call25 = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #14, !dbg !2008
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2009

cleanup:                                          ; preds = %exit, %if.then
  call void @llvm.lifetime.end.p0(i64 48, ptr %objects) #13, !dbg !2010
  call void @llvm.lifetime.end.p0(i64 16, ptr %args) #13, !dbg !2010
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !2010
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_node) #13, !dbg !2010
  call void @llvm.lifetime.end.p0(i64 8, ptr %reg_method) #13, !dbg !2010
  ret void, !dbg !2010
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !2011 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2019, metadata !DIExpression()), !dbg !2021
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2020, metadata !DIExpression()), !dbg !2022
  %0 = load i64, ptr %size.addr, align 8, !dbg !2023
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2024
  %or = or i32 %1, 256, !dbg !2025
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !2026
  ret ptr %call, !dbg !2027
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !2028 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !2032
  ret i64 %call, !dbg !2033
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !2034 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2039, metadata !DIExpression()), !dbg !2040
  %0 = load i64, ptr %flags.addr, align 8, !dbg !2041
  %and = and i64 %0, 512, !dbg !2042
  %tobool = icmp ne i64 %and, 0, !dbg !2043
  %lnot = xor i1 %tobool, true, !dbg !2043
  %lnot.ext = zext i1 %lnot to i32, !dbg !2043
  ret i32 %lnot.ext, !dbg !2044
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !2045 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2047, metadata !DIExpression()), !dbg !2052
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2048, metadata !DIExpression()), !dbg !2053
  %0 = load i64, ptr %size.addr, align 8, !dbg !2054
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2055
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2056

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2057
  %tobool = icmp ne i64 %2, 0, !dbg !2057
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2058

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !2059
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2049, metadata !DIExpression()), !dbg !2060
  %3 = load i64, ptr %size.addr, align 8, !dbg !2061
  %cmp = icmp ugt i64 %3, 8192, !dbg !2063
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2064

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2065
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2066
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !2067
  store ptr %call, ptr %retval, align 8, !dbg !2068
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2068

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2069
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !2069
  store i32 %call2, ptr %index, align 4, !dbg !2070
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2071
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2072
  %9 = ptrtoint ptr %8 to i64, !dbg !2072
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !2073
  %idxprom = zext i32 %call3 to i64, !dbg !2074
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2074
  %10 = load i32, ptr %index, align 4, !dbg !2075
  %idxprom4 = zext i32 %10 to i64, !dbg !2074
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2074
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2074
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2076
  %13 = load i64, ptr %size.addr, align 8, !dbg !2077
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !2078
  store ptr %call6, ptr %retval, align 8, !dbg !2079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2079

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !2080
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2081
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2082
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !2083
  store ptr %call8, ptr %retval, align 8, !dbg !2084
  br label %return, !dbg !2084

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2085
  ret ptr %16, !dbg !2085
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2086 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !2087 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2093, metadata !DIExpression()), !dbg !2095
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2094, metadata !DIExpression()), !dbg !2096
  %0 = load i64, ptr %size.addr, align 8, !dbg !2097
  %tobool = icmp ne i64 %0, 0, !dbg !2097
  br i1 %tobool, label %if.end, label %if.then, !dbg !2099

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2100
  br label %return, !dbg !2100

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2101
  %cmp = icmp ule i64 %1, 8, !dbg !2103
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2104

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2105
  br label %return, !dbg !2105

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2106
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2108
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2109

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2110
  %cmp4 = icmp ule i64 %3, 96, !dbg !2111
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2112

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2113
  br label %return, !dbg !2113

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2114
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2116
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2117

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2118
  %cmp9 = icmp ule i64 %5, 192, !dbg !2119
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2120

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2121
  br label %return, !dbg !2121

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2122
  %cmp12 = icmp ule i64 %6, 8, !dbg !2124
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2125

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2126
  br label %return, !dbg !2126

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2127
  %cmp15 = icmp ule i64 %7, 16, !dbg !2129
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2130

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2131
  br label %return, !dbg !2131

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2132
  %cmp18 = icmp ule i64 %8, 32, !dbg !2134
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2135

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2136
  br label %return, !dbg !2136

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2137
  %cmp21 = icmp ule i64 %9, 64, !dbg !2139
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2140

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2141
  br label %return, !dbg !2141

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2142
  %cmp24 = icmp ule i64 %10, 128, !dbg !2144
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2145

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2146
  br label %return, !dbg !2146

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2147
  %cmp27 = icmp ule i64 %11, 256, !dbg !2149
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2150

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2151
  br label %return, !dbg !2151

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2152
  %cmp30 = icmp ule i64 %12, 512, !dbg !2154
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2155

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2156
  br label %return, !dbg !2156

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2157
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2159
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2160

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2161
  br label %return, !dbg !2161

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2162
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2164
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2165

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2166
  br label %return, !dbg !2166

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2167
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2169
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2170

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2171
  br label %return, !dbg !2171

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2172
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2174
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2175

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2176
  br label %return, !dbg !2176

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2177
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2179
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2180

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2181
  br label %return, !dbg !2181

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2182
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2184
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2185

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2186
  br label %return, !dbg !2186

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2187
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2189
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2190

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2191
  br label %return, !dbg !2191

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2192
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2194
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2195

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2196
  br label %return, !dbg !2196

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2197
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2199
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2200

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2201
  br label %return, !dbg !2201

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2202
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2204
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2205

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2206
  br label %return, !dbg !2206

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2207
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2209
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2210

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2211
  br label %return, !dbg !2211

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2212
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2214
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2215

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2216
  br label %return, !dbg !2216

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2217, !range !2219, !noundef !2220
  %tobool69 = trunc i8 %25 to i1, !dbg !2217
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2221

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2222

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !2223, !srcloc !2226
  unreachable, !dbg !2223

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2227

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2228

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2229

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2231

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2229

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.9, i32 480, i32 0, i64 12) #13, !dbg !2233, !srcloc !2235
  br label %do.end75, !dbg !2233

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2229

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2236
  br label %return, !dbg !2236

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2237
  ret i32 %26, !dbg !2237
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2238 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !2244 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2248, metadata !DIExpression()), !dbg !2250
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2249, metadata !DIExpression()), !dbg !2251
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2252
  %and = and i32 %0, 17, !dbg !2252
  %cmp = icmp eq i32 %and, 0, !dbg !2252
  %lnot = xor i1 %cmp, true, !dbg !2252
  %lnot1 = xor i1 %lnot, true, !dbg !2252
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2252
  %conv = sext i32 %lnot.ext to i64, !dbg !2252
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2252
  %tobool = icmp ne i64 %expval, 0, !dbg !2252
  br i1 %tobool, label %if.then, label %if.end, !dbg !2254

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2255
  br label %return, !dbg !2255

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2256
  %and2 = and i32 %1, 1, !dbg !2258
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2258
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2259

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2260
  br label %return, !dbg !2260

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2261
  br label %return, !dbg !2261

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2263
  ret i32 %2, !dbg !2263
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2264 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2265 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !2266 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !2269
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2268, metadata !DIExpression()), !dbg !2270
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !2271, !srcloc !2272
  %0 = load i64, ptr %flags, align 8, !dbg !2273
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !2274
  ret i64 %0, !dbg !2275
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2276 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2281 dso_local ptr @acpi_ns_validate_handle(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2284 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2287 dso_local i32 @acpi_get_handle(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2291 dso_local ptr @acpi_ns_get_next_node(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2294 dso_local i32 @acpi_evaluate_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !105, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.evregion.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22evregion\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/evregion.ll drivers/acpi/acpica/evregion.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !53, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evregion.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "906c5d116df2ab202aa3e9a5fa5f3da6")
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
!21 = !{!22, !26, !27, !29, !33, !30, !36, !38, !41, !42, !45, !40, !46}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !23, line: 21, baseType: !24)
!23 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !25, line: 27, baseType: !7)
!25 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !28, line: 421, baseType: !22)
!28 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !28, line: 814, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !23, line: 17, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !25, line: 21, baseType: !32)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !23, line: 19, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !25, line: 24, baseType: !35)
!35 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_name", file: !28, line: 422, baseType: !22)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !39, line: 42, baseType: !40)
!39 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!40 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !28, line: 127, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !23, line: 23, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !25, line: 31, baseType: !44)
!44 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !39, line: 154, baseType: !7)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_reg_walk_info", file: !48, line: 397, size: 96, elements: !49)
!48 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!49 = !{!50, !51, !52}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !47, file: !48, line: 398, baseType: !22, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "reg_run_count", scope: !47, file: !48, line: 399, baseType: !22, size: 32, offset: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !47, file: !48, line: 400, baseType: !29, size: 8, offset: 64)
!53 = !{!54, !60, !65, !70, !75, !80, !85, !90, !95, !0, !100}
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !3, line: 131, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 320, elements: !58)
!57 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!58 = !{!59}
!59 = !DISubrange(count: 40)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !3, line: 158, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 288, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 36)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !3, line: 202, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 280, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 35)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !3, line: 301, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 232, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 29)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !3, line: 311, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 360, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 45)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !3, line: 408, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 184, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 23)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !3, line: 445, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 312, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 39)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !3, line: 479, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 336, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 42)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !3, line: 561, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 40, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 5)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !102, isLocal: true, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 168, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 21)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 72, elements: !107)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!107 = !{!108}
!108 = !DISubrange(count: 9)
!109 = !{i32 7, !"Dwarf Version", i32 5}
!110 = !{i32 2, !"Debug Info Version", i32 3}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 8, !"cf-protection-branch", i32 1}
!113 = !{i32 4, !"function_return_thunk_extern", i32 1}
!114 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!115 = !{i32 1, !"Code Model", i32 2}
!116 = !{i32 1, !"override-stack-alignment", i32 8}
!117 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!118 = distinct !DISubprogram(name: "acpi_ev_initialize_op_regions", scope: !3, file: !3, line: 44, type: !119, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !121)
!119 = !DISubroutineType(types: !120)
!120 = !{!27}
!121 = !{!122, !123}
!122 = !DILocalVariable(name: "status", scope: !118, file: !3, line: 46, type: !27)
!123 = !DILocalVariable(name: "i", scope: !118, file: !3, line: 47, type: !22)
!124 = !DILocation(line: 46, column: 2, scope: !118)
!125 = !DILocation(line: 46, column: 14, scope: !118)
!126 = !DILocation(line: 47, column: 2, scope: !118)
!127 = !DILocation(line: 47, column: 6, scope: !118)
!128 = !DILocation(line: 51, column: 11, scope: !118)
!129 = !DILocation(line: 51, column: 9, scope: !118)
!130 = !DILocation(line: 52, column: 6, scope: !131)
!131 = distinct !DILexicalBlock(scope: !118, file: !3, line: 52, column: 6)
!132 = !DILocation(line: 52, column: 6, scope: !118)
!133 = !DILocation(line: 53, column: 3, scope: !134)
!134 = distinct !DILexicalBlock(scope: !131, file: !3, line: 52, column: 28)
!135 = !DILocation(line: 58, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !118, file: !3, line: 58, column: 2)
!137 = !DILocation(line: 58, column: 7, scope: !136)
!138 = !DILocation(line: 58, column: 14, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !3, line: 58, column: 2)
!140 = !DILocation(line: 58, column: 16, scope: !139)
!141 = !DILocation(line: 58, column: 2, scope: !136)
!142 = !DILocation(line: 64, column: 35, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !3, line: 64, column: 7)
!144 = distinct !DILexicalBlock(scope: !139, file: !3, line: 58, column: 48)
!145 = !DILocation(line: 66, column: 8, scope: !143)
!146 = !DILocation(line: 65, column: 7, scope: !143)
!147 = !DILocation(line: 64, column: 7, scope: !143)
!148 = !DILocation(line: 64, column: 7, scope: !144)
!149 = !DILocation(line: 67, column: 32, scope: !150)
!150 = distinct !DILexicalBlock(scope: !143, file: !3, line: 66, column: 13)
!151 = !DILocation(line: 70, column: 12, scope: !150)
!152 = !DILocation(line: 69, column: 11, scope: !150)
!153 = !DILocation(line: 67, column: 4, scope: !150)
!154 = !DILocation(line: 71, column: 3, scope: !150)
!155 = !DILocation(line: 72, column: 2, scope: !144)
!156 = !DILocation(line: 58, column: 44, scope: !139)
!157 = !DILocation(line: 58, column: 2, scope: !139)
!158 = distinct !{!158, !141, !159, !160, !161}
!159 = !DILocation(line: 72, column: 2, scope: !136)
!160 = !{!"llvm.loop.mustprogress"}
!161 = !{!"llvm.loop.unroll.disable"}
!162 = !DILocation(line: 74, column: 8, scope: !118)
!163 = !DILocation(line: 75, column: 2, scope: !118)
!164 = !DILocation(line: 76, column: 1, scope: !118)
!165 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !166, file: !166, line: 646, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!166 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!167 = !DISubroutineType(types: !168)
!168 = !{!27, !169}
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !48, line: 17, baseType: !22)
!170 = !DISubprogram(name: "acpi_ev_has_default_handler", scope: !171, file: !171, line: 159, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!171 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!172 = !DISubroutineType(types: !173)
!173 = !{!30, !174, !29}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !48, line: 133, size: 384, elements: !176)
!176 = !{!177, !917, !918, !919, !920, !926, !927, !928, !929}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !175, file: !48, line: 134, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !180, line: 369, size: 576, elements: !181)
!180 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!181 = !{!182, !190, !203, !214, !228, !242, !251, !566, !583, !599, !612, !690, !702, !716, !726, !744, !766, !785, !804, !823, !836, !863, !880, !893, !907, !916}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !179, file: !180, line: 370, baseType: !183, size: 128)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !180, line: 73, size: 128, elements: !184)
!184 = !{!185, !186, !187, !188, !189}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !183, file: !180, line: 74, baseType: !178, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !183, file: !180, line: 74, baseType: !30, size: 8, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !183, file: !180, line: 74, baseType: !30, size: 8, offset: 72)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !183, file: !180, line: 74, baseType: !33, size: 16, offset: 80)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !180, line: 74, baseType: !30, size: 8, offset: 96)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !179, file: !180, line: 371, baseType: !191, size: 192)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !180, line: 76, size: 192, elements: !192)
!192 = !{!193, !194, !195, !196, !197, !198, !202}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !191, file: !180, line: 77, baseType: !178, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !191, file: !180, line: 77, baseType: !30, size: 8, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !191, file: !180, line: 77, baseType: !30, size: 8, offset: 72)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !191, file: !180, line: 77, baseType: !33, size: 16, offset: 80)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !191, file: !180, line: 77, baseType: !30, size: 8, offset: 96)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !191, file: !180, line: 77, baseType: !199, size: 24, offset: 104)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 24, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 3)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !191, file: !180, line: 78, baseType: !42, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !179, file: !180, line: 372, baseType: !204, size: 256)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !180, line: 93, size: 256, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !213}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !204, file: !180, line: 94, baseType: !178, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !204, file: !180, line: 94, baseType: !30, size: 8, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !204, file: !180, line: 94, baseType: !30, size: 8, offset: 72)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !204, file: !180, line: 94, baseType: !33, size: 16, offset: 80)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !204, file: !180, line: 94, baseType: !30, size: 8, offset: 96)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !204, file: !180, line: 94, baseType: !212, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !204, file: !180, line: 94, baseType: !22, size: 32, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !179, file: !180, line: 373, baseType: !215, size: 384)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !180, line: 97, size: 384, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !224, !225, !226, !227}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !215, file: !180, line: 98, baseType: !178, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !215, file: !180, line: 98, baseType: !30, size: 8, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !215, file: !180, line: 98, baseType: !30, size: 8, offset: 72)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !215, file: !180, line: 98, baseType: !33, size: 16, offset: 80)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !215, file: !180, line: 98, baseType: !30, size: 8, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !215, file: !180, line: 98, baseType: !223, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !215, file: !180, line: 98, baseType: !22, size: 32, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !215, file: !180, line: 99, baseType: !22, size: 32, offset: 224)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !215, file: !180, line: 100, baseType: !223, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !215, file: !180, line: 101, baseType: !174, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !179, file: !180, line: 374, baseType: !229, size: 384)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !180, line: 104, size: 384, elements: !230)
!230 = !{!231, !232, !233, !234, !235, !236, !237, !239, !240, !241}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !229, file: !180, line: 105, baseType: !178, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !229, file: !180, line: 105, baseType: !30, size: 8, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !229, file: !180, line: 105, baseType: !30, size: 8, offset: 72)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !229, file: !180, line: 105, baseType: !33, size: 16, offset: 80)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !229, file: !180, line: 105, baseType: !30, size: 8, offset: 96)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !229, file: !180, line: 105, baseType: !174, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !229, file: !180, line: 106, baseType: !238, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !229, file: !180, line: 107, baseType: !223, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !229, file: !180, line: 108, baseType: !22, size: 32, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !229, file: !180, line: 109, baseType: !22, size: 32, offset: 352)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !179, file: !180, line: 375, baseType: !243, size: 192)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !180, line: 118, size: 192, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !243, file: !180, line: 119, baseType: !178, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !243, file: !180, line: 119, baseType: !30, size: 8, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !243, file: !180, line: 119, baseType: !30, size: 8, offset: 72)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !243, file: !180, line: 119, baseType: !33, size: 16, offset: 80)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !243, file: !180, line: 119, baseType: !30, size: 8, offset: 96)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !243, file: !180, line: 119, baseType: !26, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !179, file: !180, line: 376, baseType: !252, size: 448)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !180, line: 144, size: 448, elements: !253)
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !563, !564, !565}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !252, file: !180, line: 145, baseType: !178, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !252, file: !180, line: 145, baseType: !30, size: 8, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !252, file: !180, line: 145, baseType: !30, size: 8, offset: 72)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !252, file: !180, line: 145, baseType: !33, size: 16, offset: 80)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !252, file: !180, line: 145, baseType: !30, size: 8, offset: 96)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !252, file: !180, line: 145, baseType: !30, size: 8, offset: 104)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !252, file: !180, line: 146, baseType: !30, size: 8, offset: 112)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !252, file: !180, line: 147, baseType: !30, size: 8, offset: 120)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !252, file: !180, line: 148, baseType: !178, size: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !252, file: !180, line: 149, baseType: !178, size: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !252, file: !180, line: 150, baseType: !223, size: 64, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !252, file: !180, line: 154, baseType: !266, size: 64, offset: 320)
!266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !180, line: 151, size: 64, elements: !267)
!267 = !{!268, !562}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !266, file: !180, line: 152, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !48, line: 248, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!27, !273}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !275, line: 37, size: 9024, elements: !276)
!275 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!276 = !{!277, !278, !279, !280, !281, !282, !283, !284, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !510, !511, !512, !513, !514, !518, !520, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !545, !546, !547, !548, !549, !550, !551, !552, !554, !560}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !275, line: 38, baseType: !273, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !274, file: !275, line: 39, baseType: !30, size: 8, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !274, file: !275, line: 40, baseType: !30, size: 8, offset: 72)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !274, file: !275, line: 41, baseType: !33, size: 16, offset: 80)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !274, file: !275, line: 42, baseType: !30, size: 8, offset: 96)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !274, file: !275, line: 43, baseType: !30, size: 8, offset: 104)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !274, file: !275, line: 44, baseType: !30, size: 8, offset: 112)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !274, file: !275, line: 45, baseType: !285, size: 16, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !28, line: 445, baseType: !33)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !274, file: !275, line: 46, baseType: !30, size: 8, offset: 144)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !274, file: !275, line: 47, baseType: !30, size: 8, offset: 152)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !274, file: !275, line: 48, baseType: !30, size: 8, offset: 160)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !274, file: !275, line: 49, baseType: !30, size: 8, offset: 168)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !274, file: !275, line: 50, baseType: !30, size: 8, offset: 176)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !274, file: !275, line: 51, baseType: !30, size: 8, offset: 184)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !274, file: !275, line: 52, baseType: !30, size: 8, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !274, file: !275, line: 53, baseType: !30, size: 8, offset: 200)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !274, file: !275, line: 54, baseType: !223, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !274, file: !275, line: 55, baseType: !22, size: 32, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !274, file: !275, line: 56, baseType: !22, size: 32, offset: 352)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !274, file: !275, line: 57, baseType: !22, size: 32, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !274, file: !275, line: 58, baseType: !22, size: 32, offset: 416)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !274, file: !275, line: 60, baseType: !300, size: 640, offset: 448)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !48, line: 909, size: 640, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307, !391, !392, !508, !509}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !300, file: !48, line: 910, baseType: !223, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !300, file: !48, line: 911, baseType: !223, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !300, file: !48, line: 912, baseType: !223, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !300, file: !48, line: 913, baseType: !223, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !300, file: !48, line: 914, baseType: !223, size: 64, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !300, file: !48, line: 915, baseType: !308, size: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !48, line: 891, size: 1600, elements: !310)
!310 = !{!311, !331, !347}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !309, file: !48, line: 892, baseType: !312, size: 448)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !48, line: 844, size: 448, elements: !313)
!313 = !{!314, !315, !316, !317, !318, !319, !320, !321, !330}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !312, file: !48, line: 845, baseType: !308, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !312, file: !48, line: 845, baseType: !30, size: 8, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !312, file: !48, line: 845, baseType: !30, size: 8, offset: 72)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !312, file: !48, line: 845, baseType: !33, size: 16, offset: 80)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !312, file: !48, line: 845, baseType: !223, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !312, file: !48, line: 845, baseType: !308, size: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !312, file: !48, line: 845, baseType: !174, size: 64, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !312, file: !48, line: 845, baseType: !322, size: 64, offset: 320)
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !48, line: 732, size: 64, elements: !323)
!323 = !{!324, !325, !326, !327, !328, !329}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !322, file: !48, line: 733, baseType: !42, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !322, file: !48, line: 734, baseType: !22, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !322, file: !48, line: 735, baseType: !212, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !322, file: !48, line: 736, baseType: !223, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !322, file: !48, line: 737, baseType: !212, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !322, file: !48, line: 738, baseType: !308, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !312, file: !48, line: 845, baseType: !30, size: 8, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !309, file: !48, line: 893, baseType: !332, size: 640)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !48, line: 851, size: 640, elements: !333)
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !332, file: !48, line: 852, baseType: !308, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !332, file: !48, line: 852, baseType: !30, size: 8, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !48, line: 852, baseType: !30, size: 8, offset: 72)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !332, file: !48, line: 852, baseType: !33, size: 16, offset: 80)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !332, file: !48, line: 852, baseType: !223, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !48, line: 852, baseType: !308, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !332, file: !48, line: 852, baseType: !174, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !332, file: !48, line: 852, baseType: !322, size: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !332, file: !48, line: 852, baseType: !30, size: 8, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !332, file: !48, line: 852, baseType: !212, size: 64, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !332, file: !48, line: 853, baseType: !223, size: 64, offset: 512)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !332, file: !48, line: 854, baseType: !22, size: 32, offset: 576)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !332, file: !48, line: 855, baseType: !22, size: 32, offset: 608)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !309, file: !48, line: 894, baseType: !348, size: 1600)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !48, line: 862, size: 1600, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !348, file: !48, line: 863, baseType: !308, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !348, file: !48, line: 863, baseType: !30, size: 8, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !48, line: 863, baseType: !30, size: 8, offset: 72)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !348, file: !48, line: 863, baseType: !33, size: 16, offset: 80)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !348, file: !48, line: 863, baseType: !223, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !48, line: 863, baseType: !308, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !348, file: !48, line: 863, baseType: !174, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !348, file: !48, line: 863, baseType: !322, size: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !348, file: !48, line: 863, baseType: !30, size: 8, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !348, file: !48, line: 863, baseType: !308, size: 64, offset: 448)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !348, file: !48, line: 864, baseType: !308, size: 64, offset: 512)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !348, file: !48, line: 865, baseType: !212, size: 64, offset: 576)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !348, file: !48, line: 866, baseType: !30, size: 8, offset: 640)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !348, file: !48, line: 867, baseType: !212, size: 64, offset: 704)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !348, file: !48, line: 868, baseType: !212, size: 64, offset: 768)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !348, file: !48, line: 869, baseType: !212, size: 64, offset: 832)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !348, file: !48, line: 870, baseType: !367, size: 32, offset: 896)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 32, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 4)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !348, file: !48, line: 871, baseType: !22, size: 32, offset: 928)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !348, file: !48, line: 872, baseType: !22, size: 32, offset: 960)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !348, file: !48, line: 873, baseType: !22, size: 32, offset: 992)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !348, file: !48, line: 874, baseType: !22, size: 32, offset: 1024)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !348, file: !48, line: 875, baseType: !22, size: 32, offset: 1056)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !348, file: !48, line: 876, baseType: !22, size: 32, offset: 1088)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !348, file: !48, line: 877, baseType: !22, size: 32, offset: 1120)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !348, file: !48, line: 878, baseType: !22, size: 32, offset: 1152)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !348, file: !48, line: 879, baseType: !22, size: 32, offset: 1184)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !348, file: !48, line: 880, baseType: !22, size: 32, offset: 1216)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !348, file: !48, line: 881, baseType: !22, size: 32, offset: 1248)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !348, file: !48, line: 882, baseType: !22, size: 32, offset: 1280)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !348, file: !48, line: 883, baseType: !22, size: 32, offset: 1312)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !348, file: !48, line: 884, baseType: !33, size: 16, offset: 1344)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !348, file: !48, line: 885, baseType: !30, size: 8, offset: 1360)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !348, file: !48, line: 886, baseType: !30, size: 8, offset: 1368)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !348, file: !48, line: 887, baseType: !30, size: 8, offset: 1376)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !348, file: !48, line: 888, baseType: !388, size: 160, offset: 1384)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 160, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 20)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !300, file: !48, line: 916, baseType: !174, size: 64, offset: 384)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !300, file: !48, line: 917, baseType: !393, size: 64, offset: 448)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !48, line: 679, size: 640, elements: !395)
!395 = !{!396, !404, !417, !426, !435, !448, !462, !474, !486}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !394, file: !48, line: 680, baseType: !397, size: 128)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !48, line: 575, size: 128, elements: !398)
!398 = !{!399, !400, !401, !402, !403}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !397, file: !48, line: 576, baseType: !26, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !397, file: !48, line: 576, baseType: !30, size: 8, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !397, file: !48, line: 576, baseType: !30, size: 8, offset: 72)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !397, file: !48, line: 576, baseType: !33, size: 16, offset: 80)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !397, file: !48, line: 576, baseType: !33, size: 16, offset: 96)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !394, file: !48, line: 681, baseType: !405, size: 384)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !48, line: 604, size: 384, elements: !406)
!406 = !{!407, !408, !409, !410, !411, !412, !413, !414, !415, !416}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !405, file: !48, line: 605, baseType: !26, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !405, file: !48, line: 605, baseType: !30, size: 8, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !405, file: !48, line: 605, baseType: !30, size: 8, offset: 72)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !405, file: !48, line: 605, baseType: !33, size: 16, offset: 80)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !405, file: !48, line: 605, baseType: !33, size: 16, offset: 96)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !405, file: !48, line: 606, baseType: !33, size: 16, offset: 112)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !405, file: !48, line: 607, baseType: !308, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !405, file: !48, line: 608, baseType: !223, size: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !405, file: !48, line: 609, baseType: !223, size: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !405, file: !48, line: 610, baseType: !42, size: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !394, file: !48, line: 682, baseType: !418, size: 192)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !48, line: 582, size: 192, elements: !419)
!419 = !{!420, !421, !422, !423, !424, !425}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !418, file: !48, line: 583, baseType: !26, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !418, file: !48, line: 583, baseType: !30, size: 8, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !418, file: !48, line: 583, baseType: !30, size: 8, offset: 72)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !418, file: !48, line: 583, baseType: !33, size: 16, offset: 80)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !418, file: !48, line: 583, baseType: !33, size: 16, offset: 96)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !418, file: !48, line: 584, baseType: !178, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !394, file: !48, line: 683, baseType: !427, size: 192)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !48, line: 616, size: 192, elements: !428)
!428 = !{!429, !430, !431, !432, !433, !434}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !427, file: !48, line: 617, baseType: !26, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !427, file: !48, line: 617, baseType: !30, size: 8, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !427, file: !48, line: 617, baseType: !30, size: 8, offset: 72)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !427, file: !48, line: 617, baseType: !33, size: 16, offset: 80)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !427, file: !48, line: 617, baseType: !33, size: 16, offset: 96)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !427, file: !48, line: 618, baseType: !174, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !394, file: !48, line: 684, baseType: !436, size: 448)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !48, line: 621, size: 448, elements: !437)
!437 = !{!438, !439, !440, !441, !442, !443, !444, !445, !446, !447}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !436, file: !48, line: 622, baseType: !26, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !436, file: !48, line: 622, baseType: !30, size: 8, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !436, file: !48, line: 622, baseType: !30, size: 8, offset: 72)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !436, file: !48, line: 622, baseType: !33, size: 16, offset: 80)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !436, file: !48, line: 622, baseType: !33, size: 16, offset: 96)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !436, file: !48, line: 623, baseType: !22, size: 32, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !436, file: !48, line: 624, baseType: !308, size: 64, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !436, file: !48, line: 625, baseType: !223, size: 64, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !436, file: !48, line: 626, baseType: !223, size: 64, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !436, file: !48, line: 627, baseType: !22, size: 32, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !394, file: !48, line: 685, baseType: !449, size: 512)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !48, line: 590, size: 512, elements: !450)
!450 = !{!451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !449, file: !48, line: 591, baseType: !26, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !449, file: !48, line: 591, baseType: !30, size: 8, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !449, file: !48, line: 591, baseType: !30, size: 8, offset: 72)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !449, file: !48, line: 591, baseType: !33, size: 16, offset: 80)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !449, file: !48, line: 591, baseType: !33, size: 16, offset: 96)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !449, file: !48, line: 592, baseType: !22, size: 32, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !449, file: !48, line: 593, baseType: !178, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !449, file: !48, line: 594, baseType: !178, size: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !449, file: !48, line: 595, baseType: !273, size: 64, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !449, file: !48, line: 596, baseType: !26, size: 64, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !449, file: !48, line: 597, baseType: !22, size: 32, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !394, file: !48, line: 686, baseType: !463, size: 320)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !48, line: 634, size: 320, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !470, !471, !472, !473}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !463, file: !48, line: 635, baseType: !26, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !463, file: !48, line: 635, baseType: !30, size: 8, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !463, file: !48, line: 635, baseType: !30, size: 8, offset: 72)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !463, file: !48, line: 635, baseType: !33, size: 16, offset: 80)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !463, file: !48, line: 635, baseType: !33, size: 16, offset: 96)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !463, file: !48, line: 636, baseType: !30, size: 8, offset: 112)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !463, file: !48, line: 637, baseType: !273, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !463, file: !48, line: 638, baseType: !178, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !463, file: !48, line: 639, baseType: !42, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !394, file: !48, line: 687, baseType: !475, size: 640)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !48, line: 646, size: 640, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !475, file: !48, line: 647, baseType: !26, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !475, file: !48, line: 647, baseType: !30, size: 8, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !475, file: !48, line: 647, baseType: !30, size: 8, offset: 72)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !475, file: !48, line: 647, baseType: !33, size: 16, offset: 80)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !475, file: !48, line: 647, baseType: !33, size: 16, offset: 96)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !475, file: !48, line: 648, baseType: !483, size: 512, offset: 128)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 512, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 8)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !394, file: !48, line: 688, baseType: !487, size: 320)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !48, line: 669, size: 320, elements: !488)
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !487, file: !48, line: 670, baseType: !26, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !487, file: !48, line: 670, baseType: !30, size: 8, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !487, file: !48, line: 670, baseType: !30, size: 8, offset: 72)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !487, file: !48, line: 670, baseType: !33, size: 16, offset: 80)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !487, file: !48, line: 670, baseType: !33, size: 16, offset: 96)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !487, file: !48, line: 671, baseType: !30, size: 8, offset: 112)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !487, file: !48, line: 672, baseType: !174, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !487, file: !48, line: 673, baseType: !178, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !487, file: !48, line: 674, baseType: !498, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !48, line: 660, size: 128, elements: !500)
!500 = !{!501, !507}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !499, file: !48, line: 661, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !28, line: 1061, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !506, !22, !26}
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !28, line: 424, baseType: !26)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !499, file: !48, line: 662, baseType: !26, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !300, file: !48, line: 918, baseType: !308, size: 64, offset: 512)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !300, file: !48, line: 919, baseType: !22, size: 32, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !274, file: !275, line: 61, baseType: !22, size: 32, offset: 1088)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !274, file: !275, line: 62, baseType: !22, size: 32, offset: 1120)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !274, file: !275, line: 63, baseType: !33, size: 16, offset: 1152)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !274, file: !275, line: 64, baseType: !30, size: 8, offset: 1168)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !274, file: !275, line: 66, baseType: !515, size: 2688, offset: 1216)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 2688, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 7)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !274, file: !275, line: 67, baseType: !519, size: 3072, offset: 3904)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 3072, elements: !484)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !274, file: !275, line: 68, baseType: !521, size: 576, offset: 6976)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 576, elements: !107)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !274, file: !275, line: 69, baseType: !238, size: 64, offset: 7552)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !274, file: !275, line: 71, baseType: !223, size: 64, offset: 7616)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !274, file: !275, line: 72, baseType: !238, size: 64, offset: 7680)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !274, file: !275, line: 73, baseType: !393, size: 64, offset: 7744)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !274, file: !275, line: 74, baseType: !174, size: 64, offset: 7808)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !274, file: !275, line: 75, baseType: !178, size: 64, offset: 7872)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !274, file: !275, line: 76, baseType: !174, size: 64, offset: 7936)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !274, file: !275, line: 77, baseType: !308, size: 64, offset: 8000)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !274, file: !275, line: 78, baseType: !178, size: 64, offset: 8064)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !274, file: !275, line: 79, baseType: !174, size: 64, offset: 8128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !274, file: !275, line: 80, baseType: !212, size: 64, offset: 8192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !274, file: !275, line: 81, baseType: !308, size: 64, offset: 8256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !274, file: !275, line: 82, baseType: !535, size: 64, offset: 8320)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !537)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !48, line: 718, size: 128, elements: !538)
!538 = !{!539, !540, !541, !542, !543, !544}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !537, file: !48, line: 722, baseType: !22, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !537, file: !48, line: 723, baseType: !22, size: 32, offset: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !537, file: !48, line: 724, baseType: !33, size: 16, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !537, file: !48, line: 725, baseType: !30, size: 8, offset: 80)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !537, file: !48, line: 726, baseType: !30, size: 8, offset: 88)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !537, file: !48, line: 727, baseType: !30, size: 8, offset: 96)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !274, file: !275, line: 83, baseType: !308, size: 64, offset: 8384)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !274, file: !275, line: 84, baseType: !178, size: 64, offset: 8448)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !274, file: !275, line: 85, baseType: !393, size: 64, offset: 8512)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !274, file: !275, line: 86, baseType: !178, size: 64, offset: 8576)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !274, file: !275, line: 87, baseType: !393, size: 64, offset: 8640)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !274, file: !275, line: 88, baseType: !308, size: 64, offset: 8704)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !274, file: !275, line: 89, baseType: !308, size: 64, offset: 8768)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !274, file: !275, line: 90, baseType: !553, size: 64, offset: 8832)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !274, file: !275, line: 91, baseType: !555, size: 64, offset: 8896)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !48, line: 652, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!27, !273, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !274, file: !275, line: 92, baseType: !561, size: 64, offset: 8960)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !48, line: 656, baseType: !270)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !266, file: !180, line: 153, baseType: !178, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !252, file: !180, line: 156, baseType: !22, size: 32, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !252, file: !180, line: 157, baseType: !285, size: 16, offset: 416)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !252, file: !180, line: 158, baseType: !30, size: 8, offset: 432)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !179, file: !180, line: 377, baseType: !567, size: 576)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !180, line: 122, size: 576, elements: !568)
!568 = !{!569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !567, file: !180, line: 123, baseType: !178, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !567, file: !180, line: 123, baseType: !30, size: 8, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !567, file: !180, line: 123, baseType: !30, size: 8, offset: 72)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !567, file: !180, line: 123, baseType: !33, size: 16, offset: 80)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !567, file: !180, line: 123, baseType: !30, size: 8, offset: 96)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !567, file: !180, line: 123, baseType: !30, size: 8, offset: 104)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !567, file: !180, line: 124, baseType: !33, size: 16, offset: 112)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !567, file: !180, line: 125, baseType: !26, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !567, file: !180, line: 126, baseType: !42, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !567, file: !180, line: 127, baseType: !553, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !567, file: !180, line: 128, baseType: !178, size: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !567, file: !180, line: 129, baseType: !178, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !567, file: !180, line: 130, baseType: !174, size: 64, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !567, file: !180, line: 131, baseType: !30, size: 8, offset: 512)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !179, file: !180, line: 378, baseType: !584, size: 512)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !180, line: 134, size: 512, elements: !585)
!585 = !{!586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !597, !598}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !584, file: !180, line: 135, baseType: !178, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !584, file: !180, line: 135, baseType: !30, size: 8, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !584, file: !180, line: 135, baseType: !30, size: 8, offset: 72)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !584, file: !180, line: 135, baseType: !33, size: 16, offset: 80)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !584, file: !180, line: 135, baseType: !30, size: 8, offset: 96)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !584, file: !180, line: 135, baseType: !30, size: 8, offset: 104)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !584, file: !180, line: 136, baseType: !174, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !584, file: !180, line: 137, baseType: !178, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !584, file: !180, line: 138, baseType: !178, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !584, file: !180, line: 139, baseType: !596, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !28, line: 129, baseType: !42)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !584, file: !180, line: 140, baseType: !22, size: 32, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !584, file: !180, line: 141, baseType: !26, size: 64, offset: 448)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !179, file: !180, line: 379, baseType: !600, size: 320)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !180, line: 185, size: 320, elements: !601)
!601 = !{!602, !603, !604, !605, !606, !607, !611}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !600, file: !180, line: 186, baseType: !178, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !600, file: !180, line: 186, baseType: !30, size: 8, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !600, file: !180, line: 186, baseType: !30, size: 8, offset: 72)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !600, file: !180, line: 186, baseType: !33, size: 16, offset: 80)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !600, file: !180, line: 186, baseType: !30, size: 8, offset: 96)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !600, file: !180, line: 186, baseType: !608, size: 128, offset: 128)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 128, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 2)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !600, file: !180, line: 186, baseType: !178, size: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !179, file: !180, line: 380, baseType: !613, size: 384)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !180, line: 188, size: 384, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !621, !622}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !613, file: !180, line: 189, baseType: !178, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !613, file: !180, line: 189, baseType: !30, size: 8, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !613, file: !180, line: 189, baseType: !30, size: 8, offset: 72)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !613, file: !180, line: 189, baseType: !33, size: 16, offset: 80)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !180, line: 189, baseType: !30, size: 8, offset: 96)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !613, file: !180, line: 190, baseType: !608, size: 128, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !613, file: !180, line: 190, baseType: !178, size: 64, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !613, file: !180, line: 190, baseType: !623, size: 64, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !48, line: 480, size: 576, elements: !625)
!625 = !{!626, !627, !628, !629, !637, !652, !684, !685, !686, !687, !688, !689}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !624, file: !48, line: 481, baseType: !174, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !624, file: !48, line: 482, baseType: !623, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !624, file: !48, line: 483, baseType: !623, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !624, file: !48, line: 484, baseType: !630, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !48, line: 497, size: 256, elements: !632)
!632 = !{!633, !634, !635, !636}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !631, file: !48, line: 498, baseType: !630, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !631, file: !48, line: 499, baseType: !630, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !631, file: !48, line: 500, baseType: !623, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !631, file: !48, line: 501, baseType: !22, size: 32, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !624, file: !48, line: 485, baseType: !638, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !48, line: 466, size: 320, elements: !640)
!640 = !{!641, !646, !647, !648, !649, !650, !651}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !639, file: !48, line: 467, baseType: !642, size: 128)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !48, line: 459, size: 128, elements: !643)
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !642, file: !48, line: 460, baseType: !30, size: 8)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !642, file: !48, line: 461, baseType: !42, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !639, file: !48, line: 468, baseType: !642, size: 128, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !639, file: !48, line: 469, baseType: !33, size: 16, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !639, file: !48, line: 470, baseType: !30, size: 8, offset: 272)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !639, file: !48, line: 471, baseType: !30, size: 8, offset: 280)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !639, file: !48, line: 472, baseType: !30, size: 8, offset: 288)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !639, file: !48, line: 473, baseType: !30, size: 8, offset: 296)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !624, file: !48, line: 486, baseType: !653, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !48, line: 448, size: 192, elements: !655)
!655 = !{!656, !679, !680, !681, !682, !683}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !654, file: !48, line: 449, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !48, line: 438, size: 64, elements: !658)
!658 = !{!659, !660, !673}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !657, file: !48, line: 439, baseType: !174, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !657, file: !48, line: 440, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !48, line: 419, size: 256, elements: !663)
!663 = !{!664, !669, !670, !671, !672}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !662, file: !48, line: 420, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !28, line: 1058, baseType: !666)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!22, !506, !22, !26}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !662, file: !48, line: 421, baseType: !26, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !662, file: !48, line: 422, baseType: !174, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !662, file: !48, line: 423, baseType: !30, size: 8, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !662, file: !48, line: 424, baseType: !30, size: 8, offset: 200)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !657, file: !48, line: 441, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !48, line: 429, size: 128, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !675, file: !48, line: 430, baseType: !174, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !675, file: !48, line: 431, baseType: !674, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !654, file: !48, line: 450, baseType: !638, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !654, file: !48, line: 451, baseType: !30, size: 8, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !654, file: !48, line: 452, baseType: !30, size: 8, offset: 136)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !654, file: !48, line: 453, baseType: !30, size: 8, offset: 144)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !654, file: !48, line: 454, baseType: !30, size: 8, offset: 152)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !624, file: !48, line: 487, baseType: !42, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !624, file: !48, line: 488, baseType: !22, size: 32, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !624, file: !48, line: 489, baseType: !33, size: 16, offset: 480)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !624, file: !48, line: 490, baseType: !33, size: 16, offset: 496)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !624, file: !48, line: 491, baseType: !30, size: 8, offset: 512)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !624, file: !48, line: 492, baseType: !30, size: 8, offset: 520)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !179, file: !180, line: 381, baseType: !691, size: 384)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !180, line: 193, size: 384, elements: !692)
!692 = !{!693, !694, !695, !696, !697, !698, !699, !700, !701}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !691, file: !180, line: 194, baseType: !178, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !691, file: !180, line: 194, baseType: !30, size: 8, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !691, file: !180, line: 194, baseType: !30, size: 8, offset: 72)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !691, file: !180, line: 194, baseType: !33, size: 16, offset: 80)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !180, line: 194, baseType: !30, size: 8, offset: 96)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !691, file: !180, line: 194, baseType: !608, size: 128, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !691, file: !180, line: 194, baseType: !178, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !691, file: !180, line: 194, baseType: !22, size: 32, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !691, file: !180, line: 195, baseType: !22, size: 32, offset: 352)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !179, file: !180, line: 382, baseType: !703, size: 384)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !180, line: 198, size: 384, elements: !704)
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !713, !714}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !703, file: !180, line: 199, baseType: !178, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !703, file: !180, line: 199, baseType: !30, size: 8, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !703, file: !180, line: 199, baseType: !30, size: 8, offset: 72)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !703, file: !180, line: 199, baseType: !33, size: 16, offset: 80)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !703, file: !180, line: 199, baseType: !30, size: 8, offset: 96)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !703, file: !180, line: 201, baseType: !30, size: 8, offset: 104)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !703, file: !180, line: 202, baseType: !30, size: 8, offset: 112)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !703, file: !180, line: 203, baseType: !608, size: 128, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !703, file: !180, line: 203, baseType: !178, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !703, file: !180, line: 203, baseType: !715, size: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !28, line: 128, baseType: !42)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !179, file: !180, line: 383, baseType: !717, size: 320)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !180, line: 206, size: 320, elements: !718)
!718 = !{!719, !720, !721, !722, !723, !724, !725}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !717, file: !180, line: 207, baseType: !178, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !717, file: !180, line: 207, baseType: !30, size: 8, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !717, file: !180, line: 207, baseType: !30, size: 8, offset: 72)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !717, file: !180, line: 207, baseType: !33, size: 16, offset: 80)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !180, line: 207, baseType: !30, size: 8, offset: 96)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !717, file: !180, line: 207, baseType: !608, size: 128, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !717, file: !180, line: 207, baseType: !178, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !179, file: !180, line: 384, baseType: !727, size: 384)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !180, line: 234, size: 384, elements: !728)
!728 = !{!729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !727, file: !180, line: 235, baseType: !178, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !727, file: !180, line: 235, baseType: !30, size: 8, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !727, file: !180, line: 235, baseType: !30, size: 8, offset: 72)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !727, file: !180, line: 235, baseType: !33, size: 16, offset: 80)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !727, file: !180, line: 235, baseType: !30, size: 8, offset: 96)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !727, file: !180, line: 235, baseType: !30, size: 8, offset: 104)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !727, file: !180, line: 235, baseType: !30, size: 8, offset: 112)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !727, file: !180, line: 235, baseType: !30, size: 8, offset: 120)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !727, file: !180, line: 235, baseType: !174, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !727, file: !180, line: 235, baseType: !22, size: 32, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !727, file: !180, line: 235, baseType: !22, size: 32, offset: 224)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !727, file: !180, line: 235, baseType: !22, size: 32, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !727, file: !180, line: 235, baseType: !30, size: 8, offset: 288)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !727, file: !180, line: 235, baseType: !30, size: 8, offset: 296)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !727, file: !180, line: 235, baseType: !178, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !179, file: !180, line: 385, baseType: !745, size: 576)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !180, line: 238, size: 576, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !745, file: !180, line: 239, baseType: !178, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !745, file: !180, line: 239, baseType: !30, size: 8, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !745, file: !180, line: 239, baseType: !30, size: 8, offset: 72)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !745, file: !180, line: 239, baseType: !33, size: 16, offset: 80)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !180, line: 239, baseType: !30, size: 8, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !745, file: !180, line: 239, baseType: !30, size: 8, offset: 104)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !745, file: !180, line: 239, baseType: !30, size: 8, offset: 112)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !745, file: !180, line: 239, baseType: !30, size: 8, offset: 120)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !745, file: !180, line: 239, baseType: !174, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !745, file: !180, line: 239, baseType: !22, size: 32, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !745, file: !180, line: 239, baseType: !22, size: 32, offset: 224)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !745, file: !180, line: 239, baseType: !22, size: 32, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !745, file: !180, line: 239, baseType: !30, size: 8, offset: 288)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !745, file: !180, line: 239, baseType: !30, size: 8, offset: 296)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !745, file: !180, line: 239, baseType: !33, size: 16, offset: 304)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !745, file: !180, line: 240, baseType: !178, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !745, file: !180, line: 241, baseType: !223, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !745, file: !180, line: 242, baseType: !33, size: 16, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !745, file: !180, line: 243, baseType: !223, size: 64, offset: 512)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !179, file: !180, line: 386, baseType: !767, size: 384)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !180, line: 263, size: 384, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !767, file: !180, line: 264, baseType: !178, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !767, file: !180, line: 264, baseType: !30, size: 8, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !767, file: !180, line: 264, baseType: !30, size: 8, offset: 72)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !767, file: !180, line: 264, baseType: !33, size: 16, offset: 80)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !180, line: 264, baseType: !30, size: 8, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !767, file: !180, line: 264, baseType: !30, size: 8, offset: 104)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !767, file: !180, line: 264, baseType: !30, size: 8, offset: 112)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !767, file: !180, line: 264, baseType: !30, size: 8, offset: 120)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !767, file: !180, line: 264, baseType: !174, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !767, file: !180, line: 264, baseType: !22, size: 32, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !767, file: !180, line: 264, baseType: !22, size: 32, offset: 224)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !767, file: !180, line: 264, baseType: !22, size: 32, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !767, file: !180, line: 264, baseType: !30, size: 8, offset: 288)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !767, file: !180, line: 264, baseType: !30, size: 8, offset: 296)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !767, file: !180, line: 264, baseType: !30, size: 8, offset: 304)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !767, file: !180, line: 265, baseType: !178, size: 64, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !179, file: !180, line: 387, baseType: !786, size: 448)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !180, line: 246, size: 448, elements: !787)
!787 = !{!788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !786, file: !180, line: 247, baseType: !178, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !786, file: !180, line: 247, baseType: !30, size: 8, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !786, file: !180, line: 247, baseType: !30, size: 8, offset: 72)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !786, file: !180, line: 247, baseType: !33, size: 16, offset: 80)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !786, file: !180, line: 247, baseType: !30, size: 8, offset: 96)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !786, file: !180, line: 247, baseType: !30, size: 8, offset: 104)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !786, file: !180, line: 247, baseType: !30, size: 8, offset: 112)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !786, file: !180, line: 247, baseType: !30, size: 8, offset: 120)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !786, file: !180, line: 247, baseType: !174, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !786, file: !180, line: 247, baseType: !22, size: 32, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !786, file: !180, line: 247, baseType: !22, size: 32, offset: 224)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !786, file: !180, line: 247, baseType: !22, size: 32, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !786, file: !180, line: 247, baseType: !30, size: 8, offset: 288)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !786, file: !180, line: 247, baseType: !30, size: 8, offset: 296)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !786, file: !180, line: 247, baseType: !178, size: 64, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !786, file: !180, line: 248, baseType: !178, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !179, file: !180, line: 388, baseType: !805, size: 448)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !180, line: 251, size: 448, elements: !806)
!806 = !{!807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !805, file: !180, line: 252, baseType: !178, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !805, file: !180, line: 252, baseType: !30, size: 8, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !805, file: !180, line: 252, baseType: !30, size: 8, offset: 72)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !805, file: !180, line: 252, baseType: !33, size: 16, offset: 80)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !805, file: !180, line: 252, baseType: !30, size: 8, offset: 96)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !805, file: !180, line: 252, baseType: !30, size: 8, offset: 104)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !805, file: !180, line: 252, baseType: !30, size: 8, offset: 112)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !805, file: !180, line: 252, baseType: !30, size: 8, offset: 120)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !805, file: !180, line: 252, baseType: !174, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !805, file: !180, line: 252, baseType: !22, size: 32, offset: 192)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !805, file: !180, line: 252, baseType: !22, size: 32, offset: 224)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !805, file: !180, line: 252, baseType: !22, size: 32, offset: 256)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !805, file: !180, line: 252, baseType: !30, size: 8, offset: 288)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !805, file: !180, line: 252, baseType: !30, size: 8, offset: 296)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !805, file: !180, line: 257, baseType: !178, size: 64, offset: 320)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !805, file: !180, line: 258, baseType: !178, size: 64, offset: 384)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !179, file: !180, line: 389, baseType: !824, size: 512)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !180, line: 274, size: 512, elements: !825)
!825 = !{!826, !827, !828, !829, !830, !831, !832, !833, !834, !835}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !824, file: !180, line: 275, baseType: !178, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !824, file: !180, line: 275, baseType: !30, size: 8, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !824, file: !180, line: 275, baseType: !30, size: 8, offset: 72)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !824, file: !180, line: 275, baseType: !33, size: 16, offset: 80)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !824, file: !180, line: 275, baseType: !30, size: 8, offset: 96)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !824, file: !180, line: 275, baseType: !174, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !824, file: !180, line: 276, baseType: !22, size: 32, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !824, file: !180, line: 277, baseType: !502, size: 64, offset: 256)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !824, file: !180, line: 278, baseType: !26, size: 64, offset: 320)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !824, file: !180, line: 279, baseType: !608, size: 128, offset: 384)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !179, file: !180, line: 390, baseType: !837, size: 576)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !180, line: 282, size: 576, elements: !838)
!838 = !{!839, !840, !841, !842, !843, !844, !845, !846, !852, !853, !854, !855, !861, !862}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !837, file: !180, line: 283, baseType: !178, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !837, file: !180, line: 283, baseType: !30, size: 8, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !837, file: !180, line: 283, baseType: !30, size: 8, offset: 72)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !837, file: !180, line: 283, baseType: !33, size: 16, offset: 80)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !837, file: !180, line: 283, baseType: !30, size: 8, offset: 96)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !837, file: !180, line: 283, baseType: !30, size: 8, offset: 104)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !837, file: !180, line: 284, baseType: !30, size: 8, offset: 112)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !837, file: !180, line: 285, baseType: !847, size: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !28, line: 1093, baseType: !848)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!27, !22, !596, !22, !851, !26, !26}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !837, file: !180, line: 286, baseType: !174, size: 64, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !837, file: !180, line: 287, baseType: !26, size: 64, offset: 256)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !837, file: !180, line: 288, baseType: !26, size: 64, offset: 320)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !837, file: !180, line: 289, baseType: !856, size: 64, offset: 384)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !28, line: 1126, baseType: !857)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!27, !506, !22, !26, !860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !837, file: !180, line: 290, baseType: !178, size: 64, offset: 448)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !837, file: !180, line: 291, baseType: !178, size: 64, offset: 512)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !179, file: !180, line: 391, baseType: !864, size: 512)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !180, line: 309, size: 512, elements: !865)
!865 = !{!866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !864, file: !180, line: 310, baseType: !178, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !864, file: !180, line: 310, baseType: !30, size: 8, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !864, file: !180, line: 310, baseType: !30, size: 8, offset: 72)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !864, file: !180, line: 310, baseType: !33, size: 16, offset: 80)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !864, file: !180, line: 310, baseType: !30, size: 8, offset: 96)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !864, file: !180, line: 310, baseType: !30, size: 8, offset: 104)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !864, file: !180, line: 311, baseType: !30, size: 8, offset: 112)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !864, file: !180, line: 312, baseType: !30, size: 8, offset: 120)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !864, file: !180, line: 313, baseType: !26, size: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !864, file: !180, line: 314, baseType: !174, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !864, file: !180, line: 315, baseType: !238, size: 64, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !864, file: !180, line: 316, baseType: !223, size: 64, offset: 320)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !864, file: !180, line: 317, baseType: !223, size: 64, offset: 384)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !864, file: !180, line: 318, baseType: !22, size: 32, offset: 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !179, file: !180, line: 392, baseType: !881, size: 448)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !180, line: 342, size: 448, elements: !882)
!882 = !{!883, !884, !885, !886, !887, !888, !889, !890, !891, !892}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !881, file: !180, line: 343, baseType: !178, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !881, file: !180, line: 343, baseType: !30, size: 8, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !881, file: !180, line: 343, baseType: !30, size: 8, offset: 72)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !881, file: !180, line: 343, baseType: !33, size: 16, offset: 80)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !881, file: !180, line: 343, baseType: !30, size: 8, offset: 96)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !881, file: !180, line: 343, baseType: !174, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !881, file: !180, line: 344, baseType: !174, size: 64, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !881, file: !180, line: 345, baseType: !26, size: 64, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !881, file: !180, line: 346, baseType: !223, size: 64, offset: 320)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !881, file: !180, line: 347, baseType: !22, size: 32, offset: 384)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !179, file: !180, line: 393, baseType: !894, size: 256)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !180, line: 352, size: 256, elements: !895)
!895 = !{!896, !897, !898, !899, !900, !901, !906}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !894, file: !180, line: 353, baseType: !178, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !894, file: !180, line: 353, baseType: !30, size: 8, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !894, file: !180, line: 353, baseType: !30, size: 8, offset: 72)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !894, file: !180, line: 353, baseType: !33, size: 16, offset: 80)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !894, file: !180, line: 353, baseType: !30, size: 8, offset: 96)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !894, file: !180, line: 353, baseType: !902, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !28, line: 1064, baseType: !903)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !506, !26}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !894, file: !180, line: 354, baseType: !26, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !179, file: !180, line: 394, baseType: !908, size: 192)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !180, line: 359, size: 192, elements: !909)
!909 = !{!910, !911, !912, !913, !914, !915}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !908, file: !180, line: 360, baseType: !178, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !908, file: !180, line: 360, baseType: !30, size: 8, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !908, file: !180, line: 360, baseType: !30, size: 8, offset: 72)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !908, file: !180, line: 360, baseType: !33, size: 16, offset: 80)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !908, file: !180, line: 360, baseType: !30, size: 8, offset: 96)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !908, file: !180, line: 360, baseType: !178, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !179, file: !180, line: 401, baseType: !175, size: 384)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !175, file: !48, line: 135, baseType: !30, size: 8, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !175, file: !48, line: 136, baseType: !30, size: 8, offset: 72)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !175, file: !48, line: 137, baseType: !33, size: 16, offset: 80)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !175, file: !48, line: 138, baseType: !921, size: 32, offset: 96)
!921 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !922, line: 328, size: 32, elements: !923)
!922 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !921, file: !922, line: 329, baseType: !22, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !921, file: !922, line: 330, baseType: !367, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !175, file: !48, line: 139, baseType: !174, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !175, file: !48, line: 140, baseType: !174, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !175, file: !48, line: 141, baseType: !174, size: 64, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !175, file: !48, line: 142, baseType: !285, size: 16, offset: 320)
!930 = distinct !DISubprogram(name: "acpi_ev_execute_reg_methods", scope: !3, file: !3, line: 688, type: !931, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !933)
!931 = !DISubroutineType(types: !932)
!932 = !{null, !174, !22, !29, !22}
!933 = !{!934, !935, !936, !937, !938}
!934 = !DILocalVariable(name: "node", arg: 1, scope: !930, file: !3, line: 688, type: !174)
!935 = !DILocalVariable(name: "max_depth", arg: 2, scope: !930, file: !3, line: 688, type: !22)
!936 = !DILocalVariable(name: "space_id", arg: 3, scope: !930, file: !3, line: 689, type: !29)
!937 = !DILocalVariable(name: "function", arg: 4, scope: !930, file: !3, line: 689, type: !22)
!938 = !DILocalVariable(name: "info", scope: !930, file: !3, line: 691, type: !47)
!939 = !DILocation(line: 688, column: 57, scope: !930)
!940 = !DILocation(line: 688, column: 67, scope: !930)
!941 = !DILocation(line: 689, column: 28, scope: !930)
!942 = !DILocation(line: 689, column: 42, scope: !930)
!943 = !DILocation(line: 691, column: 2, scope: !930)
!944 = !DILocation(line: 691, column: 28, scope: !930)
!945 = !DILocation(line: 702, column: 7, scope: !946)
!946 = distinct !DILexicalBlock(scope: !930, file: !3, line: 702, column: 6)
!947 = !DILocation(line: 702, column: 16, scope: !946)
!948 = !DILocation(line: 702, column: 49, scope: !946)
!949 = !DILocation(line: 703, column: 7, scope: !946)
!950 = !DILocation(line: 703, column: 16, scope: !946)
!951 = !DILocation(line: 703, column: 45, scope: !946)
!952 = !DILocation(line: 704, column: 7, scope: !946)
!953 = !DILocation(line: 704, column: 16, scope: !946)
!954 = !DILocation(line: 702, column: 6, scope: !930)
!955 = !DILocation(line: 705, column: 3, scope: !956)
!956 = distinct !DILexicalBlock(scope: !946, file: !3, line: 704, column: 47)
!957 = !DILocation(line: 708, column: 18, scope: !930)
!958 = !DILocation(line: 708, column: 7, scope: !930)
!959 = !DILocation(line: 708, column: 16, scope: !930)
!960 = !DILocation(line: 709, column: 18, scope: !930)
!961 = !DILocation(line: 709, column: 7, scope: !930)
!962 = !DILocation(line: 709, column: 16, scope: !930)
!963 = !DILocation(line: 710, column: 7, scope: !930)
!964 = !DILocation(line: 710, column: 21, scope: !930)
!965 = !DILocation(line: 722, column: 46, scope: !930)
!966 = !DILocation(line: 722, column: 52, scope: !930)
!967 = !DILocation(line: 722, column: 8, scope: !930)
!968 = !DILocation(line: 730, column: 6, scope: !969)
!969 = distinct !DILexicalBlock(scope: !930, file: !3, line: 730, column: 6)
!970 = !DILocation(line: 730, column: 15, scope: !969)
!971 = !DILocation(line: 730, column: 36, scope: !969)
!972 = !DILocation(line: 730, column: 39, scope: !969)
!973 = !DILocation(line: 730, column: 48, scope: !969)
!974 = !DILocation(line: 730, column: 6, scope: !930)
!975 = !DILocation(line: 731, column: 37, scope: !976)
!976 = distinct !DILexicalBlock(scope: !969, file: !3, line: 730, column: 72)
!977 = !DILocation(line: 731, column: 43, scope: !976)
!978 = !DILocation(line: 731, column: 3, scope: !976)
!979 = !DILocation(line: 732, column: 2, scope: !976)
!980 = !DILocation(line: 739, column: 2, scope: !930)
!981 = !DILocation(line: 740, column: 1, scope: !930)
!982 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !166, file: !166, line: 648, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!983 = distinct !DISubprogram(name: "acpi_ev_address_space_dispatch", scope: !3, file: !3, line: 104, type: !984, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !986)
!984 = !DISubroutineType(types: !985)
!985 = !{!27, !178, !178, !22, !22, !22, !851}
!986 = !{!987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1006, !1007, !1008, !1009, !1020, !1028}
!987 = !DILocalVariable(name: "region_obj", arg: 1, scope: !983, file: !3, line: 104, type: !178)
!988 = !DILocalVariable(name: "field_obj", arg: 2, scope: !983, file: !3, line: 105, type: !178)
!989 = !DILocalVariable(name: "function", arg: 3, scope: !983, file: !3, line: 106, type: !22)
!990 = !DILocalVariable(name: "region_offset", arg: 4, scope: !983, file: !3, line: 107, type: !22)
!991 = !DILocalVariable(name: "bit_width", arg: 5, scope: !983, file: !3, line: 107, type: !22)
!992 = !DILocalVariable(name: "value", arg: 6, scope: !983, file: !3, line: 107, type: !851)
!993 = !DILocalVariable(name: "status", scope: !983, file: !3, line: 109, type: !27)
!994 = !DILocalVariable(name: "handler", scope: !983, file: !3, line: 110, type: !847)
!995 = !DILocalVariable(name: "region_setup", scope: !983, file: !3, line: 111, type: !856)
!996 = !DILocalVariable(name: "handler_desc", scope: !983, file: !3, line: 112, type: !178)
!997 = !DILocalVariable(name: "region_obj2", scope: !983, file: !3, line: 113, type: !178)
!998 = !DILocalVariable(name: "region_context", scope: !983, file: !3, line: 114, type: !26)
!999 = !DILocalVariable(name: "context", scope: !983, file: !3, line: 115, type: !1000)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_connection_info", file: !28, line: 1104, size: 128, elements: !1002)
!1002 = !{!1003, !1004, !1005}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1001, file: !28, line: 1105, baseType: !223, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1001, file: !28, line: 1106, baseType: !33, size: 16, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1001, file: !28, line: 1107, baseType: !30, size: 8, offset: 80)
!1006 = !DILocalVariable(name: "context_mutex", scope: !983, file: !3, line: 116, type: !26)
!1007 = !DILocalVariable(name: "context_locked", scope: !983, file: !3, line: 117, type: !30)
!1008 = !DILocalVariable(name: "address", scope: !983, file: !3, line: 118, type: !596)
!1009 = !DILocalVariable(name: "ctx", scope: !1010, file: !3, line: 167, type: !1014)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 166, column: 68)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 166, column: 7)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 149, column: 59)
!1013 = distinct !DILexicalBlock(scope: !983, file: !3, line: 149, column: 6)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pcc_info", file: !28, line: 1112, size: 128, elements: !1016)
!1016 = !{!1017, !1018, !1019}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "subspace_id", scope: !1015, file: !28, line: 1113, baseType: !30, size: 8)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1015, file: !28, line: 1114, baseType: !33, size: 16, offset: 16)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "internal_buffer", scope: !1015, file: !28, line: 1115, baseType: !223, size: 64, offset: 64)
!1020 = !DILocalVariable(name: "ctx", scope: !1021, file: !3, line: 178, type: !1023)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 177, column: 38)
!1022 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 176, column: 7)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_ffh_info", file: !28, line: 1120, size: 128, elements: !1025)
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1024, file: !28, line: 1121, baseType: !42, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1024, file: !28, line: 1122, baseType: !42, size: 64, offset: 64)
!1028 = !DILabel(scope: !983, name: "re_enter_interpreter", file: !3, line: 316)
!1029 = !DILocation(line: 104, column: 59, scope: !983)
!1030 = !DILocation(line: 105, column: 38, scope: !983)
!1031 = !DILocation(line: 106, column: 15, scope: !983)
!1032 = !DILocation(line: 107, column: 15, scope: !983)
!1033 = !DILocation(line: 107, column: 34, scope: !983)
!1034 = !DILocation(line: 107, column: 50, scope: !983)
!1035 = !DILocation(line: 109, column: 2, scope: !983)
!1036 = !DILocation(line: 109, column: 14, scope: !983)
!1037 = !DILocation(line: 110, column: 2, scope: !983)
!1038 = !DILocation(line: 110, column: 25, scope: !983)
!1039 = !DILocation(line: 111, column: 2, scope: !983)
!1040 = !DILocation(line: 111, column: 23, scope: !983)
!1041 = !DILocation(line: 112, column: 2, scope: !983)
!1042 = !DILocation(line: 112, column: 29, scope: !983)
!1043 = !DILocation(line: 113, column: 2, scope: !983)
!1044 = !DILocation(line: 113, column: 29, scope: !983)
!1045 = !DILocation(line: 114, column: 2, scope: !983)
!1046 = !DILocation(line: 114, column: 8, scope: !983)
!1047 = !DILocation(line: 115, column: 2, scope: !983)
!1048 = !DILocation(line: 115, column: 31, scope: !983)
!1049 = !DILocation(line: 116, column: 2, scope: !983)
!1050 = !DILocation(line: 116, column: 13, scope: !983)
!1051 = !DILocation(line: 117, column: 2, scope: !983)
!1052 = !DILocation(line: 117, column: 5, scope: !983)
!1053 = !DILocation(line: 118, column: 2, scope: !983)
!1054 = !DILocation(line: 118, column: 24, scope: !983)
!1055 = !DILocation(line: 122, column: 45, scope: !983)
!1056 = !DILocation(line: 122, column: 16, scope: !983)
!1057 = !DILocation(line: 122, column: 14, scope: !983)
!1058 = !DILocation(line: 123, column: 7, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !983, file: !3, line: 123, column: 6)
!1060 = !DILocation(line: 123, column: 6, scope: !983)
!1061 = !DILocation(line: 124, column: 3, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 123, column: 20)
!1063 = !DILocation(line: 129, column: 17, scope: !983)
!1064 = !DILocation(line: 129, column: 36, scope: !983)
!1065 = !DILocation(line: 129, column: 15, scope: !983)
!1066 = !DILocation(line: 130, column: 7, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !983, file: !3, line: 130, column: 6)
!1068 = !DILocation(line: 130, column: 6, scope: !983)
!1069 = !DILocation(line: 131, column: 3, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 130, column: 21)
!1071 = !DILocation(line: 138, column: 3, scope: !1070)
!1072 = !DILocation(line: 141, column: 12, scope: !983)
!1073 = !DILocation(line: 141, column: 40, scope: !983)
!1074 = !DILocation(line: 141, column: 10, scope: !983)
!1075 = !DILocation(line: 142, column: 18, scope: !983)
!1076 = !DILocation(line: 142, column: 46, scope: !983)
!1077 = !DILocation(line: 142, column: 16, scope: !983)
!1078 = !DILocation(line: 143, column: 17, scope: !983)
!1079 = !DILocation(line: 149, column: 8, scope: !1013)
!1080 = !DILocation(line: 149, column: 27, scope: !1013)
!1081 = !DILocation(line: 149, column: 33, scope: !1013)
!1082 = !DILocation(line: 149, column: 6, scope: !983)
!1083 = !DILocation(line: 153, column: 18, scope: !1012)
!1084 = !DILocation(line: 153, column: 46, scope: !1012)
!1085 = !DILocation(line: 153, column: 16, scope: !1012)
!1086 = !DILocation(line: 154, column: 8, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 154, column: 7)
!1088 = !DILocation(line: 154, column: 7, scope: !1012)
!1089 = !DILocation(line: 158, column: 4, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 154, column: 22)
!1091 = !DILocation(line: 163, column: 4, scope: !1090)
!1092 = !DILocation(line: 166, column: 7, scope: !1011)
!1093 = !DILocation(line: 166, column: 26, scope: !1011)
!1094 = !DILocation(line: 166, column: 35, scope: !1011)
!1095 = !DILocation(line: 166, column: 7, scope: !1012)
!1096 = !DILocation(line: 167, column: 4, scope: !1010)
!1097 = !DILocation(line: 167, column: 26, scope: !1010)
!1098 = !DILocation(line: 168, column: 8, scope: !1010)
!1099 = !DILocation(line: 168, column: 36, scope: !1010)
!1100 = !DILocation(line: 171, column: 8, scope: !1010)
!1101 = !DILocation(line: 171, column: 25, scope: !1010)
!1102 = !DILocation(line: 170, column: 4, scope: !1010)
!1103 = !DILocation(line: 170, column: 9, scope: !1010)
!1104 = !DILocation(line: 170, column: 25, scope: !1010)
!1105 = !DILocation(line: 172, column: 23, scope: !1010)
!1106 = !DILocation(line: 172, column: 42, scope: !1010)
!1107 = !DILocation(line: 172, column: 18, scope: !1010)
!1108 = !DILocation(line: 172, column: 4, scope: !1010)
!1109 = !DILocation(line: 172, column: 9, scope: !1010)
!1110 = !DILocation(line: 172, column: 16, scope: !1010)
!1111 = !DILocation(line: 173, column: 27, scope: !1010)
!1112 = !DILocation(line: 173, column: 46, scope: !1010)
!1113 = !DILocation(line: 173, column: 23, scope: !1010)
!1114 = !DILocation(line: 173, column: 4, scope: !1010)
!1115 = !DILocation(line: 173, column: 9, scope: !1010)
!1116 = !DILocation(line: 173, column: 21, scope: !1010)
!1117 = !DILocation(line: 174, column: 3, scope: !1011)
!1118 = !DILocation(line: 174, column: 3, scope: !1010)
!1119 = !DILocation(line: 176, column: 7, scope: !1022)
!1120 = !DILocation(line: 176, column: 26, scope: !1022)
!1121 = !DILocation(line: 176, column: 35, scope: !1022)
!1122 = !DILocation(line: 176, column: 7, scope: !1012)
!1123 = !DILocation(line: 178, column: 4, scope: !1021)
!1124 = !DILocation(line: 178, column: 26, scope: !1021)
!1125 = !DILocation(line: 179, column: 8, scope: !1021)
!1126 = !DILocation(line: 179, column: 36, scope: !1021)
!1127 = !DILocation(line: 181, column: 18, scope: !1021)
!1128 = !DILocation(line: 181, column: 37, scope: !1021)
!1129 = !DILocation(line: 181, column: 4, scope: !1021)
!1130 = !DILocation(line: 181, column: 9, scope: !1021)
!1131 = !DILocation(line: 181, column: 16, scope: !1021)
!1132 = !DILocation(line: 182, column: 18, scope: !1021)
!1133 = !DILocation(line: 182, column: 37, scope: !1021)
!1134 = !DILocation(line: 182, column: 4, scope: !1021)
!1135 = !DILocation(line: 182, column: 9, scope: !1021)
!1136 = !DILocation(line: 182, column: 16, scope: !1021)
!1137 = !DILocation(line: 183, column: 3, scope: !1022)
!1138 = !DILocation(line: 183, column: 3, scope: !1021)
!1139 = !DILocation(line: 190, column: 3, scope: !1012)
!1140 = !DILocation(line: 192, column: 12, scope: !1012)
!1141 = !DILocation(line: 192, column: 25, scope: !1012)
!1142 = !DILocation(line: 193, column: 11, scope: !1012)
!1143 = !DILocation(line: 192, column: 10, scope: !1012)
!1144 = !DILocation(line: 197, column: 3, scope: !1012)
!1145 = !DILocation(line: 201, column: 7, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 201, column: 7)
!1147 = !DILocation(line: 201, column: 7, scope: !1012)
!1148 = !DILocation(line: 202, column: 4, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 201, column: 29)
!1150 = !DILocation(line: 207, column: 4, scope: !1149)
!1151 = !DILocation(line: 212, column: 9, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 212, column: 7)
!1153 = !DILocation(line: 212, column: 28, scope: !1152)
!1154 = !DILocation(line: 212, column: 34, scope: !1152)
!1155 = !DILocation(line: 212, column: 7, scope: !1012)
!1156 = !DILocation(line: 213, column: 4, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 212, column: 60)
!1158 = !DILocation(line: 213, column: 23, scope: !1157)
!1159 = !DILocation(line: 213, column: 29, scope: !1157)
!1160 = !DILocation(line: 219, column: 10, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 219, column: 8)
!1162 = !DILocation(line: 219, column: 29, scope: !1161)
!1163 = !DILocation(line: 219, column: 9, scope: !1161)
!1164 = !DILocation(line: 219, column: 8, scope: !1157)
!1165 = !DILocation(line: 221, column: 9, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 219, column: 46)
!1167 = !DILocation(line: 220, column: 5, scope: !1166)
!1168 = !DILocation(line: 220, column: 24, scope: !1166)
!1169 = !DILocation(line: 220, column: 39, scope: !1166)
!1170 = !DILocation(line: 222, column: 4, scope: !1166)
!1171 = !DILocation(line: 223, column: 3, scope: !1157)
!1172 = !DILocation(line: 224, column: 2, scope: !1012)
!1173 = !DILocation(line: 228, column: 12, scope: !983)
!1174 = !DILocation(line: 228, column: 40, scope: !983)
!1175 = !DILocation(line: 228, column: 10, scope: !983)
!1176 = !DILocation(line: 229, column: 13, scope: !983)
!1177 = !DILocation(line: 229, column: 32, scope: !983)
!1178 = !DILocation(line: 229, column: 42, scope: !983)
!1179 = !DILocation(line: 229, column: 40, scope: !983)
!1180 = !DILocation(line: 229, column: 10, scope: !983)
!1181 = !DILocation(line: 238, column: 8, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !983, file: !3, line: 238, column: 6)
!1183 = !DILocation(line: 238, column: 36, scope: !1182)
!1184 = !DILocation(line: 238, column: 50, scope: !1182)
!1185 = !DILocation(line: 238, column: 6, scope: !983)
!1186 = !DILocation(line: 245, column: 3, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 239, column: 46)
!1188 = !DILocation(line: 246, column: 2, scope: !1187)
!1189 = !DILocation(line: 267, column: 7, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !983, file: !3, line: 267, column: 6)
!1191 = !DILocation(line: 267, column: 26, scope: !1190)
!1192 = !DILocation(line: 267, column: 35, scope: !1190)
!1193 = !DILocation(line: 267, column: 59, scope: !1190)
!1194 = !DILocation(line: 268, column: 7, scope: !1190)
!1195 = !DILocation(line: 268, column: 26, scope: !1190)
!1196 = !DILocation(line: 268, column: 35, scope: !1190)
!1197 = !DILocation(line: 268, column: 59, scope: !1190)
!1198 = !DILocation(line: 269, column: 6, scope: !1190)
!1199 = !DILocation(line: 269, column: 14, scope: !1190)
!1200 = !DILocation(line: 269, column: 17, scope: !1190)
!1201 = !DILocation(line: 267, column: 6, scope: !983)
!1202 = !DILocation(line: 272, column: 7, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 269, column: 28)
!1204 = !DILocation(line: 271, column: 10, scope: !1203)
!1205 = !DILocation(line: 273, column: 7, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 273, column: 7)
!1207 = !DILocation(line: 273, column: 7, scope: !1203)
!1208 = !DILocation(line: 274, column: 4, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 273, column: 29)
!1210 = !DILocation(line: 277, column: 18, scope: !1203)
!1211 = !DILocation(line: 281, column: 25, scope: !1203)
!1212 = !DILocation(line: 281, column: 42, scope: !1203)
!1213 = !DILocation(line: 281, column: 3, scope: !1203)
!1214 = !DILocation(line: 281, column: 12, scope: !1203)
!1215 = !DILocation(line: 281, column: 23, scope: !1203)
!1216 = !DILocation(line: 282, column: 21, scope: !1203)
!1217 = !DILocation(line: 282, column: 38, scope: !1203)
!1218 = !DILocation(line: 282, column: 3, scope: !1203)
!1219 = !DILocation(line: 282, column: 12, scope: !1203)
!1220 = !DILocation(line: 282, column: 19, scope: !1203)
!1221 = !DILocation(line: 283, column: 28, scope: !1203)
!1222 = !DILocation(line: 283, column: 45, scope: !1203)
!1223 = !DILocation(line: 283, column: 3, scope: !1203)
!1224 = !DILocation(line: 283, column: 12, scope: !1203)
!1225 = !DILocation(line: 283, column: 26, scope: !1203)
!1226 = !DILocation(line: 285, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 285, column: 7)
!1228 = !DILocation(line: 285, column: 26, scope: !1227)
!1229 = !DILocation(line: 285, column: 35, scope: !1227)
!1230 = !DILocation(line: 285, column: 7, scope: !1203)
!1231 = !DILocation(line: 286, column: 14, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 285, column: 59)
!1233 = !DILocation(line: 286, column: 31, scope: !1232)
!1234 = !DILocation(line: 286, column: 12, scope: !1232)
!1235 = !DILocation(line: 287, column: 16, scope: !1232)
!1236 = !DILocation(line: 287, column: 33, scope: !1232)
!1237 = !DILocation(line: 287, column: 14, scope: !1232)
!1238 = !DILocation(line: 288, column: 3, scope: !1232)
!1239 = !DILocation(line: 289, column: 2, scope: !1203)
!1240 = !DILocation(line: 293, column: 11, scope: !983)
!1241 = !DILocation(line: 293, column: 19, scope: !983)
!1242 = !DILocation(line: 293, column: 29, scope: !983)
!1243 = !DILocation(line: 293, column: 38, scope: !983)
!1244 = !DILocation(line: 293, column: 49, scope: !983)
!1245 = !DILocation(line: 293, column: 56, scope: !983)
!1246 = !DILocation(line: 294, column: 5, scope: !983)
!1247 = !DILocation(line: 294, column: 24, scope: !983)
!1248 = !DILocation(line: 293, column: 9, scope: !983)
!1249 = !DILocation(line: 296, column: 6, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !983, file: !3, line: 296, column: 6)
!1251 = !DILocation(line: 296, column: 6, scope: !983)
!1252 = !DILocation(line: 297, column: 3, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 296, column: 22)
!1254 = !DILocation(line: 298, column: 2, scope: !1253)
!1255 = !DILocation(line: 300, column: 6, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !983, file: !3, line: 300, column: 6)
!1257 = !DILocation(line: 300, column: 6, scope: !983)
!1258 = !DILocation(line: 301, column: 3, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 300, column: 28)
!1260 = !DILocation(line: 309, column: 8, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 309, column: 7)
!1262 = !DILocation(line: 309, column: 27, scope: !1261)
!1263 = !DILocation(line: 309, column: 36, scope: !1261)
!1264 = !DILocation(line: 309, column: 58, scope: !1261)
!1265 = !DILocation(line: 310, column: 8, scope: !1261)
!1266 = !DILocation(line: 310, column: 15, scope: !1261)
!1267 = !DILocation(line: 309, column: 7, scope: !1259)
!1268 = !DILocation(line: 311, column: 4, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 310, column: 28)
!1270 = !DILocation(line: 313, column: 3, scope: !1269)
!1271 = !DILocation(line: 314, column: 2, scope: !1259)
!1272 = !DILocation(line: 316, column: 1, scope: !983)
!1273 = !DILocation(line: 317, column: 8, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !983, file: !3, line: 317, column: 6)
!1275 = !DILocation(line: 317, column: 36, scope: !1274)
!1276 = !DILocation(line: 317, column: 50, scope: !1274)
!1277 = !DILocation(line: 317, column: 6, scope: !983)
!1278 = !DILocation(line: 323, column: 3, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 318, column: 46)
!1280 = !DILocation(line: 324, column: 2, scope: !1279)
!1281 = !DILocation(line: 326, column: 2, scope: !983)
!1282 = !DILocation(line: 327, column: 1, scope: !983)
!1283 = !DISubprogram(name: "acpi_ns_get_secondary_object", scope: !1284, file: !1284, line: 302, type: !1285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1284 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!178, !178}
!1287 = !DISubprogram(name: "acpi_error", scope: !1288, file: !1288, line: 901, type: !1289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1288 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !1291, !22, !1291, null}
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!1292 = !DISubprogram(name: "acpi_ut_get_node_name", scope: !166, file: !166, line: 227, type: !1293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!1291, !26}
!1295 = !DISubprogram(name: "acpi_ut_get_region_name", scope: !166, file: !166, line: 235, type: !1296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!1291, !30}
!1298 = !DISubprogram(name: "acpi_ex_exit_interpreter", scope: !1299, file: !1299, line: 466, type: !1300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1299 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null}
!1302 = !DISubprogram(name: "acpi_ex_enter_interpreter", scope: !1299, file: !1299, line: 464, type: !1300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1303 = !DISubprogram(name: "acpi_exception", scope: !1288, file: !1288, line: 906, type: !1304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{null, !1291, !22, !27, !1291, null}
!1306 = !DISubprogram(name: "acpi_os_wait_semaphore", scope: !1307, file: !1307, line: 136, type: !1308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1307 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!27, !26, !22, !33}
!1310 = !DISubprogram(name: "acpi_os_signal_semaphore", scope: !1307, file: !1307, line: 140, type: !1311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!27, !26, !22}
!1313 = distinct !DISubprogram(name: "acpi_ev_detach_region", scope: !3, file: !3, line: 344, type: !1314, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1316)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{null, !178, !30}
!1316 = !{!1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326}
!1317 = !DILocalVariable(name: "region_obj", arg: 1, scope: !1313, file: !3, line: 344, type: !178)
!1318 = !DILocalVariable(name: "acpi_ns_is_locked", arg: 2, scope: !1313, file: !3, line: 345, type: !30)
!1319 = !DILocalVariable(name: "handler_obj", scope: !1313, file: !3, line: 347, type: !178)
!1320 = !DILocalVariable(name: "obj_desc", scope: !1313, file: !3, line: 348, type: !178)
!1321 = !DILocalVariable(name: "start_desc", scope: !1313, file: !3, line: 349, type: !178)
!1322 = !DILocalVariable(name: "last_obj_ptr", scope: !1313, file: !3, line: 350, type: !238)
!1323 = !DILocalVariable(name: "region_setup", scope: !1313, file: !3, line: 351, type: !856)
!1324 = !DILocalVariable(name: "region_context", scope: !1313, file: !3, line: 352, type: !860)
!1325 = !DILocalVariable(name: "region_obj2", scope: !1313, file: !3, line: 353, type: !178)
!1326 = !DILocalVariable(name: "status", scope: !1313, file: !3, line: 354, type: !27)
!1327 = !DILocation(line: 344, column: 50, scope: !1313)
!1328 = !DILocation(line: 345, column: 12, scope: !1313)
!1329 = !DILocation(line: 347, column: 2, scope: !1313)
!1330 = !DILocation(line: 347, column: 29, scope: !1313)
!1331 = !DILocation(line: 348, column: 2, scope: !1313)
!1332 = !DILocation(line: 348, column: 29, scope: !1313)
!1333 = !DILocation(line: 349, column: 2, scope: !1313)
!1334 = !DILocation(line: 349, column: 29, scope: !1313)
!1335 = !DILocation(line: 350, column: 2, scope: !1313)
!1336 = !DILocation(line: 350, column: 30, scope: !1313)
!1337 = !DILocation(line: 351, column: 2, scope: !1313)
!1338 = !DILocation(line: 351, column: 23, scope: !1313)
!1339 = !DILocation(line: 352, column: 2, scope: !1313)
!1340 = !DILocation(line: 352, column: 9, scope: !1313)
!1341 = !DILocation(line: 353, column: 2, scope: !1313)
!1342 = !DILocation(line: 353, column: 29, scope: !1313)
!1343 = !DILocation(line: 354, column: 2, scope: !1313)
!1344 = !DILocation(line: 354, column: 14, scope: !1313)
!1345 = !DILocation(line: 358, column: 45, scope: !1313)
!1346 = !DILocation(line: 358, column: 16, scope: !1313)
!1347 = !DILocation(line: 358, column: 14, scope: !1313)
!1348 = !DILocation(line: 359, column: 7, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 359, column: 6)
!1350 = !DILocation(line: 359, column: 6, scope: !1313)
!1351 = !DILocation(line: 360, column: 3, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 359, column: 20)
!1353 = !DILocation(line: 362, column: 20, scope: !1313)
!1354 = !DILocation(line: 362, column: 39, scope: !1313)
!1355 = !DILocation(line: 362, column: 17, scope: !1313)
!1356 = !DILocation(line: 366, column: 16, scope: !1313)
!1357 = !DILocation(line: 366, column: 35, scope: !1313)
!1358 = !DILocation(line: 366, column: 14, scope: !1313)
!1359 = !DILocation(line: 367, column: 7, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 367, column: 6)
!1361 = !DILocation(line: 367, column: 6, scope: !1313)
!1362 = !DILocation(line: 371, column: 3, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 367, column: 20)
!1364 = !DILocation(line: 376, column: 13, scope: !1313)
!1365 = !DILocation(line: 376, column: 40, scope: !1313)
!1366 = !DILocation(line: 376, column: 11, scope: !1313)
!1367 = !DILocation(line: 377, column: 15, scope: !1313)
!1368 = !DILocation(line: 377, column: 13, scope: !1313)
!1369 = !DILocation(line: 378, column: 18, scope: !1313)
!1370 = !DILocation(line: 378, column: 45, scope: !1313)
!1371 = !DILocation(line: 378, column: 15, scope: !1313)
!1372 = !DILocation(line: 380, column: 2, scope: !1313)
!1373 = !DILocation(line: 380, column: 9, scope: !1313)
!1374 = !DILocation(line: 384, column: 7, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 384, column: 7)
!1376 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 380, column: 19)
!1377 = !DILocation(line: 384, column: 19, scope: !1375)
!1378 = !DILocation(line: 384, column: 16, scope: !1375)
!1379 = !DILocation(line: 384, column: 7, scope: !1376)
!1380 = !DILocation(line: 391, column: 20, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 384, column: 31)
!1382 = !DILocation(line: 391, column: 37, scope: !1381)
!1383 = !DILocation(line: 391, column: 5, scope: !1381)
!1384 = !DILocation(line: 391, column: 18, scope: !1381)
!1385 = !DILocation(line: 392, column: 4, scope: !1381)
!1386 = !DILocation(line: 392, column: 21, scope: !1381)
!1387 = !DILocation(line: 392, column: 26, scope: !1381)
!1388 = !DILocation(line: 394, column: 8, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 394, column: 8)
!1390 = !DILocation(line: 394, column: 8, scope: !1381)
!1391 = !DILocation(line: 396, column: 9, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 394, column: 27)
!1393 = !DILocation(line: 395, column: 12, scope: !1392)
!1394 = !DILocation(line: 397, column: 9, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 397, column: 9)
!1396 = !DILocation(line: 397, column: 9, scope: !1392)
!1397 = !DILocation(line: 398, column: 6, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 397, column: 31)
!1399 = !DILocation(line: 400, column: 4, scope: !1392)
!1400 = !DILocation(line: 405, column: 35, scope: !1381)
!1401 = !DILocation(line: 405, column: 8, scope: !1381)
!1402 = !DILocation(line: 404, column: 11, scope: !1381)
!1403 = !DILocation(line: 407, column: 8, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 407, column: 8)
!1405 = !DILocation(line: 407, column: 8, scope: !1381)
!1406 = !DILocation(line: 408, column: 5, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 407, column: 30)
!1408 = !DILocation(line: 412, column: 4, scope: !1407)
!1409 = !DILocation(line: 414, column: 8, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 414, column: 8)
!1411 = !DILocation(line: 414, column: 8, scope: !1381)
!1412 = !DILocation(line: 416, column: 9, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 414, column: 27)
!1414 = !DILocation(line: 415, column: 12, scope: !1413)
!1415 = !DILocation(line: 417, column: 9, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 417, column: 9)
!1417 = !DILocation(line: 417, column: 9, scope: !1413)
!1418 = !DILocation(line: 418, column: 6, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 417, column: 31)
!1420 = !DILocation(line: 420, column: 4, scope: !1413)
!1421 = !DILocation(line: 426, column: 8, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 426, column: 8)
!1423 = !DILocation(line: 426, column: 27, scope: !1422)
!1424 = !DILocation(line: 426, column: 33, scope: !1422)
!1425 = !DILocation(line: 426, column: 8, scope: !1381)
!1426 = !DILocation(line: 427, column: 20, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 426, column: 58)
!1428 = !DILocation(line: 427, column: 47, scope: !1427)
!1429 = !DILocation(line: 427, column: 18, scope: !1427)
!1430 = !DILocation(line: 429, column: 9, scope: !1427)
!1431 = !DILocation(line: 429, column: 22, scope: !1427)
!1432 = !DILocation(line: 431, column: 8, scope: !1427)
!1433 = !DILocation(line: 432, column: 8, scope: !1427)
!1434 = !DILocation(line: 432, column: 17, scope: !1427)
!1435 = !DILocation(line: 428, column: 12, scope: !1427)
!1436 = !DILocation(line: 438, column: 9, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 438, column: 9)
!1438 = !DILocation(line: 438, column: 9, scope: !1427)
!1439 = !DILocation(line: 439, column: 7, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 438, column: 25)
!1441 = !DILocation(line: 439, column: 22, scope: !1440)
!1442 = !DILocation(line: 440, column: 5, scope: !1440)
!1443 = !DILocation(line: 444, column: 9, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 444, column: 9)
!1445 = !DILocation(line: 444, column: 9, scope: !1427)
!1446 = !DILocation(line: 445, column: 6, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 444, column: 31)
!1448 = !DILocation(line: 450, column: 5, scope: !1447)
!1449 = !DILocation(line: 452, column: 5, scope: !1427)
!1450 = !DILocation(line: 452, column: 24, scope: !1427)
!1451 = !DILocation(line: 452, column: 30, scope: !1427)
!1452 = !DILocation(line: 454, column: 4, scope: !1427)
!1453 = !DILocation(line: 465, column: 4, scope: !1381)
!1454 = !DILocation(line: 465, column: 23, scope: !1381)
!1455 = !DILocation(line: 465, column: 31, scope: !1381)
!1456 = !DILocation(line: 466, column: 29, scope: !1381)
!1457 = !DILocation(line: 466, column: 4, scope: !1381)
!1458 = !DILocation(line: 468, column: 4, scope: !1381)
!1459 = !DILocation(line: 473, column: 19, scope: !1376)
!1460 = !DILocation(line: 473, column: 36, scope: !1376)
!1461 = !DILocation(line: 473, column: 16, scope: !1376)
!1462 = !DILocation(line: 474, column: 14, scope: !1376)
!1463 = !DILocation(line: 474, column: 31, scope: !1376)
!1464 = !DILocation(line: 474, column: 12, scope: !1376)
!1465 = !DILocation(line: 478, column: 7, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 478, column: 7)
!1467 = !DILocation(line: 478, column: 19, scope: !1466)
!1468 = !DILocation(line: 478, column: 16, scope: !1466)
!1469 = !DILocation(line: 478, column: 7, scope: !1376)
!1470 = !DILocation(line: 479, column: 4, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 478, column: 31)
!1472 = !DILocation(line: 482, column: 4, scope: !1471)
!1473 = distinct !{!1473, !1372, !1474, !160, !161}
!1474 = !DILocation(line: 484, column: 2, scope: !1313)
!1475 = !DILocation(line: 492, column: 2, scope: !1313)
!1476 = !DILocation(line: 493, column: 1, scope: !1313)
!1477 = distinct !DISubprogram(name: "acpi_ev_execute_reg_method", scope: !3, file: !3, line: 555, type: !1478, scopeLine: 556, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1480)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!27, !178, !22}
!1480 = !{!1481, !1482, !1483, !1548, !1550, !1551, !1554, !1555, !1556, !1557, !1558}
!1481 = !DILocalVariable(name: "region_obj", arg: 1, scope: !1477, file: !3, line: 555, type: !178)
!1482 = !DILocalVariable(name: "function", arg: 2, scope: !1477, file: !3, line: 555, type: !22)
!1483 = !DILocalVariable(name: "info", scope: !1477, file: !3, line: 557, type: !1484)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !275, line: 152, size: 704, elements: !1486)
!1486 = !{!1487, !1488, !1489, !1490, !1491, !1492, !1493, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !1485, file: !275, line: 155, baseType: !174, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !1485, file: !275, line: 156, baseType: !1291, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1485, file: !275, line: 157, baseType: !238, size: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1485, file: !275, line: 159, baseType: !174, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !1485, file: !275, line: 160, baseType: !178, size: 64, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !1485, file: !275, line: 161, baseType: !212, size: 64, offset: 320)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !1485, file: !275, line: 163, baseType: !1494, size: 64, offset: 384)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1496)
!1496 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !48, line: 351, size: 56, elements: !1497)
!1497 = !{!1498, !1504, !1513, !1521, !1530}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1496, file: !48, line: 352, baseType: !1499, size: 56)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !48, line: 295, size: 56, elements: !1500)
!1500 = !{!1501, !1502, !1503}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1499, file: !48, line: 296, baseType: !367, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !1499, file: !48, line: 297, baseType: !33, size: 16, offset: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !1499, file: !48, line: 298, baseType: !30, size: 8, offset: 48)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !1496, file: !48, line: 353, baseType: !1505, size: 56)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !48, line: 314, size: 56, elements: !1506)
!1506 = !{!1507, !1508, !1509, !1510, !1511, !1512}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1505, file: !48, line: 315, baseType: !30, size: 8)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1505, file: !48, line: 316, baseType: !30, size: 8, offset: 8)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1505, file: !48, line: 317, baseType: !30, size: 8, offset: 16)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !1505, file: !48, line: 318, baseType: !30, size: 8, offset: 24)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !1505, file: !48, line: 319, baseType: !30, size: 8, offset: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1505, file: !48, line: 320, baseType: !33, size: 16, offset: 40)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !1496, file: !48, line: 354, baseType: !1514, size: 56)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !48, line: 325, size: 56, elements: !1515)
!1515 = !{!1516, !1517, !1518, !1520}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1514, file: !48, line: 326, baseType: !30, size: 8)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1514, file: !48, line: 327, baseType: !30, size: 8, offset: 8)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1514, file: !48, line: 328, baseType: !1519, size: 32, offset: 16)
!1519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !368)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1514, file: !48, line: 329, baseType: !30, size: 8, offset: 48)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !1496, file: !48, line: 355, baseType: !1522, size: 56)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !48, line: 334, size: 56, elements: !1523)
!1523 = !{!1524, !1525, !1526, !1528, !1529}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1522, file: !48, line: 335, baseType: !30, size: 8)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1522, file: !48, line: 336, baseType: !30, size: 8, offset: 8)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1522, file: !48, line: 337, baseType: !1527, size: 16, offset: 16)
!1527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 16, elements: !609)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !1522, file: !48, line: 338, baseType: !30, size: 8, offset: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1522, file: !48, line: 339, baseType: !33, size: 16, offset: 40)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !1496, file: !48, line: 356, baseType: !1531, size: 56)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !48, line: 342, size: 56, elements: !1532)
!1532 = !{!1533, !1534, !1535, !1536, !1537, !1538}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1531, file: !48, line: 343, baseType: !30, size: 8)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1531, file: !48, line: 344, baseType: !30, size: 8, offset: 8)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1531, file: !48, line: 345, baseType: !30, size: 8, offset: 16)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !1531, file: !48, line: 346, baseType: !30, size: 8, offset: 24)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !1531, file: !48, line: 347, baseType: !30, size: 8, offset: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1531, file: !48, line: 348, baseType: !33, size: 16, offset: 40)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !1485, file: !275, line: 164, baseType: !178, size: 64, offset: 448)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !1485, file: !275, line: 165, baseType: !178, size: 64, offset: 512)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !1485, file: !275, line: 167, baseType: !22, size: 32, offset: 576)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !1485, file: !275, line: 168, baseType: !22, size: 32, offset: 608)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1485, file: !275, line: 169, baseType: !33, size: 16, offset: 640)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !1485, file: !275, line: 170, baseType: !33, size: 16, offset: 656)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !1485, file: !275, line: 171, baseType: !30, size: 8, offset: 672)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !1485, file: !275, line: 172, baseType: !30, size: 8, offset: 680)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1485, file: !275, line: 173, baseType: !30, size: 8, offset: 688)
!1548 = !DILocalVariable(name: "args", scope: !1477, file: !3, line: 558, type: !1549)
!1549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 192, elements: !200)
!1550 = !DILocalVariable(name: "region_obj2", scope: !1477, file: !3, line: 559, type: !178)
!1551 = !DILocalVariable(name: "reg_name_ptr", scope: !1477, file: !3, line: 560, type: !1552)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!1554 = !DILocalVariable(name: "method_node", scope: !1477, file: !3, line: 562, type: !174)
!1555 = !DILocalVariable(name: "node", scope: !1477, file: !3, line: 563, type: !174)
!1556 = !DILocalVariable(name: "status", scope: !1477, file: !3, line: 564, type: !27)
!1557 = !DILabel(scope: !1477, name: "cleanup2", file: !3, line: 663)
!1558 = !DILabel(scope: !1477, name: "cleanup1", file: !3, line: 666)
!1559 = !DILocation(line: 555, column: 55, scope: !1477)
!1560 = !DILocation(line: 555, column: 71, scope: !1477)
!1561 = !DILocation(line: 557, column: 2, scope: !1477)
!1562 = !DILocation(line: 557, column: 29, scope: !1477)
!1563 = !DILocation(line: 558, column: 2, scope: !1477)
!1564 = !DILocation(line: 558, column: 29, scope: !1477)
!1565 = !DILocation(line: 559, column: 2, scope: !1477)
!1566 = !DILocation(line: 559, column: 29, scope: !1477)
!1567 = !DILocation(line: 560, column: 2, scope: !1477)
!1568 = !DILocation(line: 560, column: 19, scope: !1477)
!1569 = !DILocation(line: 562, column: 2, scope: !1477)
!1570 = !DILocation(line: 562, column: 30, scope: !1477)
!1571 = !DILocation(line: 563, column: 2, scope: !1477)
!1572 = !DILocation(line: 563, column: 30, scope: !1477)
!1573 = !DILocation(line: 564, column: 2, scope: !1477)
!1574 = !DILocation(line: 564, column: 14, scope: !1477)
!1575 = !DILocation(line: 568, column: 7, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 568, column: 6)
!1577 = !DILocation(line: 568, column: 38, scope: !1576)
!1578 = !DILocation(line: 569, column: 6, scope: !1576)
!1579 = !DILocation(line: 569, column: 25, scope: !1576)
!1580 = !DILocation(line: 569, column: 33, scope: !1576)
!1581 = !DILocation(line: 568, column: 6, scope: !1477)
!1582 = !DILocation(line: 570, column: 3, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 569, column: 42)
!1584 = !DILocation(line: 573, column: 45, scope: !1477)
!1585 = !DILocation(line: 573, column: 16, scope: !1477)
!1586 = !DILocation(line: 573, column: 14, scope: !1477)
!1587 = !DILocation(line: 574, column: 7, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 574, column: 6)
!1589 = !DILocation(line: 574, column: 6, scope: !1477)
!1590 = !DILocation(line: 575, column: 3, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 574, column: 20)
!1592 = !DILocation(line: 583, column: 9, scope: !1477)
!1593 = !DILocation(line: 583, column: 28, scope: !1477)
!1594 = !DILocation(line: 583, column: 34, scope: !1477)
!1595 = !DILocation(line: 583, column: 7, scope: !1477)
!1596 = !DILocation(line: 585, column: 32, scope: !1477)
!1597 = !DILocation(line: 585, column: 31, scope: !1477)
!1598 = !DILocation(line: 585, column: 46, scope: !1477)
!1599 = !DILocation(line: 585, column: 6, scope: !1477)
!1600 = !DILocation(line: 584, column: 9, scope: !1477)
!1601 = !DILocation(line: 587, column: 6, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 587, column: 6)
!1603 = !DILocation(line: 587, column: 6, scope: !1477)
!1604 = !DILocation(line: 593, column: 35, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 587, column: 28)
!1606 = !DILocation(line: 593, column: 3, scope: !1605)
!1607 = !DILocation(line: 593, column: 22, scope: !1605)
!1608 = !DILocation(line: 593, column: 33, scope: !1605)
!1609 = !DILocation(line: 594, column: 2, scope: !1605)
!1610 = !DILocation(line: 595, column: 6, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 595, column: 6)
!1612 = !DILocation(line: 595, column: 25, scope: !1611)
!1613 = !DILocation(line: 595, column: 36, scope: !1611)
!1614 = !DILocation(line: 595, column: 6, scope: !1477)
!1615 = !DILocation(line: 596, column: 3, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 595, column: 45)
!1617 = !DILocation(line: 601, column: 7, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 601, column: 6)
!1619 = !DILocation(line: 601, column: 16, scope: !1618)
!1620 = !DILocation(line: 601, column: 36, scope: !1618)
!1621 = !DILocation(line: 602, column: 7, scope: !1618)
!1622 = !DILocation(line: 602, column: 26, scope: !1618)
!1623 = !DILocation(line: 602, column: 32, scope: !1618)
!1624 = !DILocation(line: 602, column: 56, scope: !1618)
!1625 = !DILocation(line: 603, column: 7, scope: !1618)
!1626 = !DILocation(line: 603, column: 16, scope: !1618)
!1627 = !DILocation(line: 603, column: 39, scope: !1618)
!1628 = !DILocation(line: 604, column: 9, scope: !1618)
!1629 = !DILocation(line: 604, column: 28, scope: !1618)
!1630 = !DILocation(line: 604, column: 34, scope: !1618)
!1631 = !DILocation(line: 601, column: 6, scope: !1477)
!1632 = !DILocation(line: 605, column: 3, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 604, column: 60)
!1634 = !DILocation(line: 610, column: 9, scope: !1477)
!1635 = !DILocation(line: 610, column: 7, scope: !1477)
!1636 = !DILocation(line: 611, column: 7, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 611, column: 6)
!1638 = !DILocation(line: 611, column: 6, scope: !1477)
!1639 = !DILocation(line: 612, column: 3, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 611, column: 13)
!1641 = !DILocation(line: 615, column: 22, scope: !1477)
!1642 = !DILocation(line: 615, column: 41, scope: !1477)
!1643 = !DILocation(line: 615, column: 2, scope: !1477)
!1644 = !DILocation(line: 615, column: 8, scope: !1477)
!1645 = !DILocation(line: 615, column: 20, scope: !1477)
!1646 = !DILocation(line: 616, column: 2, scope: !1477)
!1647 = !DILocation(line: 616, column: 8, scope: !1477)
!1648 = !DILocation(line: 616, column: 26, scope: !1477)
!1649 = !DILocation(line: 617, column: 21, scope: !1477)
!1650 = !DILocation(line: 617, column: 2, scope: !1477)
!1651 = !DILocation(line: 617, column: 8, scope: !1477)
!1652 = !DILocation(line: 617, column: 19, scope: !1477)
!1653 = !DILocation(line: 618, column: 2, scope: !1477)
!1654 = !DILocation(line: 618, column: 8, scope: !1477)
!1655 = !DILocation(line: 618, column: 14, scope: !1477)
!1656 = !DILocation(line: 631, column: 41, scope: !1477)
!1657 = !DILocation(line: 631, column: 60, scope: !1477)
!1658 = !DILocation(line: 631, column: 36, scope: !1477)
!1659 = !DILocation(line: 631, column: 6, scope: !1477)
!1660 = !DILocation(line: 630, column: 2, scope: !1477)
!1661 = !DILocation(line: 630, column: 10, scope: !1477)
!1662 = !DILocation(line: 632, column: 7, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 632, column: 6)
!1664 = !DILocation(line: 632, column: 6, scope: !1477)
!1665 = !DILocation(line: 633, column: 10, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 632, column: 16)
!1667 = !DILocation(line: 634, column: 3, scope: !1666)
!1668 = !DILocation(line: 637, column: 47, scope: !1477)
!1669 = !DILocation(line: 637, column: 42, scope: !1477)
!1670 = !DILocation(line: 637, column: 12, scope: !1477)
!1671 = !DILocation(line: 637, column: 2, scope: !1477)
!1672 = !DILocation(line: 637, column: 10, scope: !1477)
!1673 = !DILocation(line: 638, column: 7, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 638, column: 6)
!1675 = !DILocation(line: 638, column: 6, scope: !1477)
!1676 = !DILocation(line: 639, column: 10, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 638, column: 16)
!1678 = !DILocation(line: 640, column: 3, scope: !1677)
!1679 = !DILocation(line: 643, column: 2, scope: !1477)
!1680 = !DILocation(line: 643, column: 10, scope: !1477)
!1681 = !DILocation(line: 650, column: 28, scope: !1477)
!1682 = !DILocation(line: 650, column: 11, scope: !1477)
!1683 = !DILocation(line: 650, column: 9, scope: !1477)
!1684 = !DILocation(line: 651, column: 27, scope: !1477)
!1685 = !DILocation(line: 651, column: 2, scope: !1477)
!1686 = !DILocation(line: 653, column: 6, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 653, column: 6)
!1688 = !DILocation(line: 653, column: 6, scope: !1477)
!1689 = !DILocation(line: 654, column: 3, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 653, column: 28)
!1691 = !DILocation(line: 657, column: 6, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 657, column: 6)
!1693 = !DILocation(line: 657, column: 15, scope: !1692)
!1694 = !DILocation(line: 657, column: 6, scope: !1477)
!1695 = !DILocation(line: 658, column: 3, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 657, column: 36)
!1697 = !DILocation(line: 658, column: 22, scope: !1696)
!1698 = !DILocation(line: 658, column: 28, scope: !1696)
!1699 = !DILocation(line: 659, column: 2, scope: !1696)
!1700 = !DILocation(line: 660, column: 3, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 659, column: 9)
!1702 = !DILocation(line: 660, column: 22, scope: !1701)
!1703 = !DILocation(line: 660, column: 28, scope: !1701)
!1704 = !DILocation(line: 657, column: 18, scope: !1692)
!1705 = !DILocation(line: 663, column: 1, scope: !1477)
!1706 = !DILocation(line: 664, column: 27, scope: !1477)
!1707 = !DILocation(line: 664, column: 2, scope: !1477)
!1708 = !DILocation(line: 666, column: 1, scope: !1477)
!1709 = !DILocation(line: 667, column: 2, scope: !1477)
!1710 = !DILocation(line: 668, column: 2, scope: !1477)
!1711 = !DILocation(line: 669, column: 1, scope: !1477)
!1712 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !166, file: !166, line: 369, type: !1713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{null, !178}
!1715 = distinct !DISubprogram(name: "acpi_ev_attach_region", scope: !3, file: !3, line: 511, type: !1716, scopeLine: 514, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1718)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!27, !178, !178, !30}
!1718 = !{!1719, !1720, !1721}
!1719 = !DILocalVariable(name: "handler_obj", arg: 1, scope: !1715, file: !3, line: 511, type: !178)
!1720 = !DILocalVariable(name: "region_obj", arg: 2, scope: !1715, file: !3, line: 512, type: !178)
!1721 = !DILocalVariable(name: "acpi_ns_is_locked", arg: 3, scope: !1715, file: !3, line: 513, type: !30)
!1722 = !DILocation(line: 511, column: 50, scope: !1715)
!1723 = !DILocation(line: 512, column: 36, scope: !1715)
!1724 = !DILocation(line: 513, column: 12, scope: !1715)
!1725 = !DILocation(line: 520, column: 6, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 520, column: 6)
!1727 = !DILocation(line: 520, column: 25, scope: !1726)
!1728 = !DILocation(line: 520, column: 6, scope: !1715)
!1729 = !DILocation(line: 521, column: 3, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 520, column: 34)
!1731 = !DILocation(line: 533, column: 28, scope: !1715)
!1732 = !DILocation(line: 533, column: 55, scope: !1715)
!1733 = !DILocation(line: 533, column: 2, scope: !1715)
!1734 = !DILocation(line: 533, column: 21, scope: !1715)
!1735 = !DILocation(line: 533, column: 26, scope: !1715)
!1736 = !DILocation(line: 534, column: 43, scope: !1715)
!1737 = !DILocation(line: 534, column: 2, scope: !1715)
!1738 = !DILocation(line: 534, column: 29, scope: !1715)
!1739 = !DILocation(line: 534, column: 41, scope: !1715)
!1740 = !DILocation(line: 535, column: 31, scope: !1715)
!1741 = !DILocation(line: 535, column: 2, scope: !1715)
!1742 = !DILocation(line: 535, column: 21, scope: !1715)
!1743 = !DILocation(line: 535, column: 29, scope: !1715)
!1744 = !DILocation(line: 536, column: 24, scope: !1715)
!1745 = !DILocation(line: 536, column: 2, scope: !1715)
!1746 = !DILocation(line: 538, column: 2, scope: !1715)
!1747 = !DILocation(line: 539, column: 1, scope: !1715)
!1748 = !DISubprogram(name: "acpi_ut_add_reference", scope: !166, file: !166, line: 367, type: !1713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1749 = !DISubprogram(name: "acpi_ns_search_one_scope", scope: !1284, file: !1284, line: 366, type: !1750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!27, !22, !174, !1752, !1753}
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !28, line: 644, baseType: !22)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!1754 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1755, file: !1755, line: 55, type: !1756, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1758)
!1755 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!26, !41}
!1758 = !{!1759, !1760, !1762, !1765, !1766, !1769}
!1759 = !DILocalVariable(name: "size", arg: 1, scope: !1754, file: !1755, line: 55, type: !41)
!1760 = !DILocalVariable(name: "_flags", scope: !1761, file: !1755, line: 57, type: !40)
!1761 = distinct !DILexicalBlock(scope: !1754, file: !1755, line: 57, column: 23)
!1762 = !DILocalVariable(name: "__dummy", scope: !1763, file: !1755, line: 57, type: !40)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !1755, line: 57, column: 23)
!1764 = distinct !DILexicalBlock(scope: !1761, file: !1755, line: 57, column: 23)
!1765 = !DILocalVariable(name: "__dummy2", scope: !1763, file: !1755, line: 57, type: !40)
!1766 = !DILocalVariable(name: "__dummy", scope: !1767, file: !1755, line: 57, type: !40)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !1755, line: 57, column: 23)
!1768 = distinct !DILexicalBlock(scope: !1761, file: !1755, line: 57, column: 23)
!1769 = !DILocalVariable(name: "__dummy2", scope: !1767, file: !1755, line: 57, type: !40)
!1770 = !DILocation(line: 55, column: 55, scope: !1754)
!1771 = !DILocation(line: 57, column: 17, scope: !1754)
!1772 = !DILocation(line: 57, column: 23, scope: !1761)
!1773 = !DILocation(line: 57, column: 23, scope: !1763)
!1774 = !DILocation(line: 57, column: 23, scope: !1764)
!1775 = !DILocation(line: 57, column: 23, scope: !1767)
!1776 = !DILocation(line: 57, column: 23, scope: !1768)
!1777 = !DILocation(line: 57, column: 23, scope: !1754)
!1778 = !DILocation(line: 57, column: 9, scope: !1754)
!1779 = !DILocation(line: 57, column: 2, scope: !1754)
!1780 = !DISubprogram(name: "acpi_ut_create_integer_object", scope: !166, file: !166, line: 455, type: !1781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!178, !42}
!1783 = !DISubprogram(name: "acpi_ns_evaluate", scope: !1284, file: !1284, line: 208, type: !1784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!27, !1484}
!1786 = distinct !DISubprogram(name: "acpi_os_free", scope: !1755, file: !1755, line: 60, type: !1787, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1789)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{null, !26}
!1789 = !{!1790}
!1790 = !DILocalVariable(name: "memory", arg: 1, scope: !1786, file: !1755, line: 60, type: !26)
!1791 = !DILocation(line: 60, column: 39, scope: !1786)
!1792 = !DILocation(line: 62, column: 8, scope: !1786)
!1793 = !DILocation(line: 62, column: 2, scope: !1786)
!1794 = !DILocation(line: 63, column: 1, scope: !1786)
!1795 = !DISubprogram(name: "acpi_ns_walk_namespace", scope: !1284, file: !1284, line: 77, type: !1796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!27, !1752, !506, !22, !22, !1798, !1798, !26, !860}
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_callback", file: !28, line: 1135, baseType: !857)
!1799 = distinct !DISubprogram(name: "acpi_ev_reg_run", scope: !3, file: !3, line: 753, type: !858, scopeLine: 755, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1800)
!1800 = !{!1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808}
!1801 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !1799, file: !3, line: 753, type: !506)
!1802 = !DILocalVariable(name: "level", arg: 2, scope: !1799, file: !3, line: 754, type: !22)
!1803 = !DILocalVariable(name: "context", arg: 3, scope: !1799, file: !3, line: 754, type: !26)
!1804 = !DILocalVariable(name: "return_value", arg: 4, scope: !1799, file: !3, line: 754, type: !860)
!1805 = !DILocalVariable(name: "obj_desc", scope: !1799, file: !3, line: 756, type: !178)
!1806 = !DILocalVariable(name: "node", scope: !1799, file: !3, line: 757, type: !174)
!1807 = !DILocalVariable(name: "status", scope: !1799, file: !3, line: 758, type: !27)
!1808 = !DILocalVariable(name: "info", scope: !1799, file: !3, line: 759, type: !46)
!1809 = !DILocation(line: 753, column: 29, scope: !1799)
!1810 = !DILocation(line: 754, column: 7, scope: !1799)
!1811 = !DILocation(line: 754, column: 20, scope: !1799)
!1812 = !DILocation(line: 754, column: 36, scope: !1799)
!1813 = !DILocation(line: 756, column: 2, scope: !1799)
!1814 = !DILocation(line: 756, column: 29, scope: !1799)
!1815 = !DILocation(line: 757, column: 2, scope: !1799)
!1816 = !DILocation(line: 757, column: 30, scope: !1799)
!1817 = !DILocation(line: 758, column: 2, scope: !1799)
!1818 = !DILocation(line: 758, column: 14, scope: !1799)
!1819 = !DILocation(line: 759, column: 2, scope: !1799)
!1820 = !DILocation(line: 759, column: 29, scope: !1799)
!1821 = !DILocation(line: 761, column: 9, scope: !1799)
!1822 = !DILocation(line: 761, column: 7, scope: !1799)
!1823 = !DILocation(line: 765, column: 33, scope: !1799)
!1824 = !DILocation(line: 765, column: 9, scope: !1799)
!1825 = !DILocation(line: 765, column: 7, scope: !1799)
!1826 = !DILocation(line: 766, column: 7, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 766, column: 6)
!1828 = !DILocation(line: 766, column: 6, scope: !1799)
!1829 = !DILocation(line: 767, column: 3, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 766, column: 13)
!1831 = !DILocation(line: 774, column: 7, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 774, column: 6)
!1833 = !DILocation(line: 774, column: 13, scope: !1832)
!1834 = !DILocation(line: 774, column: 18, scope: !1832)
!1835 = !DILocation(line: 774, column: 39, scope: !1832)
!1836 = !DILocation(line: 774, column: 43, scope: !1832)
!1837 = !DILocation(line: 774, column: 51, scope: !1832)
!1838 = !DILocation(line: 774, column: 48, scope: !1832)
!1839 = !DILocation(line: 774, column: 6, scope: !1799)
!1840 = !DILocation(line: 775, column: 3, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 774, column: 72)
!1842 = !DILocation(line: 780, column: 41, scope: !1799)
!1843 = !DILocation(line: 780, column: 13, scope: !1799)
!1844 = !DILocation(line: 780, column: 11, scope: !1799)
!1845 = !DILocation(line: 781, column: 7, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 781, column: 6)
!1847 = !DILocation(line: 781, column: 6, scope: !1799)
!1848 = !DILocation(line: 785, column: 3, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 781, column: 17)
!1850 = !DILocation(line: 790, column: 6, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 790, column: 6)
!1852 = !DILocation(line: 790, column: 23, scope: !1851)
!1853 = !DILocation(line: 790, column: 35, scope: !1851)
!1854 = !DILocation(line: 790, column: 41, scope: !1851)
!1855 = !DILocation(line: 790, column: 32, scope: !1851)
!1856 = !DILocation(line: 790, column: 6, scope: !1799)
!1857 = !DILocation(line: 794, column: 3, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 790, column: 51)
!1859 = !DILocation(line: 797, column: 2, scope: !1799)
!1860 = !DILocation(line: 797, column: 8, scope: !1799)
!1861 = !DILocation(line: 797, column: 21, scope: !1799)
!1862 = !DILocation(line: 798, column: 38, scope: !1799)
!1863 = !DILocation(line: 798, column: 48, scope: !1799)
!1864 = !DILocation(line: 798, column: 54, scope: !1799)
!1865 = !DILocation(line: 798, column: 11, scope: !1799)
!1866 = !DILocation(line: 798, column: 9, scope: !1799)
!1867 = !DILocation(line: 799, column: 10, scope: !1799)
!1868 = !DILocation(line: 799, column: 2, scope: !1799)
!1869 = !DILocation(line: 800, column: 1, scope: !1799)
!1870 = distinct !DISubprogram(name: "acpi_ev_execute_orphan_reg_method", scope: !3, file: !3, line: 824, type: !1871, scopeLine: 826, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1873)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{null, !174, !29}
!1873 = !{!1874, !1875, !1876, !1877, !1878, !1879, !1930, !1932}
!1874 = !DILocalVariable(name: "device_node", arg: 1, scope: !1870, file: !3, line: 824, type: !174)
!1875 = !DILocalVariable(name: "space_id", arg: 2, scope: !1870, file: !3, line: 825, type: !29)
!1876 = !DILocalVariable(name: "reg_method", scope: !1870, file: !3, line: 827, type: !506)
!1877 = !DILocalVariable(name: "next_node", scope: !1870, file: !3, line: 828, type: !174)
!1878 = !DILocalVariable(name: "status", scope: !1870, file: !3, line: 829, type: !27)
!1879 = !DILocalVariable(name: "args", scope: !1870, file: !3, line: 830, type: !1880)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !28, line: 956, size: 128, elements: !1881)
!1881 = !{!1882, !1883}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1880, file: !28, line: 957, baseType: !22, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1880, file: !28, line: 958, baseType: !1884, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !28, line: 908, size: 192, elements: !1886)
!1886 = !{!1887, !1888, !1893, !1899, !1905, !1911, !1917, !1924}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1885, file: !28, line: 909, baseType: !1752, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1885, file: !28, line: 913, baseType: !1889, size: 128)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1885, file: !28, line: 910, size: 128, elements: !1890)
!1890 = !{!1891, !1892}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1889, file: !28, line: 911, baseType: !1752, size: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1889, file: !28, line: 912, baseType: !42, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1885, file: !28, line: 919, baseType: !1894, size: 128)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1885, file: !28, line: 915, size: 128, elements: !1895)
!1895 = !{!1896, !1897, !1898}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1894, file: !28, line: 916, baseType: !1752, size: 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1894, file: !28, line: 917, baseType: !22, size: 32, offset: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1894, file: !28, line: 918, baseType: !212, size: 64, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1885, file: !28, line: 925, baseType: !1900, size: 128)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1885, file: !28, line: 921, size: 128, elements: !1901)
!1901 = !{!1902, !1903, !1904}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1900, file: !28, line: 922, baseType: !1752, size: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1900, file: !28, line: 923, baseType: !22, size: 32, offset: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1900, file: !28, line: 924, baseType: !223, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !1885, file: !28, line: 931, baseType: !1906, size: 128)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1885, file: !28, line: 927, size: 128, elements: !1907)
!1907 = !{!1908, !1909, !1910}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1906, file: !28, line: 928, baseType: !1752, size: 32)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1906, file: !28, line: 929, baseType: !22, size: 32, offset: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1906, file: !28, line: 930, baseType: !1884, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1885, file: !28, line: 937, baseType: !1912, size: 128)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1885, file: !28, line: 933, size: 128, elements: !1913)
!1913 = !{!1914, !1915, !1916}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1912, file: !28, line: 934, baseType: !1752, size: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !1912, file: !28, line: 935, baseType: !1752, size: 32, offset: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1912, file: !28, line: 936, baseType: !506, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !1885, file: !28, line: 944, baseType: !1918, size: 192)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1885, file: !28, line: 939, size: 192, elements: !1919)
!1919 = !{!1920, !1921, !1922, !1923}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1918, file: !28, line: 940, baseType: !1752, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1918, file: !28, line: 941, baseType: !22, size: 32, offset: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !1918, file: !28, line: 942, baseType: !715, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !1918, file: !28, line: 943, baseType: !22, size: 32, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !1885, file: !28, line: 950, baseType: !1925, size: 96)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1885, file: !28, line: 946, size: 96, elements: !1926)
!1926 = !{!1927, !1928, !1929}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1925, file: !28, line: 947, baseType: !1752, size: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1925, file: !28, line: 948, baseType: !22, size: 32, offset: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1925, file: !28, line: 949, baseType: !22, size: 32, offset: 64)
!1930 = !DILocalVariable(name: "objects", scope: !1870, file: !3, line: 831, type: !1931)
!1931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1885, size: 384, elements: !609)
!1932 = !DILabel(scope: !1870, name: "exit", file: !3, line: 879)
!1933 = !DILocation(line: 824, column: 63, scope: !1870)
!1934 = !DILocation(line: 825, column: 27, scope: !1870)
!1935 = !DILocation(line: 827, column: 2, scope: !1870)
!1936 = !DILocation(line: 827, column: 14, scope: !1870)
!1937 = !DILocation(line: 828, column: 2, scope: !1870)
!1938 = !DILocation(line: 828, column: 30, scope: !1870)
!1939 = !DILocation(line: 829, column: 2, scope: !1870)
!1940 = !DILocation(line: 829, column: 14, scope: !1870)
!1941 = !DILocation(line: 830, column: 2, scope: !1870)
!1942 = !DILocation(line: 830, column: 26, scope: !1870)
!1943 = !DILocation(line: 831, column: 2, scope: !1870)
!1944 = !DILocation(line: 831, column: 20, scope: !1870)
!1945 = !DILocation(line: 835, column: 7, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 835, column: 6)
!1947 = !DILocation(line: 835, column: 6, scope: !1870)
!1948 = !DILocation(line: 836, column: 3, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 835, column: 20)
!1950 = !DILocation(line: 841, column: 8, scope: !1870)
!1951 = !DILocation(line: 845, column: 27, scope: !1870)
!1952 = !DILocation(line: 845, column: 11, scope: !1870)
!1953 = !DILocation(line: 845, column: 9, scope: !1870)
!1954 = !DILocation(line: 846, column: 6, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 846, column: 6)
!1956 = !DILocation(line: 846, column: 6, scope: !1870)
!1957 = !DILocation(line: 847, column: 3, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 846, column: 28)
!1959 = !DILocation(line: 857, column: 36, scope: !1870)
!1960 = !DILocation(line: 857, column: 14, scope: !1870)
!1961 = !DILocation(line: 857, column: 12, scope: !1870)
!1962 = !DILocation(line: 858, column: 2, scope: !1870)
!1963 = !DILocation(line: 858, column: 9, scope: !1870)
!1964 = !DILocation(line: 859, column: 8, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 859, column: 7)
!1966 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 858, column: 20)
!1967 = !DILocation(line: 859, column: 19, scope: !1965)
!1968 = !DILocation(line: 859, column: 24, scope: !1965)
!1969 = !DILocation(line: 859, column: 45, scope: !1965)
!1970 = !DILocation(line: 860, column: 8, scope: !1965)
!1971 = !DILocation(line: 860, column: 19, scope: !1965)
!1972 = !DILocation(line: 860, column: 7, scope: !1965)
!1973 = !DILocation(line: 860, column: 27, scope: !1965)
!1974 = !DILocation(line: 861, column: 8, scope: !1965)
!1975 = !DILocation(line: 861, column: 19, scope: !1965)
!1976 = !DILocation(line: 861, column: 34, scope: !1965)
!1977 = !DILocation(line: 861, column: 46, scope: !1965)
!1978 = !DILocation(line: 861, column: 43, scope: !1965)
!1979 = !DILocation(line: 859, column: 7, scope: !1966)
!1980 = !DILocation(line: 862, column: 4, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 861, column: 57)
!1982 = !DILocation(line: 865, column: 37, scope: !1966)
!1983 = !DILocation(line: 865, column: 50, scope: !1966)
!1984 = !DILocation(line: 865, column: 15, scope: !1966)
!1985 = !DILocation(line: 865, column: 13, scope: !1966)
!1986 = distinct !{!1986, !1962, !1987, !160, !161}
!1987 = !DILocation(line: 866, column: 2, scope: !1870)
!1988 = !DILocation(line: 870, column: 7, scope: !1870)
!1989 = !DILocation(line: 870, column: 13, scope: !1870)
!1990 = !DILocation(line: 871, column: 17, scope: !1870)
!1991 = !DILocation(line: 871, column: 7, scope: !1870)
!1992 = !DILocation(line: 871, column: 15, scope: !1870)
!1993 = !DILocation(line: 872, column: 2, scope: !1870)
!1994 = !DILocation(line: 872, column: 18, scope: !1870)
!1995 = !DILocation(line: 873, column: 29, scope: !1870)
!1996 = !DILocation(line: 873, column: 2, scope: !1870)
!1997 = !DILocation(line: 873, column: 21, scope: !1870)
!1998 = !DILocation(line: 873, column: 27, scope: !1870)
!1999 = !DILocation(line: 874, column: 2, scope: !1870)
!2000 = !DILocation(line: 874, column: 18, scope: !1870)
!2001 = !DILocation(line: 875, column: 2, scope: !1870)
!2002 = !DILocation(line: 875, column: 21, scope: !1870)
!2003 = !DILocation(line: 875, column: 27, scope: !1870)
!2004 = !DILocation(line: 877, column: 29, scope: !1870)
!2005 = !DILocation(line: 877, column: 8, scope: !1870)
!2006 = !DILocation(line: 877, column: 2, scope: !1870)
!2007 = !DILocation(line: 879, column: 1, scope: !1870)
!2008 = !DILocation(line: 882, column: 8, scope: !1870)
!2009 = !DILocation(line: 883, column: 2, scope: !1870)
!2010 = !DILocation(line: 884, column: 1, scope: !1870)
!2011 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !2012, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2018)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!26, !2014, !45}
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 61, baseType: !2015)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !2016, line: 72, baseType: !2017)
!2016 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !2016, line: 16, baseType: !40)
!2018 = !{!2019, !2020}
!2019 = !DILocalVariable(name: "size", arg: 1, scope: !2011, file: !12, line: 719, type: !2014)
!2020 = !DILocalVariable(name: "flags", arg: 2, scope: !2011, file: !12, line: 719, type: !45)
!2021 = !DILocation(line: 719, column: 52, scope: !2011)
!2022 = !DILocation(line: 719, column: 64, scope: !2011)
!2023 = !DILocation(line: 721, column: 17, scope: !2011)
!2024 = !DILocation(line: 721, column: 23, scope: !2011)
!2025 = !DILocation(line: 721, column: 29, scope: !2011)
!2026 = !DILocation(line: 721, column: 9, scope: !2011)
!2027 = !DILocation(line: 721, column: 2, scope: !2011)
!2028 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2029, file: !2029, line: 65, type: !2030, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2029 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!40}
!2032 = !DILocation(line: 67, column: 9, scope: !2028)
!2033 = !DILocation(line: 67, column: 2, scope: !2028)
!2034 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !2029, file: !2029, line: 120, type: !2035, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2038)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!2037, !40}
!2037 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!2038 = !{!2039}
!2039 = !DILocalVariable(name: "flags", arg: 1, scope: !2034, file: !2029, line: 120, type: !40)
!2040 = !DILocation(line: 120, column: 67, scope: !2034)
!2041 = !DILocation(line: 122, column: 11, scope: !2034)
!2042 = !DILocation(line: 122, column: 17, scope: !2034)
!2043 = !DILocation(line: 122, column: 9, scope: !2034)
!2044 = !DILocation(line: 122, column: 2, scope: !2034)
!2045 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !2012, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2046)
!2046 = !{!2047, !2048, !2049}
!2047 = !DILocalVariable(name: "size", arg: 1, scope: !2045, file: !12, line: 591, type: !2014)
!2048 = !DILocalVariable(name: "flags", arg: 2, scope: !2045, file: !12, line: 591, type: !45)
!2049 = !DILocalVariable(name: "index", scope: !2050, file: !12, line: 594, type: !7)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !12, line: 593, column: 42)
!2051 = distinct !DILexicalBlock(scope: !2045, file: !12, line: 593, column: 6)
!2052 = !DILocation(line: 591, column: 61, scope: !2045)
!2053 = !DILocation(line: 591, column: 73, scope: !2045)
!2054 = !DILocation(line: 593, column: 27, scope: !2051)
!2055 = !DILocation(line: 593, column: 6, scope: !2051)
!2056 = !DILocation(line: 593, column: 33, scope: !2051)
!2057 = !DILocation(line: 593, column: 36, scope: !2051)
!2058 = !DILocation(line: 593, column: 6, scope: !2045)
!2059 = !DILocation(line: 594, column: 3, scope: !2050)
!2060 = !DILocation(line: 594, column: 16, scope: !2050)
!2061 = !DILocation(line: 596, column: 7, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2050, file: !12, line: 596, column: 7)
!2063 = !DILocation(line: 596, column: 12, scope: !2062)
!2064 = !DILocation(line: 596, column: 7, scope: !2050)
!2065 = !DILocation(line: 597, column: 25, scope: !2062)
!2066 = !DILocation(line: 597, column: 31, scope: !2062)
!2067 = !DILocation(line: 597, column: 11, scope: !2062)
!2068 = !DILocation(line: 597, column: 4, scope: !2062)
!2069 = !DILocation(line: 599, column: 11, scope: !2050)
!2070 = !DILocation(line: 599, column: 9, scope: !2050)
!2071 = !DILocation(line: 601, column: 33, scope: !2050)
!2072 = !DILocation(line: 601, column: 40, scope: !2050)
!2073 = !DILocation(line: 601, column: 20, scope: !2050)
!2074 = !DILocation(line: 601, column: 5, scope: !2050)
!2075 = !DILocation(line: 601, column: 51, scope: !2050)
!2076 = !DILocation(line: 602, column: 5, scope: !2050)
!2077 = !DILocation(line: 602, column: 12, scope: !2050)
!2078 = !DILocation(line: 600, column: 10, scope: !2050)
!2079 = !DILocation(line: 600, column: 3, scope: !2050)
!2080 = !DILocation(line: 603, column: 2, scope: !2051)
!2081 = !DILocation(line: 604, column: 19, scope: !2045)
!2082 = !DILocation(line: 604, column: 25, scope: !2045)
!2083 = !DILocation(line: 604, column: 9, scope: !2045)
!2084 = !DILocation(line: 604, column: 2, scope: !2045)
!2085 = !DILocation(line: 605, column: 1, scope: !2045)
!2086 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !2012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2087 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !2088, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2092)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!7, !2014, !2090}
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !39, line: 35, baseType: !2091)
!2091 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!2092 = !{!2093, !2094}
!2093 = !DILocalVariable(name: "size", arg: 1, scope: !2087, file: !12, line: 444, type: !2014)
!2094 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2087, file: !12, line: 445, type: !2090)
!2095 = !DILocation(line: 444, column: 60, scope: !2087)
!2096 = !DILocation(line: 445, column: 16, scope: !2087)
!2097 = !DILocation(line: 447, column: 7, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 447, column: 6)
!2099 = !DILocation(line: 447, column: 6, scope: !2087)
!2100 = !DILocation(line: 448, column: 3, scope: !2098)
!2101 = !DILocation(line: 450, column: 6, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 450, column: 6)
!2103 = !DILocation(line: 450, column: 11, scope: !2102)
!2104 = !DILocation(line: 450, column: 6, scope: !2087)
!2105 = !DILocation(line: 451, column: 3, scope: !2102)
!2106 = !DILocation(line: 453, column: 32, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 453, column: 6)
!2108 = !DILocation(line: 453, column: 37, scope: !2107)
!2109 = !DILocation(line: 453, column: 42, scope: !2107)
!2110 = !DILocation(line: 453, column: 45, scope: !2107)
!2111 = !DILocation(line: 453, column: 50, scope: !2107)
!2112 = !DILocation(line: 453, column: 6, scope: !2087)
!2113 = !DILocation(line: 454, column: 3, scope: !2107)
!2114 = !DILocation(line: 455, column: 32, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 455, column: 6)
!2116 = !DILocation(line: 455, column: 37, scope: !2115)
!2117 = !DILocation(line: 455, column: 43, scope: !2115)
!2118 = !DILocation(line: 455, column: 46, scope: !2115)
!2119 = !DILocation(line: 455, column: 51, scope: !2115)
!2120 = !DILocation(line: 455, column: 6, scope: !2087)
!2121 = !DILocation(line: 456, column: 3, scope: !2115)
!2122 = !DILocation(line: 457, column: 6, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 457, column: 6)
!2124 = !DILocation(line: 457, column: 11, scope: !2123)
!2125 = !DILocation(line: 457, column: 6, scope: !2087)
!2126 = !DILocation(line: 457, column: 26, scope: !2123)
!2127 = !DILocation(line: 458, column: 6, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 458, column: 6)
!2129 = !DILocation(line: 458, column: 11, scope: !2128)
!2130 = !DILocation(line: 458, column: 6, scope: !2087)
!2131 = !DILocation(line: 458, column: 26, scope: !2128)
!2132 = !DILocation(line: 459, column: 6, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 459, column: 6)
!2134 = !DILocation(line: 459, column: 11, scope: !2133)
!2135 = !DILocation(line: 459, column: 6, scope: !2087)
!2136 = !DILocation(line: 459, column: 26, scope: !2133)
!2137 = !DILocation(line: 460, column: 6, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 460, column: 6)
!2139 = !DILocation(line: 460, column: 11, scope: !2138)
!2140 = !DILocation(line: 460, column: 6, scope: !2087)
!2141 = !DILocation(line: 460, column: 26, scope: !2138)
!2142 = !DILocation(line: 461, column: 6, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 461, column: 6)
!2144 = !DILocation(line: 461, column: 11, scope: !2143)
!2145 = !DILocation(line: 461, column: 6, scope: !2087)
!2146 = !DILocation(line: 461, column: 26, scope: !2143)
!2147 = !DILocation(line: 462, column: 6, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 462, column: 6)
!2149 = !DILocation(line: 462, column: 11, scope: !2148)
!2150 = !DILocation(line: 462, column: 6, scope: !2087)
!2151 = !DILocation(line: 462, column: 26, scope: !2148)
!2152 = !DILocation(line: 463, column: 6, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 463, column: 6)
!2154 = !DILocation(line: 463, column: 11, scope: !2153)
!2155 = !DILocation(line: 463, column: 6, scope: !2087)
!2156 = !DILocation(line: 463, column: 26, scope: !2153)
!2157 = !DILocation(line: 464, column: 6, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 464, column: 6)
!2159 = !DILocation(line: 464, column: 11, scope: !2158)
!2160 = !DILocation(line: 464, column: 6, scope: !2087)
!2161 = !DILocation(line: 464, column: 26, scope: !2158)
!2162 = !DILocation(line: 465, column: 6, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 465, column: 6)
!2164 = !DILocation(line: 465, column: 11, scope: !2163)
!2165 = !DILocation(line: 465, column: 6, scope: !2087)
!2166 = !DILocation(line: 465, column: 26, scope: !2163)
!2167 = !DILocation(line: 466, column: 6, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 466, column: 6)
!2169 = !DILocation(line: 466, column: 11, scope: !2168)
!2170 = !DILocation(line: 466, column: 6, scope: !2087)
!2171 = !DILocation(line: 466, column: 26, scope: !2168)
!2172 = !DILocation(line: 467, column: 6, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 467, column: 6)
!2174 = !DILocation(line: 467, column: 11, scope: !2173)
!2175 = !DILocation(line: 467, column: 6, scope: !2087)
!2176 = !DILocation(line: 467, column: 26, scope: !2173)
!2177 = !DILocation(line: 468, column: 6, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 468, column: 6)
!2179 = !DILocation(line: 468, column: 11, scope: !2178)
!2180 = !DILocation(line: 468, column: 6, scope: !2087)
!2181 = !DILocation(line: 468, column: 26, scope: !2178)
!2182 = !DILocation(line: 469, column: 6, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 469, column: 6)
!2184 = !DILocation(line: 469, column: 11, scope: !2183)
!2185 = !DILocation(line: 469, column: 6, scope: !2087)
!2186 = !DILocation(line: 469, column: 26, scope: !2183)
!2187 = !DILocation(line: 470, column: 6, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 470, column: 6)
!2189 = !DILocation(line: 470, column: 11, scope: !2188)
!2190 = !DILocation(line: 470, column: 6, scope: !2087)
!2191 = !DILocation(line: 470, column: 26, scope: !2188)
!2192 = !DILocation(line: 471, column: 6, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 471, column: 6)
!2194 = !DILocation(line: 471, column: 11, scope: !2193)
!2195 = !DILocation(line: 471, column: 6, scope: !2087)
!2196 = !DILocation(line: 471, column: 26, scope: !2193)
!2197 = !DILocation(line: 472, column: 6, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 472, column: 6)
!2199 = !DILocation(line: 472, column: 11, scope: !2198)
!2200 = !DILocation(line: 472, column: 6, scope: !2087)
!2201 = !DILocation(line: 472, column: 26, scope: !2198)
!2202 = !DILocation(line: 473, column: 6, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 473, column: 6)
!2204 = !DILocation(line: 473, column: 11, scope: !2203)
!2205 = !DILocation(line: 473, column: 6, scope: !2087)
!2206 = !DILocation(line: 473, column: 26, scope: !2203)
!2207 = !DILocation(line: 474, column: 6, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 474, column: 6)
!2209 = !DILocation(line: 474, column: 11, scope: !2208)
!2210 = !DILocation(line: 474, column: 6, scope: !2087)
!2211 = !DILocation(line: 474, column: 27, scope: !2208)
!2212 = !DILocation(line: 475, column: 6, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 475, column: 6)
!2214 = !DILocation(line: 475, column: 11, scope: !2213)
!2215 = !DILocation(line: 475, column: 6, scope: !2087)
!2216 = !DILocation(line: 475, column: 32, scope: !2213)
!2217 = !DILocation(line: 477, column: 50, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2087, file: !12, line: 477, column: 6)
!2219 = !{i8 0, i8 2}
!2220 = !{}
!2221 = !DILocation(line: 477, column: 6, scope: !2087)
!2222 = !DILocation(line: 478, column: 3, scope: !2218)
!2223 = !DILocation(line: 478, column: 3, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !12, line: 478, column: 3)
!2225 = distinct !DILexicalBlock(scope: !2218, file: !12, line: 478, column: 3)
!2226 = !{i32 -2143023912}
!2227 = !DILocation(line: 478, column: 3, scope: !2225)
!2228 = !DILocation(line: 480, column: 3, scope: !2218)
!2229 = !DILocation(line: 480, column: 3, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2218, file: !12, line: 480, column: 3)
!2231 = !DILocation(line: 480, column: 3, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2230, file: !12, line: 480, column: 3)
!2233 = !DILocation(line: 480, column: 3, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2230, file: !12, line: 480, column: 3)
!2235 = !{i64 2151943587, i64 2151943616, i64 2151943662, i64 2151943720, i64 2151943774, i64 2151943828, i64 2151943883, i64 2151943914}
!2236 = !DILocation(line: 483, column: 2, scope: !2087)
!2237 = !DILocation(line: 484, column: 1, scope: !2087)
!2238 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !2239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!26, !2241, !45, !2014}
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2243, line: 11, flags: DIFlagFwdDecl)
!2243 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2244 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !2245, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2247)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!11, !45, !40}
!2247 = !{!2248, !2249}
!2248 = !DILocalVariable(name: "flags", arg: 1, scope: !2244, file: !12, line: 401, type: !45)
!2249 = !DILocalVariable(name: "caller", arg: 2, scope: !2244, file: !12, line: 401, type: !40)
!2250 = !DILocation(line: 401, column: 67, scope: !2244)
!2251 = !DILocation(line: 401, column: 88, scope: !2244)
!2252 = !DILocation(line: 407, column: 6, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2244, file: !12, line: 407, column: 6)
!2254 = !DILocation(line: 407, column: 6, scope: !2244)
!2255 = !DILocation(line: 413, column: 3, scope: !2253)
!2256 = !DILocation(line: 423, column: 38, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2244, file: !12, line: 423, column: 6)
!2258 = !DILocation(line: 423, column: 44, scope: !2257)
!2259 = !DILocation(line: 423, column: 6, scope: !2244)
!2260 = !DILocation(line: 424, column: 3, scope: !2257)
!2261 = !DILocation(line: 426, column: 3, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2244, file: !12, line: 425, column: 6)
!2263 = !DILocation(line: 429, column: 1, scope: !2244)
!2264 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !2012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2265 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !1300, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2266 = distinct !DISubprogram(name: "native_save_fl", scope: !2029, file: !2029, line: 17, type: !2030, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2267)
!2267 = !{!2268}
!2268 = !DILocalVariable(name: "flags", scope: !2266, file: !2029, line: 19, type: !40)
!2269 = !DILocation(line: 19, column: 2, scope: !2266)
!2270 = !DILocation(line: 19, column: 16, scope: !2266)
!2271 = !DILocation(line: 26, column: 2, scope: !2266)
!2272 = !{i64 1533506, i64 1533527}
!2273 = !DILocation(line: 32, column: 9, scope: !2266)
!2274 = !DILocation(line: 33, column: 1, scope: !2266)
!2275 = !DILocation(line: 32, column: 2, scope: !2266)
!2276 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !2277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{null, !2279}
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2281 = !DISubprogram(name: "acpi_ns_validate_handle", scope: !1284, file: !1284, line: 398, type: !2282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!174, !506}
!2284 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !1284, file: !1284, line: 298, type: !2285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!178, !174}
!2287 = !DISubprogram(name: "acpi_get_handle", scope: !1288, file: !1288, line: 527, type: !2288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!27, !506, !1291, !2290}
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!2291 = !DISubprogram(name: "acpi_ns_get_next_node", scope: !1284, file: !1284, line: 85, type: !2292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!174, !174, !174}
!2294 = !DISubprogram(name: "acpi_evaluate_object", scope: !1288, file: !1288, line: 549, type: !2295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!27, !506, !2297, !2298, !2299}
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !28, line: 423, baseType: !212)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !28, line: 978, size: 128, elements: !2301)
!2301 = !{!2302, !2303}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2300, file: !28, line: 979, baseType: !41, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2300, file: !28, line: 980, baseType: !26, size: 64, offset: 64)
