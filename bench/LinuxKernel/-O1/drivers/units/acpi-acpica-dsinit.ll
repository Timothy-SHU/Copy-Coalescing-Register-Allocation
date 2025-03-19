; ModuleID = 'drivers/acpi/acpica/dsinit.c'
source_filename = "drivers/acpi/acpica/dsinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_init_walk_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_method = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, %union.anon, i32, i16, i8 }
%union.anon = type { ptr }

@_acpi_module_name = internal constant [7 x i8] c"dsinit\00", align 1, !dbg !0
@.str = private unnamed_addr constant [21 x i8] c"During WalkNamespace\00", align 1, !dbg !806
@.str.1 = private unnamed_addr constant [5 x i8] c"DSDT\00", align 1, !dbg !811
@.str.2 = private unnamed_addr constant [40 x i8] c"During Region initialization %p [%4.4s]\00", align 1, !dbg !816
@acpi_gbl_auto_serialize_methods = external dso_local global i8, align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_initialize_objects(i32 noundef %table_index, ptr noundef %start_node) #0 align 16 !dbg !832 {
entry:
  %retval = alloca i32, align 4
  %table_index.addr = alloca i32, align 4
  %start_node.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %info = alloca %struct.acpi_init_walk_info, align 4
  %table = alloca ptr, align 8
  %owner_id = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %table_index, ptr %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !836, metadata !DIExpression()), !dbg !858
  store ptr %start_node, ptr %start_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_node.addr, metadata !837, metadata !DIExpression()), !dbg !859
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !860
  call void @llvm.dbg.declare(metadata ptr %status, metadata !838, metadata !DIExpression()), !dbg !861
  call void @llvm.lifetime.start.p0(i64 64, ptr %info) #5, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %info, metadata !839, metadata !DIExpression()), !dbg !863
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #5, !dbg !864
  call void @llvm.dbg.declare(metadata ptr %table, metadata !840, metadata !DIExpression()), !dbg !865
  call void @llvm.lifetime.start.p0(i64 2, ptr %owner_id) #5, !dbg !866
  call void @llvm.dbg.declare(metadata ptr %owner_id, metadata !857, metadata !DIExpression()), !dbg !867
  %0 = load i32, ptr %table_index.addr, align 4, !dbg !868
  %call = call i32 @acpi_tb_get_owner_id(i32 noundef %0, ptr noundef %owner_id) #6, !dbg !869
  store i32 %call, ptr %status, align 4, !dbg !870
  %1 = load i32, ptr %status, align 4, !dbg !871
  %tobool = icmp ne i32 %1, 0, !dbg !871
  br i1 %tobool, label %if.then, label %if.end, !dbg !873

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !874
  store i32 %2, ptr %retval, align 4, !dbg !874
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !874

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 4 %info, i8 0, i64 64, i1 false), !dbg !876
  %3 = load i16, ptr %owner_id, align 2, !dbg !877
  %owner_id1 = getelementptr inbounds %struct.acpi_init_walk_info, ptr %info, i32 0, i32 15, !dbg !878
  store i16 %3, ptr %owner_id1, align 4, !dbg !879
  %4 = load i32, ptr %table_index.addr, align 4, !dbg !880
  %table_index2 = getelementptr inbounds %struct.acpi_init_walk_info, ptr %info, i32 0, i32 0, !dbg !881
  store i32 %4, ptr %table_index2, align 4, !dbg !882
  %5 = load ptr, ptr %start_node.addr, align 8, !dbg !883
  %call3 = call i32 @acpi_ns_walk_namespace(i32 noundef 0, ptr noundef %5, i32 noundef -1, i32 noundef 0, ptr noundef @acpi_ds_init_one_object, ptr noundef null, ptr noundef %info, ptr noundef null) #6, !dbg !884
  store i32 %call3, ptr %status, align 4, !dbg !885
  %6 = load i32, ptr %status, align 4, !dbg !886
  %tobool4 = icmp ne i32 %6, 0, !dbg !886
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !888

if.then5:                                         ; preds = %if.end
  %7 = load i32, ptr %status, align 4, !dbg !889
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 193, i32 noundef %7, ptr noundef @.str) #6, !dbg !889
  br label %if.end6, !dbg !891

if.end6:                                          ; preds = %if.then5, %if.end
  %8 = load i32, ptr %table_index.addr, align 4, !dbg !892
  %call7 = call i32 @acpi_get_table_by_index(i32 noundef %8, ptr noundef %table) #6, !dbg !893
  store i32 %call7, ptr %status, align 4, !dbg !894
  %9 = load i32, ptr %status, align 4, !dbg !895
  %tobool8 = icmp ne i32 %9, 0, !dbg !895
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !897

if.then9:                                         ; preds = %if.end6
  %10 = load i32, ptr %status, align 4, !dbg !898
  store i32 %10, ptr %retval, align 4, !dbg !898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !898

if.end10:                                         ; preds = %if.end6
  %11 = load ptr, ptr %table, align 8, !dbg !900
  %signature = getelementptr inbounds %struct.acpi_table_header, ptr %11, i32 0, i32 0, !dbg !900
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature, i64 0, i64 0, !dbg !900
  %12 = ptrtoint ptr %arraydecay to i64, !dbg !900
  %13 = inttoptr i64 %12 to ptr, !dbg !900
  %14 = load i32, ptr %13, align 4, !dbg !900
  %15 = load i32, ptr @.str.1, align 4, !dbg !900
  %cmp = icmp eq i32 %14, %15, !dbg !900
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !902

if.then11:                                        ; preds = %if.end10
  br label %if.end12, !dbg !903

if.end12:                                         ; preds = %if.then11, %if.end10
  store i32 0, ptr %retval, align 4, !dbg !905
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !905

cleanup:                                          ; preds = %if.end12, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %owner_id) #5, !dbg !906
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #5, !dbg !906
  call void @llvm.lifetime.end.p0(i64 64, ptr %info) #5, !dbg !906
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !906
  %16 = load i32, ptr %retval, align 4, !dbg !906
  ret i32 %16, !dbg !906
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !907 dso_local i32 @acpi_tb_get_owner_id(i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !912 dso_local i32 @acpi_ns_walk_namespace(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ds_init_one_object(ptr noundef %obj_handle, i32 noundef %level, ptr noundef %context, ptr noundef %return_value) #0 align 16 !dbg !918 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %return_value.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %node = alloca ptr, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_handle, ptr %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_handle.addr, metadata !920, metadata !DIExpression()), !dbg !928
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !921, metadata !DIExpression()), !dbg !929
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !922, metadata !DIExpression()), !dbg !930
  store ptr %return_value, ptr %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_value.addr, metadata !923, metadata !DIExpression()), !dbg !931
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #5, !dbg !932
  call void @llvm.dbg.declare(metadata ptr %info, metadata !924, metadata !DIExpression()), !dbg !933
  %0 = load ptr, ptr %context.addr, align 8, !dbg !934
  store ptr %0, ptr %info, align 8, !dbg !933
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #5, !dbg !935
  call void @llvm.dbg.declare(metadata ptr %node, metadata !925, metadata !DIExpression()), !dbg !936
  %1 = load ptr, ptr %obj_handle.addr, align 8, !dbg !937
  store ptr %1, ptr %node, align 8, !dbg !936
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !938
  call void @llvm.dbg.declare(metadata ptr %status, metadata !926, metadata !DIExpression()), !dbg !939
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #5, !dbg !940
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !927, metadata !DIExpression()), !dbg !941
  %2 = load ptr, ptr %node, align 8, !dbg !942
  %owner_id = getelementptr inbounds %struct.acpi_namespace_node, ptr %2, i32 0, i32 8, !dbg !944
  %3 = load i16, ptr %owner_id, align 8, !dbg !944
  %conv = zext i16 %3 to i32, !dbg !942
  %4 = load ptr, ptr %info, align 8, !dbg !945
  %owner_id1 = getelementptr inbounds %struct.acpi_init_walk_info, ptr %4, i32 0, i32 15, !dbg !946
  %5 = load i16, ptr %owner_id1, align 4, !dbg !946
  %conv2 = zext i16 %5 to i32, !dbg !945
  %cmp = icmp ne i32 %conv, %conv2, !dbg !947
  br i1 %cmp, label %if.then, label %if.end, !dbg !948

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !949
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !949

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %info, align 8, !dbg !951
  %object_count = getelementptr inbounds %struct.acpi_init_walk_info, ptr %6, i32 0, i32 1, !dbg !952
  %7 = load i32, ptr %object_count, align 4, !dbg !953
  %inc = add i32 %7, 1, !dbg !953
  store i32 %inc, ptr %object_count, align 4, !dbg !953
  %8 = load ptr, ptr %obj_handle.addr, align 8, !dbg !954
  %call = call i32 @acpi_ns_get_type(ptr noundef %8) #6, !dbg !955
  switch i32 %call, label %sw.default [
    i32 10, label %sw.bb
    i32 8, label %sw.bb9
    i32 6, label %sw.bb34
  ], !dbg !956

sw.bb:                                            ; preds = %if.end
  %9 = load ptr, ptr %obj_handle.addr, align 8, !dbg !957
  %call4 = call i32 @acpi_ds_initialize_region(ptr noundef %9) #6, !dbg !959
  store i32 %call4, ptr %status, align 4, !dbg !960
  %10 = load i32, ptr %status, align 4, !dbg !961
  %tobool = icmp ne i32 %10, 0, !dbg !961
  br i1 %tobool, label %if.then5, label %if.end7, !dbg !963

