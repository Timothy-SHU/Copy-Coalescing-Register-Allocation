; ModuleID = 'drivers/acpi/acpica/excreate.c'
source_filename = "drivers/acpi/acpica/excreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_event = type { ptr, i8, i8, i16, i8, ptr }
%struct.acpi_object_mutex = type { ptr, i8, i8, i16, i8, i8, i16, ptr, i64, ptr, ptr, ptr, ptr, i8 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_parse_obj_common = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_object_extra = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_scope_state = type { ptr, i8, i8, i16, i16, ptr }
%struct.acpi_object_region = type { ptr, i8, i8, i16, i8, i8, ptr, ptr, ptr, i64, i32, ptr }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_processor = type { ptr, i8, i8, i16, i8, i8, i8, [2 x ptr], ptr, i64 }
%struct.acpi_object_power_resource = type { ptr, i8, i8, i16, i8, [2 x ptr], ptr, i32, i32 }
%struct.acpi_object_method = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, %union.anon, i32, i16, i8 }
%union.anon = type { ptr }

@_acpi_module_name = internal constant [9 x i8] c"excreate\00", align 1, !dbg !0
@.str = private unnamed_addr constant [42 x i8] c"Invalid/unknown Address Space ID: 0x%2.2X\00", align 1, !dbg !786

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_create_alias(ptr noundef %walk_state) #0 align 16 !dbg !802 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %target_node = alloca ptr, align 8
  %alias_node = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !804, metadata !DIExpression()), !dbg !808
  call void @llvm.lifetime.start.p0(i64 8, ptr %target_node) #4, !dbg !809
  call void @llvm.dbg.declare(metadata ptr %target_node, metadata !805, metadata !DIExpression()), !dbg !810
  call void @llvm.lifetime.start.p0(i64 8, ptr %alias_node) #4, !dbg !811
  call void @llvm.dbg.declare(metadata ptr %alias_node, metadata !806, metadata !DIExpression()), !dbg !812
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !813
  call void @llvm.dbg.declare(metadata ptr %status, metadata !807, metadata !DIExpression()), !dbg !814
  store i32 0, ptr %status, align 4, !dbg !814
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !815
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 28, !dbg !816
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !815
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !815
  store ptr %1, ptr %alias_node, align 8, !dbg !817
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !818
  %operands1 = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 28, !dbg !819
  %arrayidx2 = getelementptr [9 x ptr], ptr %operands1, i64 0, i64 1, !dbg !818
  %3 = load ptr, ptr %arrayidx2, align 8, !dbg !818
  store ptr %3, ptr %target_node, align 8, !dbg !820
  %4 = load ptr, ptr %target_node, align 8, !dbg !821
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %4, i32 0, i32 2, !dbg !823
  %5 = load i8, ptr %type, align 1, !dbg !823
  %conv = zext i8 %5 to i32, !dbg !821
  %cmp = icmp eq i32 %conv, 21, !dbg !824
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !825

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %target_node, align 8, !dbg !826
  %type4 = getelementptr inbounds %struct.acpi_namespace_node, ptr %6, i32 0, i32 2, !dbg !827
  %7 = load i8, ptr %type4, align 1, !dbg !827
  %conv5 = zext i8 %7 to i32, !dbg !826
  %cmp6 = icmp eq i32 %conv5, 22, !dbg !828
  br i1 %cmp6, label %if.then, label %if.end, !dbg !829

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load ptr, ptr %target_node, align 8, !dbg !830
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %8, i32 0, i32 0, !dbg !830
  %9 = load ptr, ptr %object, align 8, !dbg !830
  %10 = ptrtoint ptr %9 to i64, !dbg !830
  %11 = inttoptr i64 %10 to ptr, !dbg !830
  store ptr %11, ptr %target_node, align 8, !dbg !832
  br label %if.end, !dbg !833

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %12 = load ptr, ptr %target_node, align 8, !dbg !834
  %tobool = icmp ne ptr %12, null, !dbg !834
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !836

if.then8:                                         ; preds = %if.end
  store i32 9, ptr %retval, align 4, !dbg !837
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !837

if.end9:                                          ; preds = %if.end
  %13 = load ptr, ptr %target_node, align 8, !dbg !839
  %type10 = getelementptr inbounds %struct.acpi_namespace_node, ptr %13, i32 0, i32 2, !dbg !840
  %14 = load i8, ptr %type10, align 1, !dbg !840
  %conv11 = zext i8 %14 to i32, !dbg !839
  switch i32 %conv11, label %sw.default [
    i32 8, label %sw.bb
  ], !dbg !841

sw.bb:                                            ; preds = %if.end9
  %15 = load ptr, ptr %alias_node, align 8, !dbg !842
  %type12 = getelementptr inbounds %struct.acpi_namespace_node, ptr %15, i32 0, i32 2, !dbg !844
  store i8 22, ptr %type12, align 1, !dbg !845
  br label %sw.epilog, !dbg !846

sw.default:                                       ; preds = %if.end9
  %16 = load ptr, ptr %alias_node, align 8, !dbg !847
  %type13 = getelementptr inbounds %struct.acpi_namespace_node, ptr %16, i32 0, i32 2, !dbg !848
  store i8 21, ptr %type13, align 1, !dbg !849
  %17 = load ptr, ptr %target_node, align 8, !dbg !850
  %18 = ptrtoint ptr %17 to i64, !dbg !850
  %19 = inttoptr i64 %18 to ptr, !dbg !850
  %20 = load ptr, ptr %alias_node, align 8, !dbg !851
  %object14 = getelementptr inbounds %struct.acpi_namespace_node, ptr %20, i32 0, i32 0, !dbg !852
  store ptr %19, ptr %object14, align 8, !dbg !853
  br label %sw.epilog, !dbg !854

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %21 = load ptr, ptr %target_node, align 8, !dbg !855
  %22 = ptrtoint ptr %21 to i64, !dbg !855
  %23 = inttoptr i64 %22 to ptr, !dbg !855
  %24 = load ptr, ptr %alias_node, align 8, !dbg !856
  %object15 = getelementptr inbounds %struct.acpi_namespace_node, ptr %24, i32 0, i32 0, !dbg !857
  store ptr %23, ptr %object15, align 8, !dbg !858
  %25 = load i32, ptr %status, align 4, !dbg !859
  store i32 %25, ptr %retval, align 4, !dbg !859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !859

cleanup:                                          ; preds = %sw.epilog, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !860
  call void @llvm.lifetime.end.p0(i64 8, ptr %alias_node) #4, !dbg !860
  call void @llvm.lifetime.end.p0(i64 8, ptr %target_node) #4, !dbg !860
  %26 = load i32, ptr %retval, align 4, !dbg !860
  ret i32 %26, !dbg !860
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_create_event(ptr noundef %walk_state) #0 align 16 !dbg !861 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca ptr, align 8
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !863, metadata !DIExpression()), !dbg !867
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !868
  call void @llvm.dbg.declare(metadata ptr %status, metadata !864, metadata !DIExpression()), !dbg !869
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !870
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !865, metadata !DIExpression()), !dbg !871
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 111, i32 noundef 128, i32 noundef 7) #5, !dbg !872
  store ptr %call, ptr %obj_desc, align 8, !dbg !873
  %0 = load ptr, ptr %obj_desc, align 8, !dbg !874
  %tobool = icmp ne ptr %0, null, !dbg !874
  br i1 %tobool, label %if.end, label %if.then, !dbg !876

if.then:                                          ; preds = %entry
  store i32 4, ptr %status, align 4, !dbg !877
  br label %cleanup, !dbg !879

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %obj_desc, align 8, !dbg !880
  %os_semaphore = getelementptr inbounds %struct.acpi_object_event, ptr %1, i32 0, i32 5, !dbg !881
  %call1 = call i32 @acpi_os_create_semaphore(i32 noundef -1, i32 noundef 0, ptr noundef %os_semaphore) #5, !dbg !882
  store i32 %call1, ptr %status, align 4, !dbg !883
  %2 = load i32, ptr %status, align 4, !dbg !884
  %tobool2 = icmp ne i32 %2, 0, !dbg !884
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !886

if.then3:                                         ; preds = %if.end
  br label %cleanup, !dbg !887

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !889
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 28, !dbg !890
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !889
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !889
  %5 = load ptr, ptr %obj_desc, align 8, !dbg !891
  %call5 = call i32 @acpi_ns_attach_object(ptr noundef %4, ptr noundef %5, i32 noundef 7) #5, !dbg !892
  store i32 %call5, ptr %status, align 4, !dbg !893
  br label %cleanup, !dbg !894

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !866), !dbg !895
  %6 = load ptr, ptr %obj_desc, align 8, !dbg !896
  call void @acpi_ut_remove_reference(ptr noundef %6) #5, !dbg !897
  %7 = load i32, ptr %status, align 4, !dbg !898
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !899
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !899
  ret i32 %7, !dbg !898
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !900 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !906 dso_local i32 @acpi_os_create_semaphore(i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !910 dso_local i32 @acpi_ns_attach_object(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !914 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_create_mutex(ptr noundef %walk_state) #0 align 16 !dbg !917 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca ptr, align 8
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !919, metadata !DIExpression()), !dbg !923
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !924
  call void @llvm.dbg.declare(metadata ptr %status, metadata !920, metadata !DIExpression()), !dbg !925
  store i32 0, ptr %status, align 4, !dbg !925
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !926
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !921, metadata !DIExpression()), !dbg !927
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 165, i32 noundef 128, i32 noundef 9) #5, !dbg !928
  store ptr %call, ptr %obj_desc, align 8, !dbg !929
  %0 = load ptr, ptr %obj_desc, align 8, !dbg !930
  %tobool = icmp ne ptr %0, null, !dbg !930
  br i1 %tobool, label %if.end, label %if.then, !dbg !932

if.then:                                          ; preds = %entry
  store i32 4, ptr %status, align 4, !dbg !933
  br label %cleanup, !dbg !935

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %obj_desc, align 8, !dbg !936
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, ptr %1, i32 0, i32 7, !dbg !936
  %call1 = call i32 @acpi_os_create_semaphore(i32 noundef 1, i32 noundef 1, ptr noundef %os_mutex) #5, !dbg !936
  store i32 %call1, ptr %status, align 4, !dbg !937
  %2 = load i32, ptr %status, align 4, !dbg !938
  %tobool2 = icmp ne i32 %2, 0, !dbg !938
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !940

if.then3:                                         ; preds = %if.end
  br label %cleanup, !dbg !941

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !943
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 28, !dbg !944
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 1, !dbg !943
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !943
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %4, i32 0, i32 6, !dbg !945
  %5 = load i64, ptr %value, align 8, !dbg !945
  %conv = trunc i64 %5 to i8, !dbg !946
  %6 = load ptr, ptr %obj_desc, align 8, !dbg !947
  %sync_level = getelementptr inbounds %struct.acpi_object_mutex, ptr %6, i32 0, i32 5, !dbg !948
  store i8 %conv, ptr %sync_level, align 1, !dbg !949
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !950
  %operands5 = getelementptr inbounds %struct.acpi_walk_state, ptr %7, i32 0, i32 28, !dbg !951
  %arrayidx6 = getelementptr [9 x ptr], ptr %operands5, i64 0, i64 0, !dbg !950
  %8 = load ptr, ptr %arrayidx6, align 8, !dbg !950
  %9 = load ptr, ptr %obj_desc, align 8, !dbg !952
  %node = getelementptr inbounds %struct.acpi_object_mutex, ptr %9, i32 0, i32 12, !dbg !953
  store ptr %8, ptr %node, align 8, !dbg !954
  %10 = load ptr, ptr %obj_desc, align 8, !dbg !955
  %node7 = getelementptr inbounds %struct.acpi_object_mutex, ptr %10, i32 0, i32 12, !dbg !956
  %11 = load ptr, ptr %node7, align 8, !dbg !956
  %12 = load ptr, ptr %obj_desc, align 8, !dbg !957
  %call8 = call i32 @acpi_ns_attach_object(ptr noundef %11, ptr noundef %12, i32 noundef 9) #5, !dbg !958
  store i32 %call8, ptr %status, align 4, !dbg !959
  br label %cleanup, !dbg !960

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !922), !dbg !961
  %13 = load ptr, ptr %obj_desc, align 8, !dbg !962
  call void @acpi_ut_remove_reference(ptr noundef %13) #5, !dbg !963
  %14 = load i32, ptr %status, align 4, !dbg !964
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !965
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !965
  ret i32 %14, !dbg !964
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_create_region(ptr noundef %aml_start, i32 noundef %aml_length, i8 noundef zeroext %space_id, ptr noundef %walk_state) #0 align 16 !dbg !966 {
entry:
  %retval = alloca i32, align 4
  %aml_start.addr = alloca ptr, align 8
  %aml_length.addr = alloca i32, align 4
  %space_id.addr = alloca i8, align 1
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca ptr, align 8
  %node = alloca ptr, align 8
  %region_obj2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %aml_start, ptr %aml_start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml_start.addr, metadata !970, metadata !DIExpression()), !dbg !979
  store i32 %aml_length, ptr %aml_length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %aml_length.addr, metadata !971, metadata !DIExpression()), !dbg !980
  store i8 %space_id, ptr %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %space_id.addr, metadata !972, metadata !DIExpression()), !dbg !981
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !973, metadata !DIExpression()), !dbg !982
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !983
  call void @llvm.dbg.declare(metadata ptr %status, metadata !974, metadata !DIExpression()), !dbg !984
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !985
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !975, metadata !DIExpression()), !dbg !986
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !987
  call void @llvm.dbg.declare(metadata ptr %node, metadata !976, metadata !DIExpression()), !dbg !988
  call void @llvm.lifetime.start.p0(i64 8, ptr %region_obj2) #4, !dbg !989
  call void @llvm.dbg.declare(metadata ptr %region_obj2, metadata !977, metadata !DIExpression()), !dbg !990
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !991
  %op = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 40, !dbg !992
  %1 = load ptr, ptr %op, align 8, !dbg !992
  %node1 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %1, i32 0, i32 6, !dbg !993
  %2 = load ptr, ptr %node1, align 8, !dbg !993
  store ptr %2, ptr %node, align 8, !dbg !994
  %3 = load ptr, ptr %node, align 8, !dbg !995
  %call = call ptr @acpi_ns_get_attached_object(ptr noundef %3) #5, !dbg !997
  %tobool = icmp ne ptr %call, null, !dbg !997
  br i1 %tobool, label %if.then, label %if.end, !dbg !998

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !999
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24, !dbg !999

