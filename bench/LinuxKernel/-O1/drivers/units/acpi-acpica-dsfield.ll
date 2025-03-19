; ModuleID = 'drivers/acpi/acpica/dsfield.c'
source_filename = "drivers/acpi/acpica/dsfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_parse_obj_common = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_parse_obj_named = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8, ptr, ptr, i32, i32 }
%struct.acpi_object_extra = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_object_buffer_field = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, i8, ptr }
%struct.acpi_create_field_info = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8 }
%struct.acpi_object_region = type { ptr, i8, i8, i16, i8, i8, ptr, ptr, ptr, i64, i32, ptr }
%struct.acpi_object_region_field = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, i16, ptr, ptr, i16, ptr }

@_acpi_module_name = internal constant [8 x i8] c"dsfield\00", align 1, !dbg !0
@.str = private unnamed_addr constant [30 x i8] c"Parse execute mode is not set\00", align 1, !dbg !810
@.str.1 = private unnamed_addr constant [31 x i8] c"Parse deferred mode is not set\00", align 1, !dbg !815
@.str.2 = private unnamed_addr constant [49 x i8] c"Bit offset within field too large (> 0xFFFFFFFF)\00", align 1, !dbg !820
@.str.3 = private unnamed_addr constant [50 x i8] c"Field [%4.4s] bit offset too large (> 0xFFFFFFFF)\00", align 1, !dbg !825
@.str.4 = private unnamed_addr constant [35 x i8] c"Invalid opcode in field list: 0x%X\00", align 1, !dbg !830
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !835

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_create_buffer_field(ptr noundef %op, ptr noundef %walk_state) #0 align 16 !dbg !851 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %arg = alloca ptr, align 8
  %node = alloca ptr, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca ptr, align 8
  %second_desc = alloca ptr, align 8
  %flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !855, metadata !DIExpression()), !dbg !864
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !856, metadata !DIExpression()), !dbg !865
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #14, !dbg !866
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !857, metadata !DIExpression()), !dbg !867
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !868
  call void @llvm.dbg.declare(metadata ptr %node, metadata !858, metadata !DIExpression()), !dbg !869
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !870
  call void @llvm.dbg.declare(metadata ptr %status, metadata !859, metadata !DIExpression()), !dbg !871
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #14, !dbg !872
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !860, metadata !DIExpression()), !dbg !873
  call void @llvm.lifetime.start.p0(i64 8, ptr %second_desc) #14, !dbg !874
  call void @llvm.dbg.declare(metadata ptr %second_desc, metadata !861, metadata !DIExpression()), !dbg !875
  store ptr null, ptr %second_desc, align 8, !dbg !875
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #14, !dbg !876
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !862, metadata !DIExpression()), !dbg !877
  %0 = load ptr, ptr %op.addr, align 8, !dbg !878
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %0, i32 0, i32 3, !dbg !880
  %1 = load i16, ptr %aml_opcode, align 2, !dbg !880
  %conv = zext i16 %1 to i32, !dbg !878
  %cmp = icmp eq i32 %conv, 23315, !dbg !881
  br i1 %cmp, label %if.then, label %if.else, !dbg !882

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %op.addr, align 8, !dbg !883
  %call = call ptr @acpi_ps_get_arg(ptr noundef %2, i32 noundef 3) #15, !dbg !885
  store ptr %call, ptr %arg, align 8, !dbg !886
  br label %if.end, !dbg !887

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %op.addr, align 8, !dbg !888
  %call2 = call ptr @acpi_ps_get_arg(ptr noundef %3, i32 noundef 2) #15, !dbg !890
  store ptr %call2, ptr %arg, align 8, !dbg !891
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load ptr, ptr %arg, align 8, !dbg !892
  %tobool = icmp ne ptr %4, null, !dbg !892
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !894

if.then3:                                         ; preds = %if.end
  store i32 12290, ptr %retval, align 4, !dbg !895
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !895

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !897
  %deferred_node = getelementptr inbounds %struct.acpi_walk_state, ptr %5, i32 0, i32 33, !dbg !899
  %6 = load ptr, ptr %deferred_node, align 8, !dbg !899
  %tobool5 = icmp ne ptr %6, null, !dbg !897
  br i1 %tobool5, label %if.then6, label %if.else8, !dbg !900

if.then6:                                         ; preds = %if.end4
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !901
  %deferred_node7 = getelementptr inbounds %struct.acpi_walk_state, ptr %7, i32 0, i32 33, !dbg !903
  %8 = load ptr, ptr %deferred_node7, align 8, !dbg !903
  store ptr %8, ptr %node, align 8, !dbg !904
  br label %if.end33, !dbg !905

if.else8:                                         ; preds = %if.end4
  %9 = load ptr, ptr %walk_state.addr, align 8, !dbg !906
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, ptr %9, i32 0, i32 20, !dbg !909
  %10 = load i32, ptr %parse_flags, align 4, !dbg !909
  %and = and i32 %10, 48, !dbg !910
  %tobool9 = icmp ne i32 %and, 0, !dbg !910
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !911

if.then10:                                        ; preds = %if.else8
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 156, ptr noundef @.str) #15, !dbg !912
  store i32 12303, ptr %retval, align 4, !dbg !914
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !914

if.end11:                                         ; preds = %if.else8
  store i32 10, ptr %flags, align 4, !dbg !915
  %11 = load ptr, ptr %walk_state.addr, align 8, !dbg !916
  %method_node = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 38, !dbg !918
  %12 = load ptr, ptr %method_node, align 8, !dbg !918
  %tobool12 = icmp ne ptr %12, null, !dbg !916
  br i1 %tobool12, label %land.lhs.true, label %if.end17, !dbg !919

land.lhs.true:                                    ; preds = %if.end11
  %13 = load ptr, ptr %walk_state.addr, align 8, !dbg !920
  %parse_flags13 = getelementptr inbounds %struct.acpi_walk_state, ptr %13, i32 0, i32 20, !dbg !921
  %14 = load i32, ptr %parse_flags13, align 4, !dbg !921
  %and14 = and i32 %14, 1024, !dbg !922
  %tobool15 = icmp ne i32 %and14, 0, !dbg !922
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !923

if.then16:                                        ; preds = %land.lhs.true
  %15 = load i32, ptr %flags, align 4, !dbg !924
  %or = or i32 %15, 64, !dbg !924
  store i32 %or, ptr %flags, align 4, !dbg !924
  br label %if.end17, !dbg !926

if.end17:                                         ; preds = %if.then16, %land.lhs.true, %if.end11
  %16 = load ptr, ptr %walk_state.addr, align 8, !dbg !927
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, ptr %16, i32 0, i32 46, !dbg !928
  %17 = load ptr, ptr %scope_info, align 8, !dbg !928
  %18 = load ptr, ptr %arg, align 8, !dbg !929
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %18, i32 0, i32 7, !dbg !930
  %19 = load ptr, ptr %value, align 8, !dbg !931
  %20 = load i32, ptr %flags, align 4, !dbg !932
  %21 = load ptr, ptr %walk_state.addr, align 8, !dbg !933
  %call18 = call i32 @acpi_ns_lookup(ptr noundef %17, ptr noundef %19, i32 noundef 0, i32 noundef 1, i32 noundef %20, ptr noundef %21, ptr noundef %node) #15, !dbg !934
  store i32 %call18, ptr %status, align 4, !dbg !935
  %22 = load ptr, ptr %walk_state.addr, align 8, !dbg !936
  %parse_flags19 = getelementptr inbounds %struct.acpi_walk_state, ptr %22, i32 0, i32 20, !dbg !938
  %23 = load i32, ptr %parse_flags19, align 4, !dbg !938
  %and20 = and i32 %23, 512, !dbg !939
  %tobool21 = icmp ne i32 %and20, 0, !dbg !939
  br i1 %tobool21, label %land.lhs.true22, label %if.else26, !dbg !940

land.lhs.true22:                                  ; preds = %if.end17
  %24 = load i32, ptr %status, align 4, !dbg !941
  %cmp23 = icmp eq i32 %24, 7, !dbg !942
  br i1 %cmp23, label %if.then25, label %if.else26, !dbg !943

if.then25:                                        ; preds = %land.lhs.true22
  store i32 0, ptr %status, align 4, !dbg !944
  br label %if.end32, !dbg !946

if.else26:                                        ; preds = %land.lhs.true22, %if.end17
  %25 = load i32, ptr %status, align 4, !dbg !947
  %tobool27 = icmp ne i32 %25, 0, !dbg !947
  br i1 %tobool27, label %if.then28, label %if.end31, !dbg !949

if.then28:                                        ; preds = %if.else26
  %26 = load ptr, ptr %walk_state.addr, align 8, !dbg !950
  %scope_info29 = getelementptr inbounds %struct.acpi_walk_state, ptr %26, i32 0, i32 46, !dbg !950
  %27 = load ptr, ptr %scope_info29, align 8, !dbg !950
  %28 = load ptr, ptr %arg, align 8, !dbg !950
  %value30 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %28, i32 0, i32 7, !dbg !950
  %29 = load ptr, ptr %value30, align 8, !dbg !950
  %30 = load i32, ptr %status, align 4, !dbg !950
  call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 185, ptr noundef %27, ptr noundef %29, i32 noundef %30) #15, !dbg !950
  %31 = load i32, ptr %status, align 4, !dbg !952
  store i32 %31, ptr %retval, align 4, !dbg !952
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !952

if.end31:                                         ; preds = %if.else26
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then25
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then6
  %32 = load ptr, ptr %node, align 8, !dbg !953
  %33 = load ptr, ptr %op.addr, align 8, !dbg !954
  %node34 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %33, i32 0, i32 6, !dbg !955
  store ptr %32, ptr %node34, align 8, !dbg !956
  %34 = load ptr, ptr %node, align 8, !dbg !957
  %call35 = call ptr @acpi_ns_get_attached_object(ptr noundef %34) #15, !dbg !958
  store ptr %call35, ptr %obj_desc, align 8, !dbg !959
  %35 = load ptr, ptr %obj_desc, align 8, !dbg !960
  %tobool36 = icmp ne ptr %35, null, !dbg !960
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !962

if.then37:                                        ; preds = %if.end33
  store i32 0, ptr %retval, align 4, !dbg !963
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !963

if.end38:                                         ; preds = %if.end33
  %call39 = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 214, i32 noundef 64, i32 noundef 14) #15, !dbg !965
  store ptr %call39, ptr %obj_desc, align 8, !dbg !966
  %36 = load ptr, ptr %obj_desc, align 8, !dbg !967
  %tobool40 = icmp ne ptr %36, null, !dbg !967
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !969

if.then41:                                        ; preds = %if.end38
  store i32 4, ptr %status, align 4, !dbg !970
  br label %cleanup, !dbg !972

if.end42:                                         ; preds = %if.end38
  %37 = load ptr, ptr %obj_desc, align 8, !dbg !973
  %next_object = getelementptr inbounds %struct.acpi_object_common, ptr %37, i32 0, i32 0, !dbg !974
  %38 = load ptr, ptr %next_object, align 8, !dbg !974
  store ptr %38, ptr %second_desc, align 8, !dbg !975
  %39 = load ptr, ptr %op.addr, align 8, !dbg !976
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %39, i32 0, i32 10, !dbg !977
  %40 = load ptr, ptr %data, align 8, !dbg !977
  %41 = load ptr, ptr %second_desc, align 8, !dbg !978
  %aml_start = getelementptr inbounds %struct.acpi_object_extra, ptr %41, i32 0, i32 8, !dbg !979
  store ptr %40, ptr %aml_start, align 8, !dbg !980
  %42 = load ptr, ptr %op.addr, align 8, !dbg !981
  %length = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %42, i32 0, i32 11, !dbg !982
  %43 = load i32, ptr %length, align 8, !dbg !982
  %44 = load ptr, ptr %second_desc, align 8, !dbg !983
  %aml_length = getelementptr inbounds %struct.acpi_object_extra, ptr %44, i32 0, i32 9, !dbg !984
  store i32 %43, ptr %aml_length, align 8, !dbg !985
  %45 = load ptr, ptr %node, align 8, !dbg !986
  %46 = load ptr, ptr %obj_desc, align 8, !dbg !987
  %node43 = getelementptr inbounds %struct.acpi_object_buffer_field, ptr %46, i32 0, i32 8, !dbg !988
  store ptr %45, ptr %node43, align 8, !dbg !989
  %47 = load ptr, ptr %node, align 8, !dbg !990
  %48 = load ptr, ptr %obj_desc, align 8, !dbg !991
  %call44 = call i32 @acpi_ns_attach_object(ptr noundef %47, ptr noundef %48, i32 noundef 14) #15, !dbg !992
  store i32 %call44, ptr %status, align 4, !dbg !993
  %49 = load i32, ptr %status, align 4, !dbg !994
  %tobool45 = icmp ne i32 %49, 0, !dbg !994
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !996

if.then46:                                        ; preds = %if.end42
  br label %cleanup, !dbg !997

if.end47:                                         ; preds = %if.end42
  br label %cleanup, !dbg !994

cleanup:                                          ; preds = %if.end47, %if.then46, %if.then41
  call void @llvm.dbg.label(metadata !863), !dbg !999
  %50 = load ptr, ptr %obj_desc, align 8, !dbg !1000
  call void @acpi_ut_remove_reference(ptr noundef %50) #15, !dbg !1001
  %51 = load i32, ptr %status, align 4, !dbg !1002
  store i32 %51, ptr %retval, align 4, !dbg !1002
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !1002

cleanup48:                                        ; preds = %cleanup, %if.then37, %if.then28, %if.then10, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #14, !dbg !1003
  call void @llvm.lifetime.end.p0(i64 8, ptr %second_desc) #14, !dbg !1003
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #14, !dbg !1003
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !1003
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !1003
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #14, !dbg !1003
  %52 = load i32, ptr %retval, align 4, !dbg !1003
  ret i32 %52, !dbg !1003
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1004 dso_local ptr @acpi_ps_get_arg(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1008 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1013 dso_local i32 @acpi_ns_lookup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1020 dso_local void @acpi_ut_prefixed_namespace_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1024 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1027 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1030 dso_local i32 @acpi_ns_attach_object(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1033 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_create_field(ptr noundef %op, ptr noundef %region_node, ptr noundef %walk_state) #0 align 16 !dbg !1036 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca ptr, align 8
  %region_node.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %arg = alloca ptr, align 8
  %info = alloca %struct.acpi_create_field_info, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1040, metadata !DIExpression()), !dbg !1063
  store ptr %region_node, ptr %region_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_node.addr, metadata !1041, metadata !DIExpression()), !dbg !1064
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1042, metadata !DIExpression()), !dbg !1065
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !1066
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1043, metadata !DIExpression()), !dbg !1067
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #14, !dbg !1068
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !1044, metadata !DIExpression()), !dbg !1069
  call void @llvm.lifetime.start.p0(i64 72, ptr %info) #14, !dbg !1070
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1045, metadata !DIExpression()), !dbg !1071
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1072
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %0, i32 0, i32 7, !dbg !1073
  %1 = load ptr, ptr %value, align 8, !dbg !1074
  store ptr %1, ptr %arg, align 8, !dbg !1075
  %2 = load ptr, ptr %region_node.addr, align 8, !dbg !1076
  %tobool = icmp ne ptr %2, null, !dbg !1076
  br i1 %tobool, label %if.end6, label %if.then, !dbg !1078

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !1079
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 46, !dbg !1081
  %4 = load ptr, ptr %scope_info, align 8, !dbg !1081
  %5 = load ptr, ptr %arg, align 8, !dbg !1082
  %value1 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %5, i32 0, i32 7, !dbg !1083
  %6 = load ptr, ptr %value1, align 8, !dbg !1084
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !1085
  %call = call i32 @acpi_ns_lookup(ptr noundef %4, ptr noundef %6, i32 noundef 10, i32 noundef 3, i32 noundef 1, ptr noundef %7, ptr noundef %region_node.addr) #15, !dbg !1086
  store i32 %call, ptr %status, align 4, !dbg !1087
  %8 = load i32, ptr %status, align 4, !dbg !1088
  %tobool2 = icmp ne i32 %8, 0, !dbg !1088
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !1090

if.then3:                                         ; preds = %if.then
  %9 = load ptr, ptr %walk_state.addr, align 8, !dbg !1091
  %scope_info4 = getelementptr inbounds %struct.acpi_walk_state, ptr %9, i32 0, i32 46, !dbg !1091
  %10 = load ptr, ptr %scope_info4, align 8, !dbg !1091
  %11 = load ptr, ptr %arg, align 8, !dbg !1091
  %value5 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %11, i32 0, i32 7, !dbg !1091
  %12 = load ptr, ptr %value5, align 8, !dbg !1091
  %13 = load i32, ptr %status, align 4, !dbg !1091
  call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 501, ptr noundef %10, ptr noundef %12, i32 noundef %13) #15, !dbg !1091
  %14 = load i32, ptr %status, align 4, !dbg !1093
  store i32 %14, ptr %retval, align 4, !dbg !1093
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1093

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1094

if.end6:                                          ; preds = %if.end, %entry
  call void @llvm.memset.p0.i64(ptr align 8 %info, i8 0, i64 72, i1 false), !dbg !1095
  %15 = load ptr, ptr %arg, align 8, !dbg !1096
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %15, i32 0, i32 5, !dbg !1097
  %16 = load ptr, ptr %next, align 8, !dbg !1097
  store ptr %16, ptr %arg, align 8, !dbg !1098
  %17 = load ptr, ptr %arg, align 8, !dbg !1099
  %value7 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %17, i32 0, i32 7, !dbg !1100
  %18 = load i64, ptr %value7, align 8, !dbg !1101
  %conv = trunc i64 %18 to i8, !dbg !1102
  %field_flags = getelementptr inbounds %struct.acpi_create_field_info, ptr %info, i32 0, i32 11, !dbg !1103
  store i8 %conv, ptr %field_flags, align 8, !dbg !1104
  %attribute = getelementptr inbounds %struct.acpi_create_field_info, ptr %info, i32 0, i32 12, !dbg !1105
  store i8 0, ptr %attribute, align 1, !dbg !1106
  %field_type = getelementptr inbounds %struct.acpi_create_field_info, ptr %info, i32 0, i32 13, !dbg !1107
  store i8 17, ptr %field_type, align 2, !dbg !1108
  %19 = load ptr, ptr %region_node.addr, align 8, !dbg !1109
  %region_node8 = getelementptr inbounds %struct.acpi_create_field_info, ptr %info, i32 0, i32 0, !dbg !1110
  store ptr %19, ptr %region_node8, align 8, !dbg !1111
  %20 = load ptr, ptr %walk_state.addr, align 8, !dbg !1112
  %21 = load ptr, ptr %arg, align 8, !dbg !1113
  %next9 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %21, i32 0, i32 5, !dbg !1114
  %22 = load ptr, ptr %next9, align 8, !dbg !1114
  %call10 = call i32 @acpi_ds_get_field_names(ptr noundef %info, ptr noundef %20, ptr noundef %22) #15, !dbg !1115
  store i32 %call10, ptr %status, align 4, !dbg !1116
  %23 = load i32, ptr %status, align 4, !dbg !1117
  %tobool11 = icmp ne i32 %23, 0, !dbg !1117
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !1119

if.then12:                                        ; preds = %if.end6
  %24 = load i32, ptr %status, align 4, !dbg !1120
  store i32 %24, ptr %retval, align 4, !dbg !1120
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1120

if.end13:                                         ; preds = %if.end6
  %region_node14 = getelementptr inbounds %struct.acpi_create_field_info, ptr %info, i32 0, i32 0, !dbg !1122
  %25 = load ptr, ptr %region_node14, align 8, !dbg !1122
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %25, i32 0, i32 0, !dbg !1124
  %26 = load ptr, ptr %object, align 8, !dbg !1124
  %space_id = getelementptr inbounds %struct.acpi_object_region, ptr %26, i32 0, i32 5, !dbg !1125
  %27 = load i8, ptr %space_id, align 1, !dbg !1125
  %conv15 = zext i8 %27 to i32, !dbg !1126
  %cmp = icmp eq i32 %conv15, 10, !dbg !1127
  br i1 %cmp, label %if.then17, label %if.end28, !dbg !1128

if.then17:                                        ; preds = %if.end13
  %region_node18 = getelementptr inbounds %struct.acpi_create_field_info, ptr %info, i32 0, i32 0, !dbg !1129
  %28 = load ptr, ptr %region_node18, align 8, !dbg !1129
  %object19 = getelementptr inbounds %struct.acpi_namespace_node, ptr %28, i32 0, i32 0, !dbg !1129
  %29 = load ptr, ptr %object19, align 8, !dbg !1129
  %length = getelementptr inbounds %struct.acpi_object_region, ptr %29, i32 0, i32 10, !dbg !1129
  %30 = load i32, ptr %length, align 8, !dbg !1129
  %conv20 = zext i32 %30 to i64, !dbg !1129
  %call21 = call ptr @acpi_os_allocate_zeroed(i64 noundef %conv20) #15, !dbg !1129
  %31 = load ptr, ptr %region_node.addr, align 8, !dbg !1131
  %object22 = getelementptr inbounds %struct.acpi_namespace_node, ptr %31, i32 0, i32 0, !dbg !1132
  %32 = load ptr, ptr %object22, align 8, !dbg !1132
  %internal_pcc_buffer = getelementptr inbounds %struct.acpi_object_region_field, ptr %32, i32 0, i32 18, !dbg !1133
  store ptr %call21, ptr %internal_pcc_buffer, align 8, !dbg !1134
  %33 = load ptr, ptr %region_node.addr, align 8, !dbg !1135
  %object23 = getelementptr inbounds %struct.acpi_namespace_node, ptr %33, i32 0, i32 0, !dbg !1137
  %34 = load ptr, ptr %object23, align 8, !dbg !1137
  %internal_pcc_buffer24 = getelementptr inbounds %struct.acpi_object_region_field, ptr %34, i32 0, i32 18, !dbg !1138
  %35 = load ptr, ptr %internal_pcc_buffer24, align 8, !dbg !1138
  %tobool25 = icmp ne ptr %35, null, !dbg !1135
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !1139

if.then26:                                        ; preds = %if.then17
  store i32 4, ptr %retval, align 4, !dbg !1140
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1140

if.end27:                                         ; preds = %if.then17
  br label %if.end28, !dbg !1142

if.end28:                                         ; preds = %if.end27, %if.end13
  %36 = load i32, ptr %status, align 4, !dbg !1143
  store i32 %36, ptr %retval, align 4, !dbg !1143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1143

cleanup:                                          ; preds = %if.end28, %if.then26, %if.then12, %if.then3
  call void @llvm.lifetime.end.p0(i64 72, ptr %info) #14, !dbg !1144
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #14, !dbg !1144
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !1144
  %37 = load i32, ptr %retval, align 4, !dbg !1144
  ret i32 %37, !dbg !1144
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ds_get_field_names(ptr noundef %info, ptr noundef %walk_state, ptr noundef %arg) #0 align 16 !dbg !1145 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %position = alloca i64, align 8
  %child = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1150, metadata !DIExpression()), !dbg !1156
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1151, metadata !DIExpression()), !dbg !1157
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !1152, metadata !DIExpression()), !dbg !1158
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !1159
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1153, metadata !DIExpression()), !dbg !1160
  call void @llvm.lifetime.start.p0(i64 8, ptr %position) #14, !dbg !1161
  call void @llvm.dbg.declare(metadata ptr %position, metadata !1154, metadata !DIExpression()), !dbg !1162
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #14, !dbg !1163
  call void @llvm.dbg.declare(metadata ptr %child, metadata !1155, metadata !DIExpression()), !dbg !1164
  %0 = load ptr, ptr %info.addr, align 8, !dbg !1165
  %field_bit_position = getelementptr inbounds %struct.acpi_create_field_info, ptr %0, i32 0, i32 7, !dbg !1166
  store i32 0, ptr %field_bit_position, align 4, !dbg !1167
  br label %while.cond, !dbg !1168