if.then5:                                         ; preds = %sw.bb
  %11 = load i32, ptr %status, align 4, !dbg !964
  %12 = load ptr, ptr %obj_handle.addr, align 8, !dbg !964
  %13 = load ptr, ptr %obj_handle.addr, align 8, !dbg !964
  %call6 = call ptr @acpi_ut_get_node_name(ptr noundef %13) #6, !dbg !964
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 75, i32 noundef %11, ptr noundef @.str.2, ptr noundef %12, ptr noundef %call6) #6, !dbg !964
  br label %if.end7, !dbg !966

if.end7:                                          ; preds = %if.then5, %sw.bb
  %14 = load ptr, ptr %info, align 8, !dbg !967
  %op_region_count = getelementptr inbounds %struct.acpi_init_walk_info, ptr %14, i32 0, i32 7, !dbg !968
  %15 = load i32, ptr %op_region_count, align 4, !dbg !969
  %inc8 = add i32 %15, 1, !dbg !969
  store i32 %inc8, ptr %op_region_count, align 4, !dbg !969
  br label %sw.epilog, !dbg !970

sw.bb9:                                           ; preds = %if.end
  %16 = load ptr, ptr %info, align 8, !dbg !971
  %method_count = getelementptr inbounds %struct.acpi_init_walk_info, ptr %16, i32 0, i32 2, !dbg !972
  %17 = load i32, ptr %method_count, align 4, !dbg !973
  %inc10 = add i32 %17, 1, !dbg !973
  store i32 %inc10, ptr %method_count, align 4, !dbg !973
  %18 = load ptr, ptr %node, align 8, !dbg !974
  %call11 = call ptr @acpi_ns_get_attached_object(ptr noundef %18) #6, !dbg !975
  store ptr %call11, ptr %obj_desc, align 8, !dbg !976
  %19 = load ptr, ptr %obj_desc, align 8, !dbg !977
  %tobool12 = icmp ne ptr %19, null, !dbg !977
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !979

if.then13:                                        ; preds = %sw.bb9
  br label %sw.epilog, !dbg !980

if.end14:                                         ; preds = %sw.bb9
  %20 = load ptr, ptr %obj_desc, align 8, !dbg !982
  %info_flags = getelementptr inbounds %struct.acpi_object_method, ptr %20, i32 0, i32 5, !dbg !984
  %21 = load i8, ptr %info_flags, align 1, !dbg !984
  %conv15 = zext i8 %21 to i32, !dbg !982
  %and = and i32 %conv15, 4, !dbg !985
  %tobool16 = icmp ne i32 %and, 0, !dbg !985
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !986

if.then17:                                        ; preds = %if.end14
  %22 = load ptr, ptr %info, align 8, !dbg !987
  %serial_method_count = getelementptr inbounds %struct.acpi_init_walk_info, ptr %22, i32 0, i32 3, !dbg !989
  %23 = load i32, ptr %serial_method_count, align 4, !dbg !990
  %inc18 = add i32 %23, 1, !dbg !990
  store i32 %inc18, ptr %serial_method_count, align 4, !dbg !990
  br label %sw.epilog, !dbg !991

if.end19:                                         ; preds = %if.end14
  %24 = load i8, ptr @acpi_gbl_auto_serialize_methods, align 1, !dbg !992
  %tobool20 = icmp ne i8 %24, 0, !dbg !992
  br i1 %tobool20, label %if.then21, label %if.end32, !dbg !994

if.then21:                                        ; preds = %if.end19
  %25 = load ptr, ptr %node, align 8, !dbg !995
  %26 = load ptr, ptr %obj_desc, align 8, !dbg !997
  %call22 = call i32 @acpi_ds_auto_serialize_method(ptr noundef %25, ptr noundef %26) #6, !dbg !998
  %27 = load ptr, ptr %obj_desc, align 8, !dbg !999
  %info_flags23 = getelementptr inbounds %struct.acpi_object_method, ptr %27, i32 0, i32 5, !dbg !1001
  %28 = load i8, ptr %info_flags23, align 1, !dbg !1001
  %conv24 = zext i8 %28 to i32, !dbg !999
  %and25 = and i32 %conv24, 4, !dbg !1002
  %tobool26 = icmp ne i32 %and25, 0, !dbg !1002
  br i1 %tobool26, label %if.then27, label %if.end31, !dbg !1003

if.then27:                                        ; preds = %if.then21
  %29 = load ptr, ptr %info, align 8, !dbg !1004
  %serial_method_count28 = getelementptr inbounds %struct.acpi_init_walk_info, ptr %29, i32 0, i32 3, !dbg !1006
  %30 = load i32, ptr %serial_method_count28, align 4, !dbg !1007
  %inc29 = add i32 %30, 1, !dbg !1007
  store i32 %inc29, ptr %serial_method_count28, align 4, !dbg !1007
  %31 = load ptr, ptr %info, align 8, !dbg !1008
  %serialized_method_count = getelementptr inbounds %struct.acpi_init_walk_info, ptr %31, i32 0, i32 5, !dbg !1009
  %32 = load i32, ptr %serialized_method_count, align 4, !dbg !1010
  %inc30 = add i32 %32, 1, !dbg !1010
  store i32 %inc30, ptr %serialized_method_count, align 4, !dbg !1010
  br label %sw.epilog, !dbg !1011

if.end31:                                         ; preds = %if.then21
  br label %if.end32, !dbg !1012

if.end32:                                         ; preds = %if.end31, %if.end19
  %33 = load ptr, ptr %info, align 8, !dbg !1013
  %non_serial_method_count = getelementptr inbounds %struct.acpi_init_walk_info, ptr %33, i32 0, i32 4, !dbg !1014
  %34 = load i32, ptr %non_serial_method_count, align 4, !dbg !1015
  %inc33 = add i32 %34, 1, !dbg !1015
  store i32 %inc33, ptr %non_serial_method_count, align 4, !dbg !1015
  br label %sw.epilog, !dbg !1016

sw.bb34:                                          ; preds = %if.end
  %35 = load ptr, ptr %info, align 8, !dbg !1017
  %device_count = getelementptr inbounds %struct.acpi_init_walk_info, ptr %35, i32 0, i32 6, !dbg !1018
  %36 = load i32, ptr %device_count, align 4, !dbg !1019
  %inc35 = add i32 %36, 1, !dbg !1019
  store i32 %inc35, ptr %device_count, align 4, !dbg !1019
  br label %sw.epilog, !dbg !1020

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !1021