if.end:                                           ; preds = %entry
  %4 = load i8, ptr %space_id.addr, align 1, !dbg !1001
  %call2 = call zeroext i8 @acpi_is_valid_space_id(i8 noundef zeroext %4) #5, !dbg !1003
  %tobool3 = icmp ne i8 %call2, 0, !dbg !1003
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1004

if.then4:                                         ; preds = %if.end
  %5 = load i8, ptr %space_id.addr, align 1, !dbg !1005
  %conv = zext i8 %5 to i32, !dbg !1005
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 246, ptr noundef @.str, i32 noundef %conv) #5, !dbg !1005
  br label %if.end5, !dbg !1007

if.end5:                                          ; preds = %if.then4, %if.end
  %call6 = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 256, i32 noundef 128, i32 noundef 10) #5, !dbg !1008
  store ptr %call6, ptr %obj_desc, align 8, !dbg !1009
  %6 = load ptr, ptr %obj_desc, align 8, !dbg !1010
  %tobool7 = icmp ne ptr %6, null, !dbg !1010
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !1012

if.then8:                                         ; preds = %if.end5
  store i32 4, ptr %status, align 4, !dbg !1013
  br label %cleanup, !dbg !1015

if.end9:                                          ; preds = %if.end5
  %7 = load ptr, ptr %obj_desc, align 8, !dbg !1016
  %call10 = call ptr @acpi_ns_get_secondary_object(ptr noundef %7) #5, !dbg !1017
  store ptr %call10, ptr %region_obj2, align 8, !dbg !1018
  %8 = load ptr, ptr %aml_start.addr, align 8, !dbg !1019
  %9 = load ptr, ptr %region_obj2, align 8, !dbg !1020
  %aml_start11 = getelementptr inbounds %struct.acpi_object_extra, ptr %9, i32 0, i32 8, !dbg !1021
  store ptr %8, ptr %aml_start11, align 8, !dbg !1022
  %10 = load i32, ptr %aml_length.addr, align 4, !dbg !1023
  %11 = load ptr, ptr %region_obj2, align 8, !dbg !1024
  %aml_length12 = getelementptr inbounds %struct.acpi_object_extra, ptr %11, i32 0, i32 9, !dbg !1025
  store i32 %10, ptr %aml_length12, align 8, !dbg !1026
  %12 = load ptr, ptr %region_obj2, align 8, !dbg !1027
  %method_REG = getelementptr inbounds %struct.acpi_object_extra, ptr %12, i32 0, i32 5, !dbg !1028
  store ptr null, ptr %method_REG, align 8, !dbg !1029
  %13 = load ptr, ptr %walk_state.addr, align 8, !dbg !1030
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, ptr %13, i32 0, i32 46, !dbg !1032
  %14 = load ptr, ptr %scope_info, align 8, !dbg !1032
  %tobool13 = icmp ne ptr %14, null, !dbg !1030
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !1033

if.then14:                                        ; preds = %if.end9
  %15 = load ptr, ptr %walk_state.addr, align 8, !dbg !1034
  %scope_info15 = getelementptr inbounds %struct.acpi_walk_state, ptr %15, i32 0, i32 46, !dbg !1036
  %16 = load ptr, ptr %scope_info15, align 8, !dbg !1036
  %node16 = getelementptr inbounds %struct.acpi_scope_state, ptr %16, i32 0, i32 5, !dbg !1037
  %17 = load ptr, ptr %node16, align 8, !dbg !1037
  %18 = load ptr, ptr %region_obj2, align 8, !dbg !1038
  %scope_node = getelementptr inbounds %struct.acpi_object_extra, ptr %18, i32 0, i32 6, !dbg !1039
  store ptr %17, ptr %scope_node, align 8, !dbg !1040
  br label %if.end18, !dbg !1041

if.else:                                          ; preds = %if.end9
  %19 = load ptr, ptr %node, align 8, !dbg !1042
  %20 = load ptr, ptr %region_obj2, align 8, !dbg !1044
  %scope_node17 = getelementptr inbounds %struct.acpi_object_extra, ptr %20, i32 0, i32 6, !dbg !1045
  store ptr %19, ptr %scope_node17, align 8, !dbg !1046
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14
  %21 = load i8, ptr %space_id.addr, align 1, !dbg !1047
  %22 = load ptr, ptr %obj_desc, align 8, !dbg !1048
  %space_id19 = getelementptr inbounds %struct.acpi_object_region, ptr %22, i32 0, i32 5, !dbg !1049
  store i8 %21, ptr %space_id19, align 1, !dbg !1050
  %23 = load ptr, ptr %obj_desc, align 8, !dbg !1051
  %address = getelementptr inbounds %struct.acpi_object_region, ptr %23, i32 0, i32 9, !dbg !1052
  store i64 0, ptr %address, align 8, !dbg !1053
  %24 = load ptr, ptr %obj_desc, align 8, !dbg !1054
  %length = getelementptr inbounds %struct.acpi_object_region, ptr %24, i32 0, i32 10, !dbg !1055
  store i32 0, ptr %length, align 8, !dbg !1056
  %25 = load ptr, ptr %obj_desc, align 8, !dbg !1057
  %pointer = getelementptr inbounds %struct.acpi_object_region, ptr %25, i32 0, i32 11, !dbg !1058
  store ptr null, ptr %pointer, align 8, !dbg !1059
  %26 = load ptr, ptr %node, align 8, !dbg !1060
  %27 = load ptr, ptr %obj_desc, align 8, !dbg !1061
  %node20 = getelementptr inbounds %struct.acpi_object_region, ptr %27, i32 0, i32 6, !dbg !1062
  store ptr %26, ptr %node20, align 8, !dbg !1063
  %28 = load ptr, ptr %obj_desc, align 8, !dbg !1064
  %handler = getelementptr inbounds %struct.acpi_object_region, ptr %28, i32 0, i32 7, !dbg !1065
  store ptr null, ptr %handler, align 8, !dbg !1066
  %29 = load ptr, ptr %obj_desc, align 8, !dbg !1067
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %29, i32 0, i32 4, !dbg !1068
  %30 = load i8, ptr %flags, align 4, !dbg !1069
  %conv21 = zext i8 %30 to i32, !dbg !1069
  %and = and i32 %conv21, -57, !dbg !1069
  %conv22 = trunc i32 %and to i8, !dbg !1069
  store i8 %conv22, ptr %flags, align 4, !dbg !1069
  %31 = load ptr, ptr %node, align 8, !dbg !1070
  %32 = load ptr, ptr %obj_desc, align 8, !dbg !1071
  %call23 = call i32 @acpi_ns_attach_object(ptr noundef %31, ptr noundef %32, i32 noundef 10) #5, !dbg !1072
  store i32 %call23, ptr %status, align 4, !dbg !1073
  br label %cleanup, !dbg !1074

cleanup:                                          ; preds = %if.end18, %if.then8
  call void @llvm.dbg.label(metadata !978), !dbg !1075
  %33 = load ptr, ptr %obj_desc, align 8, !dbg !1076
  call void @acpi_ut_remove_reference(ptr noundef %33) #5, !dbg !1077
  %34 = load i32, ptr %status, align 4, !dbg !1078
  store i32 %34, ptr %retval, align 4, !dbg !1078
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24, !dbg !1078

cleanup24:                                        ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %region_obj2) #4, !dbg !1079
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !1079
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !1079
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1079
  %35 = load i32, ptr %retval, align 4, !dbg !1079
  ret i32 %35, !dbg !1079
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1080 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1083 dso_local zeroext i8 @acpi_is_valid_space_id(i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1087 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1091 dso_local ptr @acpi_ns_get_secondary_object(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_create_processor(ptr noundef %walk_state) #0 align 16 !dbg !1094 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %operand = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1096, metadata !DIExpression()), !dbg !1100
  call void @llvm.lifetime.start.p0(i64 8, ptr %operand) #4, !dbg !1101
  call void @llvm.dbg.declare(metadata ptr %operand, metadata !1097, metadata !DIExpression()), !dbg !1102
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1103
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 28, !dbg !1104
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !1103
  store ptr %arrayidx, ptr %operand, align 8, !dbg !1102
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !1105
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1098, metadata !DIExpression()), !dbg !1106
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1107
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1099, metadata !DIExpression()), !dbg !1108
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 325, i32 noundef 128, i32 noundef 12) #5, !dbg !1109
  store ptr %call, ptr %obj_desc, align 8, !dbg !1110
  %1 = load ptr, ptr %obj_desc, align 8, !dbg !1111
  %tobool = icmp ne ptr %1, null, !dbg !1111
  br i1 %tobool, label %if.end, label %if.then, !dbg !1113

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !1114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1114

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %operand, align 8, !dbg !1116
  %arrayidx1 = getelementptr ptr, ptr %2, i64 1, !dbg !1116
  %3 = load ptr, ptr %arrayidx1, align 8, !dbg !1116
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %3, i32 0, i32 6, !dbg !1117
  %4 = load i64, ptr %value, align 8, !dbg !1117
  %conv = trunc i64 %4 to i8, !dbg !1118
  %5 = load ptr, ptr %obj_desc, align 8, !dbg !1119
  %proc_id = getelementptr inbounds %struct.acpi_object_processor, ptr %5, i32 0, i32 5, !dbg !1120
  store i8 %conv, ptr %proc_id, align 1, !dbg !1121
  %6 = load ptr, ptr %operand, align 8, !dbg !1122
  %arrayidx2 = getelementptr ptr, ptr %6, i64 3, !dbg !1122
  %7 = load ptr, ptr %arrayidx2, align 8, !dbg !1122
  %value3 = getelementptr inbounds %struct.acpi_object_integer, ptr %7, i32 0, i32 6, !dbg !1123
  %8 = load i64, ptr %value3, align 8, !dbg !1123
  %conv4 = trunc i64 %8 to i8, !dbg !1124
  %9 = load ptr, ptr %obj_desc, align 8, !dbg !1125
  %length = getelementptr inbounds %struct.acpi_object_processor, ptr %9, i32 0, i32 6, !dbg !1126
  store i8 %conv4, ptr %length, align 2, !dbg !1127
  %10 = load ptr, ptr %operand, align 8, !dbg !1128
  %arrayidx5 = getelementptr ptr, ptr %10, i64 2, !dbg !1128
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1128
  %value6 = getelementptr inbounds %struct.acpi_object_integer, ptr %11, i32 0, i32 6, !dbg !1129
  %12 = load i64, ptr %value6, align 8, !dbg !1129
  %13 = load ptr, ptr %obj_desc, align 8, !dbg !1130
  %address = getelementptr inbounds %struct.acpi_object_processor, ptr %13, i32 0, i32 9, !dbg !1131
  store i64 %12, ptr %address, align 8, !dbg !1132
  %14 = load ptr, ptr %operand, align 8, !dbg !1133
  %arrayidx7 = getelementptr ptr, ptr %14, i64 0, !dbg !1133
  %15 = load ptr, ptr %arrayidx7, align 8, !dbg !1133
  %16 = load ptr, ptr %obj_desc, align 8, !dbg !1134
  %call8 = call i32 @acpi_ns_attach_object(ptr noundef %15, ptr noundef %16, i32 noundef 12) #5, !dbg !1135
  store i32 %call8, ptr %status, align 4, !dbg !1136
  %17 = load ptr, ptr %obj_desc, align 8, !dbg !1137
  call void @acpi_ut_remove_reference(ptr noundef %17) #5, !dbg !1138
  %18 = load i32, ptr %status, align 4, !dbg !1139
  store i32 %18, ptr %retval, align 4, !dbg !1139
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1139

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1140
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !1140
  call void @llvm.lifetime.end.p0(i64 8, ptr %operand) #4, !dbg !1140
  %19 = load i32, ptr %retval, align 4, !dbg !1140
  ret i32 %19, !dbg !1140
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_create_power_resource(ptr noundef %walk_state) #0 align 16 !dbg !1141 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %operand = alloca ptr, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1143, metadata !DIExpression()), !dbg !1147
  call void @llvm.lifetime.start.p0(i64 8, ptr %operand) #4, !dbg !1148
  call void @llvm.dbg.declare(metadata ptr %operand, metadata !1144, metadata !DIExpression()), !dbg !1149
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1150
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 28, !dbg !1151
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !1150
  store ptr %arrayidx, ptr %operand, align 8, !dbg !1149
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1152
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1145, metadata !DIExpression()), !dbg !1153
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !1154
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1146, metadata !DIExpression()), !dbg !1155
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 372, i32 noundef 128, i32 noundef 11) #5, !dbg !1156
  store ptr %call, ptr %obj_desc, align 8, !dbg !1157
  %1 = load ptr, ptr %obj_desc, align 8, !dbg !1158
  %tobool = icmp ne ptr %1, null, !dbg !1158
  br i1 %tobool, label %if.end, label %if.then, !dbg !1160

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !1161
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1161

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %operand, align 8, !dbg !1163
  %arrayidx1 = getelementptr ptr, ptr %2, i64 1, !dbg !1163
  %3 = load ptr, ptr %arrayidx1, align 8, !dbg !1163
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %3, i32 0, i32 6, !dbg !1164
  %4 = load i64, ptr %value, align 8, !dbg !1164
  %conv = trunc i64 %4 to i8, !dbg !1165
  %conv2 = zext i8 %conv to i32, !dbg !1165
  %5 = load ptr, ptr %obj_desc, align 8, !dbg !1166
  %system_level = getelementptr inbounds %struct.acpi_object_power_resource, ptr %5, i32 0, i32 7, !dbg !1167
  store i32 %conv2, ptr %system_level, align 8, !dbg !1168
  %6 = load ptr, ptr %operand, align 8, !dbg !1169
  %arrayidx3 = getelementptr ptr, ptr %6, i64 2, !dbg !1169
  %7 = load ptr, ptr %arrayidx3, align 8, !dbg !1169
  %value4 = getelementptr inbounds %struct.acpi_object_integer, ptr %7, i32 0, i32 6, !dbg !1170
  %8 = load i64, ptr %value4, align 8, !dbg !1170
  %conv5 = trunc i64 %8 to i16, !dbg !1171
  %conv6 = zext i16 %conv5 to i32, !dbg !1171
  %9 = load ptr, ptr %obj_desc, align 8, !dbg !1172
  %resource_order = getelementptr inbounds %struct.acpi_object_power_resource, ptr %9, i32 0, i32 8, !dbg !1173
  store i32 %conv6, ptr %resource_order, align 4, !dbg !1174
  %10 = load ptr, ptr %operand, align 8, !dbg !1175
  %arrayidx7 = getelementptr ptr, ptr %10, i64 0, !dbg !1175
  %11 = load ptr, ptr %arrayidx7, align 8, !dbg !1175
  %12 = load ptr, ptr %obj_desc, align 8, !dbg !1176
  %call8 = call i32 @acpi_ns_attach_object(ptr noundef %11, ptr noundef %12, i32 noundef 11) #5, !dbg !1177
  store i32 %call8, ptr %status, align 4, !dbg !1178
  %13 = load ptr, ptr %obj_desc, align 8, !dbg !1179
  call void @acpi_ut_remove_reference(ptr noundef %13) #5, !dbg !1180
  %14 = load i32, ptr %status, align 4, !dbg !1181
  store i32 %14, ptr %retval, align 4, !dbg !1181
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1181

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !1182
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1182
  call void @llvm.lifetime.end.p0(i64 8, ptr %operand) #4, !dbg !1182
  %15 = load i32, ptr %retval, align 4, !dbg !1182
  ret i32 %15, !dbg !1182
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_create_method(ptr noundef %aml_start, i32 noundef %aml_length, ptr noundef %walk_state) #0 align 16 !dbg !1183 {
entry:
  %aml_start.addr = alloca ptr, align 8
  %aml_length.addr = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %operand = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %method_flags = alloca i8, align 1
  store ptr %aml_start, ptr %aml_start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml_start.addr, metadata !1187, metadata !DIExpression()), !dbg !1195
  store i32 %aml_length, ptr %aml_length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %aml_length.addr, metadata !1188, metadata !DIExpression()), !dbg !1196
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1189, metadata !DIExpression()), !dbg !1197
  call void @llvm.lifetime.start.p0(i64 8, ptr %operand) #4, !dbg !1198
  call void @llvm.dbg.declare(metadata ptr %operand, metadata !1190, metadata !DIExpression()), !dbg !1199
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1200
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 28, !dbg !1201
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !1200
  store ptr %arrayidx, ptr %operand, align 8, !dbg !1199
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !1202
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1191, metadata !DIExpression()), !dbg !1203
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1204
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1192, metadata !DIExpression()), !dbg !1205
  call void @llvm.lifetime.start.p0(i64 1, ptr %method_flags) #4, !dbg !1206
  call void @llvm.dbg.declare(metadata ptr %method_flags, metadata !1193, metadata !DIExpression()), !dbg !1207
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 421, i32 noundef 128, i32 noundef 8) #5, !dbg !1208
  store ptr %call, ptr %obj_desc, align 8, !dbg !1209
  %1 = load ptr, ptr %obj_desc, align 8, !dbg !1210
  %tobool = icmp ne ptr %1, null, !dbg !1210
  br i1 %tobool, label %if.end, label %if.then, !dbg !1212