while.cond:                                       ; preds = %sw.epilog, %entry
  %1 = load ptr, ptr %arg.addr, align 8, !dbg !1169
  %tobool = icmp ne ptr %1, null, !dbg !1168
  br i1 %tobool, label %while.body, label %while.end, !dbg !1168

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %arg.addr, align 8, !dbg !1170
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %2, i32 0, i32 3, !dbg !1172
  %3 = load i16, ptr %aml_opcode, align 2, !dbg !1172
  %conv = zext i16 %3 to i32, !dbg !1170
  switch i32 %conv, label %sw.default [
    i32 49, label %sw.bb
    i32 50, label %sw.bb7
    i32 57, label %sw.bb7
    i32 56, label %sw.bb23
    i32 48, label %sw.bb41
  ], !dbg !1173

sw.bb:                                            ; preds = %while.body
  %4 = load ptr, ptr %info.addr, align 8, !dbg !1174
  %field_bit_position1 = getelementptr inbounds %struct.acpi_create_field_info, ptr %4, i32 0, i32 7, !dbg !1176
  %5 = load i32, ptr %field_bit_position1, align 4, !dbg !1176
  %conv2 = zext i32 %5 to i64, !dbg !1177
  %6 = load ptr, ptr %arg.addr, align 8, !dbg !1178
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %6, i32 0, i32 7, !dbg !1179
  %7 = load i32, ptr %value, align 8, !dbg !1180
  %conv3 = zext i32 %7 to i64, !dbg !1181
  %add = add i64 %conv2, %conv3, !dbg !1182
  store i64 %add, ptr %position, align 8, !dbg !1183
  %8 = load i64, ptr %position, align 8, !dbg !1184
  %cmp = icmp ugt i64 %8, 4294967295, !dbg !1186
  br i1 %cmp, label %if.then, label %if.end, !dbg !1187

if.then:                                          ; preds = %sw.bb
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 297, ptr noundef @.str.2) #15, !dbg !1188
  store i32 15, ptr %retval, align 4, !dbg !1190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1190

if.end:                                           ; preds = %sw.bb
  %9 = load i64, ptr %position, align 8, !dbg !1191
  %conv5 = trunc i64 %9 to i32, !dbg !1192
  %10 = load ptr, ptr %info.addr, align 8, !dbg !1193
  %field_bit_position6 = getelementptr inbounds %struct.acpi_create_field_info, ptr %10, i32 0, i32 7, !dbg !1194
  store i32 %conv5, ptr %field_bit_position6, align 4, !dbg !1195
  br label %sw.epilog, !dbg !1196

sw.bb7:                                           ; preds = %while.body, %while.body
  %11 = load ptr, ptr %info.addr, align 8, !dbg !1197
  %field_flags = getelementptr inbounds %struct.acpi_create_field_info, ptr %11, i32 0, i32 11, !dbg !1198
  %12 = load i8, ptr %field_flags, align 8, !dbg !1198
  %conv8 = zext i8 %12 to i32, !dbg !1197
  %and = and i32 %conv8, -16, !dbg !1199
  %13 = load ptr, ptr %arg.addr, align 8, !dbg !1200
  %value9 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %13, i32 0, i32 7, !dbg !1201
  %14 = load i64, ptr %value9, align 8, !dbg !1202
  %and10 = and i64 %14, 7, !dbg !1203
  %conv11 = trunc i64 %and10 to i32, !dbg !1204
  %conv12 = trunc i32 %conv11 to i8, !dbg !1205
  %conv13 = zext i8 %conv12 to i32, !dbg !1206
  %or = or i32 %and, %conv13, !dbg !1207
  %conv14 = trunc i32 %or to i8, !dbg !1208
  %15 = load ptr, ptr %info.addr, align 8, !dbg !1209
  %field_flags15 = getelementptr inbounds %struct.acpi_create_field_info, ptr %15, i32 0, i32 11, !dbg !1210
  store i8 %conv14, ptr %field_flags15, align 8, !dbg !1211
  %16 = load ptr, ptr %arg.addr, align 8, !dbg !1212
  %value16 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %16, i32 0, i32 7, !dbg !1213
  %17 = load i64, ptr %value16, align 8, !dbg !1214
  %shr = lshr i64 %17, 8, !dbg !1215
  %and17 = and i64 %shr, 255, !dbg !1216
  %conv18 = trunc i64 %and17 to i8, !dbg !1217
  %18 = load ptr, ptr %info.addr, align 8, !dbg !1218
  %attribute = getelementptr inbounds %struct.acpi_create_field_info, ptr %18, i32 0, i32 12, !dbg !1219
  store i8 %conv18, ptr %attribute, align 1, !dbg !1220
  %19 = load ptr, ptr %arg.addr, align 8, !dbg !1221
  %value19 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %19, i32 0, i32 7, !dbg !1222
  %20 = load i64, ptr %value19, align 8, !dbg !1223
  %shr20 = lshr i64 %20, 16, !dbg !1224
  %and21 = and i64 %shr20, 255, !dbg !1225
  %conv22 = trunc i64 %and21 to i8, !dbg !1226
  %21 = load ptr, ptr %info.addr, align 8, !dbg !1227
  %access_length = getelementptr inbounds %struct.acpi_create_field_info, ptr %21, i32 0, i32 14, !dbg !1228
  store i8 %conv22, ptr %access_length, align 1, !dbg !1229
  br label %sw.epilog, !dbg !1230

sw.bb23:                                          ; preds = %while.body
  %22 = load ptr, ptr %info.addr, align 8, !dbg !1231
  %resource_buffer = getelementptr inbounds %struct.acpi_create_field_info, ptr %22, i32 0, i32 5, !dbg !1232
  store ptr null, ptr %resource_buffer, align 8, !dbg !1233
  %23 = load ptr, ptr %info.addr, align 8, !dbg !1234
  %connection_node = getelementptr inbounds %struct.acpi_create_field_info, ptr %23, i32 0, i32 4, !dbg !1235
  store ptr null, ptr %connection_node, align 8, !dbg !1236
  %24 = load ptr, ptr %info.addr, align 8, !dbg !1237
  %pin_number_index = getelementptr inbounds %struct.acpi_create_field_info, ptr %24, i32 0, i32 10, !dbg !1238
  store i16 0, ptr %pin_number_index, align 2, !dbg !1239
  %25 = load ptr, ptr %arg.addr, align 8, !dbg !1240
  %value24 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %25, i32 0, i32 7, !dbg !1241
  %26 = load ptr, ptr %value24, align 8, !dbg !1242
  store ptr %26, ptr %child, align 8, !dbg !1243
  %27 = load ptr, ptr %child, align 8, !dbg !1244
  %aml_opcode25 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %27, i32 0, i32 3, !dbg !1246
  %28 = load i16, ptr %aml_opcode25, align 2, !dbg !1246
  %conv26 = zext i16 %28 to i32, !dbg !1244
  %cmp27 = icmp eq i32 %conv26, 51, !dbg !1247
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !1248

if.then29:                                        ; preds = %sw.bb23
  %29 = load ptr, ptr %child, align 8, !dbg !1249
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %29, i32 0, i32 10, !dbg !1251
  %30 = load ptr, ptr %data, align 8, !dbg !1251
  %31 = load ptr, ptr %info.addr, align 8, !dbg !1252
  %resource_buffer30 = getelementptr inbounds %struct.acpi_create_field_info, ptr %31, i32 0, i32 5, !dbg !1253
  store ptr %30, ptr %resource_buffer30, align 8, !dbg !1254
  %32 = load ptr, ptr %child, align 8, !dbg !1255
  %value31 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %32, i32 0, i32 7, !dbg !1256
  %33 = load i64, ptr %value31, align 8, !dbg !1257
  %conv32 = trunc i64 %33 to i16, !dbg !1258
  %34 = load ptr, ptr %info.addr, align 8, !dbg !1259
  %resource_length = getelementptr inbounds %struct.acpi_create_field_info, ptr %34, i32 0, i32 9, !dbg !1260
  store i16 %conv32, ptr %resource_length, align 4, !dbg !1261
  br label %if.end40, !dbg !1262

if.else:                                          ; preds = %sw.bb23
  %35 = load ptr, ptr %walk_state.addr, align 8, !dbg !1263
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, ptr %35, i32 0, i32 46, !dbg !1265
  %36 = load ptr, ptr %scope_info, align 8, !dbg !1265
  %37 = load ptr, ptr %child, align 8, !dbg !1266
  %value33 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %37, i32 0, i32 7, !dbg !1267
  %38 = load ptr, ptr %value33, align 8, !dbg !1268
  %39 = load ptr, ptr %walk_state.addr, align 8, !dbg !1269
  %40 = load ptr, ptr %info.addr, align 8, !dbg !1270
  %connection_node34 = getelementptr inbounds %struct.acpi_create_field_info, ptr %40, i32 0, i32 4, !dbg !1271
  %call = call i32 @acpi_ns_lookup(ptr noundef %36, ptr noundef %38, i32 noundef 0, i32 noundef 3, i32 noundef 2, ptr noundef %39, ptr noundef %connection_node34) #15, !dbg !1272
  store i32 %call, ptr %status, align 4, !dbg !1273
  %41 = load i32, ptr %status, align 4, !dbg !1274
  %tobool35 = icmp ne i32 %41, 0, !dbg !1274
  br i1 %tobool35, label %if.then36, label %if.end39, !dbg !1276

if.then36:                                        ; preds = %if.else
  %42 = load ptr, ptr %walk_state.addr, align 8, !dbg !1277
  %scope_info37 = getelementptr inbounds %struct.acpi_walk_state, ptr %42, i32 0, i32 46, !dbg !1277
  %43 = load ptr, ptr %scope_info37, align 8, !dbg !1277
  %44 = load ptr, ptr %child, align 8, !dbg !1277
  %value38 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %44, i32 0, i32 7, !dbg !1277
  %45 = load ptr, ptr %value38, align 8, !dbg !1277
  %46 = load i32, ptr %status, align 4, !dbg !1277
  call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 369, ptr noundef %43, ptr noundef %45, i32 noundef %46) #15, !dbg !1277
  %47 = load i32, ptr %status, align 4, !dbg !1279
  store i32 %47, ptr %retval, align 4, !dbg !1279
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1279

if.end39:                                         ; preds = %if.else
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then29
  br label %sw.epilog, !dbg !1280

sw.bb41:                                          ; preds = %while.body
  %48 = load ptr, ptr %walk_state.addr, align 8, !dbg !1281
  %scope_info42 = getelementptr inbounds %struct.acpi_walk_state, ptr %48, i32 0, i32 46, !dbg !1282
  %49 = load ptr, ptr %scope_info42, align 8, !dbg !1282
  %50 = load ptr, ptr %arg.addr, align 8, !dbg !1283
  %name = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %50, i32 0, i32 12, !dbg !1284
  %51 = load ptr, ptr %info.addr, align 8, !dbg !1285
  %field_type = getelementptr inbounds %struct.acpi_create_field_info, ptr %51, i32 0, i32 13, !dbg !1286
  %52 = load i8, ptr %field_type, align 2, !dbg !1286
  %conv43 = zext i8 %52 to i32, !dbg !1285
  %53 = load ptr, ptr %walk_state.addr, align 8, !dbg !1287
  %54 = load ptr, ptr %info.addr, align 8, !dbg !1288
  %field_node = getelementptr inbounds %struct.acpi_create_field_info, ptr %54, i32 0, i32 1, !dbg !1289
  %call44 = call i32 @acpi_ns_lookup(ptr noundef %49, ptr noundef %name, i32 noundef %conv43, i32 noundef 3, i32 noundef 2, ptr noundef %53, ptr noundef %field_node) #15, !dbg !1290
  store i32 %call44, ptr %status, align 4, !dbg !1291
  %55 = load i32, ptr %status, align 4, !dbg !1292
  %tobool45 = icmp ne i32 %55, 0, !dbg !1292
  br i1 %tobool45, label %if.then46, label %if.else49, !dbg !1294

if.then46:                                        ; preds = %sw.bb41
  %56 = load ptr, ptr %walk_state.addr, align 8, !dbg !1295
  %scope_info47 = getelementptr inbounds %struct.acpi_walk_state, ptr %56, i32 0, i32 46, !dbg !1295
  %57 = load ptr, ptr %scope_info47, align 8, !dbg !1295
  %58 = load ptr, ptr %arg.addr, align 8, !dbg !1295
  %name48 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %58, i32 0, i32 12, !dbg !1295
  %59 = load i32, ptr %status, align 4, !dbg !1295
  call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 388, ptr noundef %57, ptr noundef %name48, i32 noundef %59) #15, !dbg !1295
  %60 = load i32, ptr %status, align 4, !dbg !1297
  store i32 %60, ptr %retval, align 4, !dbg !1297
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1297

if.else49:                                        ; preds = %sw.bb41
  %61 = load ptr, ptr %info.addr, align 8, !dbg !1298
  %field_node50 = getelementptr inbounds %struct.acpi_create_field_info, ptr %61, i32 0, i32 1, !dbg !1300
  %62 = load ptr, ptr %field_node50, align 8, !dbg !1300
  %63 = load ptr, ptr %arg.addr, align 8, !dbg !1301
  %node = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %63, i32 0, i32 6, !dbg !1302
  store ptr %62, ptr %node, align 8, !dbg !1303
  %64 = load ptr, ptr %arg.addr, align 8, !dbg !1304
  %value51 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %64, i32 0, i32 7, !dbg !1305
  %65 = load i32, ptr %value51, align 8, !dbg !1306
  %66 = load ptr, ptr %info.addr, align 8, !dbg !1307
  %field_bit_length = getelementptr inbounds %struct.acpi_create_field_info, ptr %66, i32 0, i32 8, !dbg !1308
  store i32 %65, ptr %field_bit_length, align 8, !dbg !1309
  %67 = load ptr, ptr %info.addr, align 8, !dbg !1310
  %field_node52 = getelementptr inbounds %struct.acpi_create_field_info, ptr %67, i32 0, i32 1, !dbg !1312
  %68 = load ptr, ptr %field_node52, align 8, !dbg !1312
  %call53 = call ptr @acpi_ns_get_attached_object(ptr noundef %68) #15, !dbg !1313
  %tobool54 = icmp ne ptr %call53, null, !dbg !1313
  br i1 %tobool54, label %if.end60, label %if.then55, !dbg !1314

if.then55:                                        ; preds = %if.else49
  %69 = load ptr, ptr %info.addr, align 8, !dbg !1315
  %call56 = call i32 @acpi_ex_prep_field_value(ptr noundef %69) #15, !dbg !1317
  store i32 %call56, ptr %status, align 4, !dbg !1318
  %70 = load i32, ptr %status, align 4, !dbg !1319
  %tobool57 = icmp ne i32 %70, 0, !dbg !1319
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !1321

if.then58:                                        ; preds = %if.then55
  %71 = load i32, ptr %status, align 4, !dbg !1322
  store i32 %71, ptr %retval, align 4, !dbg !1322
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1322

if.end59:                                         ; preds = %if.then55
  br label %if.end60, !dbg !1324

if.end60:                                         ; preds = %if.end59, %if.else49
  br label %if.end61

if.end61:                                         ; preds = %if.end60
  %72 = load ptr, ptr %info.addr, align 8, !dbg !1325
  %field_bit_position62 = getelementptr inbounds %struct.acpi_create_field_info, ptr %72, i32 0, i32 7, !dbg !1326
  %73 = load i32, ptr %field_bit_position62, align 4, !dbg !1326
  %conv63 = zext i32 %73 to i64, !dbg !1327
  %74 = load ptr, ptr %arg.addr, align 8, !dbg !1328
  %value64 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %74, i32 0, i32 7, !dbg !1329
  %75 = load i32, ptr %value64, align 8, !dbg !1330
  %conv65 = zext i32 %75 to i64, !dbg !1331
  %add66 = add i64 %conv63, %conv65, !dbg !1332
  store i64 %add66, ptr %position, align 8, !dbg !1333
  %76 = load i64, ptr %position, align 8, !dbg !1334
  %cmp67 = icmp ugt i64 %76, 4294967295, !dbg !1336
  br i1 %cmp67, label %if.then69, label %if.end72, !dbg !1337

if.then69:                                        ; preds = %if.end61
  %77 = load ptr, ptr %info.addr, align 8, !dbg !1338
  %field_node70 = getelementptr inbounds %struct.acpi_create_field_info, ptr %77, i32 0, i32 1, !dbg !1338
  %78 = load ptr, ptr %field_node70, align 8, !dbg !1338
  %name71 = getelementptr inbounds %struct.acpi_namespace_node, ptr %78, i32 0, i32 4, !dbg !1338
  %79 = ptrtoint ptr %name71 to i64, !dbg !1338
  %80 = inttoptr i64 %79 to ptr, !dbg !1338
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 432, ptr noundef @.str.3, ptr noundef %80) #15, !dbg !1338
  store i32 15, ptr %retval, align 4, !dbg !1340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1340

if.end72:                                         ; preds = %if.end61
  %81 = load ptr, ptr %info.addr, align 8, !dbg !1341
  %field_bit_length73 = getelementptr inbounds %struct.acpi_create_field_info, ptr %81, i32 0, i32 8, !dbg !1342
  %82 = load i32, ptr %field_bit_length73, align 8, !dbg !1342
  %83 = load ptr, ptr %info.addr, align 8, !dbg !1343
  %field_bit_position74 = getelementptr inbounds %struct.acpi_create_field_info, ptr %83, i32 0, i32 7, !dbg !1344
  %84 = load i32, ptr %field_bit_position74, align 4, !dbg !1345
  %add75 = add i32 %84, %82, !dbg !1345
  store i32 %add75, ptr %field_bit_position74, align 4, !dbg !1345
  %85 = load ptr, ptr %info.addr, align 8, !dbg !1346
  %pin_number_index76 = getelementptr inbounds %struct.acpi_create_field_info, ptr %85, i32 0, i32 10, !dbg !1347
  %86 = load i16, ptr %pin_number_index76, align 2, !dbg !1348
  %inc = add i16 %86, 1, !dbg !1348
  store i16 %inc, ptr %pin_number_index76, align 2, !dbg !1348
  br label %sw.epilog, !dbg !1349

sw.default:                                       ; preds = %while.body
  %87 = load ptr, ptr %arg.addr, align 8, !dbg !1350
  %aml_opcode77 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %87, i32 0, i32 3, !dbg !1350
  %88 = load i16, ptr %aml_opcode77, align 2, !dbg !1350
  %conv78 = zext i16 %88 to i32, !dbg !1350
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 446, ptr noundef @.str.4, i32 noundef %conv78) #15, !dbg !1350
  store i32 12289, ptr %retval, align 4, !dbg !1351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1351

sw.epilog:                                        ; preds = %if.end72, %if.end40, %sw.bb7, %if.end
  %89 = load ptr, ptr %arg.addr, align 8, !dbg !1352
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %89, i32 0, i32 5, !dbg !1353
  %90 = load ptr, ptr %next, align 8, !dbg !1353
  store ptr %90, ptr %arg.addr, align 8, !dbg !1354
  br label %while.cond, !dbg !1168, !llvm.loop !1355

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !1359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1359

cleanup:                                          ; preds = %while.end, %sw.default, %if.then69, %if.then58, %if.then46, %if.then36, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #14, !dbg !1360
  call void @llvm.lifetime.end.p0(i64 8, ptr %position) #14, !dbg !1360
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !1360
  %91 = load i32, ptr %retval, align 4, !dbg !1360
  ret i32 %91, !dbg !1360
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #5 align 16 !dbg !1361 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1366, metadata !DIExpression()), !dbg !1377
  %0 = load i64, ptr %size.addr, align 8, !dbg !1378
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #14, !dbg !1379
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1367, metadata !DIExpression()), !dbg !1379
  br label %do.body, !dbg !1379

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !1380
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1369, metadata !DIExpression()), !dbg !1380
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !1380
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1372, metadata !DIExpression()), !dbg !1380
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1380
  %conv = zext i1 %cmp to i32, !dbg !1380
  store i32 1, ptr %tmp, align 4, !dbg !1380
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !1381
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !1381
  %1 = load i32, ptr %tmp, align 4, !dbg !1380
  %call = call i64 @arch_local_save_flags() #15, !dbg !1381
  store i64 %call, ptr %_flags, align 8, !dbg !1381
  br label %do.cond, !dbg !1381

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1381

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #14, !dbg !1382
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1373, metadata !DIExpression()), !dbg !1382
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #14, !dbg !1382
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1376, metadata !DIExpression()), !dbg !1382
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1382
  %conv6 = zext i1 %cmp5 to i32, !dbg !1382
  store i32 1, ptr %tmp7, align 4, !dbg !1382
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #14, !dbg !1383
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #14, !dbg !1383
  %2 = load i32, ptr %tmp7, align 4, !dbg !1382
  %3 = load i64, ptr %_flags, align 8, !dbg !1383
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #15, !dbg !1383
  store i32 %call9, ptr %tmp8, align 4, !dbg !1383
  %4 = load i32, ptr %tmp8, align 4, !dbg !1383
  store i32 %4, ptr %tmp1, align 4, !dbg !1381
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #14, !dbg !1384
  %5 = load i32, ptr %tmp1, align 4, !dbg !1379
  %tobool = icmp ne i32 %5, 0, !dbg !1384
  %6 = zext i1 %tobool to i64, !dbg !1384
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1384
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #16, !dbg !1385
  ret ptr %call10, !dbg !1386
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_init_field_objects(ptr noundef %op, ptr noundef %walk_state) #0 align 16 !dbg !1387 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %arg = alloca ptr, align 8
  %node = alloca ptr, align 8
  %type = alloca i8, align 1
  %flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1389, metadata !DIExpression()), !dbg !1396
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1390, metadata !DIExpression()), !dbg !1397
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !1398
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1391, metadata !DIExpression()), !dbg !1399
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #14, !dbg !1400
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !1392, metadata !DIExpression()), !dbg !1401
  store ptr null, ptr %arg, align 8, !dbg !1401
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !1402
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1393, metadata !DIExpression()), !dbg !1403
  call void @llvm.lifetime.start.p0(i64 1, ptr %type) #14, !dbg !1404
  call void @llvm.dbg.declare(metadata ptr %type, metadata !1394, metadata !DIExpression()), !dbg !1405
  store i8 0, ptr %type, align 1, !dbg !1405
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #14, !dbg !1406
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1395, metadata !DIExpression()), !dbg !1407
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1408
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 20, !dbg !1410
  %1 = load i32, ptr %parse_flags, align 4, !dbg !1410
  %and = and i32 %1, 48, !dbg !1411
  %tobool = icmp ne i32 %and, 0, !dbg !1411
  br i1 %tobool, label %if.end5, label %if.then, !dbg !1412

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !1413
  %parse_flags1 = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 20, !dbg !1416
  %3 = load i32, ptr %parse_flags1, align 4, !dbg !1416
  %and2 = and i32 %3, 256, !dbg !1417
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1417
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !1418

if.then4:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !1419
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1419

if.end:                                           ; preds = %if.then
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 574, ptr noundef @.str.1) #15, !dbg !1421
  store i32 12303, ptr %retval, align 4, !dbg !1422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1422

if.end5:                                          ; preds = %entry
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !1423
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %4, i32 0, i32 3, !dbg !1424
  %5 = load i16, ptr %opcode, align 2, !dbg !1424
  %conv = zext i16 %5 to i32, !dbg !1423
  switch i32 %conv, label %sw.default [
    i32 23425, label %sw.bb
    i32 23431, label %sw.bb6
    i32 23430, label %sw.bb8
  ], !dbg !1425

sw.bb:                                            ; preds = %if.end5
  %6 = load ptr, ptr %op.addr, align 8, !dbg !1426
  %call = call ptr @acpi_ps_get_arg(ptr noundef %6, i32 noundef 2) #15, !dbg !1428
  store ptr %call, ptr %arg, align 8, !dbg !1429
  store i8 17, ptr %type, align 1, !dbg !1430
  br label %sw.epilog, !dbg !1431