sw.epilog:                                        ; preds = %sw.default, %sw.bb34, %if.end32, %if.then27, %if.then17, %if.then13, %if.end7
  store i32 0, ptr %retval, align 4, !dbg !1022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1022

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #5, !dbg !1023
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1023
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #5, !dbg !1023
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #5, !dbg !1023
  %37 = load i32, ptr %retval, align 4, !dbg !1023
  ret i32 %37, !dbg !1023
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1024 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1029 dso_local i32 @acpi_get_table_by_index(i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1033 dso_local i32 @acpi_ns_get_type(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1036 dso_local i32 @acpi_ds_initialize_region(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1040 dso_local ptr @acpi_ut_get_node_name(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1044 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1047 dso_local i32 @acpi_ds_auto_serialize_method(ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!823, !824, !825, !826, !827, !828, !829, !830}
!llvm.ident = !{!831}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !821, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.dsinit.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22dsinit\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/dsinit.ll drivers/acpi/acpica/dsinit.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !805, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dsinit.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4ba4b56cc4222068bbb57c49f5c448c3")
!4 = !{!5, !10, !11, !14, !16, !40}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !6, line: 21, baseType: !7)
!6 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !8, line: 27, baseType: !9)
!8 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !12, line: 42, baseType: !13)
!12 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!13 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !15, line: 421, baseType: !5)
!15 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_init_walk_info", file: !18, line: 97, size: 512, elements: !19)
!18 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "table_index", scope: !17, file: !18, line: 98, baseType: !5, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "object_count", scope: !17, file: !18, line: 99, baseType: !5, size: 32, offset: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "method_count", scope: !17, file: !18, line: 100, baseType: !5, size: 32, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "serial_method_count", scope: !17, file: !18, line: 101, baseType: !5, size: 32, offset: 96)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "non_serial_method_count", scope: !17, file: !18, line: 102, baseType: !5, size: 32, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "serialized_method_count", scope: !17, file: !18, line: 103, baseType: !5, size: 32, offset: 160)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "device_count", scope: !17, file: !18, line: 104, baseType: !5, size: 32, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "op_region_count", scope: !17, file: !18, line: 105, baseType: !5, size: 32, offset: 224)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "field_count", scope: !17, file: !18, line: 106, baseType: !5, size: 32, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_count", scope: !17, file: !18, line: 107, baseType: !5, size: 32, offset: 288)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "package_count", scope: !17, file: !18, line: 108, baseType: !5, size: 32, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "op_region_init", scope: !17, file: !18, line: 109, baseType: !5, size: 32, offset: 352)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "field_init", scope: !17, file: !18, line: 110, baseType: !5, size: 32, offset: 384)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_init", scope: !17, file: !18, line: 111, baseType: !5, size: 32, offset: 416)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "package_init", scope: !17, file: !18, line: 112, baseType: !5, size: 32, offset: 448)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !17, file: !18, line: 113, baseType: !36, size: 16, offset: 480)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !15, line: 445, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !6, line: 19, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !8, line: 24, baseType: !39)
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !42, line: 133, size: 384, elements: !43)
!42 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!43 = !{!44, !792, !793, !794, !795, !801, !802, !803, !804}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !41, file: !42, line: 134, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !47, line: 369, size: 576, elements: !48)
!47 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!48 = !{!49, !60, !76, !88, !102, !116, !126, !441, !458, !474, !487, !565, !577, !591, !601, !619, !641, !660, !679, !698, !711, !738, !755, !768, !782, !791}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !46, file: !47, line: 370, baseType: !50, size: 128)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !47, line: 73, size: 128, elements: !51)
!51 = !{!52, !53, !57, !58, !59}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !50, file: !47, line: 74, baseType: !45, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !50, file: !47, line: 74, baseType: !54, size: 8, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !6, line: 17, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !8, line: 21, baseType: !56)
!56 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !50, file: !47, line: 74, baseType: !54, size: 8, offset: 72)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !50, file: !47, line: 74, baseType: !37, size: 16, offset: 80)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !50, file: !47, line: 74, baseType: !54, size: 8, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !46, file: !47, line: 371, baseType: !61, size: 192)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !47, line: 76, size: 192, elements: !62)
!62 = !{!63, !64, !65, !66, !67, !68, !72}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !61, file: !47, line: 77, baseType: !45, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !61, file: !47, line: 77, baseType: !54, size: 8, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !61, file: !47, line: 77, baseType: !54, size: 8, offset: 72)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !61, file: !47, line: 77, baseType: !37, size: 16, offset: 80)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !61, file: !47, line: 77, baseType: !54, size: 8, offset: 96)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !61, file: !47, line: 77, baseType: !69, size: 24, offset: 104)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 24, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 3)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !61, file: !47, line: 78, baseType: !73, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !6, line: 23, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !8, line: 31, baseType: !75)
!75 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !46, file: !47, line: 372, baseType: !77, size: 256)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !47, line: 93, size: 256, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84, !87}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !77, file: !47, line: 94, baseType: !45, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !77, file: !47, line: 94, baseType: !54, size: 8, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !47, line: 94, baseType: !54, size: 8, offset: 72)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !77, file: !47, line: 94, baseType: !37, size: 16, offset: 80)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !47, line: 94, baseType: !54, size: 8, offset: 96)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !77, file: !47, line: 94, baseType: !85, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !77, file: !47, line: 94, baseType: !5, size: 32, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !46, file: !47, line: 373, baseType: !89, size: 384)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !47, line: 97, size: 384, elements: !90)
!90 = !{!91, !92, !93, !94, !95, !96, !98, !99, !100, !101}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !89, file: !47, line: 98, baseType: !45, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !89, file: !47, line: 98, baseType: !54, size: 8, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !47, line: 98, baseType: !54, size: 8, offset: 72)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !89, file: !47, line: 98, baseType: !37, size: 16, offset: 80)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !47, line: 98, baseType: !54, size: 8, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !89, file: !47, line: 98, baseType: !97, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !89, file: !47, line: 98, baseType: !5, size: 32, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !89, file: !47, line: 99, baseType: !5, size: 32, offset: 224)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !89, file: !47, line: 100, baseType: !97, size: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !89, file: !47, line: 101, baseType: !40, size: 64, offset: 320)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !46, file: !47, line: 374, baseType: !103, size: 384)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !47, line: 104, size: 384, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !113, !114, !115}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !103, file: !47, line: 105, baseType: !45, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !103, file: !47, line: 105, baseType: !54, size: 8, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !47, line: 105, baseType: !54, size: 8, offset: 72)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !103, file: !47, line: 105, baseType: !37, size: 16, offset: 80)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !47, line: 105, baseType: !54, size: 8, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !103, file: !47, line: 105, baseType: !40, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !103, file: !47, line: 106, baseType: !112, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !103, file: !47, line: 107, baseType: !97, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !103, file: !47, line: 108, baseType: !5, size: 32, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !103, file: !47, line: 109, baseType: !5, size: 32, offset: 352)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !46, file: !47, line: 375, baseType: !117, size: 192)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !47, line: 118, size: 192, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !117, file: !47, line: 119, baseType: !45, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !117, file: !47, line: 119, baseType: !54, size: 8, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !117, file: !47, line: 119, baseType: !54, size: 8, offset: 72)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !117, file: !47, line: 119, baseType: !37, size: 16, offset: 80)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !117, file: !47, line: 119, baseType: !54, size: 8, offset: 96)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !117, file: !47, line: 119, baseType: !125, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !46, file: !47, line: 376, baseType: !127, size: 448)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !47, line: 144, size: 448, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !438, !439, !440}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !127, file: !47, line: 145, baseType: !45, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !127, file: !47, line: 145, baseType: !54, size: 8, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !127, file: !47, line: 145, baseType: !54, size: 8, offset: 72)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !127, file: !47, line: 145, baseType: !37, size: 16, offset: 80)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !127, file: !47, line: 145, baseType: !54, size: 8, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !127, file: !47, line: 145, baseType: !54, size: 8, offset: 104)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !127, file: !47, line: 146, baseType: !54, size: 8, offset: 112)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !127, file: !47, line: 147, baseType: !54, size: 8, offset: 120)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !127, file: !47, line: 148, baseType: !45, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !127, file: !47, line: 149, baseType: !45, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !127, file: !47, line: 150, baseType: !97, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !127, file: !47, line: 154, baseType: !141, size: 64, offset: 320)
!141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !127, file: !47, line: 151, size: 64, elements: !142)
!142 = !{!143, !437}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !141, file: !47, line: 152, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !42, line: 248, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!14, !148}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !18, line: 37, size: 9024, elements: !150)
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !383, !384, !385, !386, !387, !391, !393, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !420, !421, !422, !423, !424, !425, !426, !427, !429, !435}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !149, file: !18, line: 38, baseType: !148, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !149, file: !18, line: 39, baseType: !54, size: 8, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !149, file: !18, line: 40, baseType: !54, size: 8, offset: 72)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !149, file: !18, line: 41, baseType: !37, size: 16, offset: 80)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !149, file: !18, line: 42, baseType: !54, size: 8, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !149, file: !18, line: 43, baseType: !54, size: 8, offset: 104)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !149, file: !18, line: 44, baseType: !54, size: 8, offset: 112)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !149, file: !18, line: 45, baseType: !36, size: 16, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !149, file: !18, line: 46, baseType: !54, size: 8, offset: 144)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !149, file: !18, line: 47, baseType: !54, size: 8, offset: 152)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !149, file: !18, line: 48, baseType: !54, size: 8, offset: 160)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !149, file: !18, line: 49, baseType: !54, size: 8, offset: 168)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !149, file: !18, line: 50, baseType: !54, size: 8, offset: 176)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !149, file: !18, line: 51, baseType: !54, size: 8, offset: 184)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !149, file: !18, line: 52, baseType: !54, size: 8, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !149, file: !18, line: 53, baseType: !54, size: 8, offset: 200)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !149, file: !18, line: 54, baseType: !97, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !149, file: !18, line: 55, baseType: !5, size: 32, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !149, file: !18, line: 56, baseType: !5, size: 32, offset: 352)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !149, file: !18, line: 57, baseType: !5, size: 32, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !149, file: !18, line: 58, baseType: !5, size: 32, offset: 416)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !149, file: !18, line: 60, baseType: !173, size: 640, offset: 448)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !42, line: 909, size: 640, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180, !264, !265, !381, !382}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !173, file: !42, line: 910, baseType: !97, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !173, file: !42, line: 911, baseType: !97, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !173, file: !42, line: 912, baseType: !97, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !173, file: !42, line: 913, baseType: !97, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !173, file: !42, line: 914, baseType: !97, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !173, file: !42, line: 915, baseType: !181, size: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !42, line: 891, size: 1600, elements: !183)
!183 = !{!184, !204, !220}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !182, file: !42, line: 892, baseType: !185, size: 448)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !42, line: 844, size: 448, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194, !203}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !185, file: !42, line: 845, baseType: !181, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !185, file: !42, line: 845, baseType: !54, size: 8, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !185, file: !42, line: 845, baseType: !54, size: 8, offset: 72)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !185, file: !42, line: 845, baseType: !37, size: 16, offset: 80)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !185, file: !42, line: 845, baseType: !97, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !185, file: !42, line: 845, baseType: !181, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !185, file: !42, line: 845, baseType: !40, size: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !185, file: !42, line: 845, baseType: !195, size: 64, offset: 320)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !42, line: 732, size: 64, elements: !196)
!196 = !{!197, !198, !199, !200, !201, !202}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !195, file: !42, line: 733, baseType: !73, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !195, file: !42, line: 734, baseType: !5, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !195, file: !42, line: 735, baseType: !85, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !195, file: !42, line: 736, baseType: !97, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !195, file: !42, line: 737, baseType: !85, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !195, file: !42, line: 738, baseType: !181, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !185, file: !42, line: 845, baseType: !54, size: 8, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !182, file: !42, line: 893, baseType: !205, size: 640)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !42, line: 851, size: 640, elements: !206)
!206 = !{!207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !205, file: !42, line: 852, baseType: !181, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !205, file: !42, line: 852, baseType: !54, size: 8, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !205, file: !42, line: 852, baseType: !54, size: 8, offset: 72)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !205, file: !42, line: 852, baseType: !37, size: 16, offset: 80)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !205, file: !42, line: 852, baseType: !97, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !205, file: !42, line: 852, baseType: !181, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !205, file: !42, line: 852, baseType: !40, size: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !205, file: !42, line: 852, baseType: !195, size: 64, offset: 320)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !205, file: !42, line: 852, baseType: !54, size: 8, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !205, file: !42, line: 852, baseType: !85, size: 64, offset: 448)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !205, file: !42, line: 853, baseType: !97, size: 64, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !205, file: !42, line: 854, baseType: !5, size: 32, offset: 576)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !205, file: !42, line: 855, baseType: !5, size: 32, offset: 608)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !182, file: !42, line: 894, baseType: !221, size: 1600)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !42, line: 862, size: 1600, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !221, file: !42, line: 863, baseType: !181, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !221, file: !42, line: 863, baseType: !54, size: 8, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !221, file: !42, line: 863, baseType: !54, size: 8, offset: 72)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !221, file: !42, line: 863, baseType: !37, size: 16, offset: 80)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !221, file: !42, line: 863, baseType: !97, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !221, file: !42, line: 863, baseType: !181, size: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !221, file: !42, line: 863, baseType: !40, size: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !221, file: !42, line: 863, baseType: !195, size: 64, offset: 320)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !221, file: !42, line: 863, baseType: !54, size: 8, offset: 384)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !221, file: !42, line: 863, baseType: !181, size: 64, offset: 448)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !221, file: !42, line: 864, baseType: !181, size: 64, offset: 512)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !221, file: !42, line: 865, baseType: !85, size: 64, offset: 576)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !221, file: !42, line: 866, baseType: !54, size: 8, offset: 640)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !221, file: !42, line: 867, baseType: !85, size: 64, offset: 704)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !221, file: !42, line: 868, baseType: !85, size: 64, offset: 768)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !221, file: !42, line: 869, baseType: !85, size: 64, offset: 832)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !221, file: !42, line: 870, baseType: !240, size: 32, offset: 896)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 32, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 4)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !221, file: !42, line: 871, baseType: !5, size: 32, offset: 928)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !221, file: !42, line: 872, baseType: !5, size: 32, offset: 960)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !221, file: !42, line: 873, baseType: !5, size: 32, offset: 992)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !221, file: !42, line: 874, baseType: !5, size: 32, offset: 1024)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !221, file: !42, line: 875, baseType: !5, size: 32, offset: 1056)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !221, file: !42, line: 876, baseType: !5, size: 32, offset: 1088)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !221, file: !42, line: 877, baseType: !5, size: 32, offset: 1120)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !221, file: !42, line: 878, baseType: !5, size: 32, offset: 1152)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !221, file: !42, line: 879, baseType: !5, size: 32, offset: 1184)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !221, file: !42, line: 880, baseType: !5, size: 32, offset: 1216)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !221, file: !42, line: 881, baseType: !5, size: 32, offset: 1248)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !221, file: !42, line: 882, baseType: !5, size: 32, offset: 1280)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !221, file: !42, line: 883, baseType: !5, size: 32, offset: 1312)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !221, file: !42, line: 884, baseType: !37, size: 16, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !221, file: !42, line: 885, baseType: !54, size: 8, offset: 1360)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !221, file: !42, line: 886, baseType: !54, size: 8, offset: 1368)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !221, file: !42, line: 887, baseType: !54, size: 8, offset: 1376)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !221, file: !42, line: 888, baseType: !261, size: 160, offset: 1384)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 160, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 20)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !173, file: !42, line: 916, baseType: !40, size: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !173, file: !42, line: 917, baseType: !266, size: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !42, line: 679, size: 640, elements: !268)
!268 = !{!269, !277, !290, !299, !308, !321, !335, !347, !359}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !267, file: !42, line: 680, baseType: !270, size: 128)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !42, line: 575, size: 128, elements: !271)
!271 = !{!272, !273, !274, !275, !276}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !270, file: !42, line: 576, baseType: !125, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !270, file: !42, line: 576, baseType: !54, size: 8, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !270, file: !42, line: 576, baseType: !54, size: 8, offset: 72)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !270, file: !42, line: 576, baseType: !37, size: 16, offset: 80)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !270, file: !42, line: 576, baseType: !37, size: 16, offset: 96)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !267, file: !42, line: 681, baseType: !278, size: 384)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !42, line: 604, size: 384, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !42, line: 605, baseType: !125, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !278, file: !42, line: 605, baseType: !54, size: 8, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !42, line: 605, baseType: !54, size: 8, offset: 72)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !278, file: !42, line: 605, baseType: !37, size: 16, offset: 80)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !278, file: !42, line: 605, baseType: !37, size: 16, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !278, file: !42, line: 606, baseType: !37, size: 16, offset: 112)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !278, file: !42, line: 607, baseType: !181, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !278, file: !42, line: 608, baseType: !97, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !278, file: !42, line: 609, baseType: !97, size: 64, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !278, file: !42, line: 610, baseType: !73, size: 64, offset: 320)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !267, file: !42, line: 682, baseType: !291, size: 192)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !42, line: 582, size: 192, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !291, file: !42, line: 583, baseType: !125, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !291, file: !42, line: 583, baseType: !54, size: 8, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !291, file: !42, line: 583, baseType: !54, size: 8, offset: 72)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !291, file: !42, line: 583, baseType: !37, size: 16, offset: 80)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !291, file: !42, line: 583, baseType: !37, size: 16, offset: 96)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !291, file: !42, line: 584, baseType: !45, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !267, file: !42, line: 683, baseType: !300, size: 192)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !42, line: 616, size: 192, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !42, line: 617, baseType: !125, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !300, file: !42, line: 617, baseType: !54, size: 8, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !42, line: 617, baseType: !54, size: 8, offset: 72)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !300, file: !42, line: 617, baseType: !37, size: 16, offset: 80)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !300, file: !42, line: 617, baseType: !37, size: 16, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !300, file: !42, line: 618, baseType: !40, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !267, file: !42, line: 684, baseType: !309, size: 448)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !42, line: 621, size: 448, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !42, line: 622, baseType: !125, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !309, file: !42, line: 622, baseType: !54, size: 8, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !42, line: 622, baseType: !54, size: 8, offset: 72)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !309, file: !42, line: 622, baseType: !37, size: 16, offset: 80)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !309, file: !42, line: 622, baseType: !37, size: 16, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !309, file: !42, line: 623, baseType: !5, size: 32, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !309, file: !42, line: 624, baseType: !181, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !309, file: !42, line: 625, baseType: !97, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !309, file: !42, line: 626, baseType: !97, size: 64, offset: 320)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !309, file: !42, line: 627, baseType: !5, size: 32, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !267, file: !42, line: 685, baseType: !322, size: 512)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !42, line: 590, size: 512, elements: !323)
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !322, file: !42, line: 591, baseType: !125, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !322, file: !42, line: 591, baseType: !54, size: 8, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !42, line: 591, baseType: !54, size: 8, offset: 72)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !322, file: !42, line: 591, baseType: !37, size: 16, offset: 80)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !322, file: !42, line: 591, baseType: !37, size: 16, offset: 96)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !322, file: !42, line: 592, baseType: !5, size: 32, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !322, file: !42, line: 593, baseType: !45, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !322, file: !42, line: 594, baseType: !45, size: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !322, file: !42, line: 595, baseType: !148, size: 64, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !322, file: !42, line: 596, baseType: !125, size: 64, offset: 384)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !322, file: !42, line: 597, baseType: !5, size: 32, offset: 448)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !267, file: !42, line: 686, baseType: !336, size: 320)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !42, line: 634, size: 320, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !42, line: 635, baseType: !125, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !336, file: !42, line: 635, baseType: !54, size: 8, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !42, line: 635, baseType: !54, size: 8, offset: 72)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !336, file: !42, line: 635, baseType: !37, size: 16, offset: 80)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !336, file: !42, line: 635, baseType: !37, size: 16, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !336, file: !42, line: 636, baseType: !54, size: 8, offset: 112)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !336, file: !42, line: 637, baseType: !148, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !336, file: !42, line: 638, baseType: !45, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !336, file: !42, line: 639, baseType: !73, size: 64, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !267, file: !42, line: 687, baseType: !348, size: 640)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !42, line: 646, size: 640, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !42, line: 647, baseType: !125, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !348, file: !42, line: 647, baseType: !54, size: 8, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !42, line: 647, baseType: !54, size: 8, offset: 72)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !348, file: !42, line: 647, baseType: !37, size: 16, offset: 80)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !348, file: !42, line: 647, baseType: !37, size: 16, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !348, file: !42, line: 648, baseType: !356, size: 512, offset: 128)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 512, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 8)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !267, file: !42, line: 688, baseType: !360, size: 320)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !42, line: 669, size: 320, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !42, line: 670, baseType: !125, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !360, file: !42, line: 670, baseType: !54, size: 8, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !360, file: !42, line: 670, baseType: !54, size: 8, offset: 72)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !360, file: !42, line: 670, baseType: !37, size: 16, offset: 80)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !360, file: !42, line: 670, baseType: !37, size: 16, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !360, file: !42, line: 671, baseType: !54, size: 8, offset: 112)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !360, file: !42, line: 672, baseType: !40, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !360, file: !42, line: 673, baseType: !45, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !360, file: !42, line: 674, baseType: !371, size: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !42, line: 660, size: 128, elements: !373)
!373 = !{!374, !380}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !372, file: !42, line: 661, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !15, line: 1061, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379, !5, !125}
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !15, line: 424, baseType: !125)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !372, file: !42, line: 662, baseType: !125, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !173, file: !42, line: 918, baseType: !181, size: 64, offset: 512)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !173, file: !42, line: 919, baseType: !5, size: 32, offset: 576)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !149, file: !18, line: 61, baseType: !5, size: 32, offset: 1088)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !149, file: !18, line: 62, baseType: !5, size: 32, offset: 1120)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !149, file: !18, line: 63, baseType: !37, size: 16, offset: 1152)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !149, file: !18, line: 64, baseType: !54, size: 8, offset: 1168)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !149, file: !18, line: 66, baseType: !388, size: 2688, offset: 1216)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2688, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 7)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !149, file: !18, line: 67, baseType: !392, size: 3072, offset: 3904)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 3072, elements: !357)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !149, file: !18, line: 68, baseType: !394, size: 576, offset: 6976)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 576, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 9)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !149, file: !18, line: 69, baseType: !112, size: 64, offset: 7552)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !149, file: !18, line: 71, baseType: !97, size: 64, offset: 7616)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !149, file: !18, line: 72, baseType: !112, size: 64, offset: 7680)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !149, file: !18, line: 73, baseType: !266, size: 64, offset: 7744)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !149, file: !18, line: 74, baseType: !40, size: 64, offset: 7808)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !149, file: !18, line: 75, baseType: !45, size: 64, offset: 7872)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !149, file: !18, line: 76, baseType: !40, size: 64, offset: 7936)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !149, file: !18, line: 77, baseType: !181, size: 64, offset: 8000)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !149, file: !18, line: 78, baseType: !45, size: 64, offset: 8064)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !149, file: !18, line: 79, baseType: !40, size: 64, offset: 8128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !149, file: !18, line: 80, baseType: !85, size: 64, offset: 8192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !149, file: !18, line: 81, baseType: !181, size: 64, offset: 8256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !149, file: !18, line: 82, baseType: !410, size: 64, offset: 8320)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !42, line: 718, size: 128, elements: !413)
!413 = !{!414, !415, !416, !417, !418, !419}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !412, file: !42, line: 722, baseType: !5, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !412, file: !42, line: 723, baseType: !5, size: 32, offset: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !412, file: !42, line: 724, baseType: !37, size: 16, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !412, file: !42, line: 725, baseType: !54, size: 8, offset: 80)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !412, file: !42, line: 726, baseType: !54, size: 8, offset: 88)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !412, file: !42, line: 727, baseType: !54, size: 8, offset: 96)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !149, file: !18, line: 83, baseType: !181, size: 64, offset: 8384)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !149, file: !18, line: 84, baseType: !45, size: 64, offset: 8448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !149, file: !18, line: 85, baseType: !266, size: 64, offset: 8512)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !149, file: !18, line: 86, baseType: !45, size: 64, offset: 8576)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !149, file: !18, line: 87, baseType: !266, size: 64, offset: 8640)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !149, file: !18, line: 88, baseType: !181, size: 64, offset: 8704)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !149, file: !18, line: 89, baseType: !181, size: 64, offset: 8768)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !149, file: !18, line: 90, baseType: !428, size: 64, offset: 8832)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !149, file: !18, line: 91, baseType: !430, size: 64, offset: 8896)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !42, line: 652, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!14, !148, !434}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !149, file: !18, line: 92, baseType: !436, size: 64, offset: 8960)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !42, line: 656, baseType: !145)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !141, file: !47, line: 153, baseType: !45, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !127, file: !47, line: 156, baseType: !5, size: 32, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !127, file: !47, line: 157, baseType: !36, size: 16, offset: 416)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !127, file: !47, line: 158, baseType: !54, size: 8, offset: 432)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !46, file: !47, line: 377, baseType: !442, size: 576)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !47, line: 122, size: 576, elements: !443)
!443 = !{!444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !442, file: !47, line: 123, baseType: !45, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !442, file: !47, line: 123, baseType: !54, size: 8, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !442, file: !47, line: 123, baseType: !54, size: 8, offset: 72)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !442, file: !47, line: 123, baseType: !37, size: 16, offset: 80)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !442, file: !47, line: 123, baseType: !54, size: 8, offset: 96)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !442, file: !47, line: 123, baseType: !54, size: 8, offset: 104)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !442, file: !47, line: 124, baseType: !37, size: 16, offset: 112)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !442, file: !47, line: 125, baseType: !125, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !442, file: !47, line: 126, baseType: !73, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !442, file: !47, line: 127, baseType: !428, size: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !442, file: !47, line: 128, baseType: !45, size: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !442, file: !47, line: 129, baseType: !45, size: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !442, file: !47, line: 130, baseType: !40, size: 64, offset: 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !442, file: !47, line: 131, baseType: !54, size: 8, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !46, file: !47, line: 378, baseType: !459, size: 512)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !47, line: 134, size: 512, elements: !460)
!460 = !{!461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !472, !473}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !459, file: !47, line: 135, baseType: !45, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !459, file: !47, line: 135, baseType: !54, size: 8, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !459, file: !47, line: 135, baseType: !54, size: 8, offset: 72)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !459, file: !47, line: 135, baseType: !37, size: 16, offset: 80)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !459, file: !47, line: 135, baseType: !54, size: 8, offset: 96)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !459, file: !47, line: 135, baseType: !54, size: 8, offset: 104)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !459, file: !47, line: 136, baseType: !40, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !459, file: !47, line: 137, baseType: !45, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !459, file: !47, line: 138, baseType: !45, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !459, file: !47, line: 139, baseType: !471, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !15, line: 129, baseType: !73)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !459, file: !47, line: 140, baseType: !5, size: 32, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !459, file: !47, line: 141, baseType: !125, size: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !46, file: !47, line: 379, baseType: !475, size: 320)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !47, line: 185, size: 320, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482, !486}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !475, file: !47, line: 186, baseType: !45, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !475, file: !47, line: 186, baseType: !54, size: 8, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !475, file: !47, line: 186, baseType: !54, size: 8, offset: 72)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !475, file: !47, line: 186, baseType: !37, size: 16, offset: 80)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !475, file: !47, line: 186, baseType: !54, size: 8, offset: 96)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !475, file: !47, line: 186, baseType: !483, size: 128, offset: 128)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 2)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !475, file: !47, line: 186, baseType: !45, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !46, file: !47, line: 380, baseType: !488, size: 384)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !47, line: 188, size: 384, elements: !489)
!489 = !{!490, !491, !492, !493, !494, !495, !496, !497}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !488, file: !47, line: 189, baseType: !45, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !488, file: !47, line: 189, baseType: !54, size: 8, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !488, file: !47, line: 189, baseType: !54, size: 8, offset: 72)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !488, file: !47, line: 189, baseType: !37, size: 16, offset: 80)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !488, file: !47, line: 189, baseType: !54, size: 8, offset: 96)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !488, file: !47, line: 190, baseType: !483, size: 128, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !488, file: !47, line: 190, baseType: !45, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !488, file: !47, line: 190, baseType: !498, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !42, line: 480, size: 576, elements: !500)
!500 = !{!501, !502, !503, !504, !512, !527, !559, !560, !561, !562, !563, !564}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !499, file: !42, line: 481, baseType: !40, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !499, file: !42, line: 482, baseType: !498, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !499, file: !42, line: 483, baseType: !498, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !499, file: !42, line: 484, baseType: !505, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !42, line: 497, size: 256, elements: !507)
!507 = !{!508, !509, !510, !511}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !506, file: !42, line: 498, baseType: !505, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !506, file: !42, line: 499, baseType: !505, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !506, file: !42, line: 500, baseType: !498, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !506, file: !42, line: 501, baseType: !5, size: 32, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !499, file: !42, line: 485, baseType: !513, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !42, line: 466, size: 320, elements: !515)
!515 = !{!516, !521, !522, !523, !524, !525, !526}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !514, file: !42, line: 467, baseType: !517, size: 128)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !42, line: 459, size: 128, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !517, file: !42, line: 460, baseType: !54, size: 8)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !517, file: !42, line: 461, baseType: !73, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !514, file: !42, line: 468, baseType: !517, size: 128, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !514, file: !42, line: 469, baseType: !37, size: 16, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !514, file: !42, line: 470, baseType: !54, size: 8, offset: 272)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !514, file: !42, line: 471, baseType: !54, size: 8, offset: 280)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !514, file: !42, line: 472, baseType: !54, size: 8, offset: 288)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !514, file: !42, line: 473, baseType: !54, size: 8, offset: 296)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !499, file: !42, line: 486, baseType: !528, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !42, line: 448, size: 192, elements: !530)
!530 = !{!531, !554, !555, !556, !557, !558}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !529, file: !42, line: 449, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !42, line: 438, size: 64, elements: !533)
!533 = !{!534, !535, !548}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !532, file: !42, line: 439, baseType: !40, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !532, file: !42, line: 440, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !42, line: 419, size: 256, elements: !538)
!538 = !{!539, !544, !545, !546, !547}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !537, file: !42, line: 420, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !15, line: 1058, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!5, !379, !5, !125}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !537, file: !42, line: 421, baseType: !125, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !537, file: !42, line: 422, baseType: !40, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !537, file: !42, line: 423, baseType: !54, size: 8, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !537, file: !42, line: 424, baseType: !54, size: 8, offset: 200)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !532, file: !42, line: 441, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !42, line: 429, size: 128, elements: !551)
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !550, file: !42, line: 430, baseType: !40, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !550, file: !42, line: 431, baseType: !549, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !529, file: !42, line: 450, baseType: !513, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !529, file: !42, line: 451, baseType: !54, size: 8, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !529, file: !42, line: 452, baseType: !54, size: 8, offset: 136)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !529, file: !42, line: 453, baseType: !54, size: 8, offset: 144)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !529, file: !42, line: 454, baseType: !54, size: 8, offset: 152)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !499, file: !42, line: 487, baseType: !73, size: 64, offset: 384)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !499, file: !42, line: 488, baseType: !5, size: 32, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !499, file: !42, line: 489, baseType: !37, size: 16, offset: 480)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !499, file: !42, line: 490, baseType: !37, size: 16, offset: 496)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !499, file: !42, line: 491, baseType: !54, size: 8, offset: 512)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !499, file: !42, line: 492, baseType: !54, size: 8, offset: 520)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !46, file: !47, line: 381, baseType: !566, size: 384)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !47, line: 193, size: 384, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !573, !574, !575, !576}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !566, file: !47, line: 194, baseType: !45, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !566, file: !47, line: 194, baseType: !54, size: 8, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !566, file: !47, line: 194, baseType: !54, size: 8, offset: 72)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !566, file: !47, line: 194, baseType: !37, size: 16, offset: 80)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !566, file: !47, line: 194, baseType: !54, size: 8, offset: 96)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !566, file: !47, line: 194, baseType: !483, size: 128, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !566, file: !47, line: 194, baseType: !45, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !566, file: !47, line: 194, baseType: !5, size: 32, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !566, file: !47, line: 195, baseType: !5, size: 32, offset: 352)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !46, file: !47, line: 382, baseType: !578, size: 384)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !47, line: 198, size: 384, elements: !579)
!579 = !{!580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !578, file: !47, line: 199, baseType: !45, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !578, file: !47, line: 199, baseType: !54, size: 8, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !578, file: !47, line: 199, baseType: !54, size: 8, offset: 72)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !578, file: !47, line: 199, baseType: !37, size: 16, offset: 80)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !578, file: !47, line: 199, baseType: !54, size: 8, offset: 96)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !578, file: !47, line: 201, baseType: !54, size: 8, offset: 104)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !578, file: !47, line: 202, baseType: !54, size: 8, offset: 112)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !578, file: !47, line: 203, baseType: !483, size: 128, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !578, file: !47, line: 203, baseType: !45, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !578, file: !47, line: 203, baseType: !590, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !15, line: 128, baseType: !73)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !46, file: !47, line: 383, baseType: !592, size: 320)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !47, line: 206, size: 320, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !600}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !592, file: !47, line: 207, baseType: !45, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !592, file: !47, line: 207, baseType: !54, size: 8, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !592, file: !47, line: 207, baseType: !54, size: 8, offset: 72)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !592, file: !47, line: 207, baseType: !37, size: 16, offset: 80)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !592, file: !47, line: 207, baseType: !54, size: 8, offset: 96)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !592, file: !47, line: 207, baseType: !483, size: 128, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !592, file: !47, line: 207, baseType: !45, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !46, file: !47, line: 384, baseType: !602, size: 384)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !47, line: 234, size: 384, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !602, file: !47, line: 235, baseType: !45, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !602, file: !47, line: 235, baseType: !54, size: 8, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !602, file: !47, line: 235, baseType: !54, size: 8, offset: 72)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !602, file: !47, line: 235, baseType: !37, size: 16, offset: 80)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !602, file: !47, line: 235, baseType: !54, size: 8, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !602, file: !47, line: 235, baseType: !54, size: 8, offset: 104)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !602, file: !47, line: 235, baseType: !54, size: 8, offset: 112)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !602, file: !47, line: 235, baseType: !54, size: 8, offset: 120)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !602, file: !47, line: 235, baseType: !40, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !602, file: !47, line: 235, baseType: !5, size: 32, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !602, file: !47, line: 235, baseType: !5, size: 32, offset: 224)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !602, file: !47, line: 235, baseType: !5, size: 32, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !602, file: !47, line: 235, baseType: !54, size: 8, offset: 288)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !602, file: !47, line: 235, baseType: !54, size: 8, offset: 296)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !602, file: !47, line: 235, baseType: !45, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !46, file: !47, line: 385, baseType: !620, size: 576)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !47, line: 238, size: 576, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !620, file: !47, line: 239, baseType: !45, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !620, file: !47, line: 239, baseType: !54, size: 8, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !620, file: !47, line: 239, baseType: !54, size: 8, offset: 72)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !620, file: !47, line: 239, baseType: !37, size: 16, offset: 80)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !620, file: !47, line: 239, baseType: !54, size: 8, offset: 96)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !620, file: !47, line: 239, baseType: !54, size: 8, offset: 104)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !620, file: !47, line: 239, baseType: !54, size: 8, offset: 112)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !620, file: !47, line: 239, baseType: !54, size: 8, offset: 120)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !620, file: !47, line: 239, baseType: !40, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !620, file: !47, line: 239, baseType: !5, size: 32, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !620, file: !47, line: 239, baseType: !5, size: 32, offset: 224)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !620, file: !47, line: 239, baseType: !5, size: 32, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !620, file: !47, line: 239, baseType: !54, size: 8, offset: 288)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !620, file: !47, line: 239, baseType: !54, size: 8, offset: 296)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !620, file: !47, line: 239, baseType: !37, size: 16, offset: 304)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !620, file: !47, line: 240, baseType: !45, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !620, file: !47, line: 241, baseType: !97, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !620, file: !47, line: 242, baseType: !37, size: 16, offset: 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !620, file: !47, line: 243, baseType: !97, size: 64, offset: 512)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !46, file: !47, line: 386, baseType: !642, size: 384)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !47, line: 263, size: 384, elements: !643)
!643 = !{!644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !642, file: !47, line: 264, baseType: !45, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !642, file: !47, line: 264, baseType: !54, size: 8, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !642, file: !47, line: 264, baseType: !54, size: 8, offset: 72)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !642, file: !47, line: 264, baseType: !37, size: 16, offset: 80)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !642, file: !47, line: 264, baseType: !54, size: 8, offset: 96)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !642, file: !47, line: 264, baseType: !54, size: 8, offset: 104)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !642, file: !47, line: 264, baseType: !54, size: 8, offset: 112)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !642, file: !47, line: 264, baseType: !54, size: 8, offset: 120)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !642, file: !47, line: 264, baseType: !40, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !642, file: !47, line: 264, baseType: !5, size: 32, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !642, file: !47, line: 264, baseType: !5, size: 32, offset: 224)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !642, file: !47, line: 264, baseType: !5, size: 32, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !642, file: !47, line: 264, baseType: !54, size: 8, offset: 288)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !642, file: !47, line: 264, baseType: !54, size: 8, offset: 296)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !642, file: !47, line: 264, baseType: !54, size: 8, offset: 304)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !642, file: !47, line: 265, baseType: !45, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !46, file: !47, line: 387, baseType: !661, size: 448)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !47, line: 246, size: 448, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !661, file: !47, line: 247, baseType: !45, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !661, file: !47, line: 247, baseType: !54, size: 8, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !661, file: !47, line: 247, baseType: !54, size: 8, offset: 72)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !661, file: !47, line: 247, baseType: !37, size: 16, offset: 80)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !47, line: 247, baseType: !54, size: 8, offset: 96)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !661, file: !47, line: 247, baseType: !54, size: 8, offset: 104)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !661, file: !47, line: 247, baseType: !54, size: 8, offset: 112)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !661, file: !47, line: 247, baseType: !54, size: 8, offset: 120)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !661, file: !47, line: 247, baseType: !40, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !661, file: !47, line: 247, baseType: !5, size: 32, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !661, file: !47, line: 247, baseType: !5, size: 32, offset: 224)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !661, file: !47, line: 247, baseType: !5, size: 32, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !661, file: !47, line: 247, baseType: !54, size: 8, offset: 288)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !661, file: !47, line: 247, baseType: !54, size: 8, offset: 296)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !661, file: !47, line: 247, baseType: !45, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !661, file: !47, line: 248, baseType: !45, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !46, file: !47, line: 388, baseType: !680, size: 448)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !47, line: 251, size: 448, elements: !681)
!681 = !{!682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !680, file: !47, line: 252, baseType: !45, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !680, file: !47, line: 252, baseType: !54, size: 8, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !680, file: !47, line: 252, baseType: !54, size: 8, offset: 72)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !680, file: !47, line: 252, baseType: !37, size: 16, offset: 80)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !47, line: 252, baseType: !54, size: 8, offset: 96)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !680, file: !47, line: 252, baseType: !54, size: 8, offset: 104)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !680, file: !47, line: 252, baseType: !54, size: 8, offset: 112)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !680, file: !47, line: 252, baseType: !54, size: 8, offset: 120)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !680, file: !47, line: 252, baseType: !40, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !680, file: !47, line: 252, baseType: !5, size: 32, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !680, file: !47, line: 252, baseType: !5, size: 32, offset: 224)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !680, file: !47, line: 252, baseType: !5, size: 32, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !680, file: !47, line: 252, baseType: !54, size: 8, offset: 288)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !680, file: !47, line: 252, baseType: !54, size: 8, offset: 296)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !680, file: !47, line: 257, baseType: !45, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !680, file: !47, line: 258, baseType: !45, size: 64, offset: 384)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !46, file: !47, line: 389, baseType: !699, size: 512)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !47, line: 274, size: 512, elements: !700)
!700 = !{!701, !702, !703, !704, !705, !706, !707, !708, !709, !710}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !699, file: !47, line: 275, baseType: !45, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !699, file: !47, line: 275, baseType: !54, size: 8, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !699, file: !47, line: 275, baseType: !54, size: 8, offset: 72)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !699, file: !47, line: 275, baseType: !37, size: 16, offset: 80)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !699, file: !47, line: 275, baseType: !54, size: 8, offset: 96)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !699, file: !47, line: 275, baseType: !40, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !699, file: !47, line: 276, baseType: !5, size: 32, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !699, file: !47, line: 277, baseType: !375, size: 64, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !699, file: !47, line: 278, baseType: !125, size: 64, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !699, file: !47, line: 279, baseType: !483, size: 128, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !46, file: !47, line: 390, baseType: !712, size: 576)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !47, line: 282, size: 576, elements: !713)
!713 = !{!714, !715, !716, !717, !718, !719, !720, !721, !727, !728, !729, !730, !736, !737}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !712, file: !47, line: 283, baseType: !45, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !712, file: !47, line: 283, baseType: !54, size: 8, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !712, file: !47, line: 283, baseType: !54, size: 8, offset: 72)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !712, file: !47, line: 283, baseType: !37, size: 16, offset: 80)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !712, file: !47, line: 283, baseType: !54, size: 8, offset: 96)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !712, file: !47, line: 283, baseType: !54, size: 8, offset: 104)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !712, file: !47, line: 284, baseType: !54, size: 8, offset: 112)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !712, file: !47, line: 285, baseType: !722, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !15, line: 1093, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!14, !5, !471, !5, !726, !125, !125}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !712, file: !47, line: 286, baseType: !40, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !712, file: !47, line: 287, baseType: !125, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !712, file: !47, line: 288, baseType: !125, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !712, file: !47, line: 289, baseType: !731, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !15, line: 1126, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!14, !379, !5, !125, !735}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !712, file: !47, line: 290, baseType: !45, size: 64, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !712, file: !47, line: 291, baseType: !45, size: 64, offset: 512)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !46, file: !47, line: 391, baseType: !739, size: 512)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !47, line: 309, size: 512, elements: !740)
!740 = !{!741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !739, file: !47, line: 310, baseType: !45, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !739, file: !47, line: 310, baseType: !54, size: 8, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !739, file: !47, line: 310, baseType: !54, size: 8, offset: 72)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !739, file: !47, line: 310, baseType: !37, size: 16, offset: 80)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !739, file: !47, line: 310, baseType: !54, size: 8, offset: 96)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !739, file: !47, line: 310, baseType: !54, size: 8, offset: 104)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !739, file: !47, line: 311, baseType: !54, size: 8, offset: 112)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !739, file: !47, line: 312, baseType: !54, size: 8, offset: 120)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !739, file: !47, line: 313, baseType: !125, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !739, file: !47, line: 314, baseType: !40, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !739, file: !47, line: 315, baseType: !112, size: 64, offset: 256)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !739, file: !47, line: 316, baseType: !97, size: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !739, file: !47, line: 317, baseType: !97, size: 64, offset: 384)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !739, file: !47, line: 318, baseType: !5, size: 32, offset: 448)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !46, file: !47, line: 392, baseType: !756, size: 448)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !47, line: 342, size: 448, elements: !757)
!757 = !{!758, !759, !760, !761, !762, !763, !764, !765, !766, !767}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !756, file: !47, line: 343, baseType: !45, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !756, file: !47, line: 343, baseType: !54, size: 8, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !756, file: !47, line: 343, baseType: !54, size: 8, offset: 72)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !756, file: !47, line: 343, baseType: !37, size: 16, offset: 80)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !756, file: !47, line: 343, baseType: !54, size: 8, offset: 96)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !756, file: !47, line: 343, baseType: !40, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !756, file: !47, line: 344, baseType: !40, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !756, file: !47, line: 345, baseType: !125, size: 64, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !756, file: !47, line: 346, baseType: !97, size: 64, offset: 320)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !756, file: !47, line: 347, baseType: !5, size: 32, offset: 384)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !46, file: !47, line: 393, baseType: !769, size: 256)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !47, line: 352, size: 256, elements: !770)
!770 = !{!771, !772, !773, !774, !775, !776, !781}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !769, file: !47, line: 353, baseType: !45, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !769, file: !47, line: 353, baseType: !54, size: 8, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !769, file: !47, line: 353, baseType: !54, size: 8, offset: 72)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !769, file: !47, line: 353, baseType: !37, size: 16, offset: 80)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !769, file: !47, line: 353, baseType: !54, size: 8, offset: 96)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !769, file: !47, line: 353, baseType: !777, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !15, line: 1064, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !379, !125}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !769, file: !47, line: 354, baseType: !125, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !46, file: !47, line: 394, baseType: !783, size: 192)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !47, line: 359, size: 192, elements: !784)
!784 = !{!785, !786, !787, !788, !789, !790}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !783, file: !47, line: 360, baseType: !45, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !783, file: !47, line: 360, baseType: !54, size: 8, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !783, file: !47, line: 360, baseType: !54, size: 8, offset: 72)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !783, file: !47, line: 360, baseType: !37, size: 16, offset: 80)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !783, file: !47, line: 360, baseType: !54, size: 8, offset: 96)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !783, file: !47, line: 360, baseType: !45, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !46, file: !47, line: 401, baseType: !41, size: 384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !41, file: !42, line: 135, baseType: !54, size: 8, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !41, file: !42, line: 136, baseType: !54, size: 8, offset: 72)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !41, file: !42, line: 137, baseType: !37, size: 16, offset: 80)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !41, file: !42, line: 138, baseType: !796, size: 32, offset: 96)
!796 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !797, line: 328, size: 32, elements: !798)
!797 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !796, file: !797, line: 329, baseType: !5, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !796, file: !797, line: 330, baseType: !240, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !41, file: !42, line: 139, baseType: !40, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !41, file: !42, line: 140, baseType: !40, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !41, file: !42, line: 141, baseType: !40, size: 64, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !41, file: !42, line: 142, baseType: !36, size: 16, offset: 320)
!805 = !{!806, !811, !816, !0}
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(scope: null, file: !3, line: 193, type: !808, isLocal: true, isDefinition: true)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 168, elements: !809)
!809 = !{!810}
!810 = !DISubrange(count: 21)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(scope: null, file: !3, line: 203, type: !813, isLocal: true, isDefinition: true)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 40, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 5)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(scope: null, file: !3, line: 75, type: !818, isLocal: true, isDefinition: true)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 320, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 40)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !822, size: 56, elements: !389)
!822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!823 = !{i32 7, !"Dwarf Version", i32 5}
!824 = !{i32 2, !"Debug Info Version", i32 3}
!825 = !{i32 1, !"wchar_size", i32 2}
!826 = !{i32 8, !"cf-protection-branch", i32 1}
!827 = !{i32 4, !"function_return_thunk_extern", i32 1}
!828 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!829 = !{i32 1, !"Code Model", i32 2}
!830 = !{i32 1, !"override-stack-alignment", i32 8}
!831 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!832 = distinct !DISubprogram(name: "acpi_ds_initialize_objects", scope: !3, file: !3, line: 157, type: !833, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !835)
!833 = !DISubroutineType(types: !834)
!834 = !{!14, !5, !40}
!835 = !{!836, !837, !838, !839, !840, !857}
!836 = !DILocalVariable(name: "table_index", arg: 1, scope: !832, file: !3, line: 157, type: !5)
!837 = !DILocalVariable(name: "start_node", arg: 2, scope: !832, file: !3, line: 158, type: !40)
!838 = !DILocalVariable(name: "status", scope: !832, file: !3, line: 160, type: !14)
!839 = !DILocalVariable(name: "info", scope: !832, file: !3, line: 161, type: !17)
!840 = !DILocalVariable(name: "table", scope: !832, file: !3, line: 162, type: !841)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !797, line: 68, size: 288, elements: !843)
!843 = !{!844, !845, !846, !847, !848, !852, !854, !855, !856}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !842, file: !797, line: 69, baseType: !240, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !842, file: !797, line: 70, baseType: !5, size: 32, offset: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !842, file: !797, line: 71, baseType: !54, size: 8, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !842, file: !797, line: 72, baseType: !54, size: 8, offset: 72)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !842, file: !797, line: 73, baseType: !849, size: 48, offset: 80)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 48, elements: !850)
!850 = !{!851}
!851 = !DISubrange(count: 6)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !842, file: !797, line: 74, baseType: !853, size: 64, offset: 128)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 64, elements: !357)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !842, file: !797, line: 75, baseType: !5, size: 32, offset: 192)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !842, file: !797, line: 76, baseType: !240, size: 32, offset: 224)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !842, file: !797, line: 77, baseType: !5, size: 32, offset: 256)
!857 = !DILocalVariable(name: "owner_id", scope: !832, file: !3, line: 163, type: !36)
!858 = !DILocation(line: 157, column: 32, scope: !832)
!859 = !DILocation(line: 158, column: 35, scope: !832)
!860 = !DILocation(line: 160, column: 2, scope: !832)
!861 = !DILocation(line: 160, column: 14, scope: !832)
!862 = !DILocation(line: 161, column: 2, scope: !832)
!863 = !DILocation(line: 161, column: 29, scope: !832)
!864 = !DILocation(line: 162, column: 2, scope: !832)
!865 = !DILocation(line: 162, column: 28, scope: !832)
!866 = !DILocation(line: 163, column: 2, scope: !832)
!867 = !DILocation(line: 163, column: 16, scope: !832)
!868 = !DILocation(line: 167, column: 32, scope: !832)
!869 = !DILocation(line: 167, column: 11, scope: !832)
!870 = !DILocation(line: 167, column: 9, scope: !832)
!871 = !DILocation(line: 168, column: 6, scope: !872)
!872 = distinct !DILexicalBlock(scope: !832, file: !3, line: 168, column: 6)
!873 = !DILocation(line: 168, column: 6, scope: !832)
!874 = !DILocation(line: 169, column: 3, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !3, line: 168, column: 28)
!876 = !DILocation(line: 177, column: 2, scope: !832)
!877 = !DILocation(line: 179, column: 18, scope: !832)
!878 = !DILocation(line: 179, column: 7, scope: !832)
!879 = !DILocation(line: 179, column: 16, scope: !832)
!880 = !DILocation(line: 180, column: 21, scope: !832)
!881 = !DILocation(line: 180, column: 7, scope: !832)
!882 = !DILocation(line: 180, column: 19, scope: !832)
!883 = !DILocation(line: 189, column: 44, scope: !832)
!884 = !DILocation(line: 189, column: 6, scope: !832)
!885 = !DILocation(line: 188, column: 9, scope: !832)
!886 = !DILocation(line: 192, column: 6, scope: !887)
!887 = distinct !DILexicalBlock(scope: !832, file: !3, line: 192, column: 6)
!888 = !DILocation(line: 192, column: 6, scope: !832)
!889 = !DILocation(line: 193, column: 3, scope: !890)
!890 = distinct !DILexicalBlock(scope: !887, file: !3, line: 192, column: 28)
!891 = !DILocation(line: 194, column: 2, scope: !890)
!892 = !DILocation(line: 196, column: 35, scope: !832)
!893 = !DILocation(line: 196, column: 11, scope: !832)
!894 = !DILocation(line: 196, column: 9, scope: !832)
!895 = !DILocation(line: 197, column: 6, scope: !896)
!896 = distinct !DILexicalBlock(scope: !832, file: !3, line: 197, column: 6)
!897 = !DILocation(line: 197, column: 6, scope: !832)
!898 = !DILocation(line: 198, column: 3, scope: !899)
!899 = distinct !DILexicalBlock(scope: !896, file: !3, line: 197, column: 28)
!900 = !DILocation(line: 203, column: 6, scope: !901)
!901 = distinct !DILexicalBlock(scope: !832, file: !3, line: 203, column: 6)
!902 = !DILocation(line: 203, column: 6, scope: !832)
!903 = !DILocation(line: 206, column: 2, scope: !904)
!904 = distinct !DILexicalBlock(scope: !901, file: !3, line: 203, column: 61)
!905 = !DILocation(line: 223, column: 2, scope: !832)
!906 = !DILocation(line: 224, column: 1, scope: !832)
!907 = !DISubprogram(name: "acpi_tb_get_owner_id", scope: !908, file: !908, line: 116, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!908 = !DIFile(filename: "drivers/acpi/acpica/actables.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb0787ba059aac7511e633019dab5fb8")
!909 = !DISubroutineType(types: !910)
!910 = !{!14, !5, !911}
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!912 = !DISubprogram(name: "acpi_ns_walk_namespace", scope: !913, file: !913, line: 77, type: !914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!913 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!914 = !DISubroutineType(types: !915)
!915 = !{!14, !916, !379, !5, !5, !917, !917, !125, !735}
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !15, line: 644, baseType: !5)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_callback", file: !15, line: 1135, baseType: !732)
!918 = distinct !DISubprogram(name: "acpi_ds_init_one_object", scope: !3, file: !3, line: 46, type: !733, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !919)
!919 = !{!920, !921, !922, !923, !924, !925, !926, !927}
!920 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !918, file: !3, line: 46, type: !379)
!921 = !DILocalVariable(name: "level", arg: 2, scope: !918, file: !3, line: 47, type: !5)
!922 = !DILocalVariable(name: "context", arg: 3, scope: !918, file: !3, line: 47, type: !125)
!923 = !DILocalVariable(name: "return_value", arg: 4, scope: !918, file: !3, line: 47, type: !735)
!924 = !DILocalVariable(name: "info", scope: !918, file: !3, line: 49, type: !16)
!925 = !DILocalVariable(name: "node", scope: !918, file: !3, line: 51, type: !40)
!926 = !DILocalVariable(name: "status", scope: !918, file: !3, line: 53, type: !14)
!927 = !DILocalVariable(name: "obj_desc", scope: !918, file: !3, line: 54, type: !45)
!928 = !DILocation(line: 46, column: 37, scope: !918)
!929 = !DILocation(line: 47, column: 8, scope: !918)
!930 = !DILocation(line: 47, column: 21, scope: !918)
!931 = !DILocation(line: 47, column: 37, scope: !918)
!932 = !DILocation(line: 49, column: 2, scope: !918)
!933 = !DILocation(line: 49, column: 30, scope: !918)
!934 = !DILocation(line: 50, column: 36, scope: !918)
!935 = !DILocation(line: 51, column: 2, scope: !918)
!936 = !DILocation(line: 51, column: 30, scope: !918)
!937 = !DILocation(line: 52, column: 36, scope: !918)
!938 = !DILocation(line: 53, column: 2, scope: !918)
!939 = !DILocation(line: 53, column: 14, scope: !918)
!940 = !DILocation(line: 54, column: 2, scope: !918)
!941 = !DILocation(line: 54, column: 29, scope: !918)
!942 = !DILocation(line: 62, column: 6, scope: !943)
!943 = distinct !DILexicalBlock(scope: !918, file: !3, line: 62, column: 6)
!944 = !DILocation(line: 62, column: 12, scope: !943)
!945 = !DILocation(line: 62, column: 24, scope: !943)
!946 = !DILocation(line: 62, column: 30, scope: !943)
!947 = !DILocation(line: 62, column: 21, scope: !943)
!948 = !DILocation(line: 62, column: 6, scope: !918)
!949 = !DILocation(line: 63, column: 3, scope: !950)
!950 = distinct !DILexicalBlock(scope: !943, file: !3, line: 62, column: 40)
!951 = !DILocation(line: 66, column: 2, scope: !918)
!952 = !DILocation(line: 66, column: 8, scope: !918)
!953 = !DILocation(line: 66, column: 20, scope: !918)
!954 = !DILocation(line: 70, column: 27, scope: !918)
!955 = !DILocation(line: 70, column: 10, scope: !918)
!956 = !DILocation(line: 70, column: 2, scope: !918)
!957 = !DILocation(line: 73, column: 38, scope: !958)
!958 = distinct !DILexicalBlock(scope: !918, file: !3, line: 70, column: 40)
!959 = !DILocation(line: 73, column: 12, scope: !958)
!960 = !DILocation(line: 73, column: 10, scope: !958)
!961 = !DILocation(line: 74, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !958, file: !3, line: 74, column: 7)
!963 = !DILocation(line: 74, column: 7, scope: !958)
!964 = !DILocation(line: 75, column: 4, scope: !965)
!965 = distinct !DILexicalBlock(scope: !962, file: !3, line: 74, column: 29)
!966 = !DILocation(line: 79, column: 3, scope: !965)
!967 = !DILocation(line: 81, column: 3, scope: !958)
!968 = !DILocation(line: 81, column: 9, scope: !958)
!969 = !DILocation(line: 81, column: 24, scope: !958)
!970 = !DILocation(line: 82, column: 3, scope: !958)
!971 = !DILocation(line: 93, column: 3, scope: !958)
!972 = !DILocation(line: 93, column: 9, scope: !958)
!973 = !DILocation(line: 93, column: 21, scope: !958)
!974 = !DILocation(line: 94, column: 42, scope: !958)
!975 = !DILocation(line: 94, column: 14, scope: !958)
!976 = !DILocation(line: 94, column: 12, scope: !958)
!977 = !DILocation(line: 95, column: 8, scope: !978)
!978 = distinct !DILexicalBlock(scope: !958, file: !3, line: 95, column: 7)
!979 = !DILocation(line: 95, column: 7, scope: !958)
!980 = !DILocation(line: 96, column: 4, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !3, line: 95, column: 18)
!982 = !DILocation(line: 101, column: 7, scope: !983)
!983 = distinct !DILexicalBlock(scope: !958, file: !3, line: 101, column: 7)
!984 = !DILocation(line: 101, column: 24, scope: !983)
!985 = !DILocation(line: 101, column: 35, scope: !983)
!986 = !DILocation(line: 101, column: 7, scope: !958)
!987 = !DILocation(line: 102, column: 4, scope: !988)
!988 = distinct !DILexicalBlock(scope: !983, file: !3, line: 101, column: 61)
!989 = !DILocation(line: 102, column: 10, scope: !988)
!990 = !DILocation(line: 102, column: 29, scope: !988)
!991 = !DILocation(line: 103, column: 4, scope: !988)
!992 = !DILocation(line: 106, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !958, file: !3, line: 106, column: 7)
!994 = !DILocation(line: 106, column: 7, scope: !958)
!995 = !DILocation(line: 110, column: 34, scope: !996)
!996 = distinct !DILexicalBlock(scope: !993, file: !3, line: 106, column: 40)
!997 = !DILocation(line: 110, column: 40, scope: !996)
!998 = !DILocation(line: 110, column: 4, scope: !996)
!999 = !DILocation(line: 111, column: 8, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !996, file: !3, line: 111, column: 8)
!1001 = !DILocation(line: 112, column: 8, scope: !1000)
!1002 = !DILocation(line: 112, column: 19, scope: !1000)
!1003 = !DILocation(line: 111, column: 8, scope: !996)
!1004 = !DILocation(line: 116, column: 5, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 112, column: 45)
!1006 = !DILocation(line: 116, column: 11, scope: !1005)
!1007 = !DILocation(line: 116, column: 30, scope: !1005)
!1008 = !DILocation(line: 117, column: 5, scope: !1005)
!1009 = !DILocation(line: 117, column: 11, scope: !1005)
!1010 = !DILocation(line: 117, column: 34, scope: !1005)
!1011 = !DILocation(line: 118, column: 5, scope: !1005)
!1012 = !DILocation(line: 120, column: 3, scope: !996)
!1013 = !DILocation(line: 122, column: 3, scope: !958)
!1014 = !DILocation(line: 122, column: 9, scope: !958)
!1015 = !DILocation(line: 122, column: 32, scope: !958)
!1016 = !DILocation(line: 123, column: 3, scope: !958)
!1017 = !DILocation(line: 127, column: 3, scope: !958)
!1018 = !DILocation(line: 127, column: 9, scope: !958)
!1019 = !DILocation(line: 127, column: 21, scope: !958)
!1020 = !DILocation(line: 128, column: 3, scope: !958)
!1021 = !DILocation(line: 132, column: 3, scope: !958)
!1022 = !DILocation(line: 139, column: 2, scope: !918)
!1023 = !DILocation(line: 140, column: 1, scope: !918)
!1024 = !DISubprogram(name: "acpi_exception", scope: !1025, file: !1025, line: 906, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1025 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !1028, !5, !14, !1028, null}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!1029 = !DISubprogram(name: "acpi_get_table_by_index", scope: !1025, file: !1025, line: 495, type: !1030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!14, !5, !1032}
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!1033 = !DISubprogram(name: "acpi_ns_get_type", scope: !913, file: !913, line: 379, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!916, !40}
!1036 = !DISubprogram(name: "acpi_ds_initialize_region", scope: !1037, file: !1037, line: 66, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1037 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!14, !379}
!1040 = !DISubprogram(name: "acpi_ut_get_node_name", scope: !1041, file: !1041, line: 227, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1041 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!1028, !125}
!1044 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !913, file: !913, line: 298, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!45, !40}
!1047 = !DISubprogram(name: "acpi_ds_auto_serialize_method", scope: !1037, file: !1037, line: 171, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!14, !40, !45}