if.then:                                          ; preds = %entry
  store i32 4, ptr %status, align 4, !dbg !1213
  br label %exit, !dbg !1215

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %aml_start.addr, align 8, !dbg !1216
  %3 = load ptr, ptr %obj_desc, align 8, !dbg !1217
  %aml_start1 = getelementptr inbounds %struct.acpi_object_method, ptr %3, i32 0, i32 10, !dbg !1218
  store ptr %2, ptr %aml_start1, align 8, !dbg !1219
  %4 = load i32, ptr %aml_length.addr, align 4, !dbg !1220
  %5 = load ptr, ptr %obj_desc, align 8, !dbg !1221
  %aml_length2 = getelementptr inbounds %struct.acpi_object_method, ptr %5, i32 0, i32 12, !dbg !1222
  store i32 %4, ptr %aml_length2, align 8, !dbg !1223
  %6 = load ptr, ptr %operand, align 8, !dbg !1224
  %arrayidx3 = getelementptr ptr, ptr %6, i64 0, !dbg !1224
  %7 = load ptr, ptr %arrayidx3, align 8, !dbg !1224
  %8 = load ptr, ptr %obj_desc, align 8, !dbg !1225
  %node = getelementptr inbounds %struct.acpi_object_method, ptr %8, i32 0, i32 9, !dbg !1226
  store ptr %7, ptr %node, align 8, !dbg !1227
  %9 = load ptr, ptr %operand, align 8, !dbg !1228
  %arrayidx4 = getelementptr ptr, ptr %9, i64 1, !dbg !1228
  %10 = load ptr, ptr %arrayidx4, align 8, !dbg !1228
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %10, i32 0, i32 6, !dbg !1229
  %11 = load i64, ptr %value, align 8, !dbg !1229
  %conv = trunc i64 %11 to i8, !dbg !1230
  store i8 %conv, ptr %method_flags, align 1, !dbg !1231
  %12 = load i8, ptr %method_flags, align 1, !dbg !1232
  %conv5 = zext i8 %12 to i32, !dbg !1232
  %and = and i32 %conv5, 7, !dbg !1233
  %conv6 = trunc i32 %and to i8, !dbg !1234
  %13 = load ptr, ptr %obj_desc, align 8, !dbg !1235
  %param_count = getelementptr inbounds %struct.acpi_object_method, ptr %13, i32 0, i32 6, !dbg !1236
  store i8 %conv6, ptr %param_count, align 2, !dbg !1237
  %14 = load i8, ptr %method_flags, align 1, !dbg !1238
  %conv7 = zext i8 %14 to i32, !dbg !1238
  %and8 = and i32 %conv7, 8, !dbg !1240
  %tobool9 = icmp ne i32 %and8, 0, !dbg !1240
  br i1 %tobool9, label %if.then10, label %if.end14, !dbg !1241

if.then10:                                        ; preds = %if.end
  %15 = load ptr, ptr %obj_desc, align 8, !dbg !1242
  %info_flags = getelementptr inbounds %struct.acpi_object_method, ptr %15, i32 0, i32 5, !dbg !1244
  store i8 4, ptr %info_flags, align 1, !dbg !1245
  %16 = load i8, ptr %method_flags, align 1, !dbg !1246
  %conv11 = zext i8 %16 to i32, !dbg !1246
  %and12 = and i32 %conv11, 240, !dbg !1247
  %shr = ashr i32 %and12, 4, !dbg !1248
  %conv13 = trunc i32 %shr to i8, !dbg !1249
  %17 = load ptr, ptr %obj_desc, align 8, !dbg !1250
  %sync_level = getelementptr inbounds %struct.acpi_object_method, ptr %17, i32 0, i32 7, !dbg !1251
  store i8 %conv13, ptr %sync_level, align 1, !dbg !1252
  br label %if.end14, !dbg !1253

if.end14:                                         ; preds = %if.then10, %if.end
  %18 = load ptr, ptr %operand, align 8, !dbg !1254
  %arrayidx15 = getelementptr ptr, ptr %18, i64 0, !dbg !1254
  %19 = load ptr, ptr %arrayidx15, align 8, !dbg !1254
  %20 = load ptr, ptr %obj_desc, align 8, !dbg !1255
  %call16 = call i32 @acpi_ns_attach_object(ptr noundef %19, ptr noundef %20, i32 noundef 8) #5, !dbg !1256
  store i32 %call16, ptr %status, align 4, !dbg !1257
  %21 = load ptr, ptr %obj_desc, align 8, !dbg !1258
  call void @acpi_ut_remove_reference(ptr noundef %21) #5, !dbg !1259
  br label %exit, !dbg !1259