sw.bb6:                                           ; preds = %if.end5
  %7 = load ptr, ptr %op.addr, align 8, !dbg !1432
  %call7 = call ptr @acpi_ps_get_arg(ptr noundef %7, i32 noundef 4) #15, !dbg !1433
  store ptr %call7, ptr %arg, align 8, !dbg !1434
  store i8 18, ptr %type, align 1, !dbg !1435
  br label %sw.epilog, !dbg !1436

sw.bb8:                                           ; preds = %if.end5
  %8 = load ptr, ptr %op.addr, align 8, !dbg !1437
  %call9 = call ptr @acpi_ps_get_arg(ptr noundef %8, i32 noundef 3) #15, !dbg !1438
  store ptr %call9, ptr %arg, align 8, !dbg !1439
  store i8 19, ptr %type, align 1, !dbg !1440
  br label %sw.epilog, !dbg !1441

sw.default:                                       ; preds = %if.end5
  store i32 4097, ptr %retval, align 4, !dbg !1442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1442

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb6, %sw.bb
  store i32 10, ptr %flags, align 4, !dbg !1443
  %9 = load ptr, ptr %walk_state.addr, align 8, !dbg !1444
  %method_node = getelementptr inbounds %struct.acpi_walk_state, ptr %9, i32 0, i32 38, !dbg !1446
  %10 = load ptr, ptr %method_node, align 8, !dbg !1446
  %tobool10 = icmp ne ptr %10, null, !dbg !1444
  br i1 %tobool10, label %land.lhs.true, label %if.end15, !dbg !1447

land.lhs.true:                                    ; preds = %sw.epilog
  %11 = load ptr, ptr %walk_state.addr, align 8, !dbg !1448
  %parse_flags11 = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 20, !dbg !1449
  %12 = load i32, ptr %parse_flags11, align 4, !dbg !1449
  %and12 = and i32 %12, 1024, !dbg !1450
  %tobool13 = icmp ne i32 %and12, 0, !dbg !1450
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !1451

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i32, ptr %flags, align 4, !dbg !1452
  %or = or i32 %13, 64, !dbg !1452
  store i32 %or, ptr %flags, align 4, !dbg !1452
  br label %if.end15, !dbg !1454

if.end15:                                         ; preds = %if.then14, %land.lhs.true, %sw.epilog
  br label %while.cond, !dbg !1455

while.cond:                                       ; preds = %if.end32, %if.end15
  %14 = load ptr, ptr %arg, align 8, !dbg !1456
  %tobool16 = icmp ne ptr %14, null, !dbg !1455
  br i1 %tobool16, label %while.body, label %while.end, !dbg !1455

while.body:                                       ; preds = %while.cond
  %15 = load ptr, ptr %arg, align 8, !dbg !1457
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %15, i32 0, i32 3, !dbg !1460
  %16 = load i16, ptr %aml_opcode, align 2, !dbg !1460
  %conv17 = zext i16 %16 to i32, !dbg !1457
  %cmp = icmp eq i32 %conv17, 48, !dbg !1461
  br i1 %cmp, label %if.then19, label %if.end32, !dbg !1462

if.then19:                                        ; preds = %while.body
  %17 = load ptr, ptr %walk_state.addr, align 8, !dbg !1463
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, ptr %17, i32 0, i32 46, !dbg !1465
  %18 = load ptr, ptr %scope_info, align 8, !dbg !1465
  %19 = load ptr, ptr %arg, align 8, !dbg !1466
  %name = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %19, i32 0, i32 12, !dbg !1467
  %20 = load i8, ptr %type, align 1, !dbg !1468
  %conv20 = zext i8 %20 to i32, !dbg !1468
  %21 = load i32, ptr %flags, align 4, !dbg !1469
  %22 = load ptr, ptr %walk_state.addr, align 8, !dbg !1470
  %call21 = call i32 @acpi_ns_lookup(ptr noundef %18, ptr noundef %name, i32 noundef %conv20, i32 noundef 1, i32 noundef %21, ptr noundef %22, ptr noundef %node) #15, !dbg !1471
  store i32 %call21, ptr %status, align 4, !dbg !1472
  %23 = load i32, ptr %status, align 4, !dbg !1473
  %tobool22 = icmp ne i32 %23, 0, !dbg !1473
  br i1 %tobool22, label %if.then23, label %if.end30, !dbg !1475

if.then23:                                        ; preds = %if.then19
  %24 = load ptr, ptr %walk_state.addr, align 8, !dbg !1476
  %scope_info24 = getelementptr inbounds %struct.acpi_walk_state, ptr %24, i32 0, i32 46, !dbg !1476
  %25 = load ptr, ptr %scope_info24, align 8, !dbg !1476
  %26 = load ptr, ptr %arg, align 8, !dbg !1476
  %name25 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %26, i32 0, i32 12, !dbg !1476
  %27 = load i32, ptr %status, align 4, !dbg !1476
  call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 639, ptr noundef %25, ptr noundef %name25, i32 noundef %27) #15, !dbg !1476
  %28 = load i32, ptr %status, align 4, !dbg !1478
  %cmp26 = icmp ne i32 %28, 7, !dbg !1480
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !1481

if.then28:                                        ; preds = %if.then23
  %29 = load i32, ptr %status, align 4, !dbg !1482
  store i32 %29, ptr %retval, align 4, !dbg !1482
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1482

if.end29:                                         ; preds = %if.then23
  br label %if.end30, !dbg !1484

if.end30:                                         ; preds = %if.end29, %if.then19
  %30 = load ptr, ptr %node, align 8, !dbg !1485
  %31 = load ptr, ptr %arg, align 8, !dbg !1486
  %node31 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %31, i32 0, i32 6, !dbg !1487
  store ptr %30, ptr %node31, align 8, !dbg !1488
  br label %if.end32, !dbg !1489

if.end32:                                         ; preds = %if.end30, %while.body
  %32 = load ptr, ptr %arg, align 8, !dbg !1490
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %32, i32 0, i32 5, !dbg !1491
  %33 = load ptr, ptr %next, align 8, !dbg !1491
  store ptr %33, ptr %arg, align 8, !dbg !1492
  br label %while.cond, !dbg !1455, !llvm.loop !1493

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !1495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1495

cleanup:                                          ; preds = %while.end, %if.then28, %sw.default, %if.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #14, !dbg !1496
  call void @llvm.lifetime.end.p0(i64 1, ptr %type) #14, !dbg !1496
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !1496
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #14, !dbg !1496
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !1496
  %34 = load i32, ptr %retval, align 4, !dbg !1496
  ret i32 %34, !dbg !1496
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_create_bank_field(ptr noundef %op, ptr noundef %region_node, ptr noundef %walk_state) #0 align 16 !dbg !1497 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca ptr, align 8
  %region_node.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %arg = alloca ptr, align 8
  %info = alloca %struct.acpi_create_field_info, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1499, metadata !DIExpression()), !dbg !1505
  store ptr %region_node, ptr %region_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_node.addr, metadata !1500, metadata !DIExpression()), !dbg !1506
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1501, metadata !DIExpression()), !dbg !1507
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !1508
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1502, metadata !DIExpression()), !dbg !1509
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #14, !dbg !1510
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !1503, metadata !DIExpression()), !dbg !1511
  call void @llvm.lifetime.start.p0(i64 72, ptr %info) #14, !dbg !1512
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1504, metadata !DIExpression()), !dbg !1513
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1514
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %0, i32 0, i32 7, !dbg !1515
  %1 = load ptr, ptr %value, align 8, !dbg !1516
  store ptr %1, ptr %arg, align 8, !dbg !1517
  %2 = load ptr, ptr %region_node.addr, align 8, !dbg !1518
  %tobool = icmp ne ptr %2, null, !dbg !1518
  br i1 %tobool, label %if.end6, label %if.then, !dbg !1520

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !1521
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 46, !dbg !1523
  %4 = load ptr, ptr %scope_info, align 8, !dbg !1523
  %5 = load ptr, ptr %arg, align 8, !dbg !1524
  %value1 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %5, i32 0, i32 7, !dbg !1525
  %6 = load ptr, ptr %value1, align 8, !dbg !1526
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !1527
  %call = call i32 @acpi_ns_lookup(ptr noundef %4, ptr noundef %6, i32 noundef 10, i32 noundef 3, i32 noundef 1, ptr noundef %7, ptr noundef %region_node.addr) #15, !dbg !1528
  store i32 %call, ptr %status, align 4, !dbg !1529
  %8 = load i32, ptr %status, align 4, !dbg !1530
  %tobool2 = icmp ne i32 %8, 0, !dbg !1530
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !1532

if.then3:                                         ; preds = %if.then
  %9 = load ptr, ptr %walk_state.addr, align 8, !dbg !1533
  %scope_info4 = getelementptr inbounds %struct.acpi_walk_state, ptr %9, i32 0, i32 46, !dbg !1533
  %10 = load ptr, ptr %scope_info4, align 8, !dbg !1533
  %11 = load ptr, ptr %arg, align 8, !dbg !1533
  %value5 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %11, i32 0, i32 7, !dbg !1533
  %12 = load ptr, ptr %value5, align 8, !dbg !1533
  %13 = load i32, ptr %status, align 4, !dbg !1533
  call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 700, ptr noundef %10, ptr noundef %12, i32 noundef %13) #15, !dbg !1533
  %14 = load i32, ptr %status, align 4, !dbg !1535
  store i32 %14, ptr %retval, align 4, !dbg !1535
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1535

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1536

if.end6:                                          ; preds = %if.end, %entry
  %15 = load ptr, ptr %arg, align 8, !dbg !1537
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %15, i32 0, i32 5, !dbg !1538
  %16 = load ptr, ptr %next, align 8, !dbg !1538
  store ptr %16, ptr %arg, align 8, !dbg !1539
  %17 = load ptr, ptr %walk_state.addr, align 8, !dbg !1540
  %scope_info7 = getelementptr inbounds %struct.acpi_walk_state, ptr %17, i32 0, i32 46, !dbg !1541
  %18 = load ptr, ptr %scope_info7, align 8, !dbg !1541
  %19 = load ptr, ptr %arg, align 8, !dbg !1542
  %value8 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %19, i32 0, i32 7, !dbg !1543
  %20 = load ptr, ptr %value8, align 8, !dbg !1544
  %21 = load ptr, ptr %walk_state.addr, align 8, !dbg !1545
  %register_node = getelementptr inbounds %struct.acpi_create_field_info, ptr %info, i32 0, i32 2, !dbg !1546
  %call9 = call i32 @acpi_ns_lookup(ptr noundef %18, ptr noundef %20, i32 noundef 0, i32 noundef 3, i32 noundef 1, ptr noundef %21, ptr noundef %register_node) #15, !dbg !1547
  store i32 %call9, ptr %status, align 4, !dbg !1548
  %22 = load i32, ptr %status, align 4, !dbg !1549
  %tobool10 = icmp ne i32 %22, 0, !dbg !1549
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !1551

if.then11:                                        ; preds = %if.end6
  %23 = load ptr, ptr %walk_state.addr, align 8, !dbg !1552
  %scope_info12 = getelementptr inbounds %struct.acpi_walk_state, ptr %23, i32 0, i32 46, !dbg !1552
  %24 = load ptr, ptr %scope_info12, align 8, !dbg !1552
  %25 = load ptr, ptr %arg, align 8, !dbg !1552
  %value13 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %25, i32 0, i32 7, !dbg !1552
  %26 = load ptr, ptr %value13, align 8, !dbg !1552
  %27 = load i32, ptr %status, align 4, !dbg !1552
  call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 715, ptr noundef %24, ptr noundef %26, i32 noundef %27) #15, !dbg !1552
  %28 = load i32, ptr %status, align 4, !dbg !1554
  store i32 %28, ptr %retval, align 4, !dbg !1554
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1554

if.end14:                                         ; preds = %if.end6
  %29 = load ptr, ptr %arg, align 8, !dbg !1555
  %next15 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %29, i32 0, i32 5, !dbg !1556
  %30 = load ptr, ptr %next15, align 8, !dbg !1556
  store ptr %30, ptr %arg, align 8, !dbg !1557
  %31 = load ptr, ptr %arg, align 8, !dbg !1558
  %next16 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %31, i32 0, i32 5, !dbg !1559
  %32 = load ptr, ptr %next16, align 8, !dbg !1559
  store ptr %32, ptr %arg, align 8, !dbg !1560
  %33 = load ptr, ptr %arg, align 8, !dbg !1561
  %value17 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %33, i32 0, i32 7, !dbg !1562
  %34 = load i64, ptr %value17, align 8, !dbg !1563
  %conv = trunc i64 %34 to i8, !dbg !1564
  %field_flags = getelementptr inbounds %struct.acpi_create_field_info, ptr %info, i32 0, i32 11, !dbg !1565
  store i8 %conv, ptr %field_flags, align 8, !dbg !1566
  %field_type = getelementptr inbounds %struct.acpi_create_field_info, ptr %info, i32 0, i32 13, !dbg !1567
  store i8 18, ptr %field_type, align 2, !dbg !1568
  %35 = load ptr, ptr %region_node.addr, align 8, !dbg !1569
  %region_node18 = getelementptr inbounds %struct.acpi_create_field_info, ptr %info, i32 0, i32 0, !dbg !1570
  store ptr %35, ptr %region_node18, align 8, !dbg !1571
  %36 = load ptr, ptr %op.addr, align 8, !dbg !1572
  %data_register_node = getelementptr inbounds %struct.acpi_create_field_info, ptr %info, i32 0, i32 3, !dbg !1573
  store ptr %36, ptr %data_register_node, align 8, !dbg !1574
  %37 = load ptr, ptr %walk_state.addr, align 8, !dbg !1575
  %38 = load ptr, ptr %arg, align 8, !dbg !1576
  %next19 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %38, i32 0, i32 5, !dbg !1577
  %39 = load ptr, ptr %next19, align 8, !dbg !1577
  %call20 = call i32 @acpi_ds_get_field_names(ptr noundef %info, ptr noundef %37, ptr noundef %39) #15, !dbg !1578
  store i32 %call20, ptr %status, align 4, !dbg !1579
  %40 = load i32, ptr %status, align 4, !dbg !1580
  store i32 %40, ptr %retval, align 4, !dbg !1580
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1580

cleanup:                                          ; preds = %if.end14, %if.then11, %if.then3
  call void @llvm.lifetime.end.p0(i64 72, ptr %info) #14, !dbg !1581
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #14, !dbg !1581
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !1581
  %41 = load i32, ptr %retval, align 4, !dbg !1581
  ret i32 %41, !dbg !1581
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_create_index_field(ptr noundef %op, ptr noundef %region_node, ptr noundef %walk_state) #0 align 16 !dbg !1582 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca ptr, align 8
  %region_node.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %arg = alloca ptr, align 8
  %info = alloca %struct.acpi_create_field_info, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1584, metadata !DIExpression()), !dbg !1590
  store ptr %region_node, ptr %region_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_node.addr, metadata !1585, metadata !DIExpression()), !dbg !1591
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1586, metadata !DIExpression()), !dbg !1592
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !1593
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1587, metadata !DIExpression()), !dbg !1594
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #14, !dbg !1595
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !1588, metadata !DIExpression()), !dbg !1596
  call void @llvm.lifetime.start.p0(i64 72, ptr %info) #14, !dbg !1597
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1589, metadata !DIExpression()), !dbg !1598
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1599
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %0, i32 0, i32 7, !dbg !1600
  %1 = load ptr, ptr %value, align 8, !dbg !1601
  store ptr %1, ptr %arg, align 8, !dbg !1602
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !1603
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 46, !dbg !1604
  %3 = load ptr, ptr %scope_info, align 8, !dbg !1604
  %4 = load ptr, ptr %arg, align 8, !dbg !1605
  %value1 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %4, i32 0, i32 7, !dbg !1606
  %5 = load ptr, ptr %value1, align 8, !dbg !1607
  %6 = load ptr, ptr %walk_state.addr, align 8, !dbg !1608
  %register_node = getelementptr inbounds %struct.acpi_create_field_info, ptr %info, i32 0, i32 2, !dbg !1609
  %call = call i32 @acpi_ns_lookup(ptr noundef %3, ptr noundef %5, i32 noundef 0, i32 noundef 3, i32 noundef 1, ptr noundef %6, ptr noundef %register_node) #15, !dbg !1610
  store i32 %call, ptr %status, align 4, !dbg !1611
  %7 = load i32, ptr %status, align 4, !dbg !1612
  %tobool = icmp ne i32 %7, 0, !dbg !1612
  br i1 %tobool, label %if.then, label %if.end, !dbg !1614

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !1615
  %scope_info2 = getelementptr inbounds %struct.acpi_walk_state, ptr %8, i32 0, i32 46, !dbg !1615
  %9 = load ptr, ptr %scope_info2, align 8, !dbg !1615
  %10 = load ptr, ptr %arg, align 8, !dbg !1615
  %value3 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %10, i32 0, i32 7, !dbg !1615
  %11 = load ptr, ptr %value3, align 8, !dbg !1615
  %12 = load i32, ptr %status, align 4, !dbg !1615
  call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 786, ptr noundef %9, ptr noundef %11, i32 noundef %12) #15, !dbg !1615
  %13 = load i32, ptr %status, align 4, !dbg !1617
  store i32 %13, ptr %retval, align 4, !dbg !1617
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1617

if.end:                                           ; preds = %entry
  %14 = load ptr, ptr %arg, align 8, !dbg !1618
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %14, i32 0, i32 5, !dbg !1619
  %15 = load ptr, ptr %next, align 8, !dbg !1619
  store ptr %15, ptr %arg, align 8, !dbg !1620
  %16 = load ptr, ptr %walk_state.addr, align 8, !dbg !1621
  %scope_info4 = getelementptr inbounds %struct.acpi_walk_state, ptr %16, i32 0, i32 46, !dbg !1622
  %17 = load ptr, ptr %scope_info4, align 8, !dbg !1622
  %18 = load ptr, ptr %arg, align 8, !dbg !1623
  %value5 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %18, i32 0, i32 7, !dbg !1624
  %19 = load ptr, ptr %value5, align 8, !dbg !1625
  %20 = load ptr, ptr %walk_state.addr, align 8, !dbg !1626
  %data_register_node = getelementptr inbounds %struct.acpi_create_field_info, ptr %info, i32 0, i32 3, !dbg !1627
  %call6 = call i32 @acpi_ns_lookup(ptr noundef %17, ptr noundef %19, i32 noundef 0, i32 noundef 3, i32 noundef 1, ptr noundef %20, ptr noundef %data_register_node) #15, !dbg !1628
  store i32 %call6, ptr %status, align 4, !dbg !1629
  %21 = load i32, ptr %status, align 4, !dbg !1630
  %tobool7 = icmp ne i32 %21, 0, !dbg !1630
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !1632

if.then8:                                         ; preds = %if.end
  %22 = load ptr, ptr %walk_state.addr, align 8, !dbg !1633
  %scope_info9 = getelementptr inbounds %struct.acpi_walk_state, ptr %22, i32 0, i32 46, !dbg !1633
  %23 = load ptr, ptr %scope_info9, align 8, !dbg !1633
  %24 = load ptr, ptr %arg, align 8, !dbg !1633
  %value10 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %24, i32 0, i32 7, !dbg !1633
  %25 = load ptr, ptr %value10, align 8, !dbg !1633
  %26 = load i32, ptr %status, align 4, !dbg !1633
  call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 800, ptr noundef %23, ptr noundef %25, i32 noundef %26) #15, !dbg !1633
  %27 = load i32, ptr %status, align 4, !dbg !1635
  store i32 %27, ptr %retval, align 4, !dbg !1635
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1635

if.end11:                                         ; preds = %if.end
  %28 = load ptr, ptr %arg, align 8, !dbg !1636
  %next12 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %28, i32 0, i32 5, !dbg !1637
  %29 = load ptr, ptr %next12, align 8, !dbg !1637
  store ptr %29, ptr %arg, align 8, !dbg !1638
  %30 = load ptr, ptr %arg, align 8, !dbg !1639
  %value13 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %30, i32 0, i32 7, !dbg !1640
  %31 = load i64, ptr %value13, align 8, !dbg !1641
  %conv = trunc i64 %31 to i8, !dbg !1642
  %field_flags = getelementptr inbounds %struct.acpi_create_field_info, ptr %info, i32 0, i32 11, !dbg !1643
  store i8 %conv, ptr %field_flags, align 8, !dbg !1644
  %field_type = getelementptr inbounds %struct.acpi_create_field_info, ptr %info, i32 0, i32 13, !dbg !1645
  store i8 19, ptr %field_type, align 2, !dbg !1646
  %32 = load ptr, ptr %region_node.addr, align 8, !dbg !1647
  %region_node14 = getelementptr inbounds %struct.acpi_create_field_info, ptr %info, i32 0, i32 0, !dbg !1648
  store ptr %32, ptr %region_node14, align 8, !dbg !1649
  %33 = load ptr, ptr %walk_state.addr, align 8, !dbg !1650
  %34 = load ptr, ptr %arg, align 8, !dbg !1651
  %next15 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %34, i32 0, i32 5, !dbg !1652
  %35 = load ptr, ptr %next15, align 8, !dbg !1652
  %call16 = call i32 @acpi_ds_get_field_names(ptr noundef %info, ptr noundef %33, ptr noundef %35) #15, !dbg !1653
  store i32 %call16, ptr %status, align 4, !dbg !1654
  %36 = load i32, ptr %status, align 4, !dbg !1655
  store i32 %36, ptr %retval, align 4, !dbg !1655
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1655

cleanup:                                          ; preds = %if.end11, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 72, ptr %info) #14, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #14, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !1656
  %37 = load i32, ptr %retval, align 4, !dbg !1656
  ret i32 %37, !dbg !1656
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1657 dso_local i32 @acpi_ex_prep_field_value(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !1661 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1669, metadata !DIExpression()), !dbg !1671
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1670, metadata !DIExpression()), !dbg !1672
  %0 = load i64, ptr %size.addr, align 8, !dbg !1673
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1674
  %or = or i32 %1, 256, !dbg !1675
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !1676
  ret ptr %call, !dbg !1677
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #7 align 16 !dbg !1678 {
entry:
  %call = call i64 @native_save_fl() #15, !dbg !1682
  ret i64 %call, !dbg !1683
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #7 align 16 !dbg !1684 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1689, metadata !DIExpression()), !dbg !1690
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1691
  %and = and i64 %0, 512, !dbg !1692
  %tobool = icmp ne i64 %and, 0, !dbg !1693
  %lnot = xor i1 %tobool, true, !dbg !1693
  %lnot.ext = zext i1 %lnot to i32, !dbg !1693
  ret i32 %lnot.ext, !dbg !1694
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !1695 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1697, metadata !DIExpression()), !dbg !1702
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1698, metadata !DIExpression()), !dbg !1703
  %0 = load i64, ptr %size.addr, align 8, !dbg !1704
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1705
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1706

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1707
  %tobool = icmp ne i64 %2, 0, !dbg !1707
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1708

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !1709
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1699, metadata !DIExpression()), !dbg !1710
  %3 = load i64, ptr %size.addr, align 8, !dbg !1711
  %cmp = icmp ugt i64 %3, 8192, !dbg !1713
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1714

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1715
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1716
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !1717
  store ptr %call, ptr %retval, align 8, !dbg !1718
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1718

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1719
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !1719
  store i32 %call2, ptr %index, align 4, !dbg !1720
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1721
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1722
  %9 = ptrtoint ptr %8 to i64, !dbg !1722
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !1723
  %idxprom = zext i32 %call3 to i64, !dbg !1724
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1724
  %10 = load i32, ptr %index, align 4, !dbg !1725
  %idxprom4 = zext i32 %10 to i64, !dbg !1724
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1724
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1724
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1726
  %13 = load i64, ptr %size.addr, align 8, !dbg !1727
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !1728
  store ptr %call6, ptr %retval, align 8, !dbg !1729
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1729

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !1730
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1731
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1732
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !1733
  store ptr %call8, ptr %retval, align 8, !dbg !1734
  br label %return, !dbg !1734

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1735
  ret ptr %16, !dbg !1735
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1736 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !1737 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1743, metadata !DIExpression()), !dbg !1745
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1744, metadata !DIExpression()), !dbg !1746
  %0 = load i64, ptr %size.addr, align 8, !dbg !1747
  %tobool = icmp ne i64 %0, 0, !dbg !1747
  br i1 %tobool, label %if.end, label %if.then, !dbg !1749

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1750
  br label %return, !dbg !1750

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1751
  %cmp = icmp ule i64 %1, 8, !dbg !1753
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1754

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1755
  br label %return, !dbg !1755

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1756
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1758
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1759

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1760
  %cmp4 = icmp ule i64 %3, 96, !dbg !1761
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1762

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1763
  br label %return, !dbg !1763

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1764
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1766
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1767

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1768
  %cmp9 = icmp ule i64 %5, 192, !dbg !1769
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1770

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1771
  br label %return, !dbg !1771

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1772
  %cmp12 = icmp ule i64 %6, 8, !dbg !1774
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1775

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1776
  br label %return, !dbg !1776

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1777
  %cmp15 = icmp ule i64 %7, 16, !dbg !1779
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1780

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1781
  br label %return, !dbg !1781

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1782
  %cmp18 = icmp ule i64 %8, 32, !dbg !1784
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1785

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1786
  br label %return, !dbg !1786

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1787
  %cmp21 = icmp ule i64 %9, 64, !dbg !1789
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1790

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1791
  br label %return, !dbg !1791

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1792
  %cmp24 = icmp ule i64 %10, 128, !dbg !1794
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1795

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1796
  br label %return, !dbg !1796

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1797
  %cmp27 = icmp ule i64 %11, 256, !dbg !1799
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1800

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1801
  br label %return, !dbg !1801

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1802
  %cmp30 = icmp ule i64 %12, 512, !dbg !1804
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1805

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1806
  br label %return, !dbg !1806

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1807
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1809
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1810

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1811
  br label %return, !dbg !1811

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1812
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1814
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1815

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1816
  br label %return, !dbg !1816

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1817
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1819
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1820

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1821
  br label %return, !dbg !1821

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1822
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1824
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1825

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1826
  br label %return, !dbg !1826

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1827
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1829
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1830

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1831
  br label %return, !dbg !1831

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1832
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1834
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1835

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1836
  br label %return, !dbg !1836

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1837
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1839
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1840

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1841
  br label %return, !dbg !1841

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1842
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1844
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1845

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1846
  br label %return, !dbg !1846

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1847
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1849
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1850

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1851
  br label %return, !dbg !1851

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1852
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1854
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1855

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1856
  br label %return, !dbg !1856

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1857
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1859
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1860

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1861
  br label %return, !dbg !1861

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1862
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1864
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1865

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1866
  br label %return, !dbg !1866

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1867, !range !1869, !noundef !1870
  %tobool69 = trunc i8 %25 to i1, !dbg !1867
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1871

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1872

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #18, !dbg !1873, !srcloc !1876
  unreachable, !dbg !1873

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1877

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1878

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1879

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1881

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1879

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #14, !dbg !1883, !srcloc !1885
  br label %do.end75, !dbg !1883

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1879

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1886
  br label %return, !dbg !1886

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1887
  ret i32 %26, !dbg !1887
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1888 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !1894 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1898, metadata !DIExpression()), !dbg !1900
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1899, metadata !DIExpression()), !dbg !1901
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1902
  %and = and i32 %0, 17, !dbg !1902
  %cmp = icmp eq i32 %and, 0, !dbg !1902
  %lnot = xor i1 %cmp, true, !dbg !1902
  %lnot1 = xor i1 %lnot, true, !dbg !1902
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1902
  %conv = sext i32 %lnot.ext to i64, !dbg !1902
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1902
  %tobool = icmp ne i64 %expval, 0, !dbg !1902
  br i1 %tobool, label %if.then, label %if.end, !dbg !1904

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1905
  br label %return, !dbg !1905

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1906
  %and2 = and i32 %1, 1, !dbg !1908
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1908
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1909

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1910
  br label %return, !dbg !1910

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1911
  br label %return, !dbg !1911

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1913
  ret i32 %2, !dbg !1913
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1914 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1915 dso_local void @__compiletime_assert_173() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #7 align 16 !dbg !1918 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !1921
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1920, metadata !DIExpression()), !dbg !1922
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #14, !dbg !1923, !srcloc !1924
  %0 = load i64, ptr %flags, align 8, !dbg !1925
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !1926
  ret i64 %0, !dbg !1927
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!llvm.module.flags = !{!842, !843, !844, !845, !846, !847, !848, !849}
!llvm.ident = !{!850}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 23, type: !840, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.dsfield.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22dsfield\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/dsfield.ll drivers/acpi/acpica/dsfield.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !27, globals: !809, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dsfield.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a6ec2dac4f5a97d34f46fd806f79bedc")
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
!27 = !{!28, !33, !37, !40, !41, !45, !47, !42, !35, !805, !808, !807}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !29, line: 19, baseType: !30)
!29 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !31, line: 24, baseType: !32)
!31 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!32 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !34, line: 421, baseType: !35)
!34 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !29, line: 21, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !31, line: 27, baseType: !7)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !29, line: 17, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !31, line: 21, baseType: !39)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !34, line: 814, baseType: !37)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !34, line: 127, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !29, line: 23, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !31, line: 31, baseType: !44)
!44 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !49)
!49 = !{!50, !792, !793, !794, !795, !801, !802, !803, !804}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !48, file: !6, line: 134, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !53, line: 369, size: 576, elements: !54)
!53 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!54 = !{!55, !63, !76, !86, !100, !114, !124, !441, !458, !474, !487, !565, !577, !591, !601, !619, !641, !660, !679, !698, !711, !738, !755, !768, !782, !791}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !52, file: !53, line: 370, baseType: !56, size: 128)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !53, line: 73, size: 128, elements: !57)
!57 = !{!58, !59, !60, !61, !62}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !56, file: !53, line: 74, baseType: !51, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !56, file: !53, line: 74, baseType: !37, size: 8, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !56, file: !53, line: 74, baseType: !37, size: 8, offset: 72)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !56, file: !53, line: 74, baseType: !28, size: 16, offset: 80)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !56, file: !53, line: 74, baseType: !37, size: 8, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !52, file: !53, line: 371, baseType: !64, size: 192)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !53, line: 76, size: 192, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71, !75}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !64, file: !53, line: 77, baseType: !51, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !64, file: !53, line: 77, baseType: !37, size: 8, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !64, file: !53, line: 77, baseType: !37, size: 8, offset: 72)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !64, file: !53, line: 77, baseType: !28, size: 16, offset: 80)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !53, line: 77, baseType: !37, size: 8, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !64, file: !53, line: 77, baseType: !72, size: 24, offset: 104)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 24, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 3)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !64, file: !53, line: 78, baseType: !42, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !52, file: !53, line: 372, baseType: !77, size: 256)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !53, line: 93, size: 256, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84, !85}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !77, file: !53, line: 94, baseType: !51, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !77, file: !53, line: 94, baseType: !37, size: 8, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !53, line: 94, baseType: !37, size: 8, offset: 72)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !77, file: !53, line: 94, baseType: !28, size: 16, offset: 80)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !53, line: 94, baseType: !37, size: 8, offset: 96)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !77, file: !53, line: 94, baseType: !45, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !77, file: !53, line: 94, baseType: !35, size: 32, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !52, file: !53, line: 373, baseType: !87, size: 384)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !53, line: 97, size: 384, elements: !88)
!88 = !{!89, !90, !91, !92, !93, !94, !96, !97, !98, !99}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !87, file: !53, line: 98, baseType: !51, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !87, file: !53, line: 98, baseType: !37, size: 8, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !53, line: 98, baseType: !37, size: 8, offset: 72)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !87, file: !53, line: 98, baseType: !28, size: 16, offset: 80)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !53, line: 98, baseType: !37, size: 8, offset: 96)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !87, file: !53, line: 98, baseType: !95, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !87, file: !53, line: 98, baseType: !35, size: 32, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !87, file: !53, line: 99, baseType: !35, size: 32, offset: 224)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !87, file: !53, line: 100, baseType: !95, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !87, file: !53, line: 101, baseType: !47, size: 64, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !52, file: !53, line: 374, baseType: !101, size: 384)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !53, line: 104, size: 384, elements: !102)
!102 = !{!103, !104, !105, !106, !107, !108, !109, !111, !112, !113}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !101, file: !53, line: 105, baseType: !51, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !101, file: !53, line: 105, baseType: !37, size: 8, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !101, file: !53, line: 105, baseType: !37, size: 8, offset: 72)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !101, file: !53, line: 105, baseType: !28, size: 16, offset: 80)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !101, file: !53, line: 105, baseType: !37, size: 8, offset: 96)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !101, file: !53, line: 105, baseType: !47, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !101, file: !53, line: 106, baseType: !110, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !101, file: !53, line: 107, baseType: !95, size: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !101, file: !53, line: 108, baseType: !35, size: 32, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !101, file: !53, line: 109, baseType: !35, size: 32, offset: 352)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !52, file: !53, line: 375, baseType: !115, size: 192)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !53, line: 118, size: 192, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !115, file: !53, line: 119, baseType: !51, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !115, file: !53, line: 119, baseType: !37, size: 8, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !53, line: 119, baseType: !37, size: 8, offset: 72)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !115, file: !53, line: 119, baseType: !28, size: 16, offset: 80)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !115, file: !53, line: 119, baseType: !37, size: 8, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !115, file: !53, line: 119, baseType: !123, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !52, file: !53, line: 376, baseType: !125, size: 448)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !53, line: 144, size: 448, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !438, !439, !440}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !125, file: !53, line: 145, baseType: !51, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !125, file: !53, line: 145, baseType: !37, size: 8, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !53, line: 145, baseType: !37, size: 8, offset: 72)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !125, file: !53, line: 145, baseType: !28, size: 16, offset: 80)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !53, line: 145, baseType: !37, size: 8, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !125, file: !53, line: 145, baseType: !37, size: 8, offset: 104)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !125, file: !53, line: 146, baseType: !37, size: 8, offset: 112)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !125, file: !53, line: 147, baseType: !37, size: 8, offset: 120)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !125, file: !53, line: 148, baseType: !51, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !125, file: !53, line: 149, baseType: !51, size: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !125, file: !53, line: 150, baseType: !95, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !125, file: !53, line: 154, baseType: !139, size: 64, offset: 320)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !125, file: !53, line: 151, size: 64, elements: !140)
!140 = !{!141, !437}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !139, file: !53, line: 152, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!33, !146}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !148, line: 37, size: 9024, elements: !149)
!148 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !383, !384, !385, !386, !387, !391, !393, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !420, !421, !422, !423, !424, !425, !426, !427, !429, !435}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !147, file: !148, line: 38, baseType: !146, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !147, file: !148, line: 39, baseType: !37, size: 8, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !147, file: !148, line: 40, baseType: !37, size: 8, offset: 72)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !147, file: !148, line: 41, baseType: !28, size: 16, offset: 80)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !147, file: !148, line: 42, baseType: !37, size: 8, offset: 96)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !147, file: !148, line: 43, baseType: !37, size: 8, offset: 104)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !147, file: !148, line: 44, baseType: !37, size: 8, offset: 112)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !147, file: !148, line: 45, baseType: !158, size: 16, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !34, line: 445, baseType: !28)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !147, file: !148, line: 46, baseType: !37, size: 8, offset: 144)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !147, file: !148, line: 47, baseType: !37, size: 8, offset: 152)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !147, file: !148, line: 48, baseType: !37, size: 8, offset: 160)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !147, file: !148, line: 49, baseType: !37, size: 8, offset: 168)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !147, file: !148, line: 50, baseType: !37, size: 8, offset: 176)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !147, file: !148, line: 51, baseType: !37, size: 8, offset: 184)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !147, file: !148, line: 52, baseType: !37, size: 8, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !147, file: !148, line: 53, baseType: !37, size: 8, offset: 200)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !147, file: !148, line: 54, baseType: !95, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !147, file: !148, line: 55, baseType: !35, size: 32, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !147, file: !148, line: 56, baseType: !35, size: 32, offset: 352)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !147, file: !148, line: 57, baseType: !35, size: 32, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !147, file: !148, line: 58, baseType: !35, size: 32, offset: 416)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !147, file: !148, line: 60, baseType: !173, size: 640, offset: 448)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 909, size: 640, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180, !264, !265, !381, !382}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !173, file: !6, line: 910, baseType: !95, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !173, file: !6, line: 911, baseType: !95, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !173, file: !6, line: 912, baseType: !95, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !173, file: !6, line: 913, baseType: !95, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !173, file: !6, line: 914, baseType: !95, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !173, file: !6, line: 915, baseType: !181, size: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 891, size: 1600, elements: !183)
!183 = !{!184, !204, !220}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !182, file: !6, line: 892, baseType: !185, size: 448)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 844, size: 448, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194, !203}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !185, file: !6, line: 845, baseType: !181, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !185, file: !6, line: 845, baseType: !37, size: 8, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !185, file: !6, line: 845, baseType: !37, size: 8, offset: 72)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !185, file: !6, line: 845, baseType: !28, size: 16, offset: 80)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !185, file: !6, line: 845, baseType: !95, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !185, file: !6, line: 845, baseType: !181, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !185, file: !6, line: 845, baseType: !47, size: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !185, file: !6, line: 845, baseType: !195, size: 64, offset: 320)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 732, size: 64, elements: !196)
!196 = !{!197, !198, !199, !200, !201, !202}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !195, file: !6, line: 733, baseType: !42, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !195, file: !6, line: 734, baseType: !35, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !195, file: !6, line: 735, baseType: !45, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !195, file: !6, line: 736, baseType: !95, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !195, file: !6, line: 737, baseType: !45, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !195, file: !6, line: 738, baseType: !181, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !185, file: !6, line: 845, baseType: !37, size: 8, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !182, file: !6, line: 893, baseType: !205, size: 640)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 851, size: 640, elements: !206)
!206 = !{!207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !205, file: !6, line: 852, baseType: !181, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !205, file: !6, line: 852, baseType: !37, size: 8, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !205, file: !6, line: 852, baseType: !37, size: 8, offset: 72)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !205, file: !6, line: 852, baseType: !28, size: 16, offset: 80)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !205, file: !6, line: 852, baseType: !95, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !205, file: !6, line: 852, baseType: !181, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !205, file: !6, line: 852, baseType: !47, size: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !205, file: !6, line: 852, baseType: !195, size: 64, offset: 320)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !205, file: !6, line: 852, baseType: !37, size: 8, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !205, file: !6, line: 852, baseType: !45, size: 64, offset: 448)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !205, file: !6, line: 853, baseType: !95, size: 64, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !205, file: !6, line: 854, baseType: !35, size: 32, offset: 576)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !205, file: !6, line: 855, baseType: !35, size: 32, offset: 608)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !182, file: !6, line: 894, baseType: !221, size: 1600)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 862, size: 1600, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !221, file: !6, line: 863, baseType: !181, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !221, file: !6, line: 863, baseType: !37, size: 8, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !221, file: !6, line: 863, baseType: !37, size: 8, offset: 72)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !221, file: !6, line: 863, baseType: !28, size: 16, offset: 80)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !221, file: !6, line: 863, baseType: !95, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !221, file: !6, line: 863, baseType: !181, size: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !221, file: !6, line: 863, baseType: !47, size: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !221, file: !6, line: 863, baseType: !195, size: 64, offset: 320)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !221, file: !6, line: 863, baseType: !37, size: 8, offset: 384)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !221, file: !6, line: 863, baseType: !181, size: 64, offset: 448)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !221, file: !6, line: 864, baseType: !181, size: 64, offset: 512)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !221, file: !6, line: 865, baseType: !45, size: 64, offset: 576)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !221, file: !6, line: 866, baseType: !37, size: 8, offset: 640)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !221, file: !6, line: 867, baseType: !45, size: 64, offset: 704)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !221, file: !6, line: 868, baseType: !45, size: 64, offset: 768)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !221, file: !6, line: 869, baseType: !45, size: 64, offset: 832)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !221, file: !6, line: 870, baseType: !240, size: 32, offset: 896)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 4)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !221, file: !6, line: 871, baseType: !35, size: 32, offset: 928)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !221, file: !6, line: 872, baseType: !35, size: 32, offset: 960)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !221, file: !6, line: 873, baseType: !35, size: 32, offset: 992)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !221, file: !6, line: 874, baseType: !35, size: 32, offset: 1024)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !221, file: !6, line: 875, baseType: !35, size: 32, offset: 1056)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !221, file: !6, line: 876, baseType: !35, size: 32, offset: 1088)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !221, file: !6, line: 877, baseType: !35, size: 32, offset: 1120)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !221, file: !6, line: 878, baseType: !35, size: 32, offset: 1152)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !221, file: !6, line: 879, baseType: !35, size: 32, offset: 1184)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !221, file: !6, line: 880, baseType: !35, size: 32, offset: 1216)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !221, file: !6, line: 881, baseType: !35, size: 32, offset: 1248)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !221, file: !6, line: 882, baseType: !35, size: 32, offset: 1280)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !221, file: !6, line: 883, baseType: !35, size: 32, offset: 1312)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !221, file: !6, line: 884, baseType: !28, size: 16, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !221, file: !6, line: 885, baseType: !37, size: 8, offset: 1360)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !221, file: !6, line: 886, baseType: !37, size: 8, offset: 1368)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !221, file: !6, line: 887, baseType: !37, size: 8, offset: 1376)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !221, file: !6, line: 888, baseType: !261, size: 160, offset: 1384)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 160, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 20)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !173, file: !6, line: 916, baseType: !47, size: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !173, file: !6, line: 917, baseType: !266, size: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 679, size: 640, elements: !268)
!268 = !{!269, !277, !290, !299, !308, !321, !335, !347, !359}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !267, file: !6, line: 680, baseType: !270, size: 128)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 575, size: 128, elements: !271)
!271 = !{!272, !273, !274, !275, !276}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !270, file: !6, line: 576, baseType: !123, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !270, file: !6, line: 576, baseType: !37, size: 8, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !270, file: !6, line: 576, baseType: !37, size: 8, offset: 72)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !270, file: !6, line: 576, baseType: !28, size: 16, offset: 80)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !270, file: !6, line: 576, baseType: !28, size: 16, offset: 96)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !267, file: !6, line: 681, baseType: !278, size: 384)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 604, size: 384, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !6, line: 605, baseType: !123, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !278, file: !6, line: 605, baseType: !37, size: 8, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !6, line: 605, baseType: !37, size: 8, offset: 72)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !278, file: !6, line: 605, baseType: !28, size: 16, offset: 80)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !278, file: !6, line: 605, baseType: !28, size: 16, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !278, file: !6, line: 606, baseType: !28, size: 16, offset: 112)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !278, file: !6, line: 607, baseType: !181, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !278, file: !6, line: 608, baseType: !95, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !278, file: !6, line: 609, baseType: !95, size: 64, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !278, file: !6, line: 610, baseType: !42, size: 64, offset: 320)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !267, file: !6, line: 682, baseType: !291, size: 192)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 582, size: 192, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !291, file: !6, line: 583, baseType: !123, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !291, file: !6, line: 583, baseType: !37, size: 8, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !291, file: !6, line: 583, baseType: !37, size: 8, offset: 72)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !291, file: !6, line: 583, baseType: !28, size: 16, offset: 80)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !291, file: !6, line: 583, baseType: !28, size: 16, offset: 96)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !291, file: !6, line: 584, baseType: !51, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !267, file: !6, line: 683, baseType: !300, size: 192)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 616, size: 192, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !6, line: 617, baseType: !123, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !300, file: !6, line: 617, baseType: !37, size: 8, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !6, line: 617, baseType: !37, size: 8, offset: 72)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !300, file: !6, line: 617, baseType: !28, size: 16, offset: 80)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !300, file: !6, line: 617, baseType: !28, size: 16, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !300, file: !6, line: 618, baseType: !47, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !267, file: !6, line: 684, baseType: !309, size: 448)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 621, size: 448, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !6, line: 622, baseType: !123, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !309, file: !6, line: 622, baseType: !37, size: 8, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !6, line: 622, baseType: !37, size: 8, offset: 72)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !309, file: !6, line: 622, baseType: !28, size: 16, offset: 80)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !309, file: !6, line: 622, baseType: !28, size: 16, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !309, file: !6, line: 623, baseType: !35, size: 32, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !309, file: !6, line: 624, baseType: !181, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !309, file: !6, line: 625, baseType: !95, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !309, file: !6, line: 626, baseType: !95, size: 64, offset: 320)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !309, file: !6, line: 627, baseType: !35, size: 32, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !267, file: !6, line: 685, baseType: !322, size: 512)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 590, size: 512, elements: !323)
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !322, file: !6, line: 591, baseType: !123, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !322, file: !6, line: 591, baseType: !37, size: 8, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !6, line: 591, baseType: !37, size: 8, offset: 72)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !322, file: !6, line: 591, baseType: !28, size: 16, offset: 80)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !322, file: !6, line: 591, baseType: !28, size: 16, offset: 96)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !322, file: !6, line: 592, baseType: !35, size: 32, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !322, file: !6, line: 593, baseType: !51, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !322, file: !6, line: 594, baseType: !51, size: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !322, file: !6, line: 595, baseType: !146, size: 64, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !322, file: !6, line: 596, baseType: !123, size: 64, offset: 384)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !322, file: !6, line: 597, baseType: !35, size: 32, offset: 448)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !267, file: !6, line: 686, baseType: !336, size: 320)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 634, size: 320, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !6, line: 635, baseType: !123, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !336, file: !6, line: 635, baseType: !37, size: 8, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !6, line: 635, baseType: !37, size: 8, offset: 72)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !336, file: !6, line: 635, baseType: !28, size: 16, offset: 80)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !336, file: !6, line: 635, baseType: !28, size: 16, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !336, file: !6, line: 636, baseType: !37, size: 8, offset: 112)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !336, file: !6, line: 637, baseType: !146, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !336, file: !6, line: 638, baseType: !51, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !336, file: !6, line: 639, baseType: !42, size: 64, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !267, file: !6, line: 687, baseType: !348, size: 640)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 646, size: 640, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !6, line: 647, baseType: !123, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !348, file: !6, line: 647, baseType: !37, size: 8, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !6, line: 647, baseType: !37, size: 8, offset: 72)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !348, file: !6, line: 647, baseType: !28, size: 16, offset: 80)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !348, file: !6, line: 647, baseType: !28, size: 16, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !348, file: !6, line: 648, baseType: !356, size: 512, offset: 128)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 512, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 8)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !267, file: !6, line: 688, baseType: !360, size: 320)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 669, size: 320, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !6, line: 670, baseType: !123, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !360, file: !6, line: 670, baseType: !37, size: 8, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !360, file: !6, line: 670, baseType: !37, size: 8, offset: 72)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !360, file: !6, line: 670, baseType: !28, size: 16, offset: 80)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !360, file: !6, line: 670, baseType: !28, size: 16, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !360, file: !6, line: 671, baseType: !37, size: 8, offset: 112)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !360, file: !6, line: 672, baseType: !47, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !360, file: !6, line: 673, baseType: !51, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !360, file: !6, line: 674, baseType: !371, size: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 660, size: 128, elements: !373)
!373 = !{!374, !380}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !372, file: !6, line: 661, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !34, line: 1061, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379, !35, !123}
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !34, line: 424, baseType: !123)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !372, file: !6, line: 662, baseType: !123, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !173, file: !6, line: 918, baseType: !181, size: 64, offset: 512)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !173, file: !6, line: 919, baseType: !35, size: 32, offset: 576)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !147, file: !148, line: 61, baseType: !35, size: 32, offset: 1088)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !147, file: !148, line: 62, baseType: !35, size: 32, offset: 1120)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !147, file: !148, line: 63, baseType: !28, size: 16, offset: 1152)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !147, file: !148, line: 64, baseType: !37, size: 8, offset: 1168)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !147, file: !148, line: 66, baseType: !388, size: 2688, offset: 1216)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 2688, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 7)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !147, file: !148, line: 67, baseType: !392, size: 3072, offset: 3904)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 3072, elements: !357)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !147, file: !148, line: 68, baseType: !394, size: 576, offset: 6976)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 576, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 9)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !147, file: !148, line: 69, baseType: !110, size: 64, offset: 7552)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !147, file: !148, line: 71, baseType: !95, size: 64, offset: 7616)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !147, file: !148, line: 72, baseType: !110, size: 64, offset: 7680)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !147, file: !148, line: 73, baseType: !266, size: 64, offset: 7744)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !147, file: !148, line: 74, baseType: !47, size: 64, offset: 7808)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !147, file: !148, line: 75, baseType: !51, size: 64, offset: 7872)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !147, file: !148, line: 76, baseType: !47, size: 64, offset: 7936)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !147, file: !148, line: 77, baseType: !181, size: 64, offset: 8000)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !147, file: !148, line: 78, baseType: !51, size: 64, offset: 8064)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !147, file: !148, line: 79, baseType: !47, size: 64, offset: 8128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !147, file: !148, line: 80, baseType: !45, size: 64, offset: 8192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !147, file: !148, line: 81, baseType: !181, size: 64, offset: 8256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !147, file: !148, line: 82, baseType: !410, size: 64, offset: 8320)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 718, size: 128, elements: !413)
!413 = !{!414, !415, !416, !417, !418, !419}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !412, file: !6, line: 722, baseType: !35, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !412, file: !6, line: 723, baseType: !35, size: 32, offset: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !412, file: !6, line: 724, baseType: !28, size: 16, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !412, file: !6, line: 725, baseType: !37, size: 8, offset: 80)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !412, file: !6, line: 726, baseType: !37, size: 8, offset: 88)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !412, file: !6, line: 727, baseType: !37, size: 8, offset: 96)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !147, file: !148, line: 83, baseType: !181, size: 64, offset: 8384)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !147, file: !148, line: 84, baseType: !51, size: 64, offset: 8448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !147, file: !148, line: 85, baseType: !266, size: 64, offset: 8512)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !147, file: !148, line: 86, baseType: !51, size: 64, offset: 8576)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !147, file: !148, line: 87, baseType: !266, size: 64, offset: 8640)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !147, file: !148, line: 88, baseType: !181, size: 64, offset: 8704)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !147, file: !148, line: 89, baseType: !181, size: 64, offset: 8768)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !147, file: !148, line: 90, baseType: !428, size: 64, offset: 8832)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !147, file: !148, line: 91, baseType: !430, size: 64, offset: 8896)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 652, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!33, !146, !434}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !147, file: !148, line: 92, baseType: !436, size: 64, offset: 8960)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 656, baseType: !143)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !139, file: !53, line: 153, baseType: !51, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !125, file: !53, line: 156, baseType: !35, size: 32, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !125, file: !53, line: 157, baseType: !158, size: 16, offset: 416)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !125, file: !53, line: 158, baseType: !37, size: 8, offset: 432)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !52, file: !53, line: 377, baseType: !442, size: 576)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !53, line: 122, size: 576, elements: !443)
!443 = !{!444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !442, file: !53, line: 123, baseType: !51, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !442, file: !53, line: 123, baseType: !37, size: 8, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !442, file: !53, line: 123, baseType: !37, size: 8, offset: 72)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !442, file: !53, line: 123, baseType: !28, size: 16, offset: 80)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !442, file: !53, line: 123, baseType: !37, size: 8, offset: 96)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !442, file: !53, line: 123, baseType: !37, size: 8, offset: 104)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !442, file: !53, line: 124, baseType: !28, size: 16, offset: 112)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !442, file: !53, line: 125, baseType: !123, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !442, file: !53, line: 126, baseType: !42, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !442, file: !53, line: 127, baseType: !428, size: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !442, file: !53, line: 128, baseType: !51, size: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !442, file: !53, line: 129, baseType: !51, size: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !442, file: !53, line: 130, baseType: !47, size: 64, offset: 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !442, file: !53, line: 131, baseType: !37, size: 8, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !52, file: !53, line: 378, baseType: !459, size: 512)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !53, line: 134, size: 512, elements: !460)
!460 = !{!461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !472, !473}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !459, file: !53, line: 135, baseType: !51, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !459, file: !53, line: 135, baseType: !37, size: 8, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !459, file: !53, line: 135, baseType: !37, size: 8, offset: 72)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !459, file: !53, line: 135, baseType: !28, size: 16, offset: 80)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !459, file: !53, line: 135, baseType: !37, size: 8, offset: 96)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !459, file: !53, line: 135, baseType: !37, size: 8, offset: 104)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !459, file: !53, line: 136, baseType: !47, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !459, file: !53, line: 137, baseType: !51, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !459, file: !53, line: 138, baseType: !51, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !459, file: !53, line: 139, baseType: !471, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !34, line: 129, baseType: !42)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !459, file: !53, line: 140, baseType: !35, size: 32, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !459, file: !53, line: 141, baseType: !123, size: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !52, file: !53, line: 379, baseType: !475, size: 320)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !53, line: 185, size: 320, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482, !486}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !475, file: !53, line: 186, baseType: !51, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !475, file: !53, line: 186, baseType: !37, size: 8, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !475, file: !53, line: 186, baseType: !37, size: 8, offset: 72)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !475, file: !53, line: 186, baseType: !28, size: 16, offset: 80)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !475, file: !53, line: 186, baseType: !37, size: 8, offset: 96)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !475, file: !53, line: 186, baseType: !483, size: 128, offset: 128)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 2)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !475, file: !53, line: 186, baseType: !51, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !52, file: !53, line: 380, baseType: !488, size: 384)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !53, line: 188, size: 384, elements: !489)
!489 = !{!490, !491, !492, !493, !494, !495, !496, !497}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !488, file: !53, line: 189, baseType: !51, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !488, file: !53, line: 189, baseType: !37, size: 8, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !488, file: !53, line: 189, baseType: !37, size: 8, offset: 72)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !488, file: !53, line: 189, baseType: !28, size: 16, offset: 80)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !488, file: !53, line: 189, baseType: !37, size: 8, offset: 96)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !488, file: !53, line: 190, baseType: !483, size: 128, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !488, file: !53, line: 190, baseType: !51, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !488, file: !53, line: 190, baseType: !498, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !500)
!500 = !{!501, !502, !503, !504, !512, !527, !559, !560, !561, !562, !563, !564}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !499, file: !6, line: 481, baseType: !47, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !499, file: !6, line: 482, baseType: !498, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !499, file: !6, line: 483, baseType: !498, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !499, file: !6, line: 484, baseType: !505, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !507)
!507 = !{!508, !509, !510, !511}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !506, file: !6, line: 498, baseType: !505, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !506, file: !6, line: 499, baseType: !505, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !506, file: !6, line: 500, baseType: !498, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !506, file: !6, line: 501, baseType: !35, size: 32, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !499, file: !6, line: 485, baseType: !513, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !515)
!515 = !{!516, !521, !522, !523, !524, !525, !526}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !514, file: !6, line: 467, baseType: !517, size: 128)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !517, file: !6, line: 460, baseType: !37, size: 8)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !517, file: !6, line: 461, baseType: !42, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !514, file: !6, line: 468, baseType: !517, size: 128, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !514, file: !6, line: 469, baseType: !28, size: 16, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !514, file: !6, line: 470, baseType: !37, size: 8, offset: 272)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !514, file: !6, line: 471, baseType: !37, size: 8, offset: 280)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !514, file: !6, line: 472, baseType: !37, size: 8, offset: 288)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !514, file: !6, line: 473, baseType: !37, size: 8, offset: 296)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !499, file: !6, line: 486, baseType: !528, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !530)
!530 = !{!531, !554, !555, !556, !557, !558}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !529, file: !6, line: 449, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !533)
!533 = !{!534, !535, !548}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !532, file: !6, line: 439, baseType: !47, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !532, file: !6, line: 440, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !538)
!538 = !{!539, !544, !545, !546, !547}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !537, file: !6, line: 420, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !34, line: 1058, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!35, !379, !35, !123}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !537, file: !6, line: 421, baseType: !123, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !537, file: !6, line: 422, baseType: !47, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !537, file: !6, line: 423, baseType: !37, size: 8, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !537, file: !6, line: 424, baseType: !37, size: 8, offset: 200)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !532, file: !6, line: 441, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !551)
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !550, file: !6, line: 430, baseType: !47, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !550, file: !6, line: 431, baseType: !549, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !529, file: !6, line: 450, baseType: !513, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !529, file: !6, line: 451, baseType: !37, size: 8, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !529, file: !6, line: 452, baseType: !37, size: 8, offset: 136)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !529, file: !6, line: 453, baseType: !37, size: 8, offset: 144)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !529, file: !6, line: 454, baseType: !37, size: 8, offset: 152)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !499, file: !6, line: 487, baseType: !42, size: 64, offset: 384)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !499, file: !6, line: 488, baseType: !35, size: 32, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !499, file: !6, line: 489, baseType: !28, size: 16, offset: 480)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !499, file: !6, line: 490, baseType: !28, size: 16, offset: 496)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !499, file: !6, line: 491, baseType: !37, size: 8, offset: 512)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !499, file: !6, line: 492, baseType: !37, size: 8, offset: 520)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !52, file: !53, line: 381, baseType: !566, size: 384)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !53, line: 193, size: 384, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !573, !574, !575, !576}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !566, file: !53, line: 194, baseType: !51, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !566, file: !53, line: 194, baseType: !37, size: 8, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !566, file: !53, line: 194, baseType: !37, size: 8, offset: 72)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !566, file: !53, line: 194, baseType: !28, size: 16, offset: 80)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !566, file: !53, line: 194, baseType: !37, size: 8, offset: 96)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !566, file: !53, line: 194, baseType: !483, size: 128, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !566, file: !53, line: 194, baseType: !51, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !566, file: !53, line: 194, baseType: !35, size: 32, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !566, file: !53, line: 195, baseType: !35, size: 32, offset: 352)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !52, file: !53, line: 382, baseType: !578, size: 384)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !53, line: 198, size: 384, elements: !579)
!579 = !{!580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !578, file: !53, line: 199, baseType: !51, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !578, file: !53, line: 199, baseType: !37, size: 8, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !578, file: !53, line: 199, baseType: !37, size: 8, offset: 72)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !578, file: !53, line: 199, baseType: !28, size: 16, offset: 80)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !578, file: !53, line: 199, baseType: !37, size: 8, offset: 96)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !578, file: !53, line: 201, baseType: !37, size: 8, offset: 104)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !578, file: !53, line: 202, baseType: !37, size: 8, offset: 112)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !578, file: !53, line: 203, baseType: !483, size: 128, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !578, file: !53, line: 203, baseType: !51, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !578, file: !53, line: 203, baseType: !590, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !34, line: 128, baseType: !42)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !52, file: !53, line: 383, baseType: !592, size: 320)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !53, line: 206, size: 320, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !600}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !592, file: !53, line: 207, baseType: !51, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !592, file: !53, line: 207, baseType: !37, size: 8, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !592, file: !53, line: 207, baseType: !37, size: 8, offset: 72)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !592, file: !53, line: 207, baseType: !28, size: 16, offset: 80)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !592, file: !53, line: 207, baseType: !37, size: 8, offset: 96)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !592, file: !53, line: 207, baseType: !483, size: 128, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !592, file: !53, line: 207, baseType: !51, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !52, file: !53, line: 384, baseType: !602, size: 384)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !53, line: 234, size: 384, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !602, file: !53, line: 235, baseType: !51, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !602, file: !53, line: 235, baseType: !37, size: 8, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !602, file: !53, line: 235, baseType: !37, size: 8, offset: 72)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !602, file: !53, line: 235, baseType: !28, size: 16, offset: 80)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !602, file: !53, line: 235, baseType: !37, size: 8, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !602, file: !53, line: 235, baseType: !37, size: 8, offset: 104)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !602, file: !53, line: 235, baseType: !37, size: 8, offset: 112)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !602, file: !53, line: 235, baseType: !37, size: 8, offset: 120)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !602, file: !53, line: 235, baseType: !47, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !602, file: !53, line: 235, baseType: !35, size: 32, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !602, file: !53, line: 235, baseType: !35, size: 32, offset: 224)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !602, file: !53, line: 235, baseType: !35, size: 32, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !602, file: !53, line: 235, baseType: !37, size: 8, offset: 288)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !602, file: !53, line: 235, baseType: !37, size: 8, offset: 296)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !602, file: !53, line: 235, baseType: !51, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !52, file: !53, line: 385, baseType: !620, size: 576)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !53, line: 238, size: 576, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !620, file: !53, line: 239, baseType: !51, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !620, file: !53, line: 239, baseType: !37, size: 8, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !620, file: !53, line: 239, baseType: !37, size: 8, offset: 72)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !620, file: !53, line: 239, baseType: !28, size: 16, offset: 80)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !620, file: !53, line: 239, baseType: !37, size: 8, offset: 96)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !620, file: !53, line: 239, baseType: !37, size: 8, offset: 104)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !620, file: !53, line: 239, baseType: !37, size: 8, offset: 112)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !620, file: !53, line: 239, baseType: !37, size: 8, offset: 120)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !620, file: !53, line: 239, baseType: !47, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !620, file: !53, line: 239, baseType: !35, size: 32, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !620, file: !53, line: 239, baseType: !35, size: 32, offset: 224)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !620, file: !53, line: 239, baseType: !35, size: 32, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !620, file: !53, line: 239, baseType: !37, size: 8, offset: 288)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !620, file: !53, line: 239, baseType: !37, size: 8, offset: 296)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !620, file: !53, line: 239, baseType: !28, size: 16, offset: 304)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !620, file: !53, line: 240, baseType: !51, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !620, file: !53, line: 241, baseType: !95, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !620, file: !53, line: 242, baseType: !28, size: 16, offset: 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !620, file: !53, line: 243, baseType: !95, size: 64, offset: 512)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !52, file: !53, line: 386, baseType: !642, size: 384)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !53, line: 263, size: 384, elements: !643)
!643 = !{!644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !642, file: !53, line: 264, baseType: !51, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !642, file: !53, line: 264, baseType: !37, size: 8, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !642, file: !53, line: 264, baseType: !37, size: 8, offset: 72)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !642, file: !53, line: 264, baseType: !28, size: 16, offset: 80)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !642, file: !53, line: 264, baseType: !37, size: 8, offset: 96)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !642, file: !53, line: 264, baseType: !37, size: 8, offset: 104)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !642, file: !53, line: 264, baseType: !37, size: 8, offset: 112)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !642, file: !53, line: 264, baseType: !37, size: 8, offset: 120)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !642, file: !53, line: 264, baseType: !47, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !642, file: !53, line: 264, baseType: !35, size: 32, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !642, file: !53, line: 264, baseType: !35, size: 32, offset: 224)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !642, file: !53, line: 264, baseType: !35, size: 32, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !642, file: !53, line: 264, baseType: !37, size: 8, offset: 288)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !642, file: !53, line: 264, baseType: !37, size: 8, offset: 296)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !642, file: !53, line: 264, baseType: !37, size: 8, offset: 304)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !642, file: !53, line: 265, baseType: !51, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !52, file: !53, line: 387, baseType: !661, size: 448)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !53, line: 246, size: 448, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !661, file: !53, line: 247, baseType: !51, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !661, file: !53, line: 247, baseType: !37, size: 8, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !661, file: !53, line: 247, baseType: !37, size: 8, offset: 72)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !661, file: !53, line: 247, baseType: !28, size: 16, offset: 80)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !53, line: 247, baseType: !37, size: 8, offset: 96)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !661, file: !53, line: 247, baseType: !37, size: 8, offset: 104)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !661, file: !53, line: 247, baseType: !37, size: 8, offset: 112)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !661, file: !53, line: 247, baseType: !37, size: 8, offset: 120)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !661, file: !53, line: 247, baseType: !47, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !661, file: !53, line: 247, baseType: !35, size: 32, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !661, file: !53, line: 247, baseType: !35, size: 32, offset: 224)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !661, file: !53, line: 247, baseType: !35, size: 32, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !661, file: !53, line: 247, baseType: !37, size: 8, offset: 288)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !661, file: !53, line: 247, baseType: !37, size: 8, offset: 296)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !661, file: !53, line: 247, baseType: !51, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !661, file: !53, line: 248, baseType: !51, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !52, file: !53, line: 388, baseType: !680, size: 448)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !53, line: 251, size: 448, elements: !681)
!681 = !{!682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !680, file: !53, line: 252, baseType: !51, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !680, file: !53, line: 252, baseType: !37, size: 8, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !680, file: !53, line: 252, baseType: !37, size: 8, offset: 72)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !680, file: !53, line: 252, baseType: !28, size: 16, offset: 80)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !53, line: 252, baseType: !37, size: 8, offset: 96)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !680, file: !53, line: 252, baseType: !37, size: 8, offset: 104)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !680, file: !53, line: 252, baseType: !37, size: 8, offset: 112)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !680, file: !53, line: 252, baseType: !37, size: 8, offset: 120)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !680, file: !53, line: 252, baseType: !47, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !680, file: !53, line: 252, baseType: !35, size: 32, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !680, file: !53, line: 252, baseType: !35, size: 32, offset: 224)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !680, file: !53, line: 252, baseType: !35, size: 32, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !680, file: !53, line: 252, baseType: !37, size: 8, offset: 288)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !680, file: !53, line: 252, baseType: !37, size: 8, offset: 296)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !680, file: !53, line: 257, baseType: !51, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !680, file: !53, line: 258, baseType: !51, size: 64, offset: 384)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !52, file: !53, line: 389, baseType: !699, size: 512)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !53, line: 274, size: 512, elements: !700)
!700 = !{!701, !702, !703, !704, !705, !706, !707, !708, !709, !710}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !699, file: !53, line: 275, baseType: !51, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !699, file: !53, line: 275, baseType: !37, size: 8, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !699, file: !53, line: 275, baseType: !37, size: 8, offset: 72)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !699, file: !53, line: 275, baseType: !28, size: 16, offset: 80)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !699, file: !53, line: 275, baseType: !37, size: 8, offset: 96)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !699, file: !53, line: 275, baseType: !47, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !699, file: !53, line: 276, baseType: !35, size: 32, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !699, file: !53, line: 277, baseType: !375, size: 64, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !699, file: !53, line: 278, baseType: !123, size: 64, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !699, file: !53, line: 279, baseType: !483, size: 128, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !52, file: !53, line: 390, baseType: !712, size: 576)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !53, line: 282, size: 576, elements: !713)
!713 = !{!714, !715, !716, !717, !718, !719, !720, !721, !727, !728, !729, !730, !736, !737}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !712, file: !53, line: 283, baseType: !51, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !712, file: !53, line: 283, baseType: !37, size: 8, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !712, file: !53, line: 283, baseType: !37, size: 8, offset: 72)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !712, file: !53, line: 283, baseType: !28, size: 16, offset: 80)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !712, file: !53, line: 283, baseType: !37, size: 8, offset: 96)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !712, file: !53, line: 283, baseType: !37, size: 8, offset: 104)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !712, file: !53, line: 284, baseType: !37, size: 8, offset: 112)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !712, file: !53, line: 285, baseType: !722, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !34, line: 1093, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!33, !35, !471, !35, !726, !123, !123}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !712, file: !53, line: 286, baseType: !47, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !712, file: !53, line: 287, baseType: !123, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !712, file: !53, line: 288, baseType: !123, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !712, file: !53, line: 289, baseType: !731, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !34, line: 1126, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!33, !379, !35, !123, !735}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !712, file: !53, line: 290, baseType: !51, size: 64, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !712, file: !53, line: 291, baseType: !51, size: 64, offset: 512)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !52, file: !53, line: 391, baseType: !739, size: 512)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !53, line: 309, size: 512, elements: !740)
!740 = !{!741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !739, file: !53, line: 310, baseType: !51, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !739, file: !53, line: 310, baseType: !37, size: 8, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !739, file: !53, line: 310, baseType: !37, size: 8, offset: 72)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !739, file: !53, line: 310, baseType: !28, size: 16, offset: 80)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !739, file: !53, line: 310, baseType: !37, size: 8, offset: 96)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !739, file: !53, line: 310, baseType: !37, size: 8, offset: 104)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !739, file: !53, line: 311, baseType: !37, size: 8, offset: 112)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !739, file: !53, line: 312, baseType: !37, size: 8, offset: 120)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !739, file: !53, line: 313, baseType: !123, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !739, file: !53, line: 314, baseType: !47, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !739, file: !53, line: 315, baseType: !110, size: 64, offset: 256)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !739, file: !53, line: 316, baseType: !95, size: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !739, file: !53, line: 317, baseType: !95, size: 64, offset: 384)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !739, file: !53, line: 318, baseType: !35, size: 32, offset: 448)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !52, file: !53, line: 392, baseType: !756, size: 448)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !53, line: 342, size: 448, elements: !757)
!757 = !{!758, !759, !760, !761, !762, !763, !764, !765, !766, !767}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !756, file: !53, line: 343, baseType: !51, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !756, file: !53, line: 343, baseType: !37, size: 8, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !756, file: !53, line: 343, baseType: !37, size: 8, offset: 72)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !756, file: !53, line: 343, baseType: !28, size: 16, offset: 80)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !756, file: !53, line: 343, baseType: !37, size: 8, offset: 96)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !756, file: !53, line: 343, baseType: !47, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !756, file: !53, line: 344, baseType: !47, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !756, file: !53, line: 345, baseType: !123, size: 64, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !756, file: !53, line: 346, baseType: !95, size: 64, offset: 320)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !756, file: !53, line: 347, baseType: !35, size: 32, offset: 384)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !52, file: !53, line: 393, baseType: !769, size: 256)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !53, line: 352, size: 256, elements: !770)
!770 = !{!771, !772, !773, !774, !775, !776, !781}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !769, file: !53, line: 353, baseType: !51, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !769, file: !53, line: 353, baseType: !37, size: 8, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !769, file: !53, line: 353, baseType: !37, size: 8, offset: 72)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !769, file: !53, line: 353, baseType: !28, size: 16, offset: 80)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !769, file: !53, line: 353, baseType: !37, size: 8, offset: 96)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !769, file: !53, line: 353, baseType: !777, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !34, line: 1064, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !379, !123}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !769, file: !53, line: 354, baseType: !123, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !52, file: !53, line: 394, baseType: !783, size: 192)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !53, line: 359, size: 192, elements: !784)
!784 = !{!785, !786, !787, !788, !789, !790}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !783, file: !53, line: 360, baseType: !51, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !783, file: !53, line: 360, baseType: !37, size: 8, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !783, file: !53, line: 360, baseType: !37, size: 8, offset: 72)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !783, file: !53, line: 360, baseType: !28, size: 16, offset: 80)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !783, file: !53, line: 360, baseType: !37, size: 8, offset: 96)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !783, file: !53, line: 360, baseType: !51, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !52, file: !53, line: 401, baseType: !48, size: 384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !48, file: !6, line: 135, baseType: !37, size: 8, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !48, file: !6, line: 136, baseType: !37, size: 8, offset: 72)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !48, file: !6, line: 137, baseType: !28, size: 16, offset: 80)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !48, file: !6, line: 138, baseType: !796, size: 32, offset: 96)
!796 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !797, line: 328, size: 32, elements: !798)
!797 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !796, file: !797, line: 329, baseType: !35, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !796, file: !797, line: 330, baseType: !240, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !48, file: !6, line: 139, baseType: !47, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !48, file: !6, line: 140, baseType: !47, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !48, file: !6, line: 141, baseType: !47, size: 64, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !48, file: !6, line: 142, baseType: !158, size: 16, offset: 320)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !806, line: 42, baseType: !807)
!806 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!807 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !806, line: 154, baseType: !7)
!809 = !{!810, !815, !0, !820, !825, !830, !835}
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !3, line: 156, type: !812, isLocal: true, isDefinition: true)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 240, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 30)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !3, line: 574, type: !817, isLocal: true, isDefinition: true)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 248, elements: !818)
!818 = !{!819}
!819 = !DISubrange(count: 31)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(scope: null, file: !3, line: 297, type: !822, isLocal: true, isDefinition: true)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 392, elements: !823)
!823 = !{!824}
!824 = !DISubrange(count: 49)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(scope: null, file: !3, line: 432, type: !827, isLocal: true, isDefinition: true)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 400, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 50)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(scope: null, file: !3, line: 446, type: !832, isLocal: true, isDefinition: true)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 280, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 35)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(scope: null, file: !18, line: 480, type: !837, isLocal: true, isDefinition: true)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 168, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 21)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !841, size: 64, elements: !357)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!842 = !{i32 7, !"Dwarf Version", i32 5}
!843 = !{i32 2, !"Debug Info Version", i32 3}
!844 = !{i32 1, !"wchar_size", i32 2}
!845 = !{i32 8, !"cf-protection-branch", i32 1}
!846 = !{i32 4, !"function_return_thunk_extern", i32 1}
!847 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!848 = !{i32 1, !"Code Model", i32 2}
!849 = !{i32 1, !"override-stack-alignment", i32 8}
!850 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!851 = distinct !DISubprogram(name: "acpi_ds_create_buffer_field", scope: !3, file: !3, line: 120, type: !852, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !854)
!852 = !DISubroutineType(types: !853)
!853 = !{!33, !181, !146}
!854 = !{!855, !856, !857, !858, !859, !860, !861, !862, !863}
!855 = !DILocalVariable(name: "op", arg: 1, scope: !851, file: !3, line: 120, type: !181)
!856 = !DILocalVariable(name: "walk_state", arg: 2, scope: !851, file: !3, line: 121, type: !146)
!857 = !DILocalVariable(name: "arg", scope: !851, file: !3, line: 123, type: !181)
!858 = !DILocalVariable(name: "node", scope: !851, file: !3, line: 124, type: !47)
!859 = !DILocalVariable(name: "status", scope: !851, file: !3, line: 125, type: !33)
!860 = !DILocalVariable(name: "obj_desc", scope: !851, file: !3, line: 126, type: !51)
!861 = !DILocalVariable(name: "second_desc", scope: !851, file: !3, line: 127, type: !51)
!862 = !DILocalVariable(name: "flags", scope: !851, file: !3, line: 128, type: !35)
!863 = !DILabel(scope: !851, name: "cleanup", file: !3, line: 236)
!864 = !DILocation(line: 120, column: 54, scope: !851)
!865 = !DILocation(line: 121, column: 32, scope: !851)
!866 = !DILocation(line: 123, column: 2, scope: !851)
!867 = !DILocation(line: 123, column: 27, scope: !851)
!868 = !DILocation(line: 124, column: 2, scope: !851)
!869 = !DILocation(line: 124, column: 30, scope: !851)
!870 = !DILocation(line: 125, column: 2, scope: !851)
!871 = !DILocation(line: 125, column: 14, scope: !851)
!872 = !DILocation(line: 126, column: 2, scope: !851)
!873 = !DILocation(line: 126, column: 29, scope: !851)
!874 = !DILocation(line: 127, column: 2, scope: !851)
!875 = !DILocation(line: 127, column: 29, scope: !851)
!876 = !DILocation(line: 128, column: 2, scope: !851)
!877 = !DILocation(line: 128, column: 6, scope: !851)
!878 = !DILocation(line: 135, column: 6, scope: !879)
!879 = distinct !DILexicalBlock(scope: !851, file: !3, line: 135, column: 6)
!880 = !DILocation(line: 135, column: 17, scope: !879)
!881 = !DILocation(line: 135, column: 28, scope: !879)
!882 = !DILocation(line: 135, column: 6, scope: !851)
!883 = !DILocation(line: 139, column: 25, scope: !884)
!884 = distinct !DILexicalBlock(scope: !879, file: !3, line: 135, column: 52)
!885 = !DILocation(line: 139, column: 9, scope: !884)
!886 = !DILocation(line: 139, column: 7, scope: !884)
!887 = !DILocation(line: 140, column: 2, scope: !884)
!888 = !DILocation(line: 143, column: 25, scope: !889)
!889 = distinct !DILexicalBlock(scope: !879, file: !3, line: 140, column: 9)
!890 = !DILocation(line: 143, column: 9, scope: !889)
!891 = !DILocation(line: 143, column: 7, scope: !889)
!892 = !DILocation(line: 146, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !851, file: !3, line: 146, column: 6)
!894 = !DILocation(line: 146, column: 6, scope: !851)
!895 = !DILocation(line: 147, column: 3, scope: !896)
!896 = distinct !DILexicalBlock(scope: !893, file: !3, line: 146, column: 12)
!897 = !DILocation(line: 150, column: 6, scope: !898)
!898 = distinct !DILexicalBlock(scope: !851, file: !3, line: 150, column: 6)
!899 = !DILocation(line: 150, column: 18, scope: !898)
!900 = !DILocation(line: 150, column: 6, scope: !851)
!901 = !DILocation(line: 151, column: 10, scope: !902)
!902 = distinct !DILexicalBlock(scope: !898, file: !3, line: 150, column: 33)
!903 = !DILocation(line: 151, column: 22, scope: !902)
!904 = !DILocation(line: 151, column: 8, scope: !902)
!905 = !DILocation(line: 152, column: 2, scope: !902)
!906 = !DILocation(line: 155, column: 9, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 155, column: 7)
!908 = distinct !DILexicalBlock(scope: !898, file: !3, line: 152, column: 9)
!909 = !DILocation(line: 155, column: 21, scope: !907)
!910 = !DILocation(line: 155, column: 33, scope: !907)
!911 = !DILocation(line: 155, column: 7, scope: !908)
!912 = !DILocation(line: 156, column: 4, scope: !913)
!913 = distinct !DILexicalBlock(scope: !907, file: !3, line: 155, column: 56)
!914 = !DILocation(line: 157, column: 4, scope: !913)
!915 = !DILocation(line: 162, column: 9, scope: !908)
!916 = !DILocation(line: 169, column: 7, scope: !917)
!917 = distinct !DILexicalBlock(scope: !908, file: !3, line: 169, column: 7)
!918 = !DILocation(line: 169, column: 19, scope: !917)
!919 = !DILocation(line: 169, column: 31, scope: !917)
!920 = !DILocation(line: 170, column: 9, scope: !917)
!921 = !DILocation(line: 170, column: 21, scope: !917)
!922 = !DILocation(line: 170, column: 33, scope: !917)
!923 = !DILocation(line: 169, column: 7, scope: !908)
!924 = !DILocation(line: 171, column: 10, scope: !925)
!925 = distinct !DILexicalBlock(scope: !917, file: !3, line: 170, column: 61)
!926 = !DILocation(line: 172, column: 3, scope: !925)
!927 = !DILocation(line: 176, column: 27, scope: !908)
!928 = !DILocation(line: 176, column: 39, scope: !908)
!929 = !DILocation(line: 177, column: 6, scope: !908)
!930 = !DILocation(line: 177, column: 18, scope: !908)
!931 = !DILocation(line: 177, column: 24, scope: !908)
!932 = !DILocation(line: 178, column: 29, scope: !908)
!933 = !DILocation(line: 179, column: 6, scope: !908)
!934 = !DILocation(line: 176, column: 12, scope: !908)
!935 = !DILocation(line: 176, column: 10, scope: !908)
!936 = !DILocation(line: 180, column: 8, scope: !937)
!937 = distinct !DILexicalBlock(scope: !908, file: !3, line: 180, column: 7)
!938 = !DILocation(line: 180, column: 20, scope: !937)
!939 = !DILocation(line: 180, column: 32, scope: !937)
!940 = !DILocation(line: 181, column: 7, scope: !937)
!941 = !DILocation(line: 181, column: 10, scope: !937)
!942 = !DILocation(line: 181, column: 17, scope: !937)
!943 = !DILocation(line: 180, column: 7, scope: !908)
!944 = !DILocation(line: 182, column: 11, scope: !945)
!945 = distinct !DILexicalBlock(scope: !937, file: !3, line: 181, column: 39)
!946 = !DILocation(line: 183, column: 3, scope: !945)
!947 = !DILocation(line: 183, column: 14, scope: !948)
!948 = distinct !DILexicalBlock(scope: !937, file: !3, line: 183, column: 14)
!949 = !DILocation(line: 183, column: 14, scope: !937)
!950 = !DILocation(line: 184, column: 4, scope: !951)
!951 = distinct !DILexicalBlock(scope: !948, file: !3, line: 183, column: 36)
!952 = !DILocation(line: 186, column: 4, scope: !951)
!953 = !DILocation(line: 195, column: 20, scope: !851)
!954 = !DILocation(line: 195, column: 2, scope: !851)
!955 = !DILocation(line: 195, column: 13, scope: !851)
!956 = !DILocation(line: 195, column: 18, scope: !851)
!957 = !DILocation(line: 202, column: 41, scope: !851)
!958 = !DILocation(line: 202, column: 13, scope: !851)
!959 = !DILocation(line: 202, column: 11, scope: !851)
!960 = !DILocation(line: 203, column: 6, scope: !961)
!961 = distinct !DILexicalBlock(scope: !851, file: !3, line: 203, column: 6)
!962 = !DILocation(line: 203, column: 6, scope: !851)
!963 = !DILocation(line: 204, column: 3, scope: !964)
!964 = distinct !DILexicalBlock(scope: !961, file: !3, line: 203, column: 16)
!965 = !DILocation(line: 214, column: 13, scope: !851)
!966 = !DILocation(line: 214, column: 11, scope: !851)
!967 = !DILocation(line: 215, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !851, file: !3, line: 215, column: 6)
!969 = !DILocation(line: 215, column: 6, scope: !851)
!970 = !DILocation(line: 216, column: 10, scope: !971)
!971 = distinct !DILexicalBlock(scope: !968, file: !3, line: 215, column: 17)
!972 = !DILocation(line: 217, column: 3, scope: !971)
!973 = !DILocation(line: 224, column: 16, scope: !851)
!974 = !DILocation(line: 224, column: 33, scope: !851)
!975 = !DILocation(line: 224, column: 14, scope: !851)
!976 = !DILocation(line: 225, column: 33, scope: !851)
!977 = !DILocation(line: 225, column: 43, scope: !851)
!978 = !DILocation(line: 225, column: 2, scope: !851)
!979 = !DILocation(line: 225, column: 21, scope: !851)
!980 = !DILocation(line: 225, column: 31, scope: !851)
!981 = !DILocation(line: 226, column: 34, scope: !851)
!982 = !DILocation(line: 226, column: 44, scope: !851)
!983 = !DILocation(line: 226, column: 2, scope: !851)
!984 = !DILocation(line: 226, column: 21, scope: !851)
!985 = !DILocation(line: 226, column: 32, scope: !851)
!986 = !DILocation(line: 227, column: 32, scope: !851)
!987 = !DILocation(line: 227, column: 2, scope: !851)
!988 = !DILocation(line: 227, column: 25, scope: !851)
!989 = !DILocation(line: 227, column: 30, scope: !851)
!990 = !DILocation(line: 231, column: 33, scope: !851)
!991 = !DILocation(line: 231, column: 39, scope: !851)
!992 = !DILocation(line: 231, column: 11, scope: !851)
!993 = !DILocation(line: 231, column: 9, scope: !851)
!994 = !DILocation(line: 232, column: 6, scope: !995)
!995 = distinct !DILexicalBlock(scope: !851, file: !3, line: 232, column: 6)
!996 = !DILocation(line: 232, column: 6, scope: !851)
!997 = !DILocation(line: 233, column: 3, scope: !998)
!998 = distinct !DILexicalBlock(scope: !995, file: !3, line: 232, column: 28)
!999 = !DILocation(line: 236, column: 1, scope: !851)
!1000 = !DILocation(line: 240, column: 27, scope: !851)
!1001 = !DILocation(line: 240, column: 2, scope: !851)
!1002 = !DILocation(line: 241, column: 2, scope: !851)
!1003 = !DILocation(line: 242, column: 1, scope: !851)
!1004 = !DISubprogram(name: "acpi_ps_get_arg", scope: !1005, file: !1005, line: 169, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1005 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!181, !181, !35}
!1008 = !DISubprogram(name: "acpi_error", scope: !1009, file: !1009, line: 901, type: !1010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1009 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !1012, !35, !1012, null}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!1013 = !DISubprogram(name: "acpi_ns_lookup", scope: !1014, file: !1014, line: 118, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1014 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!33, !266, !45, !1017, !1018, !35, !146, !1019}
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !34, line: 644, baseType: !35)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_interpreter_mode", file: !6, line: 120, baseType: !5)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!1020 = !DISubprogram(name: "acpi_ut_prefixed_namespace_error", scope: !1021, file: !1021, line: 728, type: !1022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1021 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null, !1012, !35, !266, !1012, !33}
!1024 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !1014, file: !1014, line: 298, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!51, !47}
!1027 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !1021, file: !1021, line: 436, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!51, !1012, !35, !35, !1017}
!1030 = !DISubprogram(name: "acpi_ns_attach_object", scope: !1014, file: !1014, line: 295, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!33, !47, !51, !1017}
!1033 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1021, file: !1021, line: 369, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{null, !51}
!1036 = distinct !DISubprogram(name: "acpi_ds_create_field", scope: !3, file: !3, line: 473, type: !1037, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1039)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!33, !181, !47, !146}
!1039 = !{!1040, !1041, !1042, !1043, !1044, !1045}
!1040 = !DILocalVariable(name: "op", arg: 1, scope: !1036, file: !3, line: 473, type: !181)
!1041 = !DILocalVariable(name: "region_node", arg: 2, scope: !1036, file: !3, line: 474, type: !47)
!1042 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1036, file: !3, line: 475, type: !146)
!1043 = !DILocalVariable(name: "status", scope: !1036, file: !3, line: 477, type: !33)
!1044 = !DILocalVariable(name: "arg", scope: !1036, file: !3, line: 478, type: !181)
!1045 = !DILocalVariable(name: "info", scope: !1036, file: !3, line: 479, type: !1046)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_create_field_info", file: !6, line: 229, size: 576, elements: !1047)
!1047 = !{!1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "region_node", scope: !1046, file: !6, line: 230, baseType: !47, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "field_node", scope: !1046, file: !6, line: 231, baseType: !47, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "register_node", scope: !1046, file: !6, line: 232, baseType: !47, size: 64, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "data_register_node", scope: !1046, file: !6, line: 233, baseType: !47, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "connection_node", scope: !1046, file: !6, line: 234, baseType: !47, size: 64, offset: 256)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !1046, file: !6, line: 235, baseType: !95, size: 64, offset: 320)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "bank_value", scope: !1046, file: !6, line: 236, baseType: !35, size: 32, offset: 384)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "field_bit_position", scope: !1046, file: !6, line: 237, baseType: !35, size: 32, offset: 416)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "field_bit_length", scope: !1046, file: !6, line: 238, baseType: !35, size: 32, offset: 448)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1046, file: !6, line: 239, baseType: !28, size: 16, offset: 480)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !1046, file: !6, line: 240, baseType: !28, size: 16, offset: 496)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1046, file: !6, line: 241, baseType: !37, size: 8, offset: 512)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1046, file: !6, line: 242, baseType: !37, size: 8, offset: 520)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "field_type", scope: !1046, file: !6, line: 243, baseType: !37, size: 8, offset: 528)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1046, file: !6, line: 244, baseType: !37, size: 8, offset: 536)
!1063 = !DILocation(line: 473, column: 47, scope: !1036)
!1064 = !DILocation(line: 474, column: 36, scope: !1036)
!1065 = !DILocation(line: 475, column: 32, scope: !1036)
!1066 = !DILocation(line: 477, column: 2, scope: !1036)
!1067 = !DILocation(line: 477, column: 14, scope: !1036)
!1068 = !DILocation(line: 478, column: 2, scope: !1036)
!1069 = !DILocation(line: 478, column: 27, scope: !1036)
!1070 = !DILocation(line: 479, column: 2, scope: !1036)
!1071 = !DILocation(line: 479, column: 32, scope: !1036)
!1072 = !DILocation(line: 485, column: 8, scope: !1036)
!1073 = !DILocation(line: 485, column: 19, scope: !1036)
!1074 = !DILocation(line: 485, column: 25, scope: !1036)
!1075 = !DILocation(line: 485, column: 6, scope: !1036)
!1076 = !DILocation(line: 487, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 487, column: 6)
!1078 = !DILocation(line: 487, column: 6, scope: !1036)
!1079 = !DILocation(line: 489, column: 22, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 487, column: 20)
!1081 = !DILocation(line: 489, column: 34, scope: !1080)
!1082 = !DILocation(line: 490, column: 8, scope: !1080)
!1083 = !DILocation(line: 490, column: 20, scope: !1080)
!1084 = !DILocation(line: 490, column: 26, scope: !1080)
!1085 = !DILocation(line: 492, column: 8, scope: !1080)
!1086 = !DILocation(line: 489, column: 7, scope: !1080)
!1087 = !DILocation(line: 488, column: 10, scope: !1080)
!1088 = !DILocation(line: 499, column: 7, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 499, column: 7)
!1090 = !DILocation(line: 499, column: 7, scope: !1080)
!1091 = !DILocation(line: 500, column: 4, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 499, column: 29)
!1093 = !DILocation(line: 502, column: 4, scope: !1092)
!1094 = !DILocation(line: 504, column: 2, scope: !1080)
!1095 = !DILocation(line: 506, column: 2, scope: !1036)
!1096 = !DILocation(line: 510, column: 8, scope: !1036)
!1097 = !DILocation(line: 510, column: 20, scope: !1036)
!1098 = !DILocation(line: 510, column: 6, scope: !1036)
!1099 = !DILocation(line: 511, column: 26, scope: !1036)
!1100 = !DILocation(line: 511, column: 38, scope: !1036)
!1101 = !DILocation(line: 511, column: 44, scope: !1036)
!1102 = !DILocation(line: 511, column: 21, scope: !1036)
!1103 = !DILocation(line: 511, column: 7, scope: !1036)
!1104 = !DILocation(line: 511, column: 19, scope: !1036)
!1105 = !DILocation(line: 512, column: 7, scope: !1036)
!1106 = !DILocation(line: 512, column: 17, scope: !1036)
!1107 = !DILocation(line: 516, column: 7, scope: !1036)
!1108 = !DILocation(line: 516, column: 18, scope: !1036)
!1109 = !DILocation(line: 517, column: 21, scope: !1036)
!1110 = !DILocation(line: 517, column: 7, scope: !1036)
!1111 = !DILocation(line: 517, column: 19, scope: !1036)
!1112 = !DILocation(line: 519, column: 42, scope: !1036)
!1113 = !DILocation(line: 519, column: 54, scope: !1036)
!1114 = !DILocation(line: 519, column: 66, scope: !1036)
!1115 = !DILocation(line: 519, column: 11, scope: !1036)
!1116 = !DILocation(line: 519, column: 9, scope: !1036)
!1117 = !DILocation(line: 520, column: 6, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 520, column: 6)
!1119 = !DILocation(line: 520, column: 6, scope: !1036)
!1120 = !DILocation(line: 521, column: 3, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 520, column: 28)
!1122 = !DILocation(line: 524, column: 11, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 524, column: 6)
!1124 = !DILocation(line: 524, column: 24, scope: !1123)
!1125 = !DILocation(line: 524, column: 39, scope: !1123)
!1126 = !DILocation(line: 524, column: 6, scope: !1123)
!1127 = !DILocation(line: 524, column: 48, scope: !1123)
!1128 = !DILocation(line: 524, column: 6, scope: !1036)
!1129 = !DILocation(line: 527, column: 7, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 525, column: 36)
!1131 = !DILocation(line: 526, column: 3, scope: !1130)
!1132 = !DILocation(line: 526, column: 16, scope: !1130)
!1133 = !DILocation(line: 526, column: 30, scope: !1130)
!1134 = !DILocation(line: 526, column: 50, scope: !1130)
!1135 = !DILocation(line: 529, column: 8, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 529, column: 7)
!1137 = !DILocation(line: 529, column: 21, scope: !1136)
!1138 = !DILocation(line: 529, column: 35, scope: !1136)
!1139 = !DILocation(line: 529, column: 7, scope: !1130)
!1140 = !DILocation(line: 530, column: 4, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 529, column: 56)
!1142 = !DILocation(line: 532, column: 2, scope: !1130)
!1143 = !DILocation(line: 534, column: 2, scope: !1036)
!1144 = !DILocation(line: 535, column: 1, scope: !1036)
!1145 = distinct !DISubprogram(name: "acpi_ds_get_field_names", scope: !3, file: !3, line: 260, type: !1146, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1149)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!33, !1148, !146, !181}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1149 = !{!1150, !1151, !1152, !1153, !1154, !1155}
!1150 = !DILocalVariable(name: "info", arg: 1, scope: !1145, file: !3, line: 260, type: !1148)
!1151 = !DILocalVariable(name: "walk_state", arg: 2, scope: !1145, file: !3, line: 261, type: !146)
!1152 = !DILocalVariable(name: "arg", arg: 3, scope: !1145, file: !3, line: 262, type: !181)
!1153 = !DILocalVariable(name: "status", scope: !1145, file: !3, line: 264, type: !33)
!1154 = !DILocalVariable(name: "position", scope: !1145, file: !3, line: 265, type: !42)
!1155 = !DILocalVariable(name: "child", scope: !1145, file: !3, line: 266, type: !181)
!1156 = !DILocation(line: 260, column: 56, scope: !1145)
!1157 = !DILocation(line: 261, column: 28, scope: !1145)
!1158 = !DILocation(line: 262, column: 29, scope: !1145)
!1159 = !DILocation(line: 264, column: 2, scope: !1145)
!1160 = !DILocation(line: 264, column: 14, scope: !1145)
!1161 = !DILocation(line: 265, column: 2, scope: !1145)
!1162 = !DILocation(line: 265, column: 6, scope: !1145)
!1163 = !DILocation(line: 266, column: 2, scope: !1145)
!1164 = !DILocation(line: 266, column: 27, scope: !1145)
!1165 = !DILocation(line: 278, column: 2, scope: !1145)
!1166 = !DILocation(line: 278, column: 8, scope: !1145)
!1167 = !DILocation(line: 278, column: 27, scope: !1145)
!1168 = !DILocation(line: 282, column: 2, scope: !1145)
!1169 = !DILocation(line: 282, column: 9, scope: !1145)
!1170 = !DILocation(line: 290, column: 11, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 282, column: 14)
!1172 = !DILocation(line: 290, column: 23, scope: !1171)
!1173 = !DILocation(line: 290, column: 3, scope: !1171)
!1174 = !DILocation(line: 293, column: 20, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 290, column: 35)
!1176 = !DILocation(line: 293, column: 26, scope: !1175)
!1177 = !DILocation(line: 293, column: 15, scope: !1175)
!1178 = !DILocation(line: 294, column: 13, scope: !1175)
!1179 = !DILocation(line: 294, column: 25, scope: !1175)
!1180 = !DILocation(line: 294, column: 31, scope: !1175)
!1181 = !DILocation(line: 294, column: 8, scope: !1175)
!1182 = !DILocation(line: 293, column: 45, scope: !1175)
!1183 = !DILocation(line: 293, column: 13, scope: !1175)
!1184 = !DILocation(line: 296, column: 8, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 296, column: 8)
!1186 = !DILocation(line: 296, column: 17, scope: !1185)
!1187 = !DILocation(line: 296, column: 8, scope: !1175)
!1188 = !DILocation(line: 297, column: 5, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 296, column: 36)
!1190 = !DILocation(line: 299, column: 5, scope: !1189)
!1191 = !DILocation(line: 302, column: 37, scope: !1175)
!1192 = !DILocation(line: 302, column: 31, scope: !1175)
!1193 = !DILocation(line: 302, column: 4, scope: !1175)
!1194 = !DILocation(line: 302, column: 10, scope: !1175)
!1195 = !DILocation(line: 302, column: 29, scope: !1175)
!1196 = !DILocation(line: 303, column: 4, scope: !1175)
!1197 = !DILocation(line: 321, column: 10, scope: !1175)
!1198 = !DILocation(line: 322, column: 10, scope: !1175)
!1199 = !DILocation(line: 322, column: 22, scope: !1175)
!1200 = !DILocation(line: 323, column: 21, scope: !1175)
!1201 = !DILocation(line: 323, column: 33, scope: !1175)
!1202 = !DILocation(line: 323, column: 39, scope: !1175)
!1203 = !DILocation(line: 323, column: 47, scope: !1175)
!1204 = !DILocation(line: 323, column: 15, scope: !1175)
!1205 = !DILocation(line: 323, column: 10, scope: !1175)
!1206 = !DILocation(line: 323, column: 9, scope: !1175)
!1207 = !DILocation(line: 322, column: 55, scope: !1175)
!1208 = !DILocation(line: 320, column: 24, scope: !1175)
!1209 = !DILocation(line: 320, column: 4, scope: !1175)
!1210 = !DILocation(line: 320, column: 10, scope: !1175)
!1211 = !DILocation(line: 320, column: 22, scope: !1175)
!1212 = !DILocation(line: 328, column: 10, scope: !1175)
!1213 = !DILocation(line: 328, column: 22, scope: !1175)
!1214 = !DILocation(line: 328, column: 28, scope: !1175)
!1215 = !DILocation(line: 328, column: 36, scope: !1175)
!1216 = !DILocation(line: 328, column: 42, scope: !1175)
!1217 = !DILocation(line: 327, column: 22, scope: !1175)
!1218 = !DILocation(line: 327, column: 4, scope: !1175)
!1219 = !DILocation(line: 327, column: 10, scope: !1175)
!1220 = !DILocation(line: 327, column: 20, scope: !1175)
!1221 = !DILocation(line: 333, column: 10, scope: !1175)
!1222 = !DILocation(line: 333, column: 22, scope: !1175)
!1223 = !DILocation(line: 333, column: 28, scope: !1175)
!1224 = !DILocation(line: 333, column: 36, scope: !1175)
!1225 = !DILocation(line: 333, column: 43, scope: !1175)
!1226 = !DILocation(line: 332, column: 26, scope: !1175)
!1227 = !DILocation(line: 332, column: 4, scope: !1175)
!1228 = !DILocation(line: 332, column: 10, scope: !1175)
!1229 = !DILocation(line: 332, column: 24, scope: !1175)
!1230 = !DILocation(line: 334, column: 4, scope: !1175)
!1231 = !DILocation(line: 341, column: 4, scope: !1175)
!1232 = !DILocation(line: 341, column: 10, scope: !1175)
!1233 = !DILocation(line: 341, column: 26, scope: !1175)
!1234 = !DILocation(line: 342, column: 4, scope: !1175)
!1235 = !DILocation(line: 342, column: 10, scope: !1175)
!1236 = !DILocation(line: 342, column: 26, scope: !1175)
!1237 = !DILocation(line: 343, column: 4, scope: !1175)
!1238 = !DILocation(line: 343, column: 10, scope: !1175)
!1239 = !DILocation(line: 343, column: 27, scope: !1175)
!1240 = !DILocation(line: 349, column: 12, scope: !1175)
!1241 = !DILocation(line: 349, column: 24, scope: !1175)
!1242 = !DILocation(line: 349, column: 30, scope: !1175)
!1243 = !DILocation(line: 349, column: 10, scope: !1175)
!1244 = !DILocation(line: 350, column: 8, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 350, column: 8)
!1246 = !DILocation(line: 350, column: 22, scope: !1245)
!1247 = !DILocation(line: 350, column: 33, scope: !1245)
!1248 = !DILocation(line: 350, column: 8, scope: !1175)
!1249 = !DILocation(line: 351, column: 29, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 350, column: 57)
!1251 = !DILocation(line: 351, column: 42, scope: !1250)
!1252 = !DILocation(line: 351, column: 5, scope: !1250)
!1253 = !DILocation(line: 351, column: 11, scope: !1250)
!1254 = !DILocation(line: 351, column: 27, scope: !1250)
!1255 = !DILocation(line: 353, column: 14, scope: !1250)
!1256 = !DILocation(line: 353, column: 27, scope: !1250)
!1257 = !DILocation(line: 353, column: 33, scope: !1250)
!1258 = !DILocation(line: 353, column: 9, scope: !1250)
!1259 = !DILocation(line: 352, column: 5, scope: !1250)
!1260 = !DILocation(line: 352, column: 11, scope: !1250)
!1261 = !DILocation(line: 352, column: 27, scope: !1250)
!1262 = !DILocation(line: 354, column: 4, scope: !1250)
!1263 = !DILocation(line: 357, column: 29, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 354, column: 11)
!1265 = !DILocation(line: 357, column: 41, scope: !1264)
!1266 = !DILocation(line: 358, column: 8, scope: !1264)
!1267 = !DILocation(line: 358, column: 22, scope: !1264)
!1268 = !DILocation(line: 359, column: 8, scope: !1264)
!1269 = !DILocation(line: 362, column: 8, scope: !1264)
!1270 = !DILocation(line: 363, column: 9, scope: !1264)
!1271 = !DILocation(line: 363, column: 15, scope: !1264)
!1272 = !DILocation(line: 357, column: 14, scope: !1264)
!1273 = !DILocation(line: 357, column: 12, scope: !1264)
!1274 = !DILocation(line: 364, column: 9, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 364, column: 9)
!1276 = !DILocation(line: 364, column: 9, scope: !1264)
!1277 = !DILocation(line: 365, column: 6, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 364, column: 31)
!1279 = !DILocation(line: 370, column: 6, scope: !1278)
!1280 = !DILocation(line: 373, column: 4, scope: !1175)
!1281 = !DILocation(line: 379, column: 28, scope: !1175)
!1282 = !DILocation(line: 379, column: 40, scope: !1175)
!1283 = !DILocation(line: 380, column: 16, scope: !1175)
!1284 = !DILocation(line: 380, column: 27, scope: !1175)
!1285 = !DILocation(line: 381, column: 7, scope: !1175)
!1286 = !DILocation(line: 381, column: 13, scope: !1175)
!1287 = !DILocation(line: 384, column: 7, scope: !1175)
!1288 = !DILocation(line: 384, column: 20, scope: !1175)
!1289 = !DILocation(line: 384, column: 26, scope: !1175)
!1290 = !DILocation(line: 379, column: 13, scope: !1175)
!1291 = !DILocation(line: 379, column: 11, scope: !1175)
!1292 = !DILocation(line: 385, column: 8, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 385, column: 8)
!1294 = !DILocation(line: 385, column: 8, scope: !1175)
!1295 = !DILocation(line: 386, column: 5, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 385, column: 30)
!1297 = !DILocation(line: 389, column: 5, scope: !1296)
!1298 = !DILocation(line: 391, column: 24, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 390, column: 11)
!1300 = !DILocation(line: 391, column: 30, scope: !1299)
!1301 = !DILocation(line: 391, column: 5, scope: !1299)
!1302 = !DILocation(line: 391, column: 17, scope: !1299)
!1303 = !DILocation(line: 391, column: 22, scope: !1299)
!1304 = !DILocation(line: 392, column: 30, scope: !1299)
!1305 = !DILocation(line: 392, column: 42, scope: !1299)
!1306 = !DILocation(line: 392, column: 48, scope: !1299)
!1307 = !DILocation(line: 392, column: 5, scope: !1299)
!1308 = !DILocation(line: 392, column: 11, scope: !1299)
!1309 = !DILocation(line: 392, column: 28, scope: !1299)
!1310 = !DILocation(line: 401, column: 10, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 400, column: 9)
!1312 = !DILocation(line: 401, column: 16, scope: !1311)
!1313 = !DILocation(line: 400, column: 10, scope: !1311)
!1314 = !DILocation(line: 400, column: 9, scope: !1299)
!1315 = !DILocation(line: 402, column: 40, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 401, column: 29)
!1317 = !DILocation(line: 402, column: 15, scope: !1316)
!1318 = !DILocation(line: 402, column: 13, scope: !1316)
!1319 = !DILocation(line: 403, column: 10, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 403, column: 10)
!1321 = !DILocation(line: 403, column: 10, scope: !1316)
!1322 = !DILocation(line: 404, column: 7, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 403, column: 32)
!1324 = !DILocation(line: 423, column: 5, scope: !1316)
!1325 = !DILocation(line: 428, column: 20, scope: !1175)
!1326 = !DILocation(line: 428, column: 26, scope: !1175)
!1327 = !DILocation(line: 428, column: 15, scope: !1175)
!1328 = !DILocation(line: 429, column: 13, scope: !1175)
!1329 = !DILocation(line: 429, column: 25, scope: !1175)
!1330 = !DILocation(line: 429, column: 31, scope: !1175)
!1331 = !DILocation(line: 429, column: 8, scope: !1175)
!1332 = !DILocation(line: 428, column: 45, scope: !1175)
!1333 = !DILocation(line: 428, column: 13, scope: !1175)
!1334 = !DILocation(line: 431, column: 8, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 431, column: 8)
!1336 = !DILocation(line: 431, column: 17, scope: !1335)
!1337 = !DILocation(line: 431, column: 8, scope: !1175)
!1338 = !DILocation(line: 432, column: 5, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 431, column: 36)
!1340 = !DILocation(line: 437, column: 5, scope: !1339)
!1341 = !DILocation(line: 440, column: 32, scope: !1175)
!1342 = !DILocation(line: 440, column: 38, scope: !1175)
!1343 = !DILocation(line: 440, column: 4, scope: !1175)
!1344 = !DILocation(line: 440, column: 10, scope: !1175)
!1345 = !DILocation(line: 440, column: 29, scope: !1175)
!1346 = !DILocation(line: 441, column: 4, scope: !1175)
!1347 = !DILocation(line: 441, column: 10, scope: !1175)
!1348 = !DILocation(line: 441, column: 26, scope: !1175)
!1349 = !DILocation(line: 442, column: 4, scope: !1175)
!1350 = !DILocation(line: 446, column: 4, scope: !1175)
!1351 = !DILocation(line: 449, column: 4, scope: !1175)
!1352 = !DILocation(line: 452, column: 9, scope: !1171)
!1353 = !DILocation(line: 452, column: 21, scope: !1171)
!1354 = !DILocation(line: 452, column: 7, scope: !1171)
!1355 = distinct !{!1355, !1168, !1356, !1357, !1358}
!1356 = !DILocation(line: 453, column: 2, scope: !1145)
!1357 = !{!"llvm.loop.mustprogress"}
!1358 = !{!"llvm.loop.unroll.disable"}
!1359 = !DILocation(line: 455, column: 2, scope: !1145)
!1360 = !DILocation(line: 456, column: 1, scope: !1145)
!1361 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1362, file: !1362, line: 55, type: !1363, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1365)
!1362 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!123, !41}
!1365 = !{!1366, !1367, !1369, !1372, !1373, !1376}
!1366 = !DILocalVariable(name: "size", arg: 1, scope: !1361, file: !1362, line: 55, type: !41)
!1367 = !DILocalVariable(name: "_flags", scope: !1368, file: !1362, line: 57, type: !807)
!1368 = distinct !DILexicalBlock(scope: !1361, file: !1362, line: 57, column: 23)
!1369 = !DILocalVariable(name: "__dummy", scope: !1370, file: !1362, line: 57, type: !807)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !1362, line: 57, column: 23)
!1371 = distinct !DILexicalBlock(scope: !1368, file: !1362, line: 57, column: 23)
!1372 = !DILocalVariable(name: "__dummy2", scope: !1370, file: !1362, line: 57, type: !807)
!1373 = !DILocalVariable(name: "__dummy", scope: !1374, file: !1362, line: 57, type: !807)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !1362, line: 57, column: 23)
!1375 = distinct !DILexicalBlock(scope: !1368, file: !1362, line: 57, column: 23)
!1376 = !DILocalVariable(name: "__dummy2", scope: !1374, file: !1362, line: 57, type: !807)
!1377 = !DILocation(line: 55, column: 55, scope: !1361)
!1378 = !DILocation(line: 57, column: 17, scope: !1361)
!1379 = !DILocation(line: 57, column: 23, scope: !1368)
!1380 = !DILocation(line: 57, column: 23, scope: !1370)
!1381 = !DILocation(line: 57, column: 23, scope: !1371)
!1382 = !DILocation(line: 57, column: 23, scope: !1374)
!1383 = !DILocation(line: 57, column: 23, scope: !1375)
!1384 = !DILocation(line: 57, column: 23, scope: !1361)
!1385 = !DILocation(line: 57, column: 9, scope: !1361)
!1386 = !DILocation(line: 57, column: 2, scope: !1361)
!1387 = distinct !DISubprogram(name: "acpi_ds_init_field_objects", scope: !3, file: !3, line: 553, type: !852, scopeLine: 555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1388)
!1388 = !{!1389, !1390, !1391, !1392, !1393, !1394, !1395}
!1389 = !DILocalVariable(name: "op", arg: 1, scope: !1387, file: !3, line: 553, type: !181)
!1390 = !DILocalVariable(name: "walk_state", arg: 2, scope: !1387, file: !3, line: 554, type: !146)
!1391 = !DILocalVariable(name: "status", scope: !1387, file: !3, line: 556, type: !33)
!1392 = !DILocalVariable(name: "arg", scope: !1387, file: !3, line: 557, type: !181)
!1393 = !DILocalVariable(name: "node", scope: !1387, file: !3, line: 558, type: !47)
!1394 = !DILocalVariable(name: "type", scope: !1387, file: !3, line: 559, type: !37)
!1395 = !DILocalVariable(name: "flags", scope: !1387, file: !3, line: 560, type: !35)
!1396 = !DILocation(line: 553, column: 53, scope: !1387)
!1397 = !DILocation(line: 554, column: 31, scope: !1387)
!1398 = !DILocation(line: 556, column: 2, scope: !1387)
!1399 = !DILocation(line: 556, column: 14, scope: !1387)
!1400 = !DILocation(line: 557, column: 2, scope: !1387)
!1401 = !DILocation(line: 557, column: 27, scope: !1387)
!1402 = !DILocation(line: 558, column: 2, scope: !1387)
!1403 = !DILocation(line: 558, column: 30, scope: !1387)
!1404 = !DILocation(line: 559, column: 2, scope: !1387)
!1405 = !DILocation(line: 559, column: 5, scope: !1387)
!1406 = !DILocation(line: 560, column: 2, scope: !1387)
!1407 = !DILocation(line: 560, column: 6, scope: !1387)
!1408 = !DILocation(line: 566, column: 8, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 566, column: 6)
!1410 = !DILocation(line: 566, column: 20, scope: !1409)
!1411 = !DILocation(line: 566, column: 32, scope: !1409)
!1412 = !DILocation(line: 566, column: 6, scope: !1387)
!1413 = !DILocation(line: 567, column: 7, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 567, column: 7)
!1415 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 566, column: 55)
!1416 = !DILocation(line: 567, column: 19, scope: !1414)
!1417 = !DILocation(line: 567, column: 31, scope: !1414)
!1418 = !DILocation(line: 567, column: 7, scope: !1415)
!1419 = !DILocation(line: 571, column: 4, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 567, column: 57)
!1421 = !DILocation(line: 574, column: 3, scope: !1415)
!1422 = !DILocation(line: 575, column: 3, scope: !1415)
!1423 = !DILocation(line: 582, column: 10, scope: !1387)
!1424 = !DILocation(line: 582, column: 22, scope: !1387)
!1425 = !DILocation(line: 582, column: 2, scope: !1387)
!1426 = !DILocation(line: 585, column: 25, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 582, column: 30)
!1428 = !DILocation(line: 585, column: 9, scope: !1427)
!1429 = !DILocation(line: 585, column: 7, scope: !1427)
!1430 = !DILocation(line: 586, column: 8, scope: !1427)
!1431 = !DILocation(line: 587, column: 3, scope: !1427)
!1432 = !DILocation(line: 591, column: 25, scope: !1427)
!1433 = !DILocation(line: 591, column: 9, scope: !1427)
!1434 = !DILocation(line: 591, column: 7, scope: !1427)
!1435 = !DILocation(line: 592, column: 8, scope: !1427)
!1436 = !DILocation(line: 593, column: 3, scope: !1427)
!1437 = !DILocation(line: 597, column: 25, scope: !1427)
!1438 = !DILocation(line: 597, column: 9, scope: !1427)
!1439 = !DILocation(line: 597, column: 7, scope: !1427)
!1440 = !DILocation(line: 598, column: 8, scope: !1427)
!1441 = !DILocation(line: 599, column: 3, scope: !1427)
!1442 = !DILocation(line: 603, column: 3, scope: !1427)
!1443 = !DILocation(line: 608, column: 8, scope: !1387)
!1444 = !DILocation(line: 615, column: 6, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 615, column: 6)
!1446 = !DILocation(line: 615, column: 18, scope: !1445)
!1447 = !DILocation(line: 615, column: 30, scope: !1445)
!1448 = !DILocation(line: 616, column: 8, scope: !1445)
!1449 = !DILocation(line: 616, column: 20, scope: !1445)
!1450 = !DILocation(line: 616, column: 32, scope: !1445)
!1451 = !DILocation(line: 615, column: 6, scope: !1387)
!1452 = !DILocation(line: 617, column: 9, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 616, column: 60)
!1454 = !DILocation(line: 618, column: 2, scope: !1453)
!1455 = !DILocation(line: 626, column: 2, scope: !1387)
!1456 = !DILocation(line: 626, column: 9, scope: !1387)
!1457 = !DILocation(line: 631, column: 7, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 631, column: 7)
!1459 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 626, column: 14)
!1460 = !DILocation(line: 631, column: 19, scope: !1458)
!1461 = !DILocation(line: 631, column: 30, scope: !1458)
!1462 = !DILocation(line: 631, column: 7, scope: !1459)
!1463 = !DILocation(line: 632, column: 28, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 631, column: 56)
!1465 = !DILocation(line: 632, column: 40, scope: !1464)
!1466 = !DILocation(line: 633, column: 16, scope: !1464)
!1467 = !DILocation(line: 633, column: 27, scope: !1464)
!1468 = !DILocation(line: 633, column: 33, scope: !1464)
!1469 = !DILocation(line: 634, column: 30, scope: !1464)
!1470 = !DILocation(line: 635, column: 7, scope: !1464)
!1471 = !DILocation(line: 632, column: 13, scope: !1464)
!1472 = !DILocation(line: 632, column: 11, scope: !1464)
!1473 = !DILocation(line: 636, column: 8, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 636, column: 8)
!1475 = !DILocation(line: 636, column: 8, scope: !1464)
!1476 = !DILocation(line: 637, column: 5, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 636, column: 30)
!1478 = !DILocation(line: 640, column: 9, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 640, column: 9)
!1480 = !DILocation(line: 640, column: 16, scope: !1479)
!1481 = !DILocation(line: 640, column: 9, scope: !1477)
!1482 = !DILocation(line: 641, column: 6, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 640, column: 38)
!1484 = !DILocation(line: 645, column: 4, scope: !1477)
!1485 = !DILocation(line: 647, column: 23, scope: !1464)
!1486 = !DILocation(line: 647, column: 4, scope: !1464)
!1487 = !DILocation(line: 647, column: 16, scope: !1464)
!1488 = !DILocation(line: 647, column: 21, scope: !1464)
!1489 = !DILocation(line: 648, column: 3, scope: !1464)
!1490 = !DILocation(line: 652, column: 9, scope: !1459)
!1491 = !DILocation(line: 652, column: 21, scope: !1459)
!1492 = !DILocation(line: 652, column: 7, scope: !1459)
!1493 = distinct !{!1493, !1455, !1494, !1357, !1358}
!1494 = !DILocation(line: 653, column: 2, scope: !1387)
!1495 = !DILocation(line: 655, column: 2, scope: !1387)
!1496 = !DILocation(line: 656, column: 1, scope: !1387)
!1497 = distinct !DISubprogram(name: "acpi_ds_create_bank_field", scope: !3, file: !3, line: 673, type: !1037, scopeLine: 676, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1498)
!1498 = !{!1499, !1500, !1501, !1502, !1503, !1504}
!1499 = !DILocalVariable(name: "op", arg: 1, scope: !1497, file: !3, line: 673, type: !181)
!1500 = !DILocalVariable(name: "region_node", arg: 2, scope: !1497, file: !3, line: 674, type: !47)
!1501 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1497, file: !3, line: 675, type: !146)
!1502 = !DILocalVariable(name: "status", scope: !1497, file: !3, line: 677, type: !33)
!1503 = !DILocalVariable(name: "arg", scope: !1497, file: !3, line: 678, type: !181)
!1504 = !DILocalVariable(name: "info", scope: !1497, file: !3, line: 679, type: !1046)
!1505 = !DILocation(line: 673, column: 52, scope: !1497)
!1506 = !DILocation(line: 674, column: 34, scope: !1497)
!1507 = !DILocation(line: 675, column: 30, scope: !1497)
!1508 = !DILocation(line: 677, column: 2, scope: !1497)
!1509 = !DILocation(line: 677, column: 14, scope: !1497)
!1510 = !DILocation(line: 678, column: 2, scope: !1497)
!1511 = !DILocation(line: 678, column: 27, scope: !1497)
!1512 = !DILocation(line: 679, column: 2, scope: !1497)
!1513 = !DILocation(line: 679, column: 32, scope: !1497)
!1514 = !DILocation(line: 685, column: 8, scope: !1497)
!1515 = !DILocation(line: 685, column: 19, scope: !1497)
!1516 = !DILocation(line: 685, column: 25, scope: !1497)
!1517 = !DILocation(line: 685, column: 6, scope: !1497)
!1518 = !DILocation(line: 686, column: 7, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 686, column: 6)
!1520 = !DILocation(line: 686, column: 6, scope: !1497)
!1521 = !DILocation(line: 688, column: 22, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 686, column: 20)
!1523 = !DILocation(line: 688, column: 34, scope: !1522)
!1524 = !DILocation(line: 689, column: 8, scope: !1522)
!1525 = !DILocation(line: 689, column: 20, scope: !1522)
!1526 = !DILocation(line: 689, column: 26, scope: !1522)
!1527 = !DILocation(line: 691, column: 8, scope: !1522)
!1528 = !DILocation(line: 688, column: 7, scope: !1522)
!1529 = !DILocation(line: 687, column: 10, scope: !1522)
!1530 = !DILocation(line: 698, column: 7, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 698, column: 7)
!1532 = !DILocation(line: 698, column: 7, scope: !1522)
!1533 = !DILocation(line: 699, column: 4, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 698, column: 29)
!1535 = !DILocation(line: 701, column: 4, scope: !1534)
!1536 = !DILocation(line: 703, column: 2, scope: !1522)
!1537 = !DILocation(line: 707, column: 8, scope: !1497)
!1538 = !DILocation(line: 707, column: 20, scope: !1497)
!1539 = !DILocation(line: 707, column: 6, scope: !1497)
!1540 = !DILocation(line: 709, column: 21, scope: !1497)
!1541 = !DILocation(line: 709, column: 33, scope: !1497)
!1542 = !DILocation(line: 709, column: 45, scope: !1497)
!1543 = !DILocation(line: 709, column: 57, scope: !1497)
!1544 = !DILocation(line: 709, column: 63, scope: !1497)
!1545 = !DILocation(line: 711, column: 30, scope: !1497)
!1546 = !DILocation(line: 712, column: 13, scope: !1497)
!1547 = !DILocation(line: 709, column: 6, scope: !1497)
!1548 = !DILocation(line: 708, column: 9, scope: !1497)
!1549 = !DILocation(line: 713, column: 6, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 713, column: 6)
!1551 = !DILocation(line: 713, column: 6, scope: !1497)
!1552 = !DILocation(line: 714, column: 3, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 713, column: 28)
!1554 = !DILocation(line: 716, column: 3, scope: !1553)
!1555 = !DILocation(line: 724, column: 8, scope: !1497)
!1556 = !DILocation(line: 724, column: 20, scope: !1497)
!1557 = !DILocation(line: 724, column: 6, scope: !1497)
!1558 = !DILocation(line: 728, column: 8, scope: !1497)
!1559 = !DILocation(line: 728, column: 20, scope: !1497)
!1560 = !DILocation(line: 728, column: 6, scope: !1497)
!1561 = !DILocation(line: 729, column: 26, scope: !1497)
!1562 = !DILocation(line: 729, column: 38, scope: !1497)
!1563 = !DILocation(line: 729, column: 44, scope: !1497)
!1564 = !DILocation(line: 729, column: 21, scope: !1497)
!1565 = !DILocation(line: 729, column: 7, scope: !1497)
!1566 = !DILocation(line: 729, column: 19, scope: !1497)
!1567 = !DILocation(line: 733, column: 7, scope: !1497)
!1568 = !DILocation(line: 733, column: 18, scope: !1497)
!1569 = !DILocation(line: 734, column: 21, scope: !1497)
!1570 = !DILocation(line: 734, column: 7, scope: !1497)
!1571 = !DILocation(line: 734, column: 19, scope: !1497)
!1572 = !DILocation(line: 745, column: 58, scope: !1497)
!1573 = !DILocation(line: 745, column: 7, scope: !1497)
!1574 = !DILocation(line: 745, column: 26, scope: !1497)
!1575 = !DILocation(line: 747, column: 42, scope: !1497)
!1576 = !DILocation(line: 747, column: 54, scope: !1497)
!1577 = !DILocation(line: 747, column: 66, scope: !1497)
!1578 = !DILocation(line: 747, column: 11, scope: !1497)
!1579 = !DILocation(line: 747, column: 9, scope: !1497)
!1580 = !DILocation(line: 748, column: 2, scope: !1497)
!1581 = !DILocation(line: 749, column: 1, scope: !1497)
!1582 = distinct !DISubprogram(name: "acpi_ds_create_index_field", scope: !3, file: !3, line: 766, type: !1037, scopeLine: 769, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1583)
!1583 = !{!1584, !1585, !1586, !1587, !1588, !1589}
!1584 = !DILocalVariable(name: "op", arg: 1, scope: !1582, file: !3, line: 766, type: !181)
!1585 = !DILocalVariable(name: "region_node", arg: 2, scope: !1582, file: !3, line: 767, type: !47)
!1586 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1582, file: !3, line: 768, type: !146)
!1587 = !DILocalVariable(name: "status", scope: !1582, file: !3, line: 770, type: !33)
!1588 = !DILocalVariable(name: "arg", scope: !1582, file: !3, line: 771, type: !181)
!1589 = !DILocalVariable(name: "info", scope: !1582, file: !3, line: 772, type: !1046)
!1590 = !DILocation(line: 766, column: 53, scope: !1582)
!1591 = !DILocation(line: 767, column: 35, scope: !1582)
!1592 = !DILocation(line: 768, column: 31, scope: !1582)
!1593 = !DILocation(line: 770, column: 2, scope: !1582)
!1594 = !DILocation(line: 770, column: 14, scope: !1582)
!1595 = !DILocation(line: 771, column: 2, scope: !1582)
!1596 = !DILocation(line: 771, column: 27, scope: !1582)
!1597 = !DILocation(line: 772, column: 2, scope: !1582)
!1598 = !DILocation(line: 772, column: 32, scope: !1582)
!1599 = !DILocation(line: 778, column: 8, scope: !1582)
!1600 = !DILocation(line: 778, column: 19, scope: !1582)
!1601 = !DILocation(line: 778, column: 25, scope: !1582)
!1602 = !DILocation(line: 778, column: 6, scope: !1582)
!1603 = !DILocation(line: 780, column: 21, scope: !1582)
!1604 = !DILocation(line: 780, column: 33, scope: !1582)
!1605 = !DILocation(line: 780, column: 45, scope: !1582)
!1606 = !DILocation(line: 780, column: 57, scope: !1582)
!1607 = !DILocation(line: 780, column: 63, scope: !1582)
!1608 = !DILocation(line: 782, column: 30, scope: !1582)
!1609 = !DILocation(line: 783, column: 13, scope: !1582)
!1610 = !DILocation(line: 780, column: 6, scope: !1582)
!1611 = !DILocation(line: 779, column: 9, scope: !1582)
!1612 = !DILocation(line: 784, column: 6, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 784, column: 6)
!1614 = !DILocation(line: 784, column: 6, scope: !1582)
!1615 = !DILocation(line: 785, column: 3, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 784, column: 28)
!1617 = !DILocation(line: 787, column: 3, scope: !1616)
!1618 = !DILocation(line: 792, column: 8, scope: !1582)
!1619 = !DILocation(line: 792, column: 20, scope: !1582)
!1620 = !DILocation(line: 792, column: 6, scope: !1582)
!1621 = !DILocation(line: 794, column: 21, scope: !1582)
!1622 = !DILocation(line: 794, column: 33, scope: !1582)
!1623 = !DILocation(line: 794, column: 45, scope: !1582)
!1624 = !DILocation(line: 794, column: 57, scope: !1582)
!1625 = !DILocation(line: 794, column: 63, scope: !1582)
!1626 = !DILocation(line: 796, column: 30, scope: !1582)
!1627 = !DILocation(line: 797, column: 13, scope: !1582)
!1628 = !DILocation(line: 794, column: 6, scope: !1582)
!1629 = !DILocation(line: 793, column: 9, scope: !1582)
!1630 = !DILocation(line: 798, column: 6, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 798, column: 6)
!1632 = !DILocation(line: 798, column: 6, scope: !1582)
!1633 = !DILocation(line: 799, column: 3, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 798, column: 28)
!1635 = !DILocation(line: 801, column: 3, scope: !1634)
!1636 = !DILocation(line: 806, column: 8, scope: !1582)
!1637 = !DILocation(line: 806, column: 20, scope: !1582)
!1638 = !DILocation(line: 806, column: 6, scope: !1582)
!1639 = !DILocation(line: 807, column: 26, scope: !1582)
!1640 = !DILocation(line: 807, column: 38, scope: !1582)
!1641 = !DILocation(line: 807, column: 44, scope: !1582)
!1642 = !DILocation(line: 807, column: 21, scope: !1582)
!1643 = !DILocation(line: 807, column: 7, scope: !1582)
!1644 = !DILocation(line: 807, column: 19, scope: !1582)
!1645 = !DILocation(line: 811, column: 7, scope: !1582)
!1646 = !DILocation(line: 811, column: 18, scope: !1582)
!1647 = !DILocation(line: 812, column: 21, scope: !1582)
!1648 = !DILocation(line: 812, column: 7, scope: !1582)
!1649 = !DILocation(line: 812, column: 19, scope: !1582)
!1650 = !DILocation(line: 814, column: 42, scope: !1582)
!1651 = !DILocation(line: 814, column: 54, scope: !1582)
!1652 = !DILocation(line: 814, column: 66, scope: !1582)
!1653 = !DILocation(line: 814, column: 11, scope: !1582)
!1654 = !DILocation(line: 814, column: 9, scope: !1582)
!1655 = !DILocation(line: 815, column: 2, scope: !1582)
!1656 = !DILocation(line: 816, column: 1, scope: !1582)
!1657 = !DISubprogram(name: "acpi_ex_prep_field_value", scope: !1658, file: !1658, line: 271, type: !1659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1658 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!33, !1148}
!1661 = distinct !DISubprogram(name: "kzalloc", scope: !18, file: !18, line: 719, type: !1662, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1668)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!123, !1664, !808}
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !806, line: 61, baseType: !1665)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1666, line: 72, baseType: !1667)
!1666 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1666, line: 16, baseType: !807)
!1668 = !{!1669, !1670}
!1669 = !DILocalVariable(name: "size", arg: 1, scope: !1661, file: !18, line: 719, type: !1664)
!1670 = !DILocalVariable(name: "flags", arg: 2, scope: !1661, file: !18, line: 719, type: !808)
!1671 = !DILocation(line: 719, column: 52, scope: !1661)
!1672 = !DILocation(line: 719, column: 64, scope: !1661)
!1673 = !DILocation(line: 721, column: 17, scope: !1661)
!1674 = !DILocation(line: 721, column: 23, scope: !1661)
!1675 = !DILocation(line: 721, column: 29, scope: !1661)
!1676 = !DILocation(line: 721, column: 9, scope: !1661)
!1677 = !DILocation(line: 721, column: 2, scope: !1661)
!1678 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1679, file: !1679, line: 65, type: !1680, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1679 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!807}
!1682 = !DILocation(line: 67, column: 9, scope: !1678)
!1683 = !DILocation(line: 67, column: 2, scope: !1678)
!1684 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1679, file: !1679, line: 120, type: !1685, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1688)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!1687, !807}
!1687 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1688 = !{!1689}
!1689 = !DILocalVariable(name: "flags", arg: 1, scope: !1684, file: !1679, line: 120, type: !807)
!1690 = !DILocation(line: 120, column: 67, scope: !1684)
!1691 = !DILocation(line: 122, column: 11, scope: !1684)
!1692 = !DILocation(line: 122, column: 17, scope: !1684)
!1693 = !DILocation(line: 122, column: 9, scope: !1684)
!1694 = !DILocation(line: 122, column: 2, scope: !1684)
!1695 = distinct !DISubprogram(name: "kmalloc", scope: !18, file: !18, line: 591, type: !1662, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1696)
!1696 = !{!1697, !1698, !1699}
!1697 = !DILocalVariable(name: "size", arg: 1, scope: !1695, file: !18, line: 591, type: !1664)
!1698 = !DILocalVariable(name: "flags", arg: 2, scope: !1695, file: !18, line: 591, type: !808)
!1699 = !DILocalVariable(name: "index", scope: !1700, file: !18, line: 594, type: !7)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !18, line: 593, column: 42)
!1701 = distinct !DILexicalBlock(scope: !1695, file: !18, line: 593, column: 6)
!1702 = !DILocation(line: 591, column: 61, scope: !1695)
!1703 = !DILocation(line: 591, column: 73, scope: !1695)
!1704 = !DILocation(line: 593, column: 27, scope: !1701)
!1705 = !DILocation(line: 593, column: 6, scope: !1701)
!1706 = !DILocation(line: 593, column: 33, scope: !1701)
!1707 = !DILocation(line: 593, column: 36, scope: !1701)
!1708 = !DILocation(line: 593, column: 6, scope: !1695)
!1709 = !DILocation(line: 594, column: 3, scope: !1700)
!1710 = !DILocation(line: 594, column: 16, scope: !1700)
!1711 = !DILocation(line: 596, column: 7, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1700, file: !18, line: 596, column: 7)
!1713 = !DILocation(line: 596, column: 12, scope: !1712)
!1714 = !DILocation(line: 596, column: 7, scope: !1700)
!1715 = !DILocation(line: 597, column: 25, scope: !1712)
!1716 = !DILocation(line: 597, column: 31, scope: !1712)
!1717 = !DILocation(line: 597, column: 11, scope: !1712)
!1718 = !DILocation(line: 597, column: 4, scope: !1712)
!1719 = !DILocation(line: 599, column: 11, scope: !1700)
!1720 = !DILocation(line: 599, column: 9, scope: !1700)
!1721 = !DILocation(line: 601, column: 33, scope: !1700)
!1722 = !DILocation(line: 601, column: 40, scope: !1700)
!1723 = !DILocation(line: 601, column: 20, scope: !1700)
!1724 = !DILocation(line: 601, column: 5, scope: !1700)
!1725 = !DILocation(line: 601, column: 51, scope: !1700)
!1726 = !DILocation(line: 602, column: 5, scope: !1700)
!1727 = !DILocation(line: 602, column: 12, scope: !1700)
!1728 = !DILocation(line: 600, column: 10, scope: !1700)
!1729 = !DILocation(line: 600, column: 3, scope: !1700)
!1730 = !DILocation(line: 603, column: 2, scope: !1701)
!1731 = !DILocation(line: 604, column: 19, scope: !1695)
!1732 = !DILocation(line: 604, column: 25, scope: !1695)
!1733 = !DILocation(line: 604, column: 9, scope: !1695)
!1734 = !DILocation(line: 604, column: 2, scope: !1695)
!1735 = !DILocation(line: 605, column: 1, scope: !1695)
!1736 = !DISubprogram(name: "kmalloc_large", scope: !18, file: !18, line: 531, type: !1662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1737 = distinct !DISubprogram(name: "__kmalloc_index", scope: !18, file: !18, line: 444, type: !1738, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1742)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!7, !1664, !1740}
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !806, line: 35, baseType: !1741)
!1741 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1742 = !{!1743, !1744}
!1743 = !DILocalVariable(name: "size", arg: 1, scope: !1737, file: !18, line: 444, type: !1664)
!1744 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1737, file: !18, line: 445, type: !1740)
!1745 = !DILocation(line: 444, column: 60, scope: !1737)
!1746 = !DILocation(line: 445, column: 16, scope: !1737)
!1747 = !DILocation(line: 447, column: 7, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 447, column: 6)
!1749 = !DILocation(line: 447, column: 6, scope: !1737)
!1750 = !DILocation(line: 448, column: 3, scope: !1748)
!1751 = !DILocation(line: 450, column: 6, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 450, column: 6)
!1753 = !DILocation(line: 450, column: 11, scope: !1752)
!1754 = !DILocation(line: 450, column: 6, scope: !1737)
!1755 = !DILocation(line: 451, column: 3, scope: !1752)
!1756 = !DILocation(line: 453, column: 32, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 453, column: 6)
!1758 = !DILocation(line: 453, column: 37, scope: !1757)
!1759 = !DILocation(line: 453, column: 42, scope: !1757)
!1760 = !DILocation(line: 453, column: 45, scope: !1757)
!1761 = !DILocation(line: 453, column: 50, scope: !1757)
!1762 = !DILocation(line: 453, column: 6, scope: !1737)
!1763 = !DILocation(line: 454, column: 3, scope: !1757)
!1764 = !DILocation(line: 455, column: 32, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 455, column: 6)
!1766 = !DILocation(line: 455, column: 37, scope: !1765)
!1767 = !DILocation(line: 455, column: 43, scope: !1765)
!1768 = !DILocation(line: 455, column: 46, scope: !1765)
!1769 = !DILocation(line: 455, column: 51, scope: !1765)
!1770 = !DILocation(line: 455, column: 6, scope: !1737)
!1771 = !DILocation(line: 456, column: 3, scope: !1765)
!1772 = !DILocation(line: 457, column: 6, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 457, column: 6)
!1774 = !DILocation(line: 457, column: 11, scope: !1773)
!1775 = !DILocation(line: 457, column: 6, scope: !1737)
!1776 = !DILocation(line: 457, column: 26, scope: !1773)
!1777 = !DILocation(line: 458, column: 6, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 458, column: 6)
!1779 = !DILocation(line: 458, column: 11, scope: !1778)
!1780 = !DILocation(line: 458, column: 6, scope: !1737)
!1781 = !DILocation(line: 458, column: 26, scope: !1778)
!1782 = !DILocation(line: 459, column: 6, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 459, column: 6)
!1784 = !DILocation(line: 459, column: 11, scope: !1783)
!1785 = !DILocation(line: 459, column: 6, scope: !1737)
!1786 = !DILocation(line: 459, column: 26, scope: !1783)
!1787 = !DILocation(line: 460, column: 6, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 460, column: 6)
!1789 = !DILocation(line: 460, column: 11, scope: !1788)
!1790 = !DILocation(line: 460, column: 6, scope: !1737)
!1791 = !DILocation(line: 460, column: 26, scope: !1788)
!1792 = !DILocation(line: 461, column: 6, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 461, column: 6)
!1794 = !DILocation(line: 461, column: 11, scope: !1793)
!1795 = !DILocation(line: 461, column: 6, scope: !1737)
!1796 = !DILocation(line: 461, column: 26, scope: !1793)
!1797 = !DILocation(line: 462, column: 6, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 462, column: 6)
!1799 = !DILocation(line: 462, column: 11, scope: !1798)
!1800 = !DILocation(line: 462, column: 6, scope: !1737)
!1801 = !DILocation(line: 462, column: 26, scope: !1798)
!1802 = !DILocation(line: 463, column: 6, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 463, column: 6)
!1804 = !DILocation(line: 463, column: 11, scope: !1803)
!1805 = !DILocation(line: 463, column: 6, scope: !1737)
!1806 = !DILocation(line: 463, column: 26, scope: !1803)
!1807 = !DILocation(line: 464, column: 6, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 464, column: 6)
!1809 = !DILocation(line: 464, column: 11, scope: !1808)
!1810 = !DILocation(line: 464, column: 6, scope: !1737)
!1811 = !DILocation(line: 464, column: 26, scope: !1808)
!1812 = !DILocation(line: 465, column: 6, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 465, column: 6)
!1814 = !DILocation(line: 465, column: 11, scope: !1813)
!1815 = !DILocation(line: 465, column: 6, scope: !1737)
!1816 = !DILocation(line: 465, column: 26, scope: !1813)
!1817 = !DILocation(line: 466, column: 6, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 466, column: 6)
!1819 = !DILocation(line: 466, column: 11, scope: !1818)
!1820 = !DILocation(line: 466, column: 6, scope: !1737)
!1821 = !DILocation(line: 466, column: 26, scope: !1818)
!1822 = !DILocation(line: 467, column: 6, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 467, column: 6)
!1824 = !DILocation(line: 467, column: 11, scope: !1823)
!1825 = !DILocation(line: 467, column: 6, scope: !1737)
!1826 = !DILocation(line: 467, column: 26, scope: !1823)
!1827 = !DILocation(line: 468, column: 6, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 468, column: 6)
!1829 = !DILocation(line: 468, column: 11, scope: !1828)
!1830 = !DILocation(line: 468, column: 6, scope: !1737)
!1831 = !DILocation(line: 468, column: 26, scope: !1828)
!1832 = !DILocation(line: 469, column: 6, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 469, column: 6)
!1834 = !DILocation(line: 469, column: 11, scope: !1833)
!1835 = !DILocation(line: 469, column: 6, scope: !1737)
!1836 = !DILocation(line: 469, column: 26, scope: !1833)
!1837 = !DILocation(line: 470, column: 6, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 470, column: 6)
!1839 = !DILocation(line: 470, column: 11, scope: !1838)
!1840 = !DILocation(line: 470, column: 6, scope: !1737)
!1841 = !DILocation(line: 470, column: 26, scope: !1838)
!1842 = !DILocation(line: 471, column: 6, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 471, column: 6)
!1844 = !DILocation(line: 471, column: 11, scope: !1843)
!1845 = !DILocation(line: 471, column: 6, scope: !1737)
!1846 = !DILocation(line: 471, column: 26, scope: !1843)
!1847 = !DILocation(line: 472, column: 6, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 472, column: 6)
!1849 = !DILocation(line: 472, column: 11, scope: !1848)
!1850 = !DILocation(line: 472, column: 6, scope: !1737)
!1851 = !DILocation(line: 472, column: 26, scope: !1848)
!1852 = !DILocation(line: 473, column: 6, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 473, column: 6)
!1854 = !DILocation(line: 473, column: 11, scope: !1853)
!1855 = !DILocation(line: 473, column: 6, scope: !1737)
!1856 = !DILocation(line: 473, column: 26, scope: !1853)
!1857 = !DILocation(line: 474, column: 6, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 474, column: 6)
!1859 = !DILocation(line: 474, column: 11, scope: !1858)
!1860 = !DILocation(line: 474, column: 6, scope: !1737)
!1861 = !DILocation(line: 474, column: 27, scope: !1858)
!1862 = !DILocation(line: 475, column: 6, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 475, column: 6)
!1864 = !DILocation(line: 475, column: 11, scope: !1863)
!1865 = !DILocation(line: 475, column: 6, scope: !1737)
!1866 = !DILocation(line: 475, column: 32, scope: !1863)
!1867 = !DILocation(line: 477, column: 50, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1737, file: !18, line: 477, column: 6)
!1869 = !{i8 0, i8 2}
!1870 = !{}
!1871 = !DILocation(line: 477, column: 6, scope: !1737)
!1872 = !DILocation(line: 478, column: 3, scope: !1868)
!1873 = !DILocation(line: 478, column: 3, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !18, line: 478, column: 3)
!1875 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 478, column: 3)
!1876 = !{i32 -2143026330}
!1877 = !DILocation(line: 478, column: 3, scope: !1875)
!1878 = !DILocation(line: 480, column: 3, scope: !1868)
!1879 = !DILocation(line: 480, column: 3, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 480, column: 3)
!1881 = !DILocation(line: 480, column: 3, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1880, file: !18, line: 480, column: 3)
!1883 = !DILocation(line: 480, column: 3, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1880, file: !18, line: 480, column: 3)
!1885 = !{i64 2151941169, i64 2151941198, i64 2151941244, i64 2151941302, i64 2151941356, i64 2151941410, i64 2151941465, i64 2151941496}
!1886 = !DILocation(line: 483, column: 2, scope: !1737)
!1887 = !DILocation(line: 484, column: 1, scope: !1737)
!1888 = !DISubprogram(name: "kmalloc_trace", scope: !18, file: !18, line: 525, type: !1889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!123, !1891, !808, !1664}
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1893, line: 11, flags: DIFlagFwdDecl)
!1893 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1894 = distinct !DISubprogram(name: "kmalloc_type", scope: !18, file: !18, line: 401, type: !1895, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1897)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!17, !808, !807}
!1897 = !{!1898, !1899}
!1898 = !DILocalVariable(name: "flags", arg: 1, scope: !1894, file: !18, line: 401, type: !808)
!1899 = !DILocalVariable(name: "caller", arg: 2, scope: !1894, file: !18, line: 401, type: !807)
!1900 = !DILocation(line: 401, column: 67, scope: !1894)
!1901 = !DILocation(line: 401, column: 88, scope: !1894)
!1902 = !DILocation(line: 407, column: 6, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1894, file: !18, line: 407, column: 6)
!1904 = !DILocation(line: 407, column: 6, scope: !1894)
!1905 = !DILocation(line: 413, column: 3, scope: !1903)
!1906 = !DILocation(line: 423, column: 38, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1894, file: !18, line: 423, column: 6)
!1908 = !DILocation(line: 423, column: 44, scope: !1907)
!1909 = !DILocation(line: 423, column: 6, scope: !1894)
!1910 = !DILocation(line: 424, column: 3, scope: !1907)
!1911 = !DILocation(line: 426, column: 3, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1894, file: !18, line: 425, column: 6)
!1913 = !DILocation(line: 429, column: 1, scope: !1894)
!1914 = !DISubprogram(name: "__kmalloc", scope: !18, file: !18, line: 488, type: !1662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1915 = !DISubprogram(name: "__compiletime_assert_173", scope: !18, file: !18, line: 478, type: !1916, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{null}
!1918 = distinct !DISubprogram(name: "native_save_fl", scope: !1679, file: !1679, line: 17, type: !1680, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1919)
!1919 = !{!1920}
!1920 = !DILocalVariable(name: "flags", scope: !1918, file: !1679, line: 19, type: !807)
!1921 = !DILocation(line: 19, column: 2, scope: !1918)
!1922 = !DILocation(line: 19, column: 16, scope: !1918)
!1923 = !DILocation(line: 26, column: 2, scope: !1918)
!1924 = !{i64 1531088, i64 1531109}
!1925 = !DILocation(line: 32, column: 9, scope: !1918)
!1926 = !DILocation(line: 33, column: 1, scope: !1918)
!1927 = !DILocation(line: 32, column: 2, scope: !1918)