exit:                                             ; preds = %if.end14, %if.then
  call void @llvm.dbg.label(metadata !1194), !dbg !1260
  %22 = load ptr, ptr %operand, align 8, !dbg !1261
  %arrayidx17 = getelementptr ptr, ptr %22, i64 1, !dbg !1261
  %23 = load ptr, ptr %arrayidx17, align 8, !dbg !1261
  call void @acpi_ut_remove_reference(ptr noundef %23) #5, !dbg !1262
  %24 = load i32, ptr %status, align 4, !dbg !1263
  call void @llvm.lifetime.end.p0(i64 1, ptr %method_flags) #4, !dbg !1264
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1264
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !1264
  call void @llvm.lifetime.end.p0(i64 8, ptr %operand) #4, !dbg !1264
  ret i32 %24, !dbg !1263
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!793, !794, !795, !796, !797, !798, !799, !800}
!llvm.ident = !{!801}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !791, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.excreate.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22excreate\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/excreate.ll drivers/acpi/acpica/excreate.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !785, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/excreate.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3be7324beb4e980423f04720f34118e9")
!4 = !{!5, !12, !782, !17, !7, !26, !100, !567, !31}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !14, line: 133, size: 384, elements: !15)
!14 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!15 = !{!16, !769, !770, !771, !772, !778, !779, !780, !781}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !13, file: !14, line: 134, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !19, line: 369, size: 576, elements: !20)
!19 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!20 = !{!21, !35, !51, !63, !77, !91, !101, !418, !435, !451, !464, !542, !554, !568, !578, !596, !618, !637, !656, !675, !688, !715, !732, !745, !759, !768}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !18, file: !19, line: 370, baseType: !22, size: 128)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !19, line: 73, size: 128, elements: !23)
!23 = !{!24, !25, !29, !30, !34}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !22, file: !19, line: 74, baseType: !17, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !22, file: !19, line: 74, baseType: !26, size: 8, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !28)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !22, file: !19, line: 74, baseType: !26, size: 8, offset: 72)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !22, file: !19, line: 74, baseType: !31, size: 16, offset: 80)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !33)
!33 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !22, file: !19, line: 74, baseType: !26, size: 8, offset: 96)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !18, file: !19, line: 371, baseType: !36, size: 192)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !19, line: 76, size: 192, elements: !37)
!37 = !{!38, !39, !40, !41, !42, !43, !47}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !36, file: !19, line: 77, baseType: !17, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !36, file: !19, line: 77, baseType: !26, size: 8, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !36, file: !19, line: 77, baseType: !26, size: 8, offset: 72)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !36, file: !19, line: 77, baseType: !31, size: 16, offset: 80)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !36, file: !19, line: 77, baseType: !26, size: 8, offset: 96)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !36, file: !19, line: 77, baseType: !44, size: 24, offset: 104)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 24, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 3)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !36, file: !19, line: 78, baseType: !48, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !50)
!50 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !18, file: !19, line: 372, baseType: !52, size: 256)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !19, line: 93, size: 256, elements: !53)
!53 = !{!54, !55, !56, !57, !58, !59, !62}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !52, file: !19, line: 94, baseType: !17, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !52, file: !19, line: 94, baseType: !26, size: 8, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !19, line: 94, baseType: !26, size: 8, offset: 72)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !52, file: !19, line: 94, baseType: !31, size: 16, offset: 80)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !19, line: 94, baseType: !26, size: 8, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !52, file: !19, line: 94, baseType: !60, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !52, file: !19, line: 94, baseType: !7, size: 32, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !18, file: !19, line: 373, baseType: !64, size: 384)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !19, line: 97, size: 384, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71, !73, !74, !75, !76}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !64, file: !19, line: 98, baseType: !17, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !64, file: !19, line: 98, baseType: !26, size: 8, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !64, file: !19, line: 98, baseType: !26, size: 8, offset: 72)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !64, file: !19, line: 98, baseType: !31, size: 16, offset: 80)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !19, line: 98, baseType: !26, size: 8, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !64, file: !19, line: 98, baseType: !72, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !64, file: !19, line: 98, baseType: !7, size: 32, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !64, file: !19, line: 99, baseType: !7, size: 32, offset: 224)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !64, file: !19, line: 100, baseType: !72, size: 64, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !64, file: !19, line: 101, baseType: !12, size: 64, offset: 320)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !18, file: !19, line: 374, baseType: !78, size: 384)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !19, line: 104, size: 384, elements: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !86, !88, !89, !90}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !78, file: !19, line: 105, baseType: !17, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !78, file: !19, line: 105, baseType: !26, size: 8, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !78, file: !19, line: 105, baseType: !26, size: 8, offset: 72)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !78, file: !19, line: 105, baseType: !31, size: 16, offset: 80)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !78, file: !19, line: 105, baseType: !26, size: 8, offset: 96)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !78, file: !19, line: 105, baseType: !12, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !78, file: !19, line: 106, baseType: !87, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !78, file: !19, line: 107, baseType: !72, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !78, file: !19, line: 108, baseType: !7, size: 32, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !78, file: !19, line: 109, baseType: !7, size: 32, offset: 352)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !18, file: !19, line: 375, baseType: !92, size: 192)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !19, line: 118, size: 192, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !92, file: !19, line: 119, baseType: !17, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !92, file: !19, line: 119, baseType: !26, size: 8, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !92, file: !19, line: 119, baseType: !26, size: 8, offset: 72)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !92, file: !19, line: 119, baseType: !31, size: 16, offset: 80)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !92, file: !19, line: 119, baseType: !26, size: 8, offset: 96)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !92, file: !19, line: 119, baseType: !100, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !18, file: !19, line: 376, baseType: !102, size: 448)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !19, line: 144, size: 448, elements: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !415, !416, !417}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !102, file: !19, line: 145, baseType: !17, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !102, file: !19, line: 145, baseType: !26, size: 8, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !19, line: 145, baseType: !26, size: 8, offset: 72)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !102, file: !19, line: 145, baseType: !31, size: 16, offset: 80)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !19, line: 145, baseType: !26, size: 8, offset: 96)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !102, file: !19, line: 145, baseType: !26, size: 8, offset: 104)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !102, file: !19, line: 146, baseType: !26, size: 8, offset: 112)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !102, file: !19, line: 147, baseType: !26, size: 8, offset: 120)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !102, file: !19, line: 148, baseType: !17, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !102, file: !19, line: 149, baseType: !17, size: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !102, file: !19, line: 150, baseType: !72, size: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !102, file: !19, line: 154, baseType: !116, size: 64, offset: 320)
!116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !102, file: !19, line: 151, size: 64, elements: !117)
!117 = !{!118, !414}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !116, file: !19, line: 152, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !14, line: 248, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!5, !123}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !125, line: 37, size: 9024, elements: !126)
!125 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !360, !361, !362, !363, !364, !368, !370, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !397, !398, !399, !400, !401, !402, !403, !404, !406, !412}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !124, file: !125, line: 38, baseType: !123, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !124, file: !125, line: 39, baseType: !26, size: 8, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !124, file: !125, line: 40, baseType: !26, size: 8, offset: 72)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !124, file: !125, line: 41, baseType: !31, size: 16, offset: 80)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !124, file: !125, line: 42, baseType: !26, size: 8, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !124, file: !125, line: 43, baseType: !26, size: 8, offset: 104)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !124, file: !125, line: 44, baseType: !26, size: 8, offset: 112)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !124, file: !125, line: 45, baseType: !135, size: 16, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !31)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !124, file: !125, line: 46, baseType: !26, size: 8, offset: 144)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !124, file: !125, line: 47, baseType: !26, size: 8, offset: 152)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !124, file: !125, line: 48, baseType: !26, size: 8, offset: 160)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !124, file: !125, line: 49, baseType: !26, size: 8, offset: 168)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !124, file: !125, line: 50, baseType: !26, size: 8, offset: 176)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !124, file: !125, line: 51, baseType: !26, size: 8, offset: 184)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !124, file: !125, line: 52, baseType: !26, size: 8, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !124, file: !125, line: 53, baseType: !26, size: 8, offset: 200)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !124, file: !125, line: 54, baseType: !72, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !124, file: !125, line: 55, baseType: !7, size: 32, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !124, file: !125, line: 56, baseType: !7, size: 32, offset: 352)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !124, file: !125, line: 57, baseType: !7, size: 32, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !124, file: !125, line: 58, baseType: !7, size: 32, offset: 416)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !124, file: !125, line: 60, baseType: !150, size: 640, offset: 448)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !14, line: 909, size: 640, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !241, !242, !358, !359}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !150, file: !14, line: 910, baseType: !72, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !150, file: !14, line: 911, baseType: !72, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !150, file: !14, line: 912, baseType: !72, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !150, file: !14, line: 913, baseType: !72, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !150, file: !14, line: 914, baseType: !72, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !150, file: !14, line: 915, baseType: !158, size: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !14, line: 891, size: 1600, elements: !160)
!160 = !{!161, !181, !197}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !159, file: !14, line: 892, baseType: !162, size: 448)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !14, line: 844, size: 448, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !180}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !162, file: !14, line: 845, baseType: !158, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !162, file: !14, line: 845, baseType: !26, size: 8, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !162, file: !14, line: 845, baseType: !26, size: 8, offset: 72)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !162, file: !14, line: 845, baseType: !31, size: 16, offset: 80)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !162, file: !14, line: 845, baseType: !72, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !162, file: !14, line: 845, baseType: !158, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !162, file: !14, line: 845, baseType: !12, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !162, file: !14, line: 845, baseType: !172, size: 64, offset: 320)
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !14, line: 732, size: 64, elements: !173)
!173 = !{!174, !175, !176, !177, !178, !179}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !172, file: !14, line: 733, baseType: !48, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !172, file: !14, line: 734, baseType: !7, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !172, file: !14, line: 735, baseType: !60, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !172, file: !14, line: 736, baseType: !72, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !172, file: !14, line: 737, baseType: !60, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !172, file: !14, line: 738, baseType: !158, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !162, file: !14, line: 845, baseType: !26, size: 8, offset: 384)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !159, file: !14, line: 893, baseType: !182, size: 640)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !14, line: 851, size: 640, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !182, file: !14, line: 852, baseType: !158, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !182, file: !14, line: 852, baseType: !26, size: 8, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !182, file: !14, line: 852, baseType: !26, size: 8, offset: 72)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !182, file: !14, line: 852, baseType: !31, size: 16, offset: 80)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !182, file: !14, line: 852, baseType: !72, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !14, line: 852, baseType: !158, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !182, file: !14, line: 852, baseType: !12, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !182, file: !14, line: 852, baseType: !172, size: 64, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !182, file: !14, line: 852, baseType: !26, size: 8, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !182, file: !14, line: 852, baseType: !60, size: 64, offset: 448)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !182, file: !14, line: 853, baseType: !72, size: 64, offset: 512)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !182, file: !14, line: 854, baseType: !7, size: 32, offset: 576)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !14, line: 855, baseType: !7, size: 32, offset: 608)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !159, file: !14, line: 894, baseType: !198, size: 1600)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !14, line: 862, size: 1600, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !198, file: !14, line: 863, baseType: !158, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !198, file: !14, line: 863, baseType: !26, size: 8, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !14, line: 863, baseType: !26, size: 8, offset: 72)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !198, file: !14, line: 863, baseType: !31, size: 16, offset: 80)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !198, file: !14, line: 863, baseType: !72, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !14, line: 863, baseType: !158, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !198, file: !14, line: 863, baseType: !12, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !198, file: !14, line: 863, baseType: !172, size: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !198, file: !14, line: 863, baseType: !26, size: 8, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !198, file: !14, line: 863, baseType: !158, size: 64, offset: 448)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !198, file: !14, line: 864, baseType: !158, size: 64, offset: 512)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !198, file: !14, line: 865, baseType: !60, size: 64, offset: 576)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !198, file: !14, line: 866, baseType: !26, size: 8, offset: 640)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !198, file: !14, line: 867, baseType: !60, size: 64, offset: 704)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !198, file: !14, line: 868, baseType: !60, size: 64, offset: 768)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !198, file: !14, line: 869, baseType: !60, size: 64, offset: 832)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !198, file: !14, line: 870, baseType: !217, size: 32, offset: 896)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 32, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 4)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !198, file: !14, line: 871, baseType: !7, size: 32, offset: 928)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !198, file: !14, line: 872, baseType: !7, size: 32, offset: 960)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !198, file: !14, line: 873, baseType: !7, size: 32, offset: 992)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !198, file: !14, line: 874, baseType: !7, size: 32, offset: 1024)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !198, file: !14, line: 875, baseType: !7, size: 32, offset: 1056)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !198, file: !14, line: 876, baseType: !7, size: 32, offset: 1088)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !198, file: !14, line: 877, baseType: !7, size: 32, offset: 1120)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !198, file: !14, line: 878, baseType: !7, size: 32, offset: 1152)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !198, file: !14, line: 879, baseType: !7, size: 32, offset: 1184)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !198, file: !14, line: 880, baseType: !7, size: 32, offset: 1216)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !198, file: !14, line: 881, baseType: !7, size: 32, offset: 1248)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !198, file: !14, line: 882, baseType: !7, size: 32, offset: 1280)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !198, file: !14, line: 883, baseType: !7, size: 32, offset: 1312)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !198, file: !14, line: 884, baseType: !31, size: 16, offset: 1344)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !198, file: !14, line: 885, baseType: !26, size: 8, offset: 1360)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !198, file: !14, line: 886, baseType: !26, size: 8, offset: 1368)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !198, file: !14, line: 887, baseType: !26, size: 8, offset: 1376)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !198, file: !14, line: 888, baseType: !238, size: 160, offset: 1384)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 160, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 20)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !150, file: !14, line: 916, baseType: !12, size: 64, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !150, file: !14, line: 917, baseType: !243, size: 64, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !14, line: 679, size: 640, elements: !245)
!245 = !{!246, !254, !267, !276, !285, !298, !312, !324, !336}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !244, file: !14, line: 680, baseType: !247, size: 128)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !14, line: 575, size: 128, elements: !248)
!248 = !{!249, !250, !251, !252, !253}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !247, file: !14, line: 576, baseType: !100, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !247, file: !14, line: 576, baseType: !26, size: 8, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !247, file: !14, line: 576, baseType: !26, size: 8, offset: 72)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !247, file: !14, line: 576, baseType: !31, size: 16, offset: 80)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !247, file: !14, line: 576, baseType: !31, size: 16, offset: 96)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !244, file: !14, line: 681, baseType: !255, size: 384)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !14, line: 604, size: 384, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265, !266}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !255, file: !14, line: 605, baseType: !100, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !255, file: !14, line: 605, baseType: !26, size: 8, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !255, file: !14, line: 605, baseType: !26, size: 8, offset: 72)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !255, file: !14, line: 605, baseType: !31, size: 16, offset: 80)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !255, file: !14, line: 605, baseType: !31, size: 16, offset: 96)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !255, file: !14, line: 606, baseType: !31, size: 16, offset: 112)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !255, file: !14, line: 607, baseType: !158, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !255, file: !14, line: 608, baseType: !72, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !255, file: !14, line: 609, baseType: !72, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !255, file: !14, line: 610, baseType: !48, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !244, file: !14, line: 682, baseType: !268, size: 192)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !14, line: 582, size: 192, elements: !269)
!269 = !{!270, !271, !272, !273, !274, !275}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !14, line: 583, baseType: !100, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !268, file: !14, line: 583, baseType: !26, size: 8, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !268, file: !14, line: 583, baseType: !26, size: 8, offset: 72)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !268, file: !14, line: 583, baseType: !31, size: 16, offset: 80)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !268, file: !14, line: 583, baseType: !31, size: 16, offset: 96)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !268, file: !14, line: 584, baseType: !17, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !244, file: !14, line: 683, baseType: !277, size: 192)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !14, line: 616, size: 192, elements: !278)
!278 = !{!279, !280, !281, !282, !283, !284}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !277, file: !14, line: 617, baseType: !100, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !277, file: !14, line: 617, baseType: !26, size: 8, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !277, file: !14, line: 617, baseType: !26, size: 8, offset: 72)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !277, file: !14, line: 617, baseType: !31, size: 16, offset: 80)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !277, file: !14, line: 617, baseType: !31, size: 16, offset: 96)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !277, file: !14, line: 618, baseType: !12, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !244, file: !14, line: 684, baseType: !286, size: 448)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !14, line: 621, size: 448, elements: !287)
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !297}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !286, file: !14, line: 622, baseType: !100, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !286, file: !14, line: 622, baseType: !26, size: 8, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !286, file: !14, line: 622, baseType: !26, size: 8, offset: 72)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !286, file: !14, line: 622, baseType: !31, size: 16, offset: 80)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !286, file: !14, line: 622, baseType: !31, size: 16, offset: 96)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !286, file: !14, line: 623, baseType: !7, size: 32, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !286, file: !14, line: 624, baseType: !158, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !286, file: !14, line: 625, baseType: !72, size: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !286, file: !14, line: 626, baseType: !72, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !286, file: !14, line: 627, baseType: !7, size: 32, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !244, file: !14, line: 685, baseType: !299, size: 512)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !14, line: 590, size: 512, elements: !300)
!300 = !{!301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !299, file: !14, line: 591, baseType: !100, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !299, file: !14, line: 591, baseType: !26, size: 8, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !299, file: !14, line: 591, baseType: !26, size: 8, offset: 72)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !299, file: !14, line: 591, baseType: !31, size: 16, offset: 80)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !299, file: !14, line: 591, baseType: !31, size: 16, offset: 96)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !299, file: !14, line: 592, baseType: !7, size: 32, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !299, file: !14, line: 593, baseType: !17, size: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !299, file: !14, line: 594, baseType: !17, size: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !299, file: !14, line: 595, baseType: !123, size: 64, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !299, file: !14, line: 596, baseType: !100, size: 64, offset: 384)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !299, file: !14, line: 597, baseType: !7, size: 32, offset: 448)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !244, file: !14, line: 686, baseType: !313, size: 320)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !14, line: 634, size: 320, elements: !314)
!314 = !{!315, !316, !317, !318, !319, !320, !321, !322, !323}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !313, file: !14, line: 635, baseType: !100, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !313, file: !14, line: 635, baseType: !26, size: 8, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !313, file: !14, line: 635, baseType: !26, size: 8, offset: 72)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !313, file: !14, line: 635, baseType: !31, size: 16, offset: 80)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !313, file: !14, line: 635, baseType: !31, size: 16, offset: 96)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !313, file: !14, line: 636, baseType: !26, size: 8, offset: 112)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !313, file: !14, line: 637, baseType: !123, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !313, file: !14, line: 638, baseType: !17, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !313, file: !14, line: 639, baseType: !48, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !244, file: !14, line: 687, baseType: !325, size: 640)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !14, line: 646, size: 640, elements: !326)
!326 = !{!327, !328, !329, !330, !331, !332}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !325, file: !14, line: 647, baseType: !100, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !325, file: !14, line: 647, baseType: !26, size: 8, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !325, file: !14, line: 647, baseType: !26, size: 8, offset: 72)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !325, file: !14, line: 647, baseType: !31, size: 16, offset: 80)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !325, file: !14, line: 647, baseType: !31, size: 16, offset: 96)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !325, file: !14, line: 648, baseType: !333, size: 512, offset: 128)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 512, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 8)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !244, file: !14, line: 688, baseType: !337, size: 320)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !14, line: 669, size: 320, elements: !338)
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346, !347}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !337, file: !14, line: 670, baseType: !100, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !337, file: !14, line: 670, baseType: !26, size: 8, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !337, file: !14, line: 670, baseType: !26, size: 8, offset: 72)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !337, file: !14, line: 670, baseType: !31, size: 16, offset: 80)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !337, file: !14, line: 670, baseType: !31, size: 16, offset: 96)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !337, file: !14, line: 671, baseType: !26, size: 8, offset: 112)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !337, file: !14, line: 672, baseType: !12, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !337, file: !14, line: 673, baseType: !17, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !337, file: !14, line: 674, baseType: !348, size: 64, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !14, line: 660, size: 128, elements: !350)
!350 = !{!351, !357}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !349, file: !14, line: 661, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !6, line: 1061, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !356, !7, !100}
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6, line: 424, baseType: !100)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !349, file: !14, line: 662, baseType: !100, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !150, file: !14, line: 918, baseType: !158, size: 64, offset: 512)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !150, file: !14, line: 919, baseType: !7, size: 32, offset: 576)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !124, file: !125, line: 61, baseType: !7, size: 32, offset: 1088)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !124, file: !125, line: 62, baseType: !7, size: 32, offset: 1120)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !124, file: !125, line: 63, baseType: !31, size: 16, offset: 1152)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !124, file: !125, line: 64, baseType: !26, size: 8, offset: 1168)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !124, file: !125, line: 66, baseType: !365, size: 2688, offset: 1216)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2688, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 7)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !124, file: !125, line: 67, baseType: !369, size: 3072, offset: 3904)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 3072, elements: !334)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !124, file: !125, line: 68, baseType: !371, size: 576, offset: 6976)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 576, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 9)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !124, file: !125, line: 69, baseType: !87, size: 64, offset: 7552)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !124, file: !125, line: 71, baseType: !72, size: 64, offset: 7616)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !124, file: !125, line: 72, baseType: !87, size: 64, offset: 7680)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !124, file: !125, line: 73, baseType: !243, size: 64, offset: 7744)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !124, file: !125, line: 74, baseType: !12, size: 64, offset: 7808)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !124, file: !125, line: 75, baseType: !17, size: 64, offset: 7872)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !124, file: !125, line: 76, baseType: !12, size: 64, offset: 7936)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !124, file: !125, line: 77, baseType: !158, size: 64, offset: 8000)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !124, file: !125, line: 78, baseType: !17, size: 64, offset: 8064)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !124, file: !125, line: 79, baseType: !12, size: 64, offset: 8128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !124, file: !125, line: 80, baseType: !60, size: 64, offset: 8192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !124, file: !125, line: 81, baseType: !158, size: 64, offset: 8256)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !124, file: !125, line: 82, baseType: !387, size: 64, offset: 8320)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !14, line: 718, size: 128, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !389, file: !14, line: 722, baseType: !7, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !389, file: !14, line: 723, baseType: !7, size: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !389, file: !14, line: 724, baseType: !31, size: 16, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !389, file: !14, line: 725, baseType: !26, size: 8, offset: 80)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !389, file: !14, line: 726, baseType: !26, size: 8, offset: 88)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !389, file: !14, line: 727, baseType: !26, size: 8, offset: 96)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !124, file: !125, line: 83, baseType: !158, size: 64, offset: 8384)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !124, file: !125, line: 84, baseType: !17, size: 64, offset: 8448)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !124, file: !125, line: 85, baseType: !243, size: 64, offset: 8512)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !124, file: !125, line: 86, baseType: !17, size: 64, offset: 8576)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !124, file: !125, line: 87, baseType: !243, size: 64, offset: 8640)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !124, file: !125, line: 88, baseType: !158, size: 64, offset: 8704)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !124, file: !125, line: 89, baseType: !158, size: 64, offset: 8768)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !124, file: !125, line: 90, baseType: !405, size: 64, offset: 8832)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !124, file: !125, line: 91, baseType: !407, size: 64, offset: 8896)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !14, line: 652, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!5, !123, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !124, file: !125, line: 92, baseType: !413, size: 64, offset: 8960)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !14, line: 656, baseType: !120)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !116, file: !19, line: 153, baseType: !17, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !102, file: !19, line: 156, baseType: !7, size: 32, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !102, file: !19, line: 157, baseType: !135, size: 16, offset: 416)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !102, file: !19, line: 158, baseType: !26, size: 8, offset: 432)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !18, file: !19, line: 377, baseType: !419, size: 576)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !19, line: 122, size: 576, elements: !420)
!420 = !{!421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !419, file: !19, line: 123, baseType: !17, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !419, file: !19, line: 123, baseType: !26, size: 8, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !419, file: !19, line: 123, baseType: !26, size: 8, offset: 72)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !419, file: !19, line: 123, baseType: !31, size: 16, offset: 80)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !419, file: !19, line: 123, baseType: !26, size: 8, offset: 96)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !419, file: !19, line: 123, baseType: !26, size: 8, offset: 104)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !419, file: !19, line: 124, baseType: !31, size: 16, offset: 112)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !419, file: !19, line: 125, baseType: !100, size: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !419, file: !19, line: 126, baseType: !48, size: 64, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !419, file: !19, line: 127, baseType: !405, size: 64, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !419, file: !19, line: 128, baseType: !17, size: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !419, file: !19, line: 129, baseType: !17, size: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !419, file: !19, line: 130, baseType: !12, size: 64, offset: 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !419, file: !19, line: 131, baseType: !26, size: 8, offset: 512)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !18, file: !19, line: 378, baseType: !436, size: 512)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !19, line: 134, size: 512, elements: !437)
!437 = !{!438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !449, !450}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !436, file: !19, line: 135, baseType: !17, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !436, file: !19, line: 135, baseType: !26, size: 8, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !436, file: !19, line: 135, baseType: !26, size: 8, offset: 72)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !436, file: !19, line: 135, baseType: !31, size: 16, offset: 80)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !436, file: !19, line: 135, baseType: !26, size: 8, offset: 96)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !436, file: !19, line: 135, baseType: !26, size: 8, offset: 104)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !436, file: !19, line: 136, baseType: !12, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !436, file: !19, line: 137, baseType: !17, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !436, file: !19, line: 138, baseType: !17, size: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !436, file: !19, line: 139, baseType: !448, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !48)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !436, file: !19, line: 140, baseType: !7, size: 32, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !436, file: !19, line: 141, baseType: !100, size: 64, offset: 448)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !18, file: !19, line: 379, baseType: !452, size: 320)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !19, line: 185, size: 320, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !463}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !452, file: !19, line: 186, baseType: !17, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !452, file: !19, line: 186, baseType: !26, size: 8, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !19, line: 186, baseType: !26, size: 8, offset: 72)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !452, file: !19, line: 186, baseType: !31, size: 16, offset: 80)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !19, line: 186, baseType: !26, size: 8, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !452, file: !19, line: 186, baseType: !460, size: 128, offset: 128)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 2)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !452, file: !19, line: 186, baseType: !17, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !18, file: !19, line: 380, baseType: !465, size: 384)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !19, line: 188, size: 384, elements: !466)
!466 = !{!467, !468, !469, !470, !471, !472, !473, !474}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !465, file: !19, line: 189, baseType: !17, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !465, file: !19, line: 189, baseType: !26, size: 8, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !465, file: !19, line: 189, baseType: !26, size: 8, offset: 72)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !465, file: !19, line: 189, baseType: !31, size: 16, offset: 80)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !465, file: !19, line: 189, baseType: !26, size: 8, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !465, file: !19, line: 190, baseType: !460, size: 128, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !465, file: !19, line: 190, baseType: !17, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !465, file: !19, line: 190, baseType: !475, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !14, line: 480, size: 576, elements: !477)
!477 = !{!478, !479, !480, !481, !489, !504, !536, !537, !538, !539, !540, !541}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !476, file: !14, line: 481, baseType: !12, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !476, file: !14, line: 482, baseType: !475, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !476, file: !14, line: 483, baseType: !475, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !476, file: !14, line: 484, baseType: !482, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !14, line: 497, size: 256, elements: !484)
!484 = !{!485, !486, !487, !488}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !483, file: !14, line: 498, baseType: !482, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !483, file: !14, line: 499, baseType: !482, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !483, file: !14, line: 500, baseType: !475, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !483, file: !14, line: 501, baseType: !7, size: 32, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !476, file: !14, line: 485, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !14, line: 466, size: 320, elements: !492)
!492 = !{!493, !498, !499, !500, !501, !502, !503}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !491, file: !14, line: 467, baseType: !494, size: 128)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !14, line: 459, size: 128, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !494, file: !14, line: 460, baseType: !26, size: 8)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !494, file: !14, line: 461, baseType: !48, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !491, file: !14, line: 468, baseType: !494, size: 128, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !491, file: !14, line: 469, baseType: !31, size: 16, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !491, file: !14, line: 470, baseType: !26, size: 8, offset: 272)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !491, file: !14, line: 471, baseType: !26, size: 8, offset: 280)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !491, file: !14, line: 472, baseType: !26, size: 8, offset: 288)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !491, file: !14, line: 473, baseType: !26, size: 8, offset: 296)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !476, file: !14, line: 486, baseType: !505, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !14, line: 448, size: 192, elements: !507)
!507 = !{!508, !531, !532, !533, !534, !535}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !506, file: !14, line: 449, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !14, line: 438, size: 64, elements: !510)
!510 = !{!511, !512, !525}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !509, file: !14, line: 439, baseType: !12, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !509, file: !14, line: 440, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !14, line: 419, size: 256, elements: !515)
!515 = !{!516, !521, !522, !523, !524}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !514, file: !14, line: 420, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !6, line: 1058, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!7, !356, !7, !100}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !514, file: !14, line: 421, baseType: !100, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !514, file: !14, line: 422, baseType: !12, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !514, file: !14, line: 423, baseType: !26, size: 8, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !514, file: !14, line: 424, baseType: !26, size: 8, offset: 200)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !509, file: !14, line: 441, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !14, line: 429, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !527, file: !14, line: 430, baseType: !12, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !527, file: !14, line: 431, baseType: !526, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !506, file: !14, line: 450, baseType: !490, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !14, line: 451, baseType: !26, size: 8, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !506, file: !14, line: 452, baseType: !26, size: 8, offset: 136)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !506, file: !14, line: 453, baseType: !26, size: 8, offset: 144)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !506, file: !14, line: 454, baseType: !26, size: 8, offset: 152)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !476, file: !14, line: 487, baseType: !48, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !476, file: !14, line: 488, baseType: !7, size: 32, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !476, file: !14, line: 489, baseType: !31, size: 16, offset: 480)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !476, file: !14, line: 490, baseType: !31, size: 16, offset: 496)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !476, file: !14, line: 491, baseType: !26, size: 8, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !476, file: !14, line: 492, baseType: !26, size: 8, offset: 520)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !18, file: !19, line: 381, baseType: !543, size: 384)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !19, line: 193, size: 384, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !543, file: !19, line: 194, baseType: !17, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !543, file: !19, line: 194, baseType: !26, size: 8, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !543, file: !19, line: 194, baseType: !26, size: 8, offset: 72)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !543, file: !19, line: 194, baseType: !31, size: 16, offset: 80)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !19, line: 194, baseType: !26, size: 8, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !543, file: !19, line: 194, baseType: !460, size: 128, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !543, file: !19, line: 194, baseType: !17, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !543, file: !19, line: 194, baseType: !7, size: 32, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !543, file: !19, line: 195, baseType: !7, size: 32, offset: 352)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !18, file: !19, line: 382, baseType: !555, size: 384)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !19, line: 198, size: 384, elements: !556)
!556 = !{!557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !555, file: !19, line: 199, baseType: !17, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !555, file: !19, line: 199, baseType: !26, size: 8, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !555, file: !19, line: 199, baseType: !26, size: 8, offset: 72)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !555, file: !19, line: 199, baseType: !31, size: 16, offset: 80)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !555, file: !19, line: 199, baseType: !26, size: 8, offset: 96)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !555, file: !19, line: 201, baseType: !26, size: 8, offset: 104)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !555, file: !19, line: 202, baseType: !26, size: 8, offset: 112)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !555, file: !19, line: 203, baseType: !460, size: 128, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !555, file: !19, line: 203, baseType: !17, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !555, file: !19, line: 203, baseType: !567, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !48)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !18, file: !19, line: 383, baseType: !569, size: 320)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !19, line: 206, size: 320, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !569, file: !19, line: 207, baseType: !17, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !569, file: !19, line: 207, baseType: !26, size: 8, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !569, file: !19, line: 207, baseType: !26, size: 8, offset: 72)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !569, file: !19, line: 207, baseType: !31, size: 16, offset: 80)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !19, line: 207, baseType: !26, size: 8, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !569, file: !19, line: 207, baseType: !460, size: 128, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !569, file: !19, line: 207, baseType: !17, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !18, file: !19, line: 384, baseType: !579, size: 384)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !19, line: 234, size: 384, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !579, file: !19, line: 235, baseType: !17, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !579, file: !19, line: 235, baseType: !26, size: 8, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !579, file: !19, line: 235, baseType: !26, size: 8, offset: 72)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !579, file: !19, line: 235, baseType: !31, size: 16, offset: 80)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !19, line: 235, baseType: !26, size: 8, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !579, file: !19, line: 235, baseType: !26, size: 8, offset: 104)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !579, file: !19, line: 235, baseType: !26, size: 8, offset: 112)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !579, file: !19, line: 235, baseType: !26, size: 8, offset: 120)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !579, file: !19, line: 235, baseType: !12, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !579, file: !19, line: 235, baseType: !7, size: 32, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !579, file: !19, line: 235, baseType: !7, size: 32, offset: 224)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !579, file: !19, line: 235, baseType: !7, size: 32, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !579, file: !19, line: 235, baseType: !26, size: 8, offset: 288)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !579, file: !19, line: 235, baseType: !26, size: 8, offset: 296)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !579, file: !19, line: 235, baseType: !17, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !18, file: !19, line: 385, baseType: !597, size: 576)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !19, line: 238, size: 576, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !597, file: !19, line: 239, baseType: !17, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !597, file: !19, line: 239, baseType: !26, size: 8, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !19, line: 239, baseType: !26, size: 8, offset: 72)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !597, file: !19, line: 239, baseType: !31, size: 16, offset: 80)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !19, line: 239, baseType: !26, size: 8, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !597, file: !19, line: 239, baseType: !26, size: 8, offset: 104)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !597, file: !19, line: 239, baseType: !26, size: 8, offset: 112)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !597, file: !19, line: 239, baseType: !26, size: 8, offset: 120)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !597, file: !19, line: 239, baseType: !12, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !597, file: !19, line: 239, baseType: !7, size: 32, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !597, file: !19, line: 239, baseType: !7, size: 32, offset: 224)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !597, file: !19, line: 239, baseType: !7, size: 32, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !597, file: !19, line: 239, baseType: !26, size: 8, offset: 288)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !597, file: !19, line: 239, baseType: !26, size: 8, offset: 296)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !597, file: !19, line: 239, baseType: !31, size: 16, offset: 304)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !597, file: !19, line: 240, baseType: !17, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !597, file: !19, line: 241, baseType: !72, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !597, file: !19, line: 242, baseType: !31, size: 16, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !597, file: !19, line: 243, baseType: !72, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !18, file: !19, line: 386, baseType: !619, size: 384)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !19, line: 263, size: 384, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !619, file: !19, line: 264, baseType: !17, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !619, file: !19, line: 264, baseType: !26, size: 8, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !19, line: 264, baseType: !26, size: 8, offset: 72)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !619, file: !19, line: 264, baseType: !31, size: 16, offset: 80)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !19, line: 264, baseType: !26, size: 8, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !619, file: !19, line: 264, baseType: !26, size: 8, offset: 104)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !619, file: !19, line: 264, baseType: !26, size: 8, offset: 112)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !619, file: !19, line: 264, baseType: !26, size: 8, offset: 120)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !619, file: !19, line: 264, baseType: !12, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !619, file: !19, line: 264, baseType: !7, size: 32, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !619, file: !19, line: 264, baseType: !7, size: 32, offset: 224)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !619, file: !19, line: 264, baseType: !7, size: 32, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !619, file: !19, line: 264, baseType: !26, size: 8, offset: 288)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !619, file: !19, line: 264, baseType: !26, size: 8, offset: 296)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !619, file: !19, line: 264, baseType: !26, size: 8, offset: 304)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !619, file: !19, line: 265, baseType: !17, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !18, file: !19, line: 387, baseType: !638, size: 448)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !19, line: 246, size: 448, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !638, file: !19, line: 247, baseType: !17, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !638, file: !19, line: 247, baseType: !26, size: 8, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !19, line: 247, baseType: !26, size: 8, offset: 72)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !638, file: !19, line: 247, baseType: !31, size: 16, offset: 80)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !19, line: 247, baseType: !26, size: 8, offset: 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !638, file: !19, line: 247, baseType: !26, size: 8, offset: 104)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !638, file: !19, line: 247, baseType: !26, size: 8, offset: 112)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !638, file: !19, line: 247, baseType: !26, size: 8, offset: 120)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !638, file: !19, line: 247, baseType: !12, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !638, file: !19, line: 247, baseType: !7, size: 32, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !638, file: !19, line: 247, baseType: !7, size: 32, offset: 224)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !638, file: !19, line: 247, baseType: !7, size: 32, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !638, file: !19, line: 247, baseType: !26, size: 8, offset: 288)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !638, file: !19, line: 247, baseType: !26, size: 8, offset: 296)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !638, file: !19, line: 247, baseType: !17, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !638, file: !19, line: 248, baseType: !17, size: 64, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !18, file: !19, line: 388, baseType: !657, size: 448)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !19, line: 251, size: 448, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !657, file: !19, line: 252, baseType: !17, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !657, file: !19, line: 252, baseType: !26, size: 8, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !657, file: !19, line: 252, baseType: !26, size: 8, offset: 72)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !657, file: !19, line: 252, baseType: !31, size: 16, offset: 80)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !19, line: 252, baseType: !26, size: 8, offset: 96)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !657, file: !19, line: 252, baseType: !26, size: 8, offset: 104)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !657, file: !19, line: 252, baseType: !26, size: 8, offset: 112)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !657, file: !19, line: 252, baseType: !26, size: 8, offset: 120)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !657, file: !19, line: 252, baseType: !12, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !657, file: !19, line: 252, baseType: !7, size: 32, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !657, file: !19, line: 252, baseType: !7, size: 32, offset: 224)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !657, file: !19, line: 252, baseType: !7, size: 32, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !657, file: !19, line: 252, baseType: !26, size: 8, offset: 288)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !657, file: !19, line: 252, baseType: !26, size: 8, offset: 296)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !657, file: !19, line: 257, baseType: !17, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !657, file: !19, line: 258, baseType: !17, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !18, file: !19, line: 389, baseType: !676, size: 512)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !19, line: 274, size: 512, elements: !677)
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !676, file: !19, line: 275, baseType: !17, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !676, file: !19, line: 275, baseType: !26, size: 8, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !676, file: !19, line: 275, baseType: !26, size: 8, offset: 72)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !676, file: !19, line: 275, baseType: !31, size: 16, offset: 80)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !19, line: 275, baseType: !26, size: 8, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !676, file: !19, line: 275, baseType: !12, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !676, file: !19, line: 276, baseType: !7, size: 32, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !676, file: !19, line: 277, baseType: !352, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !676, file: !19, line: 278, baseType: !100, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !676, file: !19, line: 279, baseType: !460, size: 128, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !18, file: !19, line: 390, baseType: !689, size: 576)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !19, line: 282, size: 576, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !704, !705, !706, !707, !713, !714}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !689, file: !19, line: 283, baseType: !17, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !689, file: !19, line: 283, baseType: !26, size: 8, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !689, file: !19, line: 283, baseType: !26, size: 8, offset: 72)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !689, file: !19, line: 283, baseType: !31, size: 16, offset: 80)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !19, line: 283, baseType: !26, size: 8, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !689, file: !19, line: 283, baseType: !26, size: 8, offset: 104)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !689, file: !19, line: 284, baseType: !26, size: 8, offset: 112)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !689, file: !19, line: 285, baseType: !699, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !6, line: 1093, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!5, !7, !448, !7, !703, !100, !100}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !689, file: !19, line: 286, baseType: !12, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !689, file: !19, line: 287, baseType: !100, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !689, file: !19, line: 288, baseType: !100, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !689, file: !19, line: 289, baseType: !708, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !6, line: 1126, baseType: !709)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!5, !356, !7, !100, !712}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !689, file: !19, line: 290, baseType: !17, size: 64, offset: 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !689, file: !19, line: 291, baseType: !17, size: 64, offset: 512)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !18, file: !19, line: 391, baseType: !716, size: 512)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !19, line: 309, size: 512, elements: !717)
!717 = !{!718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !716, file: !19, line: 310, baseType: !17, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !716, file: !19, line: 310, baseType: !26, size: 8, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !716, file: !19, line: 310, baseType: !26, size: 8, offset: 72)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !716, file: !19, line: 310, baseType: !31, size: 16, offset: 80)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !716, file: !19, line: 310, baseType: !26, size: 8, offset: 96)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !716, file: !19, line: 310, baseType: !26, size: 8, offset: 104)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !716, file: !19, line: 311, baseType: !26, size: 8, offset: 112)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !716, file: !19, line: 312, baseType: !26, size: 8, offset: 120)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !716, file: !19, line: 313, baseType: !100, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !716, file: !19, line: 314, baseType: !12, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !716, file: !19, line: 315, baseType: !87, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !716, file: !19, line: 316, baseType: !72, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !716, file: !19, line: 317, baseType: !72, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !716, file: !19, line: 318, baseType: !7, size: 32, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !18, file: !19, line: 392, baseType: !733, size: 448)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !19, line: 342, size: 448, elements: !734)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !743, !744}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !733, file: !19, line: 343, baseType: !17, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !733, file: !19, line: 343, baseType: !26, size: 8, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !733, file: !19, line: 343, baseType: !26, size: 8, offset: 72)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !733, file: !19, line: 343, baseType: !31, size: 16, offset: 80)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !733, file: !19, line: 343, baseType: !26, size: 8, offset: 96)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !733, file: !19, line: 343, baseType: !12, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !733, file: !19, line: 344, baseType: !12, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !733, file: !19, line: 345, baseType: !100, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !733, file: !19, line: 346, baseType: !72, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !733, file: !19, line: 347, baseType: !7, size: 32, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !18, file: !19, line: 393, baseType: !746, size: 256)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !19, line: 352, size: 256, elements: !747)
!747 = !{!748, !749, !750, !751, !752, !753, !758}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !746, file: !19, line: 353, baseType: !17, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !746, file: !19, line: 353, baseType: !26, size: 8, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !746, file: !19, line: 353, baseType: !26, size: 8, offset: 72)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !746, file: !19, line: 353, baseType: !31, size: 16, offset: 80)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !746, file: !19, line: 353, baseType: !26, size: 8, offset: 96)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !746, file: !19, line: 353, baseType: !754, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !6, line: 1064, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !356, !100}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !746, file: !19, line: 354, baseType: !100, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !18, file: !19, line: 394, baseType: !760, size: 192)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !19, line: 359, size: 192, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !760, file: !19, line: 360, baseType: !17, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !760, file: !19, line: 360, baseType: !26, size: 8, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !760, file: !19, line: 360, baseType: !26, size: 8, offset: 72)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !760, file: !19, line: 360, baseType: !31, size: 16, offset: 80)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !19, line: 360, baseType: !26, size: 8, offset: 96)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !760, file: !19, line: 360, baseType: !17, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !18, file: !19, line: 401, baseType: !13, size: 384)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !13, file: !14, line: 135, baseType: !26, size: 8, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !14, line: 136, baseType: !26, size: 8, offset: 72)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !13, file: !14, line: 137, baseType: !31, size: 16, offset: 80)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !13, file: !14, line: 138, baseType: !773, size: 32, offset: 96)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !774, line: 328, size: 32, elements: !775)
!774 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !773, file: !774, line: 329, baseType: !7, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !773, file: !774, line: 330, baseType: !217, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !13, file: !14, line: 139, baseType: !12, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !13, file: !14, line: 140, baseType: !12, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !13, file: !14, line: 141, baseType: !12, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !13, file: !14, line: 142, baseType: !135, size: 16, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !783, line: 42, baseType: !784)
!783 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!784 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!785 = !{!786, !0}
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(scope: null, file: !3, line: 246, type: !788, isLocal: true, isDefinition: true)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 336, elements: !789)
!789 = !{!790}
!790 = !DISubrange(count: 42)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !792, size: 72, elements: !372)
!792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!793 = !{i32 7, !"Dwarf Version", i32 5}
!794 = !{i32 2, !"Debug Info Version", i32 3}
!795 = !{i32 1, !"wchar_size", i32 2}
!796 = !{i32 8, !"cf-protection-branch", i32 1}
!797 = !{i32 4, !"function_return_thunk_extern", i32 1}
!798 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!799 = !{i32 1, !"Code Model", i32 2}
!800 = !{i32 1, !"override-stack-alignment", i32 8}
!801 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!802 = distinct !DISubprogram(name: "acpi_ex_create_alias", scope: !3, file: !3, line: 29, type: !121, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !803)
!803 = !{!804, !805, !806, !807}
!804 = !DILocalVariable(name: "walk_state", arg: 1, scope: !802, file: !3, line: 29, type: !123)
!805 = !DILocalVariable(name: "target_node", scope: !802, file: !3, line: 31, type: !12)
!806 = !DILocalVariable(name: "alias_node", scope: !802, file: !3, line: 32, type: !12)
!807 = !DILocalVariable(name: "status", scope: !802, file: !3, line: 33, type: !5)
!808 = !DILocation(line: 29, column: 58, scope: !802)
!809 = !DILocation(line: 31, column: 2, scope: !802)
!810 = !DILocation(line: 31, column: 30, scope: !802)
!811 = !DILocation(line: 32, column: 2, scope: !802)
!812 = !DILocation(line: 32, column: 30, scope: !802)
!813 = !DILocation(line: 33, column: 2, scope: !802)
!814 = !DILocation(line: 33, column: 14, scope: !802)
!815 = !DILocation(line: 39, column: 45, scope: !802)
!816 = !DILocation(line: 39, column: 57, scope: !802)
!817 = !DILocation(line: 39, column: 13, scope: !802)
!818 = !DILocation(line: 40, column: 46, scope: !802)
!819 = !DILocation(line: 40, column: 58, scope: !802)
!820 = !DILocation(line: 40, column: 14, scope: !802)
!821 = !DILocation(line: 42, column: 7, scope: !822)
!822 = distinct !DILexicalBlock(scope: !802, file: !3, line: 42, column: 6)
!823 = !DILocation(line: 42, column: 20, scope: !822)
!824 = !DILocation(line: 42, column: 25, scope: !822)
!825 = !DILocation(line: 42, column: 51, scope: !822)
!826 = !DILocation(line: 43, column: 7, scope: !822)
!827 = !DILocation(line: 43, column: 20, scope: !822)
!828 = !DILocation(line: 43, column: 25, scope: !822)
!829 = !DILocation(line: 42, column: 6, scope: !802)
!830 = !DILocation(line: 51, column: 7, scope: !831)
!831 = distinct !DILexicalBlock(scope: !822, file: !3, line: 43, column: 59)
!832 = !DILocation(line: 50, column: 15, scope: !831)
!833 = !DILocation(line: 53, column: 2, scope: !831)
!834 = !DILocation(line: 57, column: 7, scope: !835)
!835 = distinct !DILexicalBlock(scope: !802, file: !3, line: 57, column: 6)
!836 = !DILocation(line: 57, column: 6, scope: !802)
!837 = !DILocation(line: 58, column: 3, scope: !838)
!838 = distinct !DILexicalBlock(scope: !835, file: !3, line: 57, column: 20)
!839 = !DILocation(line: 63, column: 10, scope: !802)
!840 = !DILocation(line: 63, column: 23, scope: !802)
!841 = !DILocation(line: 63, column: 2, scope: !802)
!842 = !DILocation(line: 69, column: 3, scope: !843)
!843 = distinct !DILexicalBlock(scope: !802, file: !3, line: 63, column: 29)
!844 = !DILocation(line: 69, column: 15, scope: !843)
!845 = !DILocation(line: 69, column: 20, scope: !843)
!846 = !DILocation(line: 70, column: 3, scope: !843)
!847 = !DILocation(line: 79, column: 3, scope: !843)
!848 = !DILocation(line: 79, column: 15, scope: !843)
!849 = !DILocation(line: 79, column: 20, scope: !843)
!850 = !DILocation(line: 81, column: 7, scope: !843)
!851 = !DILocation(line: 80, column: 3, scope: !843)
!852 = !DILocation(line: 80, column: 15, scope: !843)
!853 = !DILocation(line: 80, column: 22, scope: !843)
!854 = !DILocation(line: 82, column: 3, scope: !843)
!855 = !DILocation(line: 88, column: 6, scope: !802)
!856 = !DILocation(line: 87, column: 2, scope: !802)
!857 = !DILocation(line: 87, column: 14, scope: !802)
!858 = !DILocation(line: 87, column: 21, scope: !802)
!859 = !DILocation(line: 89, column: 2, scope: !802)
!860 = !DILocation(line: 90, column: 1, scope: !802)
!861 = distinct !DISubprogram(name: "acpi_ex_create_event", scope: !3, file: !3, line: 104, type: !121, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !862)
!862 = !{!863, !864, !865, !866}
!863 = !DILocalVariable(name: "walk_state", arg: 1, scope: !861, file: !3, line: 104, type: !123)
!864 = !DILocalVariable(name: "status", scope: !861, file: !3, line: 106, type: !5)
!865 = !DILocalVariable(name: "obj_desc", scope: !861, file: !3, line: 107, type: !17)
!866 = !DILabel(scope: !861, name: "cleanup", file: !3, line: 133)
!867 = !DILocation(line: 104, column: 58, scope: !861)
!868 = !DILocation(line: 106, column: 2, scope: !861)
!869 = !DILocation(line: 106, column: 14, scope: !861)
!870 = !DILocation(line: 107, column: 2, scope: !861)
!871 = !DILocation(line: 107, column: 29, scope: !861)
!872 = !DILocation(line: 111, column: 13, scope: !861)
!873 = !DILocation(line: 111, column: 11, scope: !861)
!874 = !DILocation(line: 112, column: 7, scope: !875)
!875 = distinct !DILexicalBlock(scope: !861, file: !3, line: 112, column: 6)
!876 = !DILocation(line: 112, column: 6, scope: !861)
!877 = !DILocation(line: 113, column: 10, scope: !878)
!878 = distinct !DILexicalBlock(scope: !875, file: !3, line: 112, column: 17)
!879 = !DILocation(line: 114, column: 3, scope: !878)
!880 = !DILocation(line: 122, column: 9, scope: !861)
!881 = !DILocation(line: 122, column: 25, scope: !861)
!882 = !DILocation(line: 121, column: 11, scope: !861)
!883 = !DILocation(line: 121, column: 9, scope: !861)
!884 = !DILocation(line: 123, column: 6, scope: !885)
!885 = distinct !DILexicalBlock(scope: !861, file: !3, line: 123, column: 6)
!886 = !DILocation(line: 123, column: 6, scope: !861)
!887 = !DILocation(line: 124, column: 3, scope: !888)
!888 = distinct !DILexicalBlock(scope: !885, file: !3, line: 123, column: 28)
!889 = !DILocation(line: 130, column: 12, scope: !861)
!890 = !DILocation(line: 130, column: 24, scope: !861)
!891 = !DILocation(line: 130, column: 37, scope: !861)
!892 = !DILocation(line: 129, column: 11, scope: !861)
!893 = !DILocation(line: 129, column: 9, scope: !861)
!894 = !DILocation(line: 129, column: 2, scope: !861)
!895 = !DILocation(line: 133, column: 1, scope: !861)
!896 = !DILocation(line: 138, column: 27, scope: !861)
!897 = !DILocation(line: 138, column: 2, scope: !861)
!898 = !DILocation(line: 139, column: 2, scope: !861)
!899 = !DILocation(line: 140, column: 1, scope: !861)
!900 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !901, file: !901, line: 436, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!901 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!902 = !DISubroutineType(types: !903)
!903 = !{!17, !904, !7, !7, !905}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !6, line: 644, baseType: !7)
!906 = !DISubprogram(name: "acpi_os_create_semaphore", scope: !907, file: !907, line: 126, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!907 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!908 = !DISubroutineType(types: !909)
!909 = !{!5, !7, !7, !712}
!910 = !DISubprogram(name: "acpi_ns_attach_object", scope: !911, file: !911, line: 295, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!911 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!912 = !DISubroutineType(types: !913)
!913 = !{!5, !12, !17, !905}
!914 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !901, file: !901, line: 369, type: !915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !17}
!917 = distinct !DISubprogram(name: "acpi_ex_create_mutex", scope: !3, file: !3, line: 156, type: !121, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !918)
!918 = !{!919, !920, !921, !922}
!919 = !DILocalVariable(name: "walk_state", arg: 1, scope: !917, file: !3, line: 156, type: !123)
!920 = !DILocalVariable(name: "status", scope: !917, file: !3, line: 158, type: !5)
!921 = !DILocalVariable(name: "obj_desc", scope: !917, file: !3, line: 159, type: !17)
!922 = !DILabel(scope: !917, name: "cleanup", file: !3, line: 188)
!923 = !DILocation(line: 156, column: 58, scope: !917)
!924 = !DILocation(line: 158, column: 2, scope: !917)
!925 = !DILocation(line: 158, column: 14, scope: !917)
!926 = !DILocation(line: 159, column: 2, scope: !917)
!927 = !DILocation(line: 159, column: 29, scope: !917)
!928 = !DILocation(line: 165, column: 13, scope: !917)
!929 = !DILocation(line: 165, column: 11, scope: !917)
!930 = !DILocation(line: 166, column: 7, scope: !931)
!931 = distinct !DILexicalBlock(scope: !917, file: !3, line: 166, column: 6)
!932 = !DILocation(line: 166, column: 6, scope: !917)
!933 = !DILocation(line: 167, column: 10, scope: !934)
!934 = distinct !DILexicalBlock(scope: !931, file: !3, line: 166, column: 17)
!935 = !DILocation(line: 168, column: 3, scope: !934)
!936 = !DILocation(line: 173, column: 11, scope: !917)
!937 = !DILocation(line: 173, column: 9, scope: !917)
!938 = !DILocation(line: 174, column: 6, scope: !939)
!939 = distinct !DILexicalBlock(scope: !917, file: !3, line: 174, column: 6)
!940 = !DILocation(line: 174, column: 6, scope: !917)
!941 = !DILocation(line: 175, column: 3, scope: !942)
!942 = distinct !DILexicalBlock(scope: !939, file: !3, line: 174, column: 28)
!943 = !DILocation(line: 180, column: 35, scope: !917)
!944 = !DILocation(line: 180, column: 47, scope: !917)
!945 = !DILocation(line: 180, column: 68, scope: !917)
!946 = !DILocation(line: 180, column: 31, scope: !917)
!947 = !DILocation(line: 180, column: 2, scope: !917)
!948 = !DILocation(line: 180, column: 18, scope: !917)
!949 = !DILocation(line: 180, column: 29, scope: !917)
!950 = !DILocation(line: 182, column: 36, scope: !917)
!951 = !DILocation(line: 182, column: 48, scope: !917)
!952 = !DILocation(line: 181, column: 2, scope: !917)
!953 = !DILocation(line: 181, column: 18, scope: !917)
!954 = !DILocation(line: 181, column: 23, scope: !917)
!955 = !DILocation(line: 185, column: 28, scope: !917)
!956 = !DILocation(line: 185, column: 44, scope: !917)
!957 = !DILocation(line: 185, column: 50, scope: !917)
!958 = !DILocation(line: 185, column: 6, scope: !917)
!959 = !DILocation(line: 184, column: 9, scope: !917)
!960 = !DILocation(line: 184, column: 2, scope: !917)
!961 = !DILocation(line: 188, column: 1, scope: !917)
!962 = !DILocation(line: 193, column: 27, scope: !917)
!963 = !DILocation(line: 193, column: 2, scope: !917)
!964 = !DILocation(line: 194, column: 2, scope: !917)
!965 = !DILocation(line: 195, column: 1, scope: !917)
!966 = distinct !DISubprogram(name: "acpi_ex_create_region", scope: !3, file: !3, line: 213, type: !967, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !969)
!967 = !DISubroutineType(types: !968)
!968 = !{!5, !72, !7, !26, !123}
!969 = !{!970, !971, !972, !973, !974, !975, !976, !977, !978}
!970 = !DILocalVariable(name: "aml_start", arg: 1, scope: !966, file: !3, line: 213, type: !72)
!971 = !DILocalVariable(name: "aml_length", arg: 2, scope: !966, file: !3, line: 214, type: !7)
!972 = !DILocalVariable(name: "space_id", arg: 3, scope: !966, file: !3, line: 215, type: !26)
!973 = !DILocalVariable(name: "walk_state", arg: 4, scope: !966, file: !3, line: 215, type: !123)
!974 = !DILocalVariable(name: "status", scope: !966, file: !3, line: 217, type: !5)
!975 = !DILocalVariable(name: "obj_desc", scope: !966, file: !3, line: 218, type: !17)
!976 = !DILocalVariable(name: "node", scope: !966, file: !3, line: 219, type: !12)
!977 = !DILocalVariable(name: "region_obj2", scope: !966, file: !3, line: 220, type: !17)
!978 = !DILabel(scope: !966, name: "cleanup", file: !3, line: 293)
!979 = !DILocation(line: 213, column: 28, scope: !966)
!980 = !DILocation(line: 214, column: 13, scope: !966)
!981 = !DILocation(line: 215, column: 12, scope: !966)
!982 = !DILocation(line: 215, column: 46, scope: !966)
!983 = !DILocation(line: 217, column: 2, scope: !966)
!984 = !DILocation(line: 217, column: 14, scope: !966)
!985 = !DILocation(line: 218, column: 2, scope: !966)
!986 = !DILocation(line: 218, column: 29, scope: !966)
!987 = !DILocation(line: 219, column: 2, scope: !966)
!988 = !DILocation(line: 219, column: 30, scope: !966)
!989 = !DILocation(line: 220, column: 2, scope: !966)
!990 = !DILocation(line: 220, column: 29, scope: !966)
!991 = !DILocation(line: 226, column: 9, scope: !966)
!992 = !DILocation(line: 226, column: 21, scope: !966)
!993 = !DILocation(line: 226, column: 32, scope: !966)
!994 = !DILocation(line: 226, column: 7, scope: !966)
!995 = !DILocation(line: 232, column: 34, scope: !996)
!996 = distinct !DILexicalBlock(scope: !966, file: !3, line: 232, column: 6)
!997 = !DILocation(line: 232, column: 6, scope: !996)
!998 = !DILocation(line: 232, column: 6, scope: !966)
!999 = !DILocation(line: 233, column: 3, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !996, file: !3, line: 232, column: 41)
!1001 = !DILocation(line: 240, column: 30, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !966, file: !3, line: 240, column: 6)
!1003 = !DILocation(line: 240, column: 7, scope: !1002)
!1004 = !DILocation(line: 240, column: 6, scope: !966)
!1005 = !DILocation(line: 246, column: 3, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 240, column: 41)
!1007 = !DILocation(line: 249, column: 2, scope: !1006)
!1008 = !DILocation(line: 256, column: 13, scope: !966)
!1009 = !DILocation(line: 256, column: 11, scope: !966)
!1010 = !DILocation(line: 257, column: 7, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !966, file: !3, line: 257, column: 6)
!1012 = !DILocation(line: 257, column: 6, scope: !966)
!1013 = !DILocation(line: 258, column: 10, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 257, column: 17)
!1015 = !DILocation(line: 259, column: 3, scope: !1014)
!1016 = !DILocation(line: 266, column: 45, scope: !966)
!1017 = !DILocation(line: 266, column: 16, scope: !966)
!1018 = !DILocation(line: 266, column: 14, scope: !966)
!1019 = !DILocation(line: 267, column: 33, scope: !966)
!1020 = !DILocation(line: 267, column: 2, scope: !966)
!1021 = !DILocation(line: 267, column: 21, scope: !966)
!1022 = !DILocation(line: 267, column: 31, scope: !966)
!1023 = !DILocation(line: 268, column: 34, scope: !966)
!1024 = !DILocation(line: 268, column: 2, scope: !966)
!1025 = !DILocation(line: 268, column: 21, scope: !966)
!1026 = !DILocation(line: 268, column: 32, scope: !966)
!1027 = !DILocation(line: 269, column: 2, scope: !966)
!1028 = !DILocation(line: 269, column: 21, scope: !966)
!1029 = !DILocation(line: 269, column: 32, scope: !966)
!1030 = !DILocation(line: 270, column: 6, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !966, file: !3, line: 270, column: 6)
!1032 = !DILocation(line: 270, column: 18, scope: !1031)
!1033 = !DILocation(line: 270, column: 6, scope: !966)
!1034 = !DILocation(line: 272, column: 7, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 270, column: 30)
!1036 = !DILocation(line: 272, column: 19, scope: !1035)
!1037 = !DILocation(line: 272, column: 37, scope: !1035)
!1038 = !DILocation(line: 271, column: 3, scope: !1035)
!1039 = !DILocation(line: 271, column: 22, scope: !1035)
!1040 = !DILocation(line: 271, column: 33, scope: !1035)
!1041 = !DILocation(line: 273, column: 2, scope: !1035)
!1042 = !DILocation(line: 274, column: 35, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 273, column: 9)
!1044 = !DILocation(line: 274, column: 3, scope: !1043)
!1045 = !DILocation(line: 274, column: 22, scope: !1043)
!1046 = !DILocation(line: 274, column: 33, scope: !1043)
!1047 = !DILocation(line: 279, column: 30, scope: !966)
!1048 = !DILocation(line: 279, column: 2, scope: !966)
!1049 = !DILocation(line: 279, column: 19, scope: !966)
!1050 = !DILocation(line: 279, column: 28, scope: !966)
!1051 = !DILocation(line: 280, column: 2, scope: !966)
!1052 = !DILocation(line: 280, column: 19, scope: !966)
!1053 = !DILocation(line: 280, column: 27, scope: !966)
!1054 = !DILocation(line: 281, column: 2, scope: !966)
!1055 = !DILocation(line: 281, column: 19, scope: !966)
!1056 = !DILocation(line: 281, column: 26, scope: !966)
!1057 = !DILocation(line: 282, column: 2, scope: !966)
!1058 = !DILocation(line: 282, column: 19, scope: !966)
!1059 = !DILocation(line: 282, column: 27, scope: !966)
!1060 = !DILocation(line: 283, column: 26, scope: !966)
!1061 = !DILocation(line: 283, column: 2, scope: !966)
!1062 = !DILocation(line: 283, column: 19, scope: !966)
!1063 = !DILocation(line: 283, column: 24, scope: !966)
!1064 = !DILocation(line: 284, column: 2, scope: !966)
!1065 = !DILocation(line: 284, column: 19, scope: !966)
!1066 = !DILocation(line: 284, column: 27, scope: !966)
!1067 = !DILocation(line: 285, column: 2, scope: !966)
!1068 = !DILocation(line: 285, column: 19, scope: !966)
!1069 = !DILocation(line: 285, column: 25, scope: !966)
!1070 = !DILocation(line: 291, column: 33, scope: !966)
!1071 = !DILocation(line: 291, column: 39, scope: !966)
!1072 = !DILocation(line: 291, column: 11, scope: !966)
!1073 = !DILocation(line: 291, column: 9, scope: !966)
!1074 = !DILocation(line: 291, column: 2, scope: !966)
!1075 = !DILocation(line: 293, column: 1, scope: !966)
!1076 = !DILocation(line: 297, column: 27, scope: !966)
!1077 = !DILocation(line: 297, column: 2, scope: !966)
!1078 = !DILocation(line: 298, column: 2, scope: !966)
!1079 = !DILocation(line: 299, column: 1, scope: !966)
!1080 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !911, file: !911, line: 298, type: !1081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!17, !12}
!1083 = !DISubprogram(name: "acpi_is_valid_space_id", scope: !1084, file: !1084, line: 480, type: !1085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1084 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!26, !26}
!1087 = !DISubprogram(name: "acpi_error", scope: !1088, file: !1088, line: 901, type: !1089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1088 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !904, !7, !904, null}
!1091 = !DISubprogram(name: "acpi_ns_get_secondary_object", scope: !911, file: !911, line: 302, type: !1092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!17, !17}
!1094 = distinct !DISubprogram(name: "acpi_ex_create_processor", scope: !3, file: !3, line: 315, type: !121, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1095)
!1095 = !{!1096, !1097, !1098, !1099}
!1096 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1094, file: !3, line: 315, type: !123)
!1097 = !DILocalVariable(name: "operand", scope: !1094, file: !3, line: 317, type: !87)
!1098 = !DILocalVariable(name: "obj_desc", scope: !1094, file: !3, line: 318, type: !17)
!1099 = !DILocalVariable(name: "status", scope: !1094, file: !3, line: 319, type: !5)
!1100 = !DILocation(line: 315, column: 62, scope: !1094)
!1101 = !DILocation(line: 317, column: 2, scope: !1094)
!1102 = !DILocation(line: 317, column: 30, scope: !1094)
!1103 = !DILocation(line: 317, column: 41, scope: !1094)
!1104 = !DILocation(line: 317, column: 53, scope: !1094)
!1105 = !DILocation(line: 318, column: 2, scope: !1094)
!1106 = !DILocation(line: 318, column: 29, scope: !1094)
!1107 = !DILocation(line: 319, column: 2, scope: !1094)
!1108 = !DILocation(line: 319, column: 14, scope: !1094)
!1109 = !DILocation(line: 325, column: 13, scope: !1094)
!1110 = !DILocation(line: 325, column: 11, scope: !1094)
!1111 = !DILocation(line: 326, column: 7, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 326, column: 6)
!1113 = !DILocation(line: 326, column: 6, scope: !1094)
!1114 = !DILocation(line: 327, column: 3, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 326, column: 17)
!1116 = !DILocation(line: 332, column: 37, scope: !1094)
!1117 = !DILocation(line: 332, column: 57, scope: !1094)
!1118 = !DILocation(line: 332, column: 32, scope: !1094)
!1119 = !DILocation(line: 332, column: 2, scope: !1094)
!1120 = !DILocation(line: 332, column: 22, scope: !1094)
!1121 = !DILocation(line: 332, column: 30, scope: !1094)
!1122 = !DILocation(line: 333, column: 36, scope: !1094)
!1123 = !DILocation(line: 333, column: 56, scope: !1094)
!1124 = !DILocation(line: 333, column: 31, scope: !1094)
!1125 = !DILocation(line: 333, column: 2, scope: !1094)
!1126 = !DILocation(line: 333, column: 22, scope: !1094)
!1127 = !DILocation(line: 333, column: 29, scope: !1094)
!1128 = !DILocation(line: 335, column: 23, scope: !1094)
!1129 = !DILocation(line: 335, column: 43, scope: !1094)
!1130 = !DILocation(line: 334, column: 2, scope: !1094)
!1131 = !DILocation(line: 334, column: 22, scope: !1094)
!1132 = !DILocation(line: 334, column: 30, scope: !1094)
!1133 = !DILocation(line: 339, column: 63, scope: !1094)
!1134 = !DILocation(line: 340, column: 12, scope: !1094)
!1135 = !DILocation(line: 339, column: 11, scope: !1094)
!1136 = !DILocation(line: 339, column: 9, scope: !1094)
!1137 = !DILocation(line: 344, column: 27, scope: !1094)
!1138 = !DILocation(line: 344, column: 2, scope: !1094)
!1139 = !DILocation(line: 345, column: 2, scope: !1094)
!1140 = !DILocation(line: 346, column: 1, scope: !1094)
!1141 = distinct !DISubprogram(name: "acpi_ex_create_power_resource", scope: !3, file: !3, line: 362, type: !121, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1142)
!1142 = !{!1143, !1144, !1145, !1146}
!1143 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1141, file: !3, line: 362, type: !123)
!1144 = !DILocalVariable(name: "operand", scope: !1141, file: !3, line: 364, type: !87)
!1145 = !DILocalVariable(name: "status", scope: !1141, file: !3, line: 365, type: !5)
!1146 = !DILocalVariable(name: "obj_desc", scope: !1141, file: !3, line: 366, type: !17)
!1147 = !DILocation(line: 362, column: 67, scope: !1141)
!1148 = !DILocation(line: 364, column: 2, scope: !1141)
!1149 = !DILocation(line: 364, column: 30, scope: !1141)
!1150 = !DILocation(line: 364, column: 41, scope: !1141)
!1151 = !DILocation(line: 364, column: 53, scope: !1141)
!1152 = !DILocation(line: 365, column: 2, scope: !1141)
!1153 = !DILocation(line: 365, column: 14, scope: !1141)
!1154 = !DILocation(line: 366, column: 2, scope: !1141)
!1155 = !DILocation(line: 366, column: 29, scope: !1141)
!1156 = !DILocation(line: 372, column: 13, scope: !1141)
!1157 = !DILocation(line: 372, column: 11, scope: !1141)
!1158 = !DILocation(line: 373, column: 7, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 373, column: 6)
!1160 = !DILocation(line: 373, column: 6, scope: !1141)
!1161 = !DILocation(line: 374, column: 3, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 373, column: 17)
!1163 = !DILocation(line: 379, column: 47, scope: !1141)
!1164 = !DILocation(line: 379, column: 67, scope: !1141)
!1165 = !DILocation(line: 379, column: 42, scope: !1141)
!1166 = !DILocation(line: 379, column: 2, scope: !1141)
!1167 = !DILocation(line: 379, column: 27, scope: !1141)
!1168 = !DILocation(line: 379, column: 40, scope: !1141)
!1169 = !DILocation(line: 381, column: 12, scope: !1141)
!1170 = !DILocation(line: 381, column: 32, scope: !1141)
!1171 = !DILocation(line: 381, column: 6, scope: !1141)
!1172 = !DILocation(line: 380, column: 2, scope: !1141)
!1173 = !DILocation(line: 380, column: 27, scope: !1141)
!1174 = !DILocation(line: 380, column: 42, scope: !1141)
!1175 = !DILocation(line: 385, column: 63, scope: !1141)
!1176 = !DILocation(line: 386, column: 12, scope: !1141)
!1177 = !DILocation(line: 385, column: 11, scope: !1141)
!1178 = !DILocation(line: 385, column: 9, scope: !1141)
!1179 = !DILocation(line: 390, column: 27, scope: !1141)
!1180 = !DILocation(line: 390, column: 2, scope: !1141)
!1181 = !DILocation(line: 391, column: 2, scope: !1141)
!1182 = !DILocation(line: 392, column: 1, scope: !1141)
!1183 = distinct !DISubprogram(name: "acpi_ex_create_method", scope: !3, file: !3, line: 409, type: !1184, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1186)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!5, !72, !7, !123}
!1186 = !{!1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194}
!1187 = !DILocalVariable(name: "aml_start", arg: 1, scope: !1183, file: !3, line: 409, type: !72)
!1188 = !DILocalVariable(name: "aml_length", arg: 2, scope: !1183, file: !3, line: 410, type: !7)
!1189 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1183, file: !3, line: 410, type: !123)
!1190 = !DILocalVariable(name: "operand", scope: !1183, file: !3, line: 412, type: !87)
!1191 = !DILocalVariable(name: "obj_desc", scope: !1183, file: !3, line: 413, type: !17)
!1192 = !DILocalVariable(name: "status", scope: !1183, file: !3, line: 414, type: !5)
!1193 = !DILocalVariable(name: "method_flags", scope: !1183, file: !3, line: 415, type: !26)
!1194 = !DILabel(scope: !1183, name: "exit", file: !3, line: 465)
!1195 = !DILocation(line: 409, column: 28, scope: !1183)
!1196 = !DILocation(line: 410, column: 13, scope: !1183)
!1197 = !DILocation(line: 410, column: 49, scope: !1183)
!1198 = !DILocation(line: 412, column: 2, scope: !1183)
!1199 = !DILocation(line: 412, column: 30, scope: !1183)
!1200 = !DILocation(line: 412, column: 41, scope: !1183)
!1201 = !DILocation(line: 412, column: 53, scope: !1183)
!1202 = !DILocation(line: 413, column: 2, scope: !1183)
!1203 = !DILocation(line: 413, column: 29, scope: !1183)
!1204 = !DILocation(line: 414, column: 2, scope: !1183)
!1205 = !DILocation(line: 414, column: 14, scope: !1183)
!1206 = !DILocation(line: 415, column: 2, scope: !1183)
!1207 = !DILocation(line: 415, column: 5, scope: !1183)
!1208 = !DILocation(line: 421, column: 13, scope: !1183)
!1209 = !DILocation(line: 421, column: 11, scope: !1183)
!1210 = !DILocation(line: 422, column: 7, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 422, column: 6)
!1212 = !DILocation(line: 422, column: 6, scope: !1183)
!1213 = !DILocation(line: 423, column: 10, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 422, column: 17)
!1215 = !DILocation(line: 424, column: 3, scope: !1214)
!1216 = !DILocation(line: 429, column: 31, scope: !1183)
!1217 = !DILocation(line: 429, column: 2, scope: !1183)
!1218 = !DILocation(line: 429, column: 19, scope: !1183)
!1219 = !DILocation(line: 429, column: 29, scope: !1183)
!1220 = !DILocation(line: 430, column: 32, scope: !1183)
!1221 = !DILocation(line: 430, column: 2, scope: !1183)
!1222 = !DILocation(line: 430, column: 19, scope: !1183)
!1223 = !DILocation(line: 430, column: 30, scope: !1183)
!1224 = !DILocation(line: 431, column: 26, scope: !1183)
!1225 = !DILocation(line: 431, column: 2, scope: !1183)
!1226 = !DILocation(line: 431, column: 19, scope: !1183)
!1227 = !DILocation(line: 431, column: 24, scope: !1183)
!1228 = !DILocation(line: 437, column: 21, scope: !1183)
!1229 = !DILocation(line: 437, column: 41, scope: !1183)
!1230 = !DILocation(line: 437, column: 17, scope: !1183)
!1231 = !DILocation(line: 437, column: 15, scope: !1183)
!1232 = !DILocation(line: 439, column: 7, scope: !1183)
!1233 = !DILocation(line: 439, column: 20, scope: !1183)
!1234 = !DILocation(line: 438, column: 33, scope: !1183)
!1235 = !DILocation(line: 438, column: 2, scope: !1183)
!1236 = !DILocation(line: 438, column: 19, scope: !1183)
!1237 = !DILocation(line: 438, column: 31, scope: !1183)
!1238 = !DILocation(line: 445, column: 6, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 445, column: 6)
!1240 = !DILocation(line: 445, column: 19, scope: !1239)
!1241 = !DILocation(line: 445, column: 6, scope: !1183)
!1242 = !DILocation(line: 446, column: 3, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 445, column: 44)
!1244 = !DILocation(line: 446, column: 20, scope: !1243)
!1245 = !DILocation(line: 446, column: 31, scope: !1243)
!1246 = !DILocation(line: 453, column: 9, scope: !1243)
!1247 = !DILocation(line: 453, column: 22, scope: !1243)
!1248 = !DILocation(line: 453, column: 47, scope: !1243)
!1249 = !DILocation(line: 452, column: 33, scope: !1243)
!1250 = !DILocation(line: 452, column: 3, scope: !1243)
!1251 = !DILocation(line: 452, column: 20, scope: !1243)
!1252 = !DILocation(line: 452, column: 31, scope: !1243)
!1253 = !DILocation(line: 454, column: 2, scope: !1243)
!1254 = !DILocation(line: 458, column: 63, scope: !1183)
!1255 = !DILocation(line: 459, column: 12, scope: !1183)
!1256 = !DILocation(line: 458, column: 11, scope: !1183)
!1257 = !DILocation(line: 458, column: 9, scope: !1183)
!1258 = !DILocation(line: 463, column: 27, scope: !1183)
!1259 = !DILocation(line: 463, column: 2, scope: !1183)
!1260 = !DILocation(line: 465, column: 1, scope: !1183)
!1261 = !DILocation(line: 468, column: 27, scope: !1183)
!1262 = !DILocation(line: 468, column: 2, scope: !1183)
!1263 = !DILocation(line: 469, column: 2, scope: !1183)
!1264 = !DILocation(line: 470, column: 1, scope: !1183)
