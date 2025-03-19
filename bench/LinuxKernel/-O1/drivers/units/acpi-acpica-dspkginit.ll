; ModuleID = 'drivers/acpi/acpica/dspkginit.c'
source_filename = "drivers/acpi/acpica/dspkginit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_parse_obj_common = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_object_package = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, i32, i32 }
%struct.acpi_result_values = type { ptr, i8, i8, i16, i16, [8 x ptr] }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_pkg_state = type { ptr, i8, i8, i16, i16, i32, ptr, ptr, ptr, ptr, i32 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_scope_state = type { ptr, i8, i8, i16, i16, ptr }

@_acpi_module_name = internal constant [10 x i8] c"dspkginit\00", align 1, !dbg !0
@.str = private unnamed_addr constant [54 x i8] c"Expressions within package elements are not supported\00", align 1, !dbg !809
@.str.1 = private unnamed_addr constant [6 x i8] c"%-48s\00", align 1, !dbg !814
@.str.2 = private unnamed_addr constant [26 x i8] c"****DS namepath not found\00", align 1, !dbg !819
@.str.3 = private unnamed_addr constant [76 x i8] c"Actual Package length (%u) is larger than NumElements field (%u), truncated\00", align 1, !dbg !824
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !829
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !834
@acpi_gbl_ignore_package_resolution_errors = external dso_local global i8, align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"While resolving a named reference package element - %s\00", align 1, !dbg !839
@.str.7 = private unnamed_addr constant [59 x i8] c"Could not resolve named package element [%4.4s] in [%4.4s]\00", align 1, !dbg !844

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_build_internal_package_obj(ptr noundef %walk_state, ptr noundef %op, i32 noundef %element_count, ptr noundef %obj_desc_ptr) #0 align 16 !dbg !862 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %element_count.addr = alloca i32, align 4
  %obj_desc_ptr.addr = alloca ptr, align 8
  %arg = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %module_level_code = alloca i8, align 1
  %reference_count = alloca i16, align 2
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !866, metadata !DIExpression()), !dbg !878
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !867, metadata !DIExpression()), !dbg !879
  store i32 %element_count, ptr %element_count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %element_count.addr, metadata !868, metadata !DIExpression()), !dbg !880
  store ptr %obj_desc_ptr, ptr %obj_desc_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc_ptr.addr, metadata !869, metadata !DIExpression()), !dbg !881
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #13, !dbg !882
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !870, metadata !DIExpression()), !dbg !883
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #13, !dbg !884
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !871, metadata !DIExpression()), !dbg !885
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #13, !dbg !886
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !872, metadata !DIExpression()), !dbg !887
  store ptr null, ptr %obj_desc, align 8, !dbg !887
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !888
  call void @llvm.dbg.declare(metadata ptr %status, metadata !873, metadata !DIExpression()), !dbg !889
  store i32 0, ptr %status, align 4, !dbg !889
  call void @llvm.lifetime.start.p0(i64 1, ptr %module_level_code) #13, !dbg !890
  call void @llvm.dbg.declare(metadata ptr %module_level_code, metadata !874, metadata !DIExpression()), !dbg !891
  store i8 0, ptr %module_level_code, align 1, !dbg !891
  call void @llvm.lifetime.start.p0(i64 2, ptr %reference_count) #13, !dbg !892
  call void @llvm.dbg.declare(metadata ptr %reference_count, metadata !875, metadata !DIExpression()), !dbg !893
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !894
  call void @llvm.dbg.declare(metadata ptr %index, metadata !876, metadata !DIExpression()), !dbg !895
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !896
  call void @llvm.dbg.declare(metadata ptr %i, metadata !877, metadata !DIExpression()), !dbg !897
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !898
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 20, !dbg !900
  %1 = load i32, ptr %parse_flags, align 4, !dbg !900
  %and = and i32 %1, 1024, !dbg !901
  %tobool = icmp ne i32 %and, 0, !dbg !901
  br i1 %tobool, label %if.then, label %if.end, !dbg !902

if.then:                                          ; preds = %entry
  store i8 1, ptr %module_level_code, align 1, !dbg !903
  br label %if.end, !dbg !905

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %op.addr, align 8, !dbg !906
  %parent1 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %2, i32 0, i32 0, !dbg !907
  %3 = load ptr, ptr %parent1, align 8, !dbg !907
  store ptr %3, ptr %parent, align 8, !dbg !908
  br label %while.cond, !dbg !909

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load ptr, ptr %parent, align 8, !dbg !910
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %4, i32 0, i32 3, !dbg !911
  %5 = load i16, ptr %aml_opcode, align 2, !dbg !911
  %conv = zext i16 %5 to i32, !dbg !910
  %cmp = icmp eq i32 %conv, 18, !dbg !912
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !913

lor.rhs:                                          ; preds = %while.cond
  %6 = load ptr, ptr %parent, align 8, !dbg !914
  %aml_opcode3 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %6, i32 0, i32 3, !dbg !915
  %7 = load i16, ptr %aml_opcode3, align 2, !dbg !915
  %conv4 = zext i16 %7 to i32, !dbg !914
  %cmp5 = icmp eq i32 %conv4, 19, !dbg !916
  br label %lor.end, !dbg !913

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %8 = phi i1 [ true, %while.cond ], [ %cmp5, %lor.rhs ]
  br i1 %8, label %while.body, label %while.end, !dbg !909

while.body:                                       ; preds = %lor.end
  %9 = load ptr, ptr %parent, align 8, !dbg !917
  %parent7 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %9, i32 0, i32 0, !dbg !919
  %10 = load ptr, ptr %parent7, align 8, !dbg !919
  store ptr %10, ptr %parent, align 8, !dbg !920
  br label %while.cond, !dbg !909, !llvm.loop !921

while.end:                                        ; preds = %lor.end
  %11 = load ptr, ptr %obj_desc_ptr.addr, align 8, !dbg !925
  %12 = load ptr, ptr %11, align 8, !dbg !926
  store ptr %12, ptr %obj_desc, align 8, !dbg !927
  %13 = load ptr, ptr %obj_desc, align 8, !dbg !928
  %tobool8 = icmp ne ptr %13, null, !dbg !928
  br i1 %tobool8, label %if.end14, label %if.then9, !dbg !930

if.then9:                                         ; preds = %while.end
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 92, i32 noundef 16, i32 noundef 4) #14, !dbg !931
  store ptr %call, ptr %obj_desc, align 8, !dbg !933
  %14 = load ptr, ptr %obj_desc, align 8, !dbg !934
  %15 = load ptr, ptr %obj_desc_ptr.addr, align 8, !dbg !935
  store ptr %14, ptr %15, align 8, !dbg !936
  %16 = load ptr, ptr %obj_desc, align 8, !dbg !937
  %tobool10 = icmp ne ptr %16, null, !dbg !937
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !939

if.then11:                                        ; preds = %if.then9
  store i32 4, ptr %retval, align 4, !dbg !940
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !940

if.end12:                                         ; preds = %if.then9
  %17 = load ptr, ptr %parent, align 8, !dbg !942
  %node = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %17, i32 0, i32 6, !dbg !943
  %18 = load ptr, ptr %node, align 8, !dbg !943
  %19 = load ptr, ptr %obj_desc, align 8, !dbg !944
  %node13 = getelementptr inbounds %struct.acpi_object_package, ptr %19, i32 0, i32 5, !dbg !945
  store ptr %18, ptr %node13, align 8, !dbg !946
  br label %if.end14, !dbg !947

if.end14:                                         ; preds = %if.end12, %while.end
  %20 = load ptr, ptr %obj_desc, align 8, !dbg !948
  %flags = getelementptr inbounds %struct.acpi_object_package, ptr %20, i32 0, i32 4, !dbg !950
  %21 = load i8, ptr %flags, align 4, !dbg !950
  %conv15 = zext i8 %21 to i32, !dbg !948
  %and16 = and i32 %conv15, 4, !dbg !951
  %tobool17 = icmp ne i32 %and16, 0, !dbg !951
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !952

if.then18:                                        ; preds = %if.end14
  store i32 0, ptr %retval, align 4, !dbg !953
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !953

if.end19:                                         ; preds = %if.end14
  %22 = load ptr, ptr %obj_desc, align 8, !dbg !955
  %elements = getelementptr inbounds %struct.acpi_object_package, ptr %22, i32 0, i32 6, !dbg !957
  %23 = load ptr, ptr %elements, align 8, !dbg !957
  %tobool20 = icmp ne ptr %23, null, !dbg !955
  br i1 %tobool20, label %if.end29, label %if.then21, !dbg !958

if.then21:                                        ; preds = %if.end19
  %24 = load i32, ptr %element_count.addr, align 4, !dbg !959
  %conv22 = zext i32 %24 to i64, !dbg !959
  %add = add i64 %conv22, 1, !dbg !959
  %mul = mul i64 %add, 8, !dbg !959
  %call23 = call ptr @acpi_os_allocate_zeroed(i64 noundef %mul) #14, !dbg !959
  %25 = load ptr, ptr %obj_desc, align 8, !dbg !961
  %elements24 = getelementptr inbounds %struct.acpi_object_package, ptr %25, i32 0, i32 6, !dbg !962
  store ptr %call23, ptr %elements24, align 8, !dbg !963
  %26 = load ptr, ptr %obj_desc, align 8, !dbg !964
  %elements25 = getelementptr inbounds %struct.acpi_object_package, ptr %26, i32 0, i32 6, !dbg !966
  %27 = load ptr, ptr %elements25, align 8, !dbg !966
  %tobool26 = icmp ne ptr %27, null, !dbg !964
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !967

if.then27:                                        ; preds = %if.then21
  %28 = load ptr, ptr %obj_desc, align 8, !dbg !968
  call void @acpi_ut_delete_object_desc(ptr noundef %28) #14, !dbg !970
  store i32 4, ptr %retval, align 4, !dbg !971
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !971

if.end28:                                         ; preds = %if.then21
  %29 = load i32, ptr %element_count.addr, align 4, !dbg !972
  %30 = load ptr, ptr %obj_desc, align 8, !dbg !973
  %count = getelementptr inbounds %struct.acpi_object_package, ptr %30, i32 0, i32 9, !dbg !974
  store i32 %29, ptr %count, align 4, !dbg !975
  br label %if.end29, !dbg !976

if.end29:                                         ; preds = %if.end28, %if.end19
  %31 = load ptr, ptr %op.addr, align 8, !dbg !977
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %31, i32 0, i32 7, !dbg !978
  %32 = load ptr, ptr %value, align 8, !dbg !979
  store ptr %32, ptr %arg, align 8, !dbg !980
  %33 = load ptr, ptr %arg, align 8, !dbg !981
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %33, i32 0, i32 5, !dbg !982
  %34 = load ptr, ptr %next, align 8, !dbg !982
  store ptr %34, ptr %arg, align 8, !dbg !983
  %35 = load i8, ptr %module_level_code, align 1, !dbg !984
  %tobool30 = icmp ne i8 %35, 0, !dbg !984
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !986

if.then31:                                        ; preds = %if.end29
  %36 = load ptr, ptr %walk_state.addr, align 8, !dbg !987
  %aml = getelementptr inbounds %struct.acpi_walk_state, ptr %36, i32 0, i32 16, !dbg !989
  %37 = load ptr, ptr %aml, align 8, !dbg !989
  %38 = load ptr, ptr %obj_desc, align 8, !dbg !990
  %aml_start = getelementptr inbounds %struct.acpi_object_package, ptr %38, i32 0, i32 7, !dbg !991
  store ptr %37, ptr %aml_start, align 8, !dbg !992
  %39 = load ptr, ptr %obj_desc, align 8, !dbg !993
  %aml_length = getelementptr inbounds %struct.acpi_object_package, ptr %39, i32 0, i32 8, !dbg !994
  store i32 0, ptr %aml_length, align 8, !dbg !995
  br label %if.end32, !dbg !996

if.end32:                                         ; preds = %if.then31, %if.end29
  store i32 0, ptr %i, align 4, !dbg !997
  br label %for.cond, !dbg !999

for.cond:                                         ; preds = %for.inc98, %if.end32
  %40 = load ptr, ptr %arg, align 8, !dbg !1000
  %tobool33 = icmp ne ptr %40, null, !dbg !1000
  br i1 %tobool33, label %land.rhs, label %land.end, !dbg !1002

land.rhs:                                         ; preds = %for.cond
  %41 = load i32, ptr %i, align 4, !dbg !1003
  %42 = load i32, ptr %element_count.addr, align 4, !dbg !1004
  %cmp34 = icmp ult i32 %41, %42, !dbg !1005
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %43 = phi i1 [ false, %for.cond ], [ %cmp34, %land.rhs ], !dbg !1006
  br i1 %43, label %for.body, label %for.end100, !dbg !1007

for.body:                                         ; preds = %land.end
  %44 = load ptr, ptr %arg, align 8, !dbg !1008
  %aml_opcode36 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %44, i32 0, i32 3, !dbg !1011
  %45 = load i16, ptr %aml_opcode36, align 2, !dbg !1011
  %conv37 = zext i16 %45 to i32, !dbg !1008
  %cmp38 = icmp eq i32 %conv37, 54, !dbg !1012
  br i1 %cmp38, label %if.then40, label %if.else60, !dbg !1013

if.then40:                                        ; preds = %for.body
  %46 = load ptr, ptr %arg, align 8, !dbg !1014
  %node41 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %46, i32 0, i32 6, !dbg !1017
  %47 = load ptr, ptr %node41, align 8, !dbg !1017
  %tobool42 = icmp ne ptr %47, null, !dbg !1014
  br i1 %tobool42, label %if.end45, label %if.then43, !dbg !1018

if.then43:                                        ; preds = %if.then40
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 171, i32 noundef 15, ptr noundef @.str) #14, !dbg !1019
  %48 = load ptr, ptr %walk_state.addr, align 8, !dbg !1021
  %results = getelementptr inbounds %struct.acpi_walk_state, ptr %48, i32 0, i32 44, !dbg !1022
  %49 = load ptr, ptr %results, align 8, !dbg !1022
  %obj_desc44 = getelementptr inbounds %struct.acpi_result_values, ptr %49, i32 0, i32 5, !dbg !1023
  %arrayidx = getelementptr [8 x ptr], ptr %obj_desc44, i64 0, i64 0, !dbg !1021
  %50 = load ptr, ptr %arrayidx, align 8, !dbg !1021
  call void @acpi_ut_remove_reference(ptr noundef %50) #14, !dbg !1024
  store i32 15, ptr %retval, align 4, !dbg !1025
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1025

if.end45:                                         ; preds = %if.then40
  %51 = load ptr, ptr %arg, align 8, !dbg !1026
  %node46 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %51, i32 0, i32 6, !dbg !1028
  %52 = load ptr, ptr %node46, align 8, !dbg !1028
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %52, i32 0, i32 2, !dbg !1029
  %53 = load i8, ptr %type, align 1, !dbg !1029
  %conv47 = zext i8 %53 to i32, !dbg !1026
  %cmp48 = icmp eq i32 %conv47, 8, !dbg !1030
  br i1 %cmp48, label %if.then50, label %if.else, !dbg !1031

if.then50:                                        ; preds = %if.end45
  %54 = load ptr, ptr %arg, align 8, !dbg !1032
  %aml_opcode51 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %54, i32 0, i32 3, !dbg !1034
  store i16 45, ptr %aml_opcode51, align 2, !dbg !1035
  %55 = load ptr, ptr %walk_state.addr, align 8, !dbg !1036
  %56 = load ptr, ptr %arg, align 8, !dbg !1037
  %57 = load ptr, ptr %obj_desc, align 8, !dbg !1038
  %elements52 = getelementptr inbounds %struct.acpi_object_package, ptr %57, i32 0, i32 6, !dbg !1039
  %58 = load ptr, ptr %elements52, align 8, !dbg !1039
  %59 = load i32, ptr %i, align 4, !dbg !1040
  %idxprom = zext i32 %59 to i64, !dbg !1038
  %arrayidx53 = getelementptr ptr, ptr %58, i64 %idxprom, !dbg !1038
  %call54 = call i32 @acpi_ds_build_internal_object(ptr noundef %55, ptr noundef %56, ptr noundef %arrayidx53) #14, !dbg !1041
  store i32 %call54, ptr %status, align 4, !dbg !1042
  br label %if.end59, !dbg !1043

if.else:                                          ; preds = %if.end45
  %60 = load ptr, ptr %arg, align 8, !dbg !1044
  %node55 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %60, i32 0, i32 6, !dbg !1044
  %61 = load ptr, ptr %node55, align 8, !dbg !1044
  %62 = ptrtoint ptr %61 to i64, !dbg !1044
  %63 = inttoptr i64 %62 to ptr, !dbg !1044
  %64 = load ptr, ptr %obj_desc, align 8, !dbg !1046
  %elements56 = getelementptr inbounds %struct.acpi_object_package, ptr %64, i32 0, i32 6, !dbg !1047
  %65 = load ptr, ptr %elements56, align 8, !dbg !1047
  %66 = load i32, ptr %i, align 4, !dbg !1048
  %idxprom57 = zext i32 %66 to i64, !dbg !1046
  %arrayidx58 = getelementptr ptr, ptr %65, i64 %idxprom57, !dbg !1046
  store ptr %63, ptr %arrayidx58, align 8, !dbg !1049
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then50
  br label %if.end79, !dbg !1050

if.else60:                                        ; preds = %for.body
  %67 = load ptr, ptr %walk_state.addr, align 8, !dbg !1051
  %68 = load ptr, ptr %arg, align 8, !dbg !1053
  %69 = load ptr, ptr %obj_desc, align 8, !dbg !1054
  %elements61 = getelementptr inbounds %struct.acpi_object_package, ptr %69, i32 0, i32 6, !dbg !1055
  %70 = load ptr, ptr %elements61, align 8, !dbg !1055
  %71 = load i32, ptr %i, align 4, !dbg !1056
  %idxprom62 = zext i32 %71 to i64, !dbg !1054
  %arrayidx63 = getelementptr ptr, ptr %70, i64 %idxprom62, !dbg !1054
  %call64 = call i32 @acpi_ds_build_internal_object(ptr noundef %67, ptr noundef %68, ptr noundef %arrayidx63) #14, !dbg !1057
  store i32 %call64, ptr %status, align 4, !dbg !1058
  %72 = load i32, ptr %status, align 4, !dbg !1059
  %cmp65 = icmp eq i32 %72, 5, !dbg !1061
  br i1 %cmp65, label %if.then67, label %if.end68, !dbg !1062

if.then67:                                        ; preds = %if.else60
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 206, ptr noundef @.str.1, ptr noundef @.str.2) #14, !dbg !1063
  br label %if.end68, !dbg !1065

if.end68:                                         ; preds = %if.then67, %if.else60
  %73 = load i8, ptr %module_level_code, align 1, !dbg !1066
  %tobool69 = icmp ne i8 %73, 0, !dbg !1066
  br i1 %tobool69, label %if.end78, label %if.then70, !dbg !1068

if.then70:                                        ; preds = %if.end68
  %74 = load ptr, ptr %obj_desc, align 8, !dbg !1069
  %elements71 = getelementptr inbounds %struct.acpi_object_package, ptr %74, i32 0, i32 6, !dbg !1071
  %75 = load ptr, ptr %elements71, align 8, !dbg !1071
  %76 = load i32, ptr %i, align 4, !dbg !1072
  %idxprom72 = zext i32 %76 to i64, !dbg !1069
  %arrayidx73 = getelementptr ptr, ptr %75, i64 %idxprom72, !dbg !1069
  %77 = load ptr, ptr %arrayidx73, align 8, !dbg !1069
  %78 = load ptr, ptr %obj_desc, align 8, !dbg !1073
  %elements74 = getelementptr inbounds %struct.acpi_object_package, ptr %78, i32 0, i32 6, !dbg !1074
  %79 = load ptr, ptr %elements74, align 8, !dbg !1074
  %80 = load i32, ptr %i, align 4, !dbg !1075
  %idxprom75 = zext i32 %80 to i64, !dbg !1073
  %arrayidx76 = getelementptr ptr, ptr %79, i64 %idxprom75, !dbg !1073
  %call77 = call i32 @acpi_ds_init_package_element(i8 noundef zeroext 0, ptr noundef %77, ptr noundef null, ptr noundef %arrayidx76) #14, !dbg !1076
  br label %if.end78, !dbg !1077

if.end78:                                         ; preds = %if.then70, %if.end68
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end59
  %81 = load ptr, ptr %obj_desc_ptr.addr, align 8, !dbg !1078
  %82 = load ptr, ptr %81, align 8, !dbg !1080
  %tobool80 = icmp ne ptr %82, null, !dbg !1080
  br i1 %tobool80, label %if.then81, label %if.end96, !dbg !1081

if.then81:                                        ; preds = %if.end79
  %83 = load ptr, ptr %obj_desc_ptr.addr, align 8, !dbg !1082
  %84 = load ptr, ptr %83, align 8, !dbg !1084
  %reference_count82 = getelementptr inbounds %struct.acpi_object_common, ptr %84, i32 0, i32 3, !dbg !1085
  %85 = load i16, ptr %reference_count82, align 2, !dbg !1085
  store i16 %85, ptr %reference_count, align 2, !dbg !1086
  %86 = load i16, ptr %reference_count, align 2, !dbg !1087
  %conv83 = zext i16 %86 to i32, !dbg !1087
  %cmp84 = icmp sgt i32 %conv83, 1, !dbg !1089
  br i1 %cmp84, label %if.then86, label %if.end95, !dbg !1090

if.then86:                                        ; preds = %if.then81
  store i32 0, ptr %index, align 4, !dbg !1091
  br label %for.cond87, !dbg !1094

for.cond87:                                       ; preds = %for.inc, %if.then86
  %87 = load i32, ptr %index, align 4, !dbg !1095
  %88 = load i16, ptr %reference_count, align 2, !dbg !1097
  %conv88 = zext i16 %88 to i32, !dbg !1098
  %sub = sub i32 %conv88, 1, !dbg !1099
  %cmp89 = icmp ult i32 %87, %sub, !dbg !1100
  br i1 %cmp89, label %for.body91, label %for.end, !dbg !1101

for.body91:                                       ; preds = %for.cond87
  %89 = load ptr, ptr %obj_desc, align 8, !dbg !1102
  %elements92 = getelementptr inbounds %struct.acpi_object_package, ptr %89, i32 0, i32 6, !dbg !1104
  %90 = load ptr, ptr %elements92, align 8, !dbg !1104
  %91 = load i32, ptr %i, align 4, !dbg !1105
  %idxprom93 = zext i32 %91 to i64, !dbg !1102
  %arrayidx94 = getelementptr ptr, ptr %90, i64 %idxprom93, !dbg !1102
  %92 = load ptr, ptr %arrayidx94, align 8, !dbg !1102
  call void @acpi_ut_add_reference(ptr noundef %92) #14, !dbg !1106
  br label %for.inc, !dbg !1107

for.inc:                                          ; preds = %for.body91
  %93 = load i32, ptr %index, align 4, !dbg !1108
  %inc = add i32 %93, 1, !dbg !1108
  store i32 %inc, ptr %index, align 4, !dbg !1108
  br label %for.cond87, !dbg !1109, !llvm.loop !1110

for.end:                                          ; preds = %for.cond87
  br label %if.end95, !dbg !1112

if.end95:                                         ; preds = %for.end, %if.then81
  br label %if.end96, !dbg !1113

if.end96:                                         ; preds = %if.end95, %if.end79
  %94 = load ptr, ptr %arg, align 8, !dbg !1114
  %next97 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %94, i32 0, i32 5, !dbg !1115
  %95 = load ptr, ptr %next97, align 8, !dbg !1115
  store ptr %95, ptr %arg, align 8, !dbg !1116
  br label %for.inc98, !dbg !1117

for.inc98:                                        ; preds = %if.end96
  %96 = load i32, ptr %i, align 4, !dbg !1118
  %inc99 = add i32 %96, 1, !dbg !1118
  store i32 %inc99, ptr %i, align 4, !dbg !1118
  br label %for.cond, !dbg !1119, !llvm.loop !1120

for.end100:                                       ; preds = %land.end
  %97 = load ptr, ptr %arg, align 8, !dbg !1122
  %tobool101 = icmp ne ptr %97, null, !dbg !1122
  br i1 %tobool101, label %if.then102, label %if.else115, !dbg !1124

if.then102:                                       ; preds = %for.end100
  br label %while.cond103, !dbg !1125

while.cond103:                                    ; preds = %if.end111, %if.then102
  %98 = load ptr, ptr %arg, align 8, !dbg !1127
  %tobool104 = icmp ne ptr %98, null, !dbg !1125
  br i1 %tobool104, label %while.body105, label %while.end114, !dbg !1125

while.body105:                                    ; preds = %while.cond103
  %99 = load ptr, ptr %arg, align 8, !dbg !1128
  %node106 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %99, i32 0, i32 6, !dbg !1131
  %100 = load ptr, ptr %node106, align 8, !dbg !1131
  %tobool107 = icmp ne ptr %100, null, !dbg !1128
  br i1 %tobool107, label %if.then108, label %if.end111, !dbg !1132

if.then108:                                       ; preds = %while.body105
  %101 = load ptr, ptr %arg, align 8, !dbg !1133
  %node109 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %101, i32 0, i32 6, !dbg !1133
  %102 = load ptr, ptr %node109, align 8, !dbg !1133
  %103 = ptrtoint ptr %102 to i64, !dbg !1133
  %104 = inttoptr i64 %103 to ptr, !dbg !1133
  call void @acpi_ut_remove_reference(ptr noundef %104) #14, !dbg !1135
  %105 = load ptr, ptr %arg, align 8, !dbg !1136
  %node110 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %105, i32 0, i32 6, !dbg !1137
  store ptr null, ptr %node110, align 8, !dbg !1138
  br label %if.end111, !dbg !1139

if.end111:                                        ; preds = %if.then108, %while.body105
  %106 = load i32, ptr %i, align 4, !dbg !1140
  %inc112 = add i32 %106, 1, !dbg !1140
  store i32 %inc112, ptr %i, align 4, !dbg !1140
  %107 = load ptr, ptr %arg, align 8, !dbg !1141
  %next113 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %107, i32 0, i32 5, !dbg !1142
  %108 = load ptr, ptr %next113, align 8, !dbg !1142
  store ptr %108, ptr %arg, align 8, !dbg !1143
  br label %while.cond103, !dbg !1125, !llvm.loop !1144

while.end114:                                     ; preds = %while.cond103
  %109 = load i32, ptr %i, align 4, !dbg !1146
  %110 = load i32, ptr %element_count.addr, align 4, !dbg !1146
  call void (ptr, ...) @acpi_info(ptr noundef @.str.3, i32 noundef %109, i32 noundef %110) #14, !dbg !1146
  br label %if.end120, !dbg !1147

if.else115:                                       ; preds = %for.end100
  %111 = load i32, ptr %i, align 4, !dbg !1148
  %112 = load i32, ptr %element_count.addr, align 4, !dbg !1150
  %cmp116 = icmp ult i32 %111, %112, !dbg !1151
  br i1 %cmp116, label %if.then118, label %if.end119, !dbg !1152

if.then118:                                       ; preds = %if.else115
  br label %if.end119, !dbg !1153

if.end119:                                        ; preds = %if.then118, %if.else115
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %while.end114
  %113 = load i8, ptr %module_level_code, align 1, !dbg !1155
  %tobool121 = icmp ne i8 %113, 0, !dbg !1155
  br i1 %tobool121, label %if.end126, label %if.then122, !dbg !1157

if.then122:                                       ; preds = %if.end120
  %114 = load ptr, ptr %obj_desc, align 8, !dbg !1158
  %flags123 = getelementptr inbounds %struct.acpi_object_package, ptr %114, i32 0, i32 4, !dbg !1160
  %115 = load i8, ptr %flags123, align 4, !dbg !1161
  %conv124 = zext i8 %115 to i32, !dbg !1161
  %or = or i32 %conv124, 4, !dbg !1161
  %conv125 = trunc i32 %or to i8, !dbg !1161
  store i8 %conv125, ptr %flags123, align 4, !dbg !1161
  br label %if.end126, !dbg !1162

if.end126:                                        ; preds = %if.then122, %if.end120
  %116 = load ptr, ptr %obj_desc, align 8, !dbg !1163
  %117 = ptrtoint ptr %116 to i64, !dbg !1163
  %118 = inttoptr i64 %117 to ptr, !dbg !1163
  %119 = load ptr, ptr %op.addr, align 8, !dbg !1164
  %node127 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %119, i32 0, i32 6, !dbg !1165
  store ptr %118, ptr %node127, align 8, !dbg !1166
  %120 = load i32, ptr %status, align 4, !dbg !1167
  store i32 %120, ptr %retval, align 4, !dbg !1167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1167

cleanup:                                          ; preds = %if.end126, %if.then43, %if.then27, %if.then18, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1168
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !1168
  call void @llvm.lifetime.end.p0(i64 2, ptr %reference_count) #13, !dbg !1168
  call void @llvm.lifetime.end.p0(i64 1, ptr %module_level_code) #13, !dbg !1168
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1168
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #13, !dbg !1168
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #13, !dbg !1168
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #13, !dbg !1168
  %121 = load i32, ptr %retval, align 4, !dbg !1168
  ret i32 %121, !dbg !1168
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1169 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #4 align 16 !dbg !1175 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1180, metadata !DIExpression()), !dbg !1191
  %0 = load i64, ptr %size.addr, align 8, !dbg !1192
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !1193
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1181, metadata !DIExpression()), !dbg !1193
  br label %do.body, !dbg !1193

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !1194
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1183, metadata !DIExpression()), !dbg !1194
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !1194
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1186, metadata !DIExpression()), !dbg !1194
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1194
  %conv = zext i1 %cmp to i32, !dbg !1194
  store i32 1, ptr %tmp, align 4, !dbg !1194
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !1195
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !1195
  %1 = load i32, ptr %tmp, align 4, !dbg !1194
  %call = call i64 @arch_local_save_flags() #14, !dbg !1195
  store i64 %call, ptr %_flags, align 8, !dbg !1195
  br label %do.cond, !dbg !1195

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1195

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !1196
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1187, metadata !DIExpression()), !dbg !1196
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !1196
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1190, metadata !DIExpression()), !dbg !1196
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1196
  %conv6 = zext i1 %cmp5 to i32, !dbg !1196
  store i32 1, ptr %tmp7, align 4, !dbg !1196
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !1197
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !1197
  %2 = load i32, ptr %tmp7, align 4, !dbg !1196
  %3 = load i64, ptr %_flags, align 8, !dbg !1197
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !1197
  store i32 %call9, ptr %tmp8, align 4, !dbg !1197
  %4 = load i32, ptr %tmp8, align 4, !dbg !1197
  store i32 %4, ptr %tmp1, align 4, !dbg !1195
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !1198
  %5 = load i32, ptr %tmp1, align 4, !dbg !1193
  %tobool = icmp ne i32 %5, 0, !dbg !1198
  %6 = zext i1 %tobool to i64, !dbg !1198
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1198
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !1199
  ret ptr %call10, !dbg !1200
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1201 dso_local void @acpi_ut_delete_object_desc(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1204 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1208 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1209 dso_local i32 @acpi_ds_build_internal_object(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1213 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_init_package_element(i8 noundef zeroext %object_type, ptr noundef %source_object, ptr noundef %state, ptr noundef %context) #0 align 16 !dbg !1216 {
entry:
  %retval = alloca i32, align 4
  %object_type.addr = alloca i8, align 1
  %source_object.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %element_ptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %object_type, ptr %object_type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %object_type.addr, metadata !1220, metadata !DIExpression()), !dbg !1225
  store ptr %source_object, ptr %source_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_object.addr, metadata !1221, metadata !DIExpression()), !dbg !1226
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !1222, metadata !DIExpression()), !dbg !1227
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1223, metadata !DIExpression()), !dbg !1228
  call void @llvm.lifetime.start.p0(i64 8, ptr %element_ptr) #13, !dbg !1229
  call void @llvm.dbg.declare(metadata ptr %element_ptr, metadata !1224, metadata !DIExpression()), !dbg !1230
  %0 = load ptr, ptr %source_object.addr, align 8, !dbg !1231
  %tobool = icmp ne ptr %0, null, !dbg !1231
  br i1 %tobool, label %if.end, label %if.then, !dbg !1233

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1234

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %context.addr, align 8, !dbg !1236
  %tobool1 = icmp ne ptr %1, null, !dbg !1236
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !1238

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %context.addr, align 8, !dbg !1239
  store ptr %2, ptr %element_ptr, align 8, !dbg !1241
  br label %if.end3, !dbg !1242

if.else:                                          ; preds = %if.end
  %3 = load ptr, ptr %state.addr, align 8, !dbg !1243
  %this_target_obj = getelementptr inbounds %struct.acpi_pkg_state, ptr %3, i32 0, i32 9, !dbg !1245
  %4 = load ptr, ptr %this_target_obj, align 8, !dbg !1245
  store ptr %4, ptr %element_ptr, align 8, !dbg !1246
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %5 = load ptr, ptr %source_object.addr, align 8, !dbg !1247
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %5, i32 0, i32 2, !dbg !1249
  %6 = load i8, ptr %type, align 1, !dbg !1249
  %conv = zext i8 %6 to i32, !dbg !1247
  %cmp = icmp eq i32 %conv, 20, !dbg !1250
  br i1 %cmp, label %if.then5, label %if.else6, !dbg !1251

if.then5:                                         ; preds = %if.end3
  %7 = load ptr, ptr %element_ptr, align 8, !dbg !1252
  call void @acpi_ds_resolve_package_element(ptr noundef %7) #14, !dbg !1254
  br label %if.end15, !dbg !1255

if.else6:                                         ; preds = %if.end3
  %8 = load ptr, ptr %source_object.addr, align 8, !dbg !1256
  %type7 = getelementptr inbounds %struct.acpi_object_common, ptr %8, i32 0, i32 2, !dbg !1258
  %9 = load i8, ptr %type7, align 1, !dbg !1258
  %conv8 = zext i8 %9 to i32, !dbg !1256
  %cmp9 = icmp eq i32 %conv8, 4, !dbg !1259
  br i1 %cmp9, label %if.then11, label %if.end14, !dbg !1260

if.then11:                                        ; preds = %if.else6
  %10 = load ptr, ptr %source_object.addr, align 8, !dbg !1261
  %flags = getelementptr inbounds %struct.acpi_object_package, ptr %10, i32 0, i32 4, !dbg !1263
  %11 = load i8, ptr %flags, align 4, !dbg !1264
  %conv12 = zext i8 %11 to i32, !dbg !1264
  %or = or i32 %conv12, 4, !dbg !1264
  %conv13 = trunc i32 %or to i8, !dbg !1264
  store i8 %conv13, ptr %flags, align 4, !dbg !1264
  br label %if.end14, !dbg !1265

if.end14:                                         ; preds = %if.then11, %if.else6
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then5
  store i32 0, ptr %retval, align 4, !dbg !1266
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1266

cleanup:                                          ; preds = %if.end15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %element_ptr) #13, !dbg !1267
  %12 = load i32, ptr %retval, align 4, !dbg !1267
  ret i32 %12, !dbg !1267
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1268 dso_local void @acpi_ut_add_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1269 dso_local void @acpi_info(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_ds_resolve_package_element(ptr noundef %element_ptr) #0 align 16 !dbg !1272 {
entry:
  %element_ptr.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %status2 = alloca i32, align 4
  %scope_info = alloca %union.acpi_generic_state, align 8
  %element = alloca ptr, align 8
  %resolved_node = alloca ptr, align 8
  %original_node = alloca ptr, align 8
  %external_path = alloca ptr, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %element_ptr, ptr %element_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %element_ptr.addr, metadata !1276, metadata !DIExpression()), !dbg !1285
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1286
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1277, metadata !DIExpression()), !dbg !1287
  call void @llvm.lifetime.start.p0(i64 4, ptr %status2) #13, !dbg !1288
  call void @llvm.dbg.declare(metadata ptr %status2, metadata !1278, metadata !DIExpression()), !dbg !1289
  call void @llvm.lifetime.start.p0(i64 80, ptr %scope_info) #13, !dbg !1290
  call void @llvm.dbg.declare(metadata ptr %scope_info, metadata !1279, metadata !DIExpression()), !dbg !1291
  call void @llvm.lifetime.start.p0(i64 8, ptr %element) #13, !dbg !1292
  call void @llvm.dbg.declare(metadata ptr %element, metadata !1280, metadata !DIExpression()), !dbg !1293
  %0 = load ptr, ptr %element_ptr.addr, align 8, !dbg !1294
  %1 = load ptr, ptr %0, align 8, !dbg !1295
  store ptr %1, ptr %element, align 8, !dbg !1293
  call void @llvm.lifetime.start.p0(i64 8, ptr %resolved_node) #13, !dbg !1296
  call void @llvm.dbg.declare(metadata ptr %resolved_node, metadata !1281, metadata !DIExpression()), !dbg !1297
  call void @llvm.lifetime.start.p0(i64 8, ptr %original_node) #13, !dbg !1298
  call void @llvm.dbg.declare(metadata ptr %original_node, metadata !1282, metadata !DIExpression()), !dbg !1299
  call void @llvm.lifetime.start.p0(i64 8, ptr %external_path) #13, !dbg !1300
  call void @llvm.dbg.declare(metadata ptr %external_path, metadata !1283, metadata !DIExpression()), !dbg !1301
  store ptr @.str.5, ptr %external_path, align 8, !dbg !1301
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #13, !dbg !1302
  call void @llvm.dbg.declare(metadata ptr %type, metadata !1284, metadata !DIExpression()), !dbg !1303
  %2 = load ptr, ptr %element, align 8, !dbg !1304
  %resolved = getelementptr inbounds %struct.acpi_object_reference, ptr %2, i32 0, i32 7, !dbg !1306
  %3 = load i8, ptr %resolved, align 1, !dbg !1306
  %tobool = icmp ne i8 %3, 0, !dbg !1304
  br i1 %tobool, label %if.then, label %if.end, !dbg !1307

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1308

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %element, align 8, !dbg !1310
  %node = getelementptr inbounds %struct.acpi_object_reference, ptr %4, i32 0, i32 9, !dbg !1311
  %5 = load ptr, ptr %node, align 8, !dbg !1311
  %node1 = getelementptr inbounds %struct.acpi_scope_state, ptr %scope_info, i32 0, i32 5, !dbg !1312
  store ptr %5, ptr %node1, align 8, !dbg !1313
  %6 = load ptr, ptr %element, align 8, !dbg !1314
  %aml = getelementptr inbounds %struct.acpi_object_reference, ptr %6, i32 0, i32 12, !dbg !1315
  %7 = load ptr, ptr %aml, align 8, !dbg !1315
  %call = call i32 @acpi_ns_lookup(ptr noundef %scope_info, ptr noundef %7, i32 noundef 0, i32 noundef 3, i32 noundef 3, ptr noundef null, ptr noundef %resolved_node) #14, !dbg !1316
  store i32 %call, ptr %status, align 4, !dbg !1317
  %8 = load i32, ptr %status, align 4, !dbg !1318
  %tobool2 = icmp ne i32 %8, 0, !dbg !1318
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !1320

if.then3:                                         ; preds = %if.end
  %9 = load i32, ptr %status, align 4, !dbg !1321
  %cmp = icmp eq i32 %9, 5, !dbg !1324
  br i1 %cmp, label %land.lhs.true, label %if.end6, !dbg !1325

land.lhs.true:                                    ; preds = %if.then3
  %10 = load i8, ptr @acpi_gbl_ignore_package_resolution_errors, align 1, !dbg !1326
  %conv = zext i8 %10 to i32, !dbg !1326
  %tobool4 = icmp ne i32 %conv, 0, !dbg !1326
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1327

if.then5:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %element_ptr.addr, align 8, !dbg !1328
  %12 = load ptr, ptr %11, align 8, !dbg !1330
  call void @acpi_ut_remove_reference(ptr noundef %12) #14, !dbg !1331
  %13 = load ptr, ptr %element_ptr.addr, align 8, !dbg !1332
  store ptr null, ptr %13, align 8, !dbg !1333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1334

if.end6:                                          ; preds = %land.lhs.true, %if.then3
  %14 = load ptr, ptr %element, align 8, !dbg !1335
  %aml7 = getelementptr inbounds %struct.acpi_object_reference, ptr %14, i32 0, i32 12, !dbg !1336
  %15 = load ptr, ptr %aml7, align 8, !dbg !1336
  %call8 = call i32 @acpi_ns_externalize_name(i32 noundef -1, ptr noundef %15, ptr noundef null, ptr noundef %external_path) #14, !dbg !1337
  store i32 %call8, ptr %status2, align 4, !dbg !1338
  %16 = load i32, ptr %status, align 4, !dbg !1339
  %17 = load ptr, ptr %external_path, align 8, !dbg !1339
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 438, i32 noundef %16, ptr noundef @.str.6, ptr noundef %17) #14, !dbg !1339
  %18 = load i32, ptr %status2, align 4, !dbg !1340
  %tobool9 = icmp ne i32 %18, 0, !dbg !1340
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !1342

if.then10:                                        ; preds = %if.end6
  %19 = load ptr, ptr %external_path, align 8, !dbg !1343
  call void @acpi_os_free(ptr noundef %19) #14, !dbg !1343
  br label %if.end11, !dbg !1345

if.end11:                                         ; preds = %if.then10, %if.end6
  %20 = load ptr, ptr %element_ptr.addr, align 8, !dbg !1346
  %21 = load ptr, ptr %20, align 8, !dbg !1347
  call void @acpi_ut_remove_reference(ptr noundef %21) #14, !dbg !1348
  %22 = load ptr, ptr %element_ptr.addr, align 8, !dbg !1349
  store ptr null, ptr %22, align 8, !dbg !1350
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1351

if.else:                                          ; preds = %if.end
  %23 = load ptr, ptr %resolved_node, align 8, !dbg !1352
  %type12 = getelementptr inbounds %struct.acpi_namespace_node, ptr %23, i32 0, i32 2, !dbg !1354
  %24 = load i8, ptr %type12, align 1, !dbg !1354
  %conv13 = zext i8 %24 to i32, !dbg !1352
  %cmp14 = icmp eq i32 %conv13, 0, !dbg !1355
  br i1 %cmp14, label %if.then16, label %if.end20, !dbg !1356

if.then16:                                        ; preds = %if.else
  %25 = load ptr, ptr %resolved_node, align 8, !dbg !1357
  %name = getelementptr inbounds %struct.acpi_namespace_node, ptr %25, i32 0, i32 4, !dbg !1357
  %arraydecay = getelementptr inbounds [4 x i8], ptr %name, i64 0, i64 0, !dbg !1357
  %node17 = getelementptr inbounds %struct.acpi_scope_state, ptr %scope_info, i32 0, i32 5, !dbg !1357
  %26 = load ptr, ptr %node17, align 8, !dbg !1357
  %name18 = getelementptr inbounds %struct.acpi_namespace_node, ptr %26, i32 0, i32 4, !dbg !1357
  %arraydecay19 = getelementptr inbounds [4 x i8], ptr %name18, i64 0, i64 0, !dbg !1357
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 454, ptr noundef @.str.7, ptr noundef %arraydecay, ptr noundef %arraydecay19) #14, !dbg !1357
  %27 = load ptr, ptr %element_ptr.addr, align 8, !dbg !1359
  store ptr null, ptr %27, align 8, !dbg !1360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1361

if.end20:                                         ; preds = %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end20
  %28 = load ptr, ptr %resolved_node, align 8, !dbg !1362
  %type22 = getelementptr inbounds %struct.acpi_namespace_node, ptr %28, i32 0, i32 2, !dbg !1364
  %29 = load i8, ptr %type22, align 1, !dbg !1364
  %conv23 = zext i8 %29 to i32, !dbg !1362
  %cmp24 = icmp eq i32 %conv23, 21, !dbg !1365
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !1366

if.then26:                                        ; preds = %if.end21
  %30 = load ptr, ptr %resolved_node, align 8, !dbg !1367
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %30, i32 0, i32 0, !dbg !1367
  %31 = load ptr, ptr %object, align 8, !dbg !1367
  %32 = ptrtoint ptr %31 to i64, !dbg !1367
  %33 = inttoptr i64 %32 to ptr, !dbg !1367
  store ptr %33, ptr %resolved_node, align 8, !dbg !1369
  br label %if.end27, !dbg !1370

if.end27:                                         ; preds = %if.then26, %if.end21
  %34 = load ptr, ptr %element, align 8, !dbg !1371
  %resolved28 = getelementptr inbounds %struct.acpi_object_reference, ptr %34, i32 0, i32 7, !dbg !1372
  store i8 1, ptr %resolved28, align 1, !dbg !1373
  %35 = load ptr, ptr %resolved_node, align 8, !dbg !1374
  %36 = load ptr, ptr %element, align 8, !dbg !1375
  %node29 = getelementptr inbounds %struct.acpi_object_reference, ptr %36, i32 0, i32 9, !dbg !1376
  store ptr %35, ptr %node29, align 8, !dbg !1377
  %37 = load ptr, ptr %element, align 8, !dbg !1378
  %node30 = getelementptr inbounds %struct.acpi_object_reference, ptr %37, i32 0, i32 9, !dbg !1379
  %38 = load ptr, ptr %node30, align 8, !dbg !1379
  %type31 = getelementptr inbounds %struct.acpi_namespace_node, ptr %38, i32 0, i32 2, !dbg !1380
  %39 = load i8, ptr %type31, align 1, !dbg !1380
  %conv32 = zext i8 %39 to i32, !dbg !1378
  store i32 %conv32, ptr %type, align 4, !dbg !1381
  %40 = load ptr, ptr %resolved_node, align 8, !dbg !1382
  store ptr %40, ptr %original_node, align 8, !dbg !1383
  %call33 = call i32 @acpi_ex_resolve_node_to_value(ptr noundef %resolved_node, ptr noundef null) #14, !dbg !1384
  store i32 %call33, ptr %status, align 4, !dbg !1385
  %41 = load i32, ptr %status, align 4, !dbg !1386
  %tobool34 = icmp ne i32 %41, 0, !dbg !1386
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !1388

if.then35:                                        ; preds = %if.end27
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1389

if.end36:                                         ; preds = %if.end27
  %42 = load i32, ptr %type, align 4, !dbg !1391
  switch i32 %42, label %sw.default [
    i32 6, label %sw.bb
    i32 13, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb37
    i32 11, label %sw.bb37
    i32 12, label %sw.bb37
    i32 7, label %sw.bb37
    i32 10, label %sw.bb37
  ], !dbg !1392

sw.bb:                                            ; preds = %if.end36, %if.end36, %if.end36
  br label %sw.epilog, !dbg !1393

sw.bb37:                                          ; preds = %if.end36, %if.end36, %if.end36, %if.end36, %if.end36
  %43 = load ptr, ptr %original_node, align 8, !dbg !1395
  %object38 = getelementptr inbounds %struct.acpi_namespace_node, ptr %43, i32 0, i32 0, !dbg !1396
  %44 = load ptr, ptr %object38, align 8, !dbg !1396
  call void @acpi_ut_remove_reference(ptr noundef %44) #14, !dbg !1397
  br label %sw.epilog, !dbg !1398

sw.default:                                       ; preds = %if.end36
  %45 = load ptr, ptr %element, align 8, !dbg !1399
  call void @acpi_ut_remove_reference(ptr noundef %45) #14, !dbg !1400
  %46 = load ptr, ptr %resolved_node, align 8, !dbg !1401
  %47 = load ptr, ptr %element_ptr.addr, align 8, !dbg !1402
  store ptr %46, ptr %47, align 8, !dbg !1403
  br label %sw.epilog, !dbg !1404

sw.epilog:                                        ; preds = %sw.default, %sw.bb37, %sw.bb
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1405

cleanup:                                          ; preds = %sw.epilog, %if.then35, %if.then16, %if.end11, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #13, !dbg !1406
  call void @llvm.lifetime.end.p0(i64 8, ptr %external_path) #13, !dbg !1406
  call void @llvm.lifetime.end.p0(i64 8, ptr %original_node) #13, !dbg !1406
  call void @llvm.lifetime.end.p0(i64 8, ptr %resolved_node) #13, !dbg !1406
  call void @llvm.lifetime.end.p0(i64 8, ptr %element) #13, !dbg !1406
  call void @llvm.lifetime.end.p0(i64 80, ptr %scope_info) #13, !dbg !1406
  call void @llvm.lifetime.end.p0(i64 4, ptr %status2) #13, !dbg !1406
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1406
  ret void, !dbg !1406
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1407 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1415, metadata !DIExpression()), !dbg !1417
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1416, metadata !DIExpression()), !dbg !1418
  %0 = load i64, ptr %size.addr, align 8, !dbg !1419
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1420
  %or = or i32 %1, 256, !dbg !1421
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !1422
  ret ptr %call, !dbg !1423
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !1424 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !1428
  ret i64 %call, !dbg !1429
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !1430 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1435, metadata !DIExpression()), !dbg !1436
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1437
  %and = and i64 %0, 512, !dbg !1438
  %tobool = icmp ne i64 %and, 0, !dbg !1439
  %lnot = xor i1 %tobool, true, !dbg !1439
  %lnot.ext = zext i1 %lnot to i32, !dbg !1439
  ret i32 %lnot.ext, !dbg !1440
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1441 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1443, metadata !DIExpression()), !dbg !1448
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1444, metadata !DIExpression()), !dbg !1449
  %0 = load i64, ptr %size.addr, align 8, !dbg !1450
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1451
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1452

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1453
  %tobool = icmp ne i64 %2, 0, !dbg !1453
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1454

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !1455
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1445, metadata !DIExpression()), !dbg !1456
  %3 = load i64, ptr %size.addr, align 8, !dbg !1457
  %cmp = icmp ugt i64 %3, 8192, !dbg !1459
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1460

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1461
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1462
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !1463
  store ptr %call, ptr %retval, align 8, !dbg !1464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1464

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1465
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !1465
  store i32 %call2, ptr %index, align 4, !dbg !1466
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1467
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1468
  %9 = ptrtoint ptr %8 to i64, !dbg !1468
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !1469
  %idxprom = zext i32 %call3 to i64, !dbg !1470
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1470
  %10 = load i32, ptr %index, align 4, !dbg !1471
  %idxprom4 = zext i32 %10 to i64, !dbg !1470
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1470
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1470
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1472
  %13 = load i64, ptr %size.addr, align 8, !dbg !1473
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !1474
  store ptr %call6, ptr %retval, align 8, !dbg !1475
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1475

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !1476
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1477
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1478
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !1479
  store ptr %call8, ptr %retval, align 8, !dbg !1480
  br label %return, !dbg !1480

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1481
  ret ptr %16, !dbg !1481
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1482 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !1483 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1489, metadata !DIExpression()), !dbg !1491
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1490, metadata !DIExpression()), !dbg !1492
  %0 = load i64, ptr %size.addr, align 8, !dbg !1493
  %tobool = icmp ne i64 %0, 0, !dbg !1493
  br i1 %tobool, label %if.end, label %if.then, !dbg !1495

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1496
  br label %return, !dbg !1496

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1497
  %cmp = icmp ule i64 %1, 8, !dbg !1499
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1500

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1501
  br label %return, !dbg !1501

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1502
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1504
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1505

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1506
  %cmp4 = icmp ule i64 %3, 96, !dbg !1507
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1508

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1509
  br label %return, !dbg !1509

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1510
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1512
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1513

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1514
  %cmp9 = icmp ule i64 %5, 192, !dbg !1515
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1516

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1517
  br label %return, !dbg !1517

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1518
  %cmp12 = icmp ule i64 %6, 8, !dbg !1520
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1521

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1522
  br label %return, !dbg !1522

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1523
  %cmp15 = icmp ule i64 %7, 16, !dbg !1525
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1526

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1527
  br label %return, !dbg !1527

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1528
  %cmp18 = icmp ule i64 %8, 32, !dbg !1530
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1531

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1532
  br label %return, !dbg !1532

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1533
  %cmp21 = icmp ule i64 %9, 64, !dbg !1535
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1536

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1537
  br label %return, !dbg !1537

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1538
  %cmp24 = icmp ule i64 %10, 128, !dbg !1540
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1541

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1542
  br label %return, !dbg !1542

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1543
  %cmp27 = icmp ule i64 %11, 256, !dbg !1545
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1546

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1547
  br label %return, !dbg !1547

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1548
  %cmp30 = icmp ule i64 %12, 512, !dbg !1550
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1551

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1552
  br label %return, !dbg !1552

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1553
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1555
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1556

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1557
  br label %return, !dbg !1557

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1558
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1560
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1561

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1562
  br label %return, !dbg !1562

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1563
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1565
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1566

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1567
  br label %return, !dbg !1567

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1568
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1570
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1571

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1572
  br label %return, !dbg !1572

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1573
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1575
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1576

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1577
  br label %return, !dbg !1577

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1578
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1580
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1581

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1582
  br label %return, !dbg !1582

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1583
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1585
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1586

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1587
  br label %return, !dbg !1587

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1588
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1590
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1591

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1592
  br label %return, !dbg !1592

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1593
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1595
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1596

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1597
  br label %return, !dbg !1597

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1598
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1600
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1601

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1602
  br label %return, !dbg !1602

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1603
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1605
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1606

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1607
  br label %return, !dbg !1607

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1608
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1610
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1611

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1612
  br label %return, !dbg !1612

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1613, !range !1615, !noundef !1616
  %tobool69 = trunc i8 %25 to i1, !dbg !1613
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1617

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1618

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !1619, !srcloc !1622
  unreachable, !dbg !1619

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1623

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1624

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1625

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1627

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1625

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #13, !dbg !1629, !srcloc !1631
  br label %do.end75, !dbg !1629

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1625

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1632
  br label %return, !dbg !1632

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1633
  ret i32 %26, !dbg !1633
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1634 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !1640 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1644, metadata !DIExpression()), !dbg !1646
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1645, metadata !DIExpression()), !dbg !1647
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1648
  %and = and i32 %0, 17, !dbg !1648
  %cmp = icmp eq i32 %and, 0, !dbg !1648
  %lnot = xor i1 %cmp, true, !dbg !1648
  %lnot1 = xor i1 %lnot, true, !dbg !1648
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1648
  %conv = sext i32 %lnot.ext to i64, !dbg !1648
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1648
  %tobool = icmp ne i64 %expval, 0, !dbg !1648
  br i1 %tobool, label %if.then, label %if.end, !dbg !1650

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1651
  br label %return, !dbg !1651

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1652
  %and2 = and i32 %1, 1, !dbg !1654
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1654
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1655

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1656
  br label %return, !dbg !1656

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1657
  br label %return, !dbg !1657

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1659
  ret i32 %2, !dbg !1659
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1660 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1661 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !1664 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1667
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1666, metadata !DIExpression()), !dbg !1668
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !1669, !srcloc !1670
  %0 = load i64, ptr %flags, align 8, !dbg !1671
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1672
  ret i64 %0, !dbg !1673
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1674 dso_local i32 @acpi_ns_lookup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1680 dso_local i32 @acpi_ns_externalize_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !1685 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1689, metadata !DIExpression()), !dbg !1690
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1691
  call void @kfree(ptr noundef %0) #14, !dbg !1692
  ret void, !dbg !1693
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1694 dso_local i32 @acpi_ex_resolve_node_to_value(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1698 dso_local void @kfree(ptr noundef) #3

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
!llvm.module.flags = !{!853, !854, !855, !856, !857, !858, !859, !860}
!llvm.ident = !{!861}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 19, type: !849, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.dspkginit.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22dspkginit\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/dspkginit.ll drivers/acpi/acpica/dspkginit.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !27, globals: !808, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dspkginit.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb3672fed5cc108009ffc9817395b3c2")
!4 = !{!5, !11, !21}
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
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 116, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1)
!25 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2)
!26 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3)
!27 = !{!28, !34, !37, !41, !804, !30, !95, !126, !807, !806, !78}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !29, line: 421, baseType: !30)
!29 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !31, line: 21, baseType: !32)
!31 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !33, line: 27, baseType: !7)
!33 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !31, line: 19, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !33, line: 24, baseType: !36)
!36 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !29, line: 127, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !31, line: 23, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !33, line: 31, baseType: !40)
!40 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !43, line: 369, size: 576, elements: !44)
!43 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!44 = !{!45, !56, !69, !81, !116, !130, !140, !453, !470, !486, !499, !577, !589, !603, !613, !631, !653, !672, !691, !710, !723, !750, !767, !780, !794, !803}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !42, file: !43, line: 370, baseType: !46, size: 128)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !43, line: 73, size: 128, elements: !47)
!47 = !{!48, !49, !53, !54, !55}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !46, file: !43, line: 74, baseType: !41, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !46, file: !43, line: 74, baseType: !50, size: 8, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !31, line: 17, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !33, line: 21, baseType: !52)
!52 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !46, file: !43, line: 74, baseType: !50, size: 8, offset: 72)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !46, file: !43, line: 74, baseType: !34, size: 16, offset: 80)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !46, file: !43, line: 74, baseType: !50, size: 8, offset: 96)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !42, file: !43, line: 371, baseType: !57, size: 192)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !43, line: 76, size: 192, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !68}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !57, file: !43, line: 77, baseType: !41, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !57, file: !43, line: 77, baseType: !50, size: 8, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !57, file: !43, line: 77, baseType: !50, size: 8, offset: 72)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !57, file: !43, line: 77, baseType: !34, size: 16, offset: 80)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !57, file: !43, line: 77, baseType: !50, size: 8, offset: 96)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !57, file: !43, line: 77, baseType: !65, size: 24, offset: 104)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 24, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 3)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !57, file: !43, line: 78, baseType: !38, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !42, file: !43, line: 372, baseType: !70, size: 256)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !43, line: 93, size: 256, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !80}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !70, file: !43, line: 94, baseType: !41, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !70, file: !43, line: 94, baseType: !50, size: 8, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !43, line: 94, baseType: !50, size: 8, offset: 72)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !70, file: !43, line: 94, baseType: !34, size: 16, offset: 80)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !70, file: !43, line: 94, baseType: !50, size: 8, offset: 96)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !70, file: !43, line: 94, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !70, file: !43, line: 94, baseType: !30, size: 32, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !42, file: !43, line: 373, baseType: !82, size: 384)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !43, line: 97, size: 384, elements: !83)
!83 = !{!84, !85, !86, !87, !88, !89, !91, !92, !93, !94}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !82, file: !43, line: 98, baseType: !41, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !82, file: !43, line: 98, baseType: !50, size: 8, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !43, line: 98, baseType: !50, size: 8, offset: 72)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !82, file: !43, line: 98, baseType: !34, size: 16, offset: 80)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !43, line: 98, baseType: !50, size: 8, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !82, file: !43, line: 98, baseType: !90, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !82, file: !43, line: 98, baseType: !30, size: 32, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !82, file: !43, line: 99, baseType: !30, size: 32, offset: 224)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !82, file: !43, line: 100, baseType: !90, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !82, file: !43, line: 101, baseType: !95, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !22, line: 133, size: 384, elements: !97)
!97 = !{!98, !99, !100, !101, !102, !111, !112, !113, !114}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !96, file: !22, line: 134, baseType: !41, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !96, file: !22, line: 135, baseType: !50, size: 8, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !96, file: !22, line: 136, baseType: !50, size: 8, offset: 72)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !96, file: !22, line: 137, baseType: !34, size: 16, offset: 80)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !96, file: !22, line: 138, baseType: !103, size: 32, offset: 96)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !104, line: 328, size: 32, elements: !105)
!104 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !103, file: !104, line: 329, baseType: !30, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !103, file: !104, line: 330, baseType: !108, size: 32)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 32, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 4)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !96, file: !22, line: 139, baseType: !95, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !96, file: !22, line: 140, baseType: !95, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !96, file: !22, line: 141, baseType: !95, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !96, file: !22, line: 142, baseType: !115, size: 16, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !29, line: 445, baseType: !34)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !42, file: !43, line: 374, baseType: !117, size: 384)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !43, line: 104, size: 384, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124, !125, !127, !128, !129}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !117, file: !43, line: 105, baseType: !41, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !117, file: !43, line: 105, baseType: !50, size: 8, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !117, file: !43, line: 105, baseType: !50, size: 8, offset: 72)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !117, file: !43, line: 105, baseType: !34, size: 16, offset: 80)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !117, file: !43, line: 105, baseType: !50, size: 8, offset: 96)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !117, file: !43, line: 105, baseType: !95, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !117, file: !43, line: 106, baseType: !126, size: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !117, file: !43, line: 107, baseType: !90, size: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !117, file: !43, line: 108, baseType: !30, size: 32, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !117, file: !43, line: 109, baseType: !30, size: 32, offset: 352)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !42, file: !43, line: 375, baseType: !131, size: 192)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !43, line: 118, size: 192, elements: !132)
!132 = !{!133, !134, !135, !136, !137, !138}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !131, file: !43, line: 119, baseType: !41, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !131, file: !43, line: 119, baseType: !50, size: 8, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !131, file: !43, line: 119, baseType: !50, size: 8, offset: 72)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !131, file: !43, line: 119, baseType: !34, size: 16, offset: 80)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !43, line: 119, baseType: !50, size: 8, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !131, file: !43, line: 119, baseType: !139, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !42, file: !43, line: 376, baseType: !141, size: 448)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !43, line: 144, size: 448, elements: !142)
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !450, !451, !452}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !141, file: !43, line: 145, baseType: !41, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !141, file: !43, line: 145, baseType: !50, size: 8, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !141, file: !43, line: 145, baseType: !50, size: 8, offset: 72)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !141, file: !43, line: 145, baseType: !34, size: 16, offset: 80)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !141, file: !43, line: 145, baseType: !50, size: 8, offset: 96)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !141, file: !43, line: 145, baseType: !50, size: 8, offset: 104)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !141, file: !43, line: 146, baseType: !50, size: 8, offset: 112)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !141, file: !43, line: 147, baseType: !50, size: 8, offset: 120)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !141, file: !43, line: 148, baseType: !41, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !141, file: !43, line: 149, baseType: !41, size: 64, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !141, file: !43, line: 150, baseType: !90, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !141, file: !43, line: 154, baseType: !155, size: 64, offset: 320)
!155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !141, file: !43, line: 151, size: 64, elements: !156)
!156 = !{!157, !449}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !155, file: !43, line: 152, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !22, line: 248, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!28, !162}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !164, line: 37, size: 9024, elements: !165)
!164 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!165 = !{!166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !395, !396, !397, !398, !399, !403, !405, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !432, !433, !434, !435, !436, !437, !438, !439, !441, !447}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !163, file: !164, line: 38, baseType: !162, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !163, file: !164, line: 39, baseType: !50, size: 8, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !163, file: !164, line: 40, baseType: !50, size: 8, offset: 72)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !163, file: !164, line: 41, baseType: !34, size: 16, offset: 80)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !163, file: !164, line: 42, baseType: !50, size: 8, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !163, file: !164, line: 43, baseType: !50, size: 8, offset: 104)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !163, file: !164, line: 44, baseType: !50, size: 8, offset: 112)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !163, file: !164, line: 45, baseType: !115, size: 16, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !163, file: !164, line: 46, baseType: !50, size: 8, offset: 144)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !163, file: !164, line: 47, baseType: !50, size: 8, offset: 152)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !163, file: !164, line: 48, baseType: !50, size: 8, offset: 160)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !163, file: !164, line: 49, baseType: !50, size: 8, offset: 168)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !163, file: !164, line: 50, baseType: !50, size: 8, offset: 176)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !163, file: !164, line: 51, baseType: !50, size: 8, offset: 184)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !163, file: !164, line: 52, baseType: !50, size: 8, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !163, file: !164, line: 53, baseType: !50, size: 8, offset: 200)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !163, file: !164, line: 54, baseType: !90, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !163, file: !164, line: 55, baseType: !30, size: 32, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !163, file: !164, line: 56, baseType: !30, size: 32, offset: 352)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !163, file: !164, line: 57, baseType: !30, size: 32, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !163, file: !164, line: 58, baseType: !30, size: 32, offset: 416)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !163, file: !164, line: 60, baseType: !188, size: 640, offset: 448)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !22, line: 909, size: 640, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !276, !277, !393, !394}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !188, file: !22, line: 910, baseType: !90, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !188, file: !22, line: 911, baseType: !90, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !188, file: !22, line: 912, baseType: !90, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !188, file: !22, line: 913, baseType: !90, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !188, file: !22, line: 914, baseType: !90, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !188, file: !22, line: 915, baseType: !196, size: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !22, line: 891, size: 1600, elements: !198)
!198 = !{!199, !219, !235}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !197, file: !22, line: 892, baseType: !200, size: 448)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !22, line: 844, size: 448, elements: !201)
!201 = !{!202, !203, !204, !205, !206, !207, !208, !209, !218}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !200, file: !22, line: 845, baseType: !196, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !200, file: !22, line: 845, baseType: !50, size: 8, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !200, file: !22, line: 845, baseType: !50, size: 8, offset: 72)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !200, file: !22, line: 845, baseType: !34, size: 16, offset: 80)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !200, file: !22, line: 845, baseType: !90, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !200, file: !22, line: 845, baseType: !196, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !200, file: !22, line: 845, baseType: !95, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !200, file: !22, line: 845, baseType: !210, size: 64, offset: 320)
!210 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !22, line: 732, size: 64, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !210, file: !22, line: 733, baseType: !38, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !210, file: !22, line: 734, baseType: !30, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !210, file: !22, line: 735, baseType: !78, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !210, file: !22, line: 736, baseType: !90, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !210, file: !22, line: 737, baseType: !78, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !210, file: !22, line: 738, baseType: !196, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !200, file: !22, line: 845, baseType: !50, size: 8, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !197, file: !22, line: 893, baseType: !220, size: 640)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !22, line: 851, size: 640, elements: !221)
!221 = !{!222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !220, file: !22, line: 852, baseType: !196, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !220, file: !22, line: 852, baseType: !50, size: 8, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !220, file: !22, line: 852, baseType: !50, size: 8, offset: 72)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !220, file: !22, line: 852, baseType: !34, size: 16, offset: 80)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !220, file: !22, line: 852, baseType: !90, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !220, file: !22, line: 852, baseType: !196, size: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !220, file: !22, line: 852, baseType: !95, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !220, file: !22, line: 852, baseType: !210, size: 64, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !220, file: !22, line: 852, baseType: !50, size: 8, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !220, file: !22, line: 852, baseType: !78, size: 64, offset: 448)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !220, file: !22, line: 853, baseType: !90, size: 64, offset: 512)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !220, file: !22, line: 854, baseType: !30, size: 32, offset: 576)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !220, file: !22, line: 855, baseType: !30, size: 32, offset: 608)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !197, file: !22, line: 894, baseType: !236, size: 1600)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !22, line: 862, size: 1600, elements: !237)
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !236, file: !22, line: 863, baseType: !196, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !236, file: !22, line: 863, baseType: !50, size: 8, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !236, file: !22, line: 863, baseType: !50, size: 8, offset: 72)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !236, file: !22, line: 863, baseType: !34, size: 16, offset: 80)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !236, file: !22, line: 863, baseType: !90, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !236, file: !22, line: 863, baseType: !196, size: 64, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !236, file: !22, line: 863, baseType: !95, size: 64, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !236, file: !22, line: 863, baseType: !210, size: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !236, file: !22, line: 863, baseType: !50, size: 8, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !236, file: !22, line: 863, baseType: !196, size: 64, offset: 448)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !236, file: !22, line: 864, baseType: !196, size: 64, offset: 512)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !236, file: !22, line: 865, baseType: !78, size: 64, offset: 576)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !236, file: !22, line: 866, baseType: !50, size: 8, offset: 640)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !236, file: !22, line: 867, baseType: !78, size: 64, offset: 704)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !236, file: !22, line: 868, baseType: !78, size: 64, offset: 768)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !236, file: !22, line: 869, baseType: !78, size: 64, offset: 832)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !236, file: !22, line: 870, baseType: !108, size: 32, offset: 896)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !236, file: !22, line: 871, baseType: !30, size: 32, offset: 928)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !236, file: !22, line: 872, baseType: !30, size: 32, offset: 960)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !236, file: !22, line: 873, baseType: !30, size: 32, offset: 992)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !236, file: !22, line: 874, baseType: !30, size: 32, offset: 1024)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !236, file: !22, line: 875, baseType: !30, size: 32, offset: 1056)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !236, file: !22, line: 876, baseType: !30, size: 32, offset: 1088)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !236, file: !22, line: 877, baseType: !30, size: 32, offset: 1120)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !236, file: !22, line: 878, baseType: !30, size: 32, offset: 1152)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !236, file: !22, line: 879, baseType: !30, size: 32, offset: 1184)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !236, file: !22, line: 880, baseType: !30, size: 32, offset: 1216)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !236, file: !22, line: 881, baseType: !30, size: 32, offset: 1248)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !236, file: !22, line: 882, baseType: !30, size: 32, offset: 1280)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !236, file: !22, line: 883, baseType: !30, size: 32, offset: 1312)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !236, file: !22, line: 884, baseType: !34, size: 16, offset: 1344)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !236, file: !22, line: 885, baseType: !50, size: 8, offset: 1360)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !236, file: !22, line: 886, baseType: !50, size: 8, offset: 1368)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !236, file: !22, line: 887, baseType: !50, size: 8, offset: 1376)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !236, file: !22, line: 888, baseType: !273, size: 160, offset: 1384)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 160, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 20)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !188, file: !22, line: 916, baseType: !95, size: 64, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !188, file: !22, line: 917, baseType: !278, size: 64, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !22, line: 679, size: 640, elements: !280)
!280 = !{!281, !289, !302, !311, !320, !333, !347, !359, !371}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !279, file: !22, line: 680, baseType: !282, size: 128)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !22, line: 575, size: 128, elements: !283)
!283 = !{!284, !285, !286, !287, !288}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !282, file: !22, line: 576, baseType: !139, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !282, file: !22, line: 576, baseType: !50, size: 8, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !282, file: !22, line: 576, baseType: !50, size: 8, offset: 72)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !282, file: !22, line: 576, baseType: !34, size: 16, offset: 80)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !282, file: !22, line: 576, baseType: !34, size: 16, offset: 96)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !279, file: !22, line: 681, baseType: !290, size: 384)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !22, line: 604, size: 384, elements: !291)
!291 = !{!292, !293, !294, !295, !296, !297, !298, !299, !300, !301}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !290, file: !22, line: 605, baseType: !139, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !290, file: !22, line: 605, baseType: !50, size: 8, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !22, line: 605, baseType: !50, size: 8, offset: 72)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !290, file: !22, line: 605, baseType: !34, size: 16, offset: 80)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !290, file: !22, line: 605, baseType: !34, size: 16, offset: 96)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !290, file: !22, line: 606, baseType: !34, size: 16, offset: 112)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !290, file: !22, line: 607, baseType: !196, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !290, file: !22, line: 608, baseType: !90, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !290, file: !22, line: 609, baseType: !90, size: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !290, file: !22, line: 610, baseType: !38, size: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !279, file: !22, line: 682, baseType: !303, size: 192)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !22, line: 582, size: 192, elements: !304)
!304 = !{!305, !306, !307, !308, !309, !310}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !303, file: !22, line: 583, baseType: !139, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !303, file: !22, line: 583, baseType: !50, size: 8, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !22, line: 583, baseType: !50, size: 8, offset: 72)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !303, file: !22, line: 583, baseType: !34, size: 16, offset: 80)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !303, file: !22, line: 583, baseType: !34, size: 16, offset: 96)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !303, file: !22, line: 584, baseType: !41, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !279, file: !22, line: 683, baseType: !312, size: 192)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !22, line: 616, size: 192, elements: !313)
!313 = !{!314, !315, !316, !317, !318, !319}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !312, file: !22, line: 617, baseType: !139, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !312, file: !22, line: 617, baseType: !50, size: 8, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !312, file: !22, line: 617, baseType: !50, size: 8, offset: 72)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !312, file: !22, line: 617, baseType: !34, size: 16, offset: 80)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !312, file: !22, line: 617, baseType: !34, size: 16, offset: 96)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !312, file: !22, line: 618, baseType: !95, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !279, file: !22, line: 684, baseType: !321, size: 448)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !22, line: 621, size: 448, elements: !322)
!322 = !{!323, !324, !325, !326, !327, !328, !329, !330, !331, !332}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !321, file: !22, line: 622, baseType: !139, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !321, file: !22, line: 622, baseType: !50, size: 8, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !321, file: !22, line: 622, baseType: !50, size: 8, offset: 72)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !321, file: !22, line: 622, baseType: !34, size: 16, offset: 80)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !321, file: !22, line: 622, baseType: !34, size: 16, offset: 96)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !321, file: !22, line: 623, baseType: !30, size: 32, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !321, file: !22, line: 624, baseType: !196, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !321, file: !22, line: 625, baseType: !90, size: 64, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !321, file: !22, line: 626, baseType: !90, size: 64, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !321, file: !22, line: 627, baseType: !30, size: 32, offset: 384)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !279, file: !22, line: 685, baseType: !334, size: 512)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !22, line: 590, size: 512, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !22, line: 591, baseType: !139, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !334, file: !22, line: 591, baseType: !50, size: 8, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !22, line: 591, baseType: !50, size: 8, offset: 72)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !334, file: !22, line: 591, baseType: !34, size: 16, offset: 80)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !334, file: !22, line: 591, baseType: !34, size: 16, offset: 96)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !334, file: !22, line: 592, baseType: !30, size: 32, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !334, file: !22, line: 593, baseType: !41, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !334, file: !22, line: 594, baseType: !41, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !334, file: !22, line: 595, baseType: !162, size: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !334, file: !22, line: 596, baseType: !139, size: 64, offset: 384)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !334, file: !22, line: 597, baseType: !30, size: 32, offset: 448)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !279, file: !22, line: 686, baseType: !348, size: 320)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !22, line: 634, size: 320, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !22, line: 635, baseType: !139, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !348, file: !22, line: 635, baseType: !50, size: 8, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !22, line: 635, baseType: !50, size: 8, offset: 72)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !348, file: !22, line: 635, baseType: !34, size: 16, offset: 80)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !348, file: !22, line: 635, baseType: !34, size: 16, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !348, file: !22, line: 636, baseType: !50, size: 8, offset: 112)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !348, file: !22, line: 637, baseType: !162, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !348, file: !22, line: 638, baseType: !41, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !348, file: !22, line: 639, baseType: !38, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !279, file: !22, line: 687, baseType: !360, size: 640)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !22, line: 646, size: 640, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !22, line: 647, baseType: !139, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !360, file: !22, line: 647, baseType: !50, size: 8, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !360, file: !22, line: 647, baseType: !50, size: 8, offset: 72)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !360, file: !22, line: 647, baseType: !34, size: 16, offset: 80)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !360, file: !22, line: 647, baseType: !34, size: 16, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !360, file: !22, line: 648, baseType: !368, size: 512, offset: 128)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 512, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 8)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !279, file: !22, line: 688, baseType: !372, size: 320)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !22, line: 669, size: 320, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381, !382}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !372, file: !22, line: 670, baseType: !139, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !372, file: !22, line: 670, baseType: !50, size: 8, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !372, file: !22, line: 670, baseType: !50, size: 8, offset: 72)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !372, file: !22, line: 670, baseType: !34, size: 16, offset: 80)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !372, file: !22, line: 670, baseType: !34, size: 16, offset: 96)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !372, file: !22, line: 671, baseType: !50, size: 8, offset: 112)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !372, file: !22, line: 672, baseType: !95, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !372, file: !22, line: 673, baseType: !41, size: 64, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !372, file: !22, line: 674, baseType: !383, size: 64, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !22, line: 660, size: 128, elements: !385)
!385 = !{!386, !392}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !384, file: !22, line: 661, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !29, line: 1061, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !391, !30, !139}
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !29, line: 424, baseType: !139)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !384, file: !22, line: 662, baseType: !139, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !188, file: !22, line: 918, baseType: !196, size: 64, offset: 512)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !188, file: !22, line: 919, baseType: !30, size: 32, offset: 576)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !163, file: !164, line: 61, baseType: !30, size: 32, offset: 1088)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !163, file: !164, line: 62, baseType: !30, size: 32, offset: 1120)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !163, file: !164, line: 63, baseType: !34, size: 16, offset: 1152)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !163, file: !164, line: 64, baseType: !50, size: 8, offset: 1168)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !163, file: !164, line: 66, baseType: !400, size: 2688, offset: 1216)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 2688, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 7)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !163, file: !164, line: 67, baseType: !404, size: 3072, offset: 3904)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 3072, elements: !369)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !163, file: !164, line: 68, baseType: !406, size: 576, offset: 6976)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 576, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 9)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !163, file: !164, line: 69, baseType: !126, size: 64, offset: 7552)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !163, file: !164, line: 71, baseType: !90, size: 64, offset: 7616)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !163, file: !164, line: 72, baseType: !126, size: 64, offset: 7680)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !163, file: !164, line: 73, baseType: !278, size: 64, offset: 7744)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !163, file: !164, line: 74, baseType: !95, size: 64, offset: 7808)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !163, file: !164, line: 75, baseType: !41, size: 64, offset: 7872)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !163, file: !164, line: 76, baseType: !95, size: 64, offset: 7936)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !163, file: !164, line: 77, baseType: !196, size: 64, offset: 8000)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !163, file: !164, line: 78, baseType: !41, size: 64, offset: 8064)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !163, file: !164, line: 79, baseType: !95, size: 64, offset: 8128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !163, file: !164, line: 80, baseType: !78, size: 64, offset: 8192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !163, file: !164, line: 81, baseType: !196, size: 64, offset: 8256)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !163, file: !164, line: 82, baseType: !422, size: 64, offset: 8320)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !22, line: 718, size: 128, elements: !425)
!425 = !{!426, !427, !428, !429, !430, !431}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !424, file: !22, line: 722, baseType: !30, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !424, file: !22, line: 723, baseType: !30, size: 32, offset: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !424, file: !22, line: 724, baseType: !34, size: 16, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !424, file: !22, line: 725, baseType: !50, size: 8, offset: 80)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !424, file: !22, line: 726, baseType: !50, size: 8, offset: 88)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !424, file: !22, line: 727, baseType: !50, size: 8, offset: 96)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !163, file: !164, line: 83, baseType: !196, size: 64, offset: 8384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !163, file: !164, line: 84, baseType: !41, size: 64, offset: 8448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !163, file: !164, line: 85, baseType: !278, size: 64, offset: 8512)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !163, file: !164, line: 86, baseType: !41, size: 64, offset: 8576)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !163, file: !164, line: 87, baseType: !278, size: 64, offset: 8640)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !163, file: !164, line: 88, baseType: !196, size: 64, offset: 8704)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !163, file: !164, line: 89, baseType: !196, size: 64, offset: 8768)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !163, file: !164, line: 90, baseType: !440, size: 64, offset: 8832)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !163, file: !164, line: 91, baseType: !442, size: 64, offset: 8896)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !22, line: 652, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!28, !162, !446}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !163, file: !164, line: 92, baseType: !448, size: 64, offset: 8960)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !22, line: 656, baseType: !159)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !155, file: !43, line: 153, baseType: !41, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !141, file: !43, line: 156, baseType: !30, size: 32, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !141, file: !43, line: 157, baseType: !115, size: 16, offset: 416)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !141, file: !43, line: 158, baseType: !50, size: 8, offset: 432)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !42, file: !43, line: 377, baseType: !454, size: 576)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !43, line: 122, size: 576, elements: !455)
!455 = !{!456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !454, file: !43, line: 123, baseType: !41, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !454, file: !43, line: 123, baseType: !50, size: 8, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !454, file: !43, line: 123, baseType: !50, size: 8, offset: 72)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !454, file: !43, line: 123, baseType: !34, size: 16, offset: 80)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !454, file: !43, line: 123, baseType: !50, size: 8, offset: 96)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !454, file: !43, line: 123, baseType: !50, size: 8, offset: 104)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !454, file: !43, line: 124, baseType: !34, size: 16, offset: 112)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !454, file: !43, line: 125, baseType: !139, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !454, file: !43, line: 126, baseType: !38, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !454, file: !43, line: 127, baseType: !440, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !454, file: !43, line: 128, baseType: !41, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !454, file: !43, line: 129, baseType: !41, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !454, file: !43, line: 130, baseType: !95, size: 64, offset: 448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !454, file: !43, line: 131, baseType: !50, size: 8, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !42, file: !43, line: 378, baseType: !471, size: 512)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !43, line: 134, size: 512, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !484, !485}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !471, file: !43, line: 135, baseType: !41, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !471, file: !43, line: 135, baseType: !50, size: 8, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !471, file: !43, line: 135, baseType: !50, size: 8, offset: 72)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !471, file: !43, line: 135, baseType: !34, size: 16, offset: 80)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !471, file: !43, line: 135, baseType: !50, size: 8, offset: 96)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !471, file: !43, line: 135, baseType: !50, size: 8, offset: 104)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !471, file: !43, line: 136, baseType: !95, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !471, file: !43, line: 137, baseType: !41, size: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !471, file: !43, line: 138, baseType: !41, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !471, file: !43, line: 139, baseType: !483, size: 64, offset: 320)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !29, line: 129, baseType: !38)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !471, file: !43, line: 140, baseType: !30, size: 32, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !471, file: !43, line: 141, baseType: !139, size: 64, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !42, file: !43, line: 379, baseType: !487, size: 320)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !43, line: 185, size: 320, elements: !488)
!488 = !{!489, !490, !491, !492, !493, !494, !498}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !487, file: !43, line: 186, baseType: !41, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !487, file: !43, line: 186, baseType: !50, size: 8, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !487, file: !43, line: 186, baseType: !50, size: 8, offset: 72)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !487, file: !43, line: 186, baseType: !34, size: 16, offset: 80)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !487, file: !43, line: 186, baseType: !50, size: 8, offset: 96)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !487, file: !43, line: 186, baseType: !495, size: 128, offset: 128)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 128, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 2)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !487, file: !43, line: 186, baseType: !41, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !42, file: !43, line: 380, baseType: !500, size: 384)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !43, line: 188, size: 384, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507, !508, !509}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !500, file: !43, line: 189, baseType: !41, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !500, file: !43, line: 189, baseType: !50, size: 8, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !500, file: !43, line: 189, baseType: !50, size: 8, offset: 72)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !500, file: !43, line: 189, baseType: !34, size: 16, offset: 80)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !43, line: 189, baseType: !50, size: 8, offset: 96)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !500, file: !43, line: 190, baseType: !495, size: 128, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !500, file: !43, line: 190, baseType: !41, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !500, file: !43, line: 190, baseType: !510, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !22, line: 480, size: 576, elements: !512)
!512 = !{!513, !514, !515, !516, !524, !539, !571, !572, !573, !574, !575, !576}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !511, file: !22, line: 481, baseType: !95, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !511, file: !22, line: 482, baseType: !510, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !511, file: !22, line: 483, baseType: !510, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !511, file: !22, line: 484, baseType: !517, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !22, line: 497, size: 256, elements: !519)
!519 = !{!520, !521, !522, !523}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !518, file: !22, line: 498, baseType: !517, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !518, file: !22, line: 499, baseType: !517, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !518, file: !22, line: 500, baseType: !510, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !518, file: !22, line: 501, baseType: !30, size: 32, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !511, file: !22, line: 485, baseType: !525, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !22, line: 466, size: 320, elements: !527)
!527 = !{!528, !533, !534, !535, !536, !537, !538}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !526, file: !22, line: 467, baseType: !529, size: 128)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !22, line: 459, size: 128, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !529, file: !22, line: 460, baseType: !50, size: 8)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !529, file: !22, line: 461, baseType: !38, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !526, file: !22, line: 468, baseType: !529, size: 128, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !526, file: !22, line: 469, baseType: !34, size: 16, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !526, file: !22, line: 470, baseType: !50, size: 8, offset: 272)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !526, file: !22, line: 471, baseType: !50, size: 8, offset: 280)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !526, file: !22, line: 472, baseType: !50, size: 8, offset: 288)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !526, file: !22, line: 473, baseType: !50, size: 8, offset: 296)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !511, file: !22, line: 486, baseType: !540, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !22, line: 448, size: 192, elements: !542)
!542 = !{!543, !566, !567, !568, !569, !570}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !541, file: !22, line: 449, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !22, line: 438, size: 64, elements: !545)
!545 = !{!546, !547, !560}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !544, file: !22, line: 439, baseType: !95, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !544, file: !22, line: 440, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !22, line: 419, size: 256, elements: !550)
!550 = !{!551, !556, !557, !558, !559}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !549, file: !22, line: 420, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !29, line: 1058, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!30, !391, !30, !139}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !549, file: !22, line: 421, baseType: !139, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !549, file: !22, line: 422, baseType: !95, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !549, file: !22, line: 423, baseType: !50, size: 8, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !549, file: !22, line: 424, baseType: !50, size: 8, offset: 200)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !544, file: !22, line: 441, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !22, line: 429, size: 128, elements: !563)
!563 = !{!564, !565}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !562, file: !22, line: 430, baseType: !95, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !562, file: !22, line: 431, baseType: !561, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !541, file: !22, line: 450, baseType: !525, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !541, file: !22, line: 451, baseType: !50, size: 8, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !541, file: !22, line: 452, baseType: !50, size: 8, offset: 136)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !541, file: !22, line: 453, baseType: !50, size: 8, offset: 144)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !541, file: !22, line: 454, baseType: !50, size: 8, offset: 152)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !511, file: !22, line: 487, baseType: !38, size: 64, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !511, file: !22, line: 488, baseType: !30, size: 32, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !511, file: !22, line: 489, baseType: !34, size: 16, offset: 480)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !511, file: !22, line: 490, baseType: !34, size: 16, offset: 496)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !511, file: !22, line: 491, baseType: !50, size: 8, offset: 512)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !511, file: !22, line: 492, baseType: !50, size: 8, offset: 520)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !42, file: !43, line: 381, baseType: !578, size: 384)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !43, line: 193, size: 384, elements: !579)
!579 = !{!580, !581, !582, !583, !584, !585, !586, !587, !588}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !578, file: !43, line: 194, baseType: !41, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !578, file: !43, line: 194, baseType: !50, size: 8, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !578, file: !43, line: 194, baseType: !50, size: 8, offset: 72)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !578, file: !43, line: 194, baseType: !34, size: 16, offset: 80)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !578, file: !43, line: 194, baseType: !50, size: 8, offset: 96)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !578, file: !43, line: 194, baseType: !495, size: 128, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !578, file: !43, line: 194, baseType: !41, size: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !578, file: !43, line: 194, baseType: !30, size: 32, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !578, file: !43, line: 195, baseType: !30, size: 32, offset: 352)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !42, file: !43, line: 382, baseType: !590, size: 384)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !43, line: 198, size: 384, elements: !591)
!591 = !{!592, !593, !594, !595, !596, !597, !598, !599, !600, !601}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !590, file: !43, line: 199, baseType: !41, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !590, file: !43, line: 199, baseType: !50, size: 8, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !590, file: !43, line: 199, baseType: !50, size: 8, offset: 72)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !590, file: !43, line: 199, baseType: !34, size: 16, offset: 80)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !590, file: !43, line: 199, baseType: !50, size: 8, offset: 96)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !590, file: !43, line: 201, baseType: !50, size: 8, offset: 104)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !590, file: !43, line: 202, baseType: !50, size: 8, offset: 112)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !590, file: !43, line: 203, baseType: !495, size: 128, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !590, file: !43, line: 203, baseType: !41, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !590, file: !43, line: 203, baseType: !602, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !29, line: 128, baseType: !38)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !42, file: !43, line: 383, baseType: !604, size: 320)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !43, line: 206, size: 320, elements: !605)
!605 = !{!606, !607, !608, !609, !610, !611, !612}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !604, file: !43, line: 207, baseType: !41, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !604, file: !43, line: 207, baseType: !50, size: 8, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !604, file: !43, line: 207, baseType: !50, size: 8, offset: 72)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !604, file: !43, line: 207, baseType: !34, size: 16, offset: 80)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !604, file: !43, line: 207, baseType: !50, size: 8, offset: 96)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !604, file: !43, line: 207, baseType: !495, size: 128, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !604, file: !43, line: 207, baseType: !41, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !42, file: !43, line: 384, baseType: !614, size: 384)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !43, line: 234, size: 384, elements: !615)
!615 = !{!616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !614, file: !43, line: 235, baseType: !41, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !614, file: !43, line: 235, baseType: !50, size: 8, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !614, file: !43, line: 235, baseType: !50, size: 8, offset: 72)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !614, file: !43, line: 235, baseType: !34, size: 16, offset: 80)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !614, file: !43, line: 235, baseType: !50, size: 8, offset: 96)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !614, file: !43, line: 235, baseType: !50, size: 8, offset: 104)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !614, file: !43, line: 235, baseType: !50, size: 8, offset: 112)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !614, file: !43, line: 235, baseType: !50, size: 8, offset: 120)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !614, file: !43, line: 235, baseType: !95, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !614, file: !43, line: 235, baseType: !30, size: 32, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !614, file: !43, line: 235, baseType: !30, size: 32, offset: 224)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !614, file: !43, line: 235, baseType: !30, size: 32, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !614, file: !43, line: 235, baseType: !50, size: 8, offset: 288)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !614, file: !43, line: 235, baseType: !50, size: 8, offset: 296)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !614, file: !43, line: 235, baseType: !41, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !42, file: !43, line: 385, baseType: !632, size: 576)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !43, line: 238, size: 576, elements: !633)
!633 = !{!634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !632, file: !43, line: 239, baseType: !41, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !632, file: !43, line: 239, baseType: !50, size: 8, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !632, file: !43, line: 239, baseType: !50, size: 8, offset: 72)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !632, file: !43, line: 239, baseType: !34, size: 16, offset: 80)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !43, line: 239, baseType: !50, size: 8, offset: 96)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !632, file: !43, line: 239, baseType: !50, size: 8, offset: 104)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !632, file: !43, line: 239, baseType: !50, size: 8, offset: 112)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !632, file: !43, line: 239, baseType: !50, size: 8, offset: 120)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !632, file: !43, line: 239, baseType: !95, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !632, file: !43, line: 239, baseType: !30, size: 32, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !632, file: !43, line: 239, baseType: !30, size: 32, offset: 224)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !632, file: !43, line: 239, baseType: !30, size: 32, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !632, file: !43, line: 239, baseType: !50, size: 8, offset: 288)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !632, file: !43, line: 239, baseType: !50, size: 8, offset: 296)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !632, file: !43, line: 239, baseType: !34, size: 16, offset: 304)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !632, file: !43, line: 240, baseType: !41, size: 64, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !632, file: !43, line: 241, baseType: !90, size: 64, offset: 384)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !632, file: !43, line: 242, baseType: !34, size: 16, offset: 448)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !632, file: !43, line: 243, baseType: !90, size: 64, offset: 512)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !42, file: !43, line: 386, baseType: !654, size: 384)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !43, line: 263, size: 384, elements: !655)
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !654, file: !43, line: 264, baseType: !41, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !654, file: !43, line: 264, baseType: !50, size: 8, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !654, file: !43, line: 264, baseType: !50, size: 8, offset: 72)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !654, file: !43, line: 264, baseType: !34, size: 16, offset: 80)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !654, file: !43, line: 264, baseType: !50, size: 8, offset: 96)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !654, file: !43, line: 264, baseType: !50, size: 8, offset: 104)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !654, file: !43, line: 264, baseType: !50, size: 8, offset: 112)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !654, file: !43, line: 264, baseType: !50, size: 8, offset: 120)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !654, file: !43, line: 264, baseType: !95, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !654, file: !43, line: 264, baseType: !30, size: 32, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !654, file: !43, line: 264, baseType: !30, size: 32, offset: 224)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !654, file: !43, line: 264, baseType: !30, size: 32, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !654, file: !43, line: 264, baseType: !50, size: 8, offset: 288)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !654, file: !43, line: 264, baseType: !50, size: 8, offset: 296)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !654, file: !43, line: 264, baseType: !50, size: 8, offset: 304)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !654, file: !43, line: 265, baseType: !41, size: 64, offset: 320)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !42, file: !43, line: 387, baseType: !673, size: 448)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !43, line: 246, size: 448, elements: !674)
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !673, file: !43, line: 247, baseType: !41, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !673, file: !43, line: 247, baseType: !50, size: 8, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !673, file: !43, line: 247, baseType: !50, size: 8, offset: 72)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !673, file: !43, line: 247, baseType: !34, size: 16, offset: 80)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !673, file: !43, line: 247, baseType: !50, size: 8, offset: 96)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !673, file: !43, line: 247, baseType: !50, size: 8, offset: 104)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !673, file: !43, line: 247, baseType: !50, size: 8, offset: 112)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !673, file: !43, line: 247, baseType: !50, size: 8, offset: 120)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !673, file: !43, line: 247, baseType: !95, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !673, file: !43, line: 247, baseType: !30, size: 32, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !673, file: !43, line: 247, baseType: !30, size: 32, offset: 224)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !673, file: !43, line: 247, baseType: !30, size: 32, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !673, file: !43, line: 247, baseType: !50, size: 8, offset: 288)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !673, file: !43, line: 247, baseType: !50, size: 8, offset: 296)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !673, file: !43, line: 247, baseType: !41, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !673, file: !43, line: 248, baseType: !41, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !42, file: !43, line: 388, baseType: !692, size: 448)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !43, line: 251, size: 448, elements: !693)
!693 = !{!694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !692, file: !43, line: 252, baseType: !41, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !692, file: !43, line: 252, baseType: !50, size: 8, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !692, file: !43, line: 252, baseType: !50, size: 8, offset: 72)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !692, file: !43, line: 252, baseType: !34, size: 16, offset: 80)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !692, file: !43, line: 252, baseType: !50, size: 8, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !692, file: !43, line: 252, baseType: !50, size: 8, offset: 104)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !692, file: !43, line: 252, baseType: !50, size: 8, offset: 112)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !692, file: !43, line: 252, baseType: !50, size: 8, offset: 120)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !692, file: !43, line: 252, baseType: !95, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !692, file: !43, line: 252, baseType: !30, size: 32, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !692, file: !43, line: 252, baseType: !30, size: 32, offset: 224)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !692, file: !43, line: 252, baseType: !30, size: 32, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !692, file: !43, line: 252, baseType: !50, size: 8, offset: 288)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !692, file: !43, line: 252, baseType: !50, size: 8, offset: 296)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !692, file: !43, line: 257, baseType: !41, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !692, file: !43, line: 258, baseType: !41, size: 64, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !42, file: !43, line: 389, baseType: !711, size: 512)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !43, line: 274, size: 512, elements: !712)
!712 = !{!713, !714, !715, !716, !717, !718, !719, !720, !721, !722}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !711, file: !43, line: 275, baseType: !41, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !711, file: !43, line: 275, baseType: !50, size: 8, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !711, file: !43, line: 275, baseType: !50, size: 8, offset: 72)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !711, file: !43, line: 275, baseType: !34, size: 16, offset: 80)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !43, line: 275, baseType: !50, size: 8, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !711, file: !43, line: 275, baseType: !95, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !711, file: !43, line: 276, baseType: !30, size: 32, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !711, file: !43, line: 277, baseType: !387, size: 64, offset: 256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !711, file: !43, line: 278, baseType: !139, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !711, file: !43, line: 279, baseType: !495, size: 128, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !42, file: !43, line: 390, baseType: !724, size: 576)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !43, line: 282, size: 576, elements: !725)
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !739, !740, !741, !742, !748, !749}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !724, file: !43, line: 283, baseType: !41, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !724, file: !43, line: 283, baseType: !50, size: 8, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !724, file: !43, line: 283, baseType: !50, size: 8, offset: 72)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !724, file: !43, line: 283, baseType: !34, size: 16, offset: 80)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !724, file: !43, line: 283, baseType: !50, size: 8, offset: 96)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !724, file: !43, line: 283, baseType: !50, size: 8, offset: 104)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !724, file: !43, line: 284, baseType: !50, size: 8, offset: 112)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !724, file: !43, line: 285, baseType: !734, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !29, line: 1093, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!28, !30, !483, !30, !738, !139, !139}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !724, file: !43, line: 286, baseType: !95, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !724, file: !43, line: 287, baseType: !139, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !724, file: !43, line: 288, baseType: !139, size: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !724, file: !43, line: 289, baseType: !743, size: 64, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !29, line: 1126, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!28, !391, !30, !139, !747}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !724, file: !43, line: 290, baseType: !41, size: 64, offset: 448)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !724, file: !43, line: 291, baseType: !41, size: 64, offset: 512)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !42, file: !43, line: 391, baseType: !751, size: 512)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !43, line: 309, size: 512, elements: !752)
!752 = !{!753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !751, file: !43, line: 310, baseType: !41, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !751, file: !43, line: 310, baseType: !50, size: 8, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !751, file: !43, line: 310, baseType: !50, size: 8, offset: 72)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !751, file: !43, line: 310, baseType: !34, size: 16, offset: 80)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !751, file: !43, line: 310, baseType: !50, size: 8, offset: 96)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !751, file: !43, line: 310, baseType: !50, size: 8, offset: 104)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !751, file: !43, line: 311, baseType: !50, size: 8, offset: 112)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !751, file: !43, line: 312, baseType: !50, size: 8, offset: 120)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !751, file: !43, line: 313, baseType: !139, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !751, file: !43, line: 314, baseType: !95, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !751, file: !43, line: 315, baseType: !126, size: 64, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !751, file: !43, line: 316, baseType: !90, size: 64, offset: 320)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !751, file: !43, line: 317, baseType: !90, size: 64, offset: 384)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !751, file: !43, line: 318, baseType: !30, size: 32, offset: 448)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !42, file: !43, line: 392, baseType: !768, size: 448)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !43, line: 342, size: 448, elements: !769)
!769 = !{!770, !771, !772, !773, !774, !775, !776, !777, !778, !779}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !768, file: !43, line: 343, baseType: !41, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !768, file: !43, line: 343, baseType: !50, size: 8, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !768, file: !43, line: 343, baseType: !50, size: 8, offset: 72)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !768, file: !43, line: 343, baseType: !34, size: 16, offset: 80)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !768, file: !43, line: 343, baseType: !50, size: 8, offset: 96)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !768, file: !43, line: 343, baseType: !95, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !768, file: !43, line: 344, baseType: !95, size: 64, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !768, file: !43, line: 345, baseType: !139, size: 64, offset: 256)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !768, file: !43, line: 346, baseType: !90, size: 64, offset: 320)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !768, file: !43, line: 347, baseType: !30, size: 32, offset: 384)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !42, file: !43, line: 393, baseType: !781, size: 256)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !43, line: 352, size: 256, elements: !782)
!782 = !{!783, !784, !785, !786, !787, !788, !793}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !781, file: !43, line: 353, baseType: !41, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !781, file: !43, line: 353, baseType: !50, size: 8, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !781, file: !43, line: 353, baseType: !50, size: 8, offset: 72)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !781, file: !43, line: 353, baseType: !34, size: 16, offset: 80)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !43, line: 353, baseType: !50, size: 8, offset: 96)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !781, file: !43, line: 353, baseType: !789, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !29, line: 1064, baseType: !790)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !391, !139}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !781, file: !43, line: 354, baseType: !139, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !42, file: !43, line: 394, baseType: !795, size: 192)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !43, line: 359, size: 192, elements: !796)
!796 = !{!797, !798, !799, !800, !801, !802}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !795, file: !43, line: 360, baseType: !41, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !795, file: !43, line: 360, baseType: !50, size: 8, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !795, file: !43, line: 360, baseType: !50, size: 8, offset: 72)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !795, file: !43, line: 360, baseType: !34, size: 16, offset: 80)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !795, file: !43, line: 360, baseType: !50, size: 8, offset: 96)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !795, file: !43, line: 360, baseType: !41, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !42, file: !43, line: 401, baseType: !96, size: 384)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !805, line: 42, baseType: !806)
!805 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!806 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !805, line: 154, baseType: !7)
!808 = !{!809, !814, !819, !824, !0, !829, !834, !839, !844}
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !3, line: 171, type: !811, isLocal: true, isDefinition: true)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 432, elements: !812)
!812 = !{!813}
!813 = !DISubrange(count: 54)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(scope: null, file: !3, line: 206, type: !816, isLocal: true, isDefinition: true)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 48, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: 6)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(scope: null, file: !3, line: 206, type: !821, isLocal: true, isDefinition: true)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 208, elements: !822)
!822 = !{!823}
!823 = !DISubrange(count: 26)
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(scope: null, file: !3, line: 283, type: !826, isLocal: true, isDefinition: true)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 608, elements: !827)
!827 = !{!828}
!828 = !DISubrange(count: 76)
!829 = !DIGlobalVariableExpression(var: !830, expr: !DIExpression())
!830 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !831, isLocal: true, isDefinition: true)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 168, elements: !832)
!832 = !{!833}
!833 = !DISubrange(count: 21)
!834 = !DIGlobalVariableExpression(var: !835, expr: !DIExpression())
!835 = distinct !DIGlobalVariable(scope: null, file: !3, line: 389, type: !836, isLocal: true, isDefinition: true)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 8, elements: !837)
!837 = !{!838}
!838 = !DISubrange(count: 1)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(scope: null, file: !3, line: 438, type: !841, isLocal: true, isDefinition: true)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 440, elements: !842)
!842 = !{!843}
!843 = !DISubrange(count: 55)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !3, line: 454, type: !846, isLocal: true, isDefinition: true)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 472, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 59)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, size: 80, elements: !851)
!850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!851 = !{!852}
!852 = !DISubrange(count: 10)
!853 = !{i32 7, !"Dwarf Version", i32 5}
!854 = !{i32 2, !"Debug Info Version", i32 3}
!855 = !{i32 1, !"wchar_size", i32 2}
!856 = !{i32 8, !"cf-protection-branch", i32 1}
!857 = !{i32 4, !"function_return_thunk_extern", i32 1}
!858 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!859 = !{i32 1, !"Code Model", i32 2}
!860 = !{i32 1, !"override-stack-alignment", i32 8}
!861 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!862 = distinct !DISubprogram(name: "acpi_ds_build_internal_package_obj", scope: !3, file: !3, line: 55, type: !863, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !865)
!863 = !DISubroutineType(types: !864)
!864 = !{!28, !162, !196, !30, !126}
!865 = !{!866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877}
!866 = !DILocalVariable(name: "walk_state", arg: 1, scope: !862, file: !3, line: 55, type: !162)
!867 = !DILocalVariable(name: "op", arg: 2, scope: !862, file: !3, line: 56, type: !196)
!868 = !DILocalVariable(name: "element_count", arg: 3, scope: !862, file: !3, line: 57, type: !30)
!869 = !DILocalVariable(name: "obj_desc_ptr", arg: 4, scope: !862, file: !3, line: 58, type: !126)
!870 = !DILocalVariable(name: "arg", scope: !862, file: !3, line: 60, type: !196)
!871 = !DILocalVariable(name: "parent", scope: !862, file: !3, line: 61, type: !196)
!872 = !DILocalVariable(name: "obj_desc", scope: !862, file: !3, line: 62, type: !41)
!873 = !DILocalVariable(name: "status", scope: !862, file: !3, line: 63, type: !28)
!874 = !DILocalVariable(name: "module_level_code", scope: !862, file: !3, line: 64, type: !50)
!875 = !DILocalVariable(name: "reference_count", scope: !862, file: !3, line: 65, type: !34)
!876 = !DILocalVariable(name: "index", scope: !862, file: !3, line: 66, type: !30)
!877 = !DILocalVariable(name: "i", scope: !862, file: !3, line: 67, type: !30)
!878 = !DILocation(line: 55, column: 60, scope: !862)
!879 = !DILocation(line: 56, column: 33, scope: !862)
!880 = !DILocation(line: 57, column: 12, scope: !862)
!881 = !DILocation(line: 58, column: 36, scope: !862)
!882 = !DILocation(line: 60, column: 2, scope: !862)
!883 = !DILocation(line: 60, column: 27, scope: !862)
!884 = !DILocation(line: 61, column: 2, scope: !862)
!885 = !DILocation(line: 61, column: 27, scope: !862)
!886 = !DILocation(line: 62, column: 2, scope: !862)
!887 = !DILocation(line: 62, column: 29, scope: !862)
!888 = !DILocation(line: 63, column: 2, scope: !862)
!889 = !DILocation(line: 63, column: 14, scope: !862)
!890 = !DILocation(line: 64, column: 2, scope: !862)
!891 = !DILocation(line: 64, column: 5, scope: !862)
!892 = !DILocation(line: 65, column: 2, scope: !862)
!893 = !DILocation(line: 65, column: 6, scope: !862)
!894 = !DILocation(line: 66, column: 2, scope: !862)
!895 = !DILocation(line: 66, column: 6, scope: !862)
!896 = !DILocation(line: 67, column: 2, scope: !862)
!897 = !DILocation(line: 67, column: 6, scope: !862)
!898 = !DILocation(line: 73, column: 6, scope: !899)
!899 = distinct !DILexicalBlock(scope: !862, file: !3, line: 73, column: 6)
!900 = !DILocation(line: 73, column: 18, scope: !899)
!901 = !DILocation(line: 73, column: 30, scope: !899)
!902 = !DILocation(line: 73, column: 6, scope: !862)
!903 = !DILocation(line: 74, column: 21, scope: !904)
!904 = distinct !DILexicalBlock(scope: !899, file: !3, line: 73, column: 57)
!905 = !DILocation(line: 75, column: 2, scope: !904)
!906 = !DILocation(line: 79, column: 11, scope: !862)
!907 = !DILocation(line: 79, column: 22, scope: !862)
!908 = !DILocation(line: 79, column: 9, scope: !862)
!909 = !DILocation(line: 80, column: 2, scope: !862)
!910 = !DILocation(line: 80, column: 10, scope: !862)
!911 = !DILocation(line: 80, column: 25, scope: !862)
!912 = !DILocation(line: 80, column: 36, scope: !862)
!913 = !DILocation(line: 80, column: 55, scope: !862)
!914 = !DILocation(line: 81, column: 10, scope: !862)
!915 = !DILocation(line: 81, column: 25, scope: !862)
!916 = !DILocation(line: 81, column: 36, scope: !862)
!917 = !DILocation(line: 82, column: 12, scope: !918)
!918 = distinct !DILexicalBlock(scope: !862, file: !3, line: 81, column: 65)
!919 = !DILocation(line: 82, column: 27, scope: !918)
!920 = !DILocation(line: 82, column: 10, scope: !918)
!921 = distinct !{!921, !909, !922, !923, !924}
!922 = !DILocation(line: 83, column: 2, scope: !862)
!923 = !{!"llvm.loop.mustprogress"}
!924 = !{!"llvm.loop.unroll.disable"}
!925 = !DILocation(line: 90, column: 14, scope: !862)
!926 = !DILocation(line: 90, column: 13, scope: !862)
!927 = !DILocation(line: 90, column: 11, scope: !862)
!928 = !DILocation(line: 91, column: 7, scope: !929)
!929 = distinct !DILexicalBlock(scope: !862, file: !3, line: 91, column: 6)
!930 = !DILocation(line: 91, column: 6, scope: !862)
!931 = !DILocation(line: 92, column: 14, scope: !932)
!932 = distinct !DILexicalBlock(scope: !929, file: !3, line: 91, column: 17)
!933 = !DILocation(line: 92, column: 12, scope: !932)
!934 = !DILocation(line: 93, column: 19, scope: !932)
!935 = !DILocation(line: 93, column: 4, scope: !932)
!936 = !DILocation(line: 93, column: 17, scope: !932)
!937 = !DILocation(line: 94, column: 8, scope: !938)
!938 = distinct !DILexicalBlock(scope: !932, file: !3, line: 94, column: 7)
!939 = !DILocation(line: 94, column: 7, scope: !932)
!940 = !DILocation(line: 95, column: 4, scope: !941)
!941 = distinct !DILexicalBlock(scope: !938, file: !3, line: 94, column: 18)
!942 = !DILocation(line: 98, column: 28, scope: !932)
!943 = !DILocation(line: 98, column: 43, scope: !932)
!944 = !DILocation(line: 98, column: 3, scope: !932)
!945 = !DILocation(line: 98, column: 21, scope: !932)
!946 = !DILocation(line: 98, column: 26, scope: !932)
!947 = !DILocation(line: 99, column: 2, scope: !932)
!948 = !DILocation(line: 101, column: 6, scope: !949)
!949 = distinct !DILexicalBlock(scope: !862, file: !3, line: 101, column: 6)
!950 = !DILocation(line: 101, column: 24, scope: !949)
!951 = !DILocation(line: 101, column: 30, scope: !949)
!952 = !DILocation(line: 101, column: 6, scope: !862)
!953 = !DILocation(line: 102, column: 3, scope: !954)
!954 = distinct !DILexicalBlock(scope: !949, file: !3, line: 101, column: 51)
!955 = !DILocation(line: 111, column: 7, scope: !956)
!956 = distinct !DILexicalBlock(scope: !862, file: !3, line: 111, column: 6)
!957 = !DILocation(line: 111, column: 25, scope: !956)
!958 = !DILocation(line: 111, column: 6, scope: !862)
!959 = !DILocation(line: 112, column: 32, scope: !960)
!960 = distinct !DILexicalBlock(scope: !956, file: !3, line: 111, column: 35)
!961 = !DILocation(line: 112, column: 3, scope: !960)
!962 = !DILocation(line: 112, column: 21, scope: !960)
!963 = !DILocation(line: 112, column: 30, scope: !960)
!964 = !DILocation(line: 119, column: 8, scope: !965)
!965 = distinct !DILexicalBlock(scope: !960, file: !3, line: 119, column: 7)
!966 = !DILocation(line: 119, column: 26, scope: !965)
!967 = !DILocation(line: 119, column: 7, scope: !960)
!968 = !DILocation(line: 120, column: 31, scope: !969)
!969 = distinct !DILexicalBlock(scope: !965, file: !3, line: 119, column: 36)
!970 = !DILocation(line: 120, column: 4, scope: !969)
!971 = !DILocation(line: 121, column: 4, scope: !969)
!972 = !DILocation(line: 124, column: 29, scope: !960)
!973 = !DILocation(line: 124, column: 3, scope: !960)
!974 = !DILocation(line: 124, column: 21, scope: !960)
!975 = !DILocation(line: 124, column: 27, scope: !960)
!976 = !DILocation(line: 125, column: 2, scope: !960)
!977 = !DILocation(line: 129, column: 8, scope: !862)
!978 = !DILocation(line: 129, column: 19, scope: !862)
!979 = !DILocation(line: 129, column: 25, scope: !862)
!980 = !DILocation(line: 129, column: 6, scope: !862)
!981 = !DILocation(line: 130, column: 8, scope: !862)
!982 = !DILocation(line: 130, column: 20, scope: !862)
!983 = !DILocation(line: 130, column: 6, scope: !862)
!984 = !DILocation(line: 138, column: 6, scope: !985)
!985 = distinct !DILexicalBlock(scope: !862, file: !3, line: 138, column: 6)
!986 = !DILocation(line: 138, column: 6, scope: !862)
!987 = !DILocation(line: 139, column: 33, scope: !988)
!988 = distinct !DILexicalBlock(scope: !985, file: !3, line: 138, column: 25)
!989 = !DILocation(line: 139, column: 45, scope: !988)
!990 = !DILocation(line: 139, column: 3, scope: !988)
!991 = !DILocation(line: 139, column: 21, scope: !988)
!992 = !DILocation(line: 139, column: 31, scope: !988)
!993 = !DILocation(line: 140, column: 3, scope: !988)
!994 = !DILocation(line: 140, column: 21, scope: !988)
!995 = !DILocation(line: 140, column: 32, scope: !988)
!996 = !DILocation(line: 145, column: 2, scope: !988)
!997 = !DILocation(line: 153, column: 9, scope: !998)
!998 = distinct !DILexicalBlock(scope: !862, file: !3, line: 153, column: 2)
!999 = !DILocation(line: 153, column: 7, scope: !998)
!1000 = !DILocation(line: 153, column: 14, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !998, file: !3, line: 153, column: 2)
!1002 = !DILocation(line: 153, column: 18, scope: !1001)
!1003 = !DILocation(line: 153, column: 22, scope: !1001)
!1004 = !DILocation(line: 153, column: 26, scope: !1001)
!1005 = !DILocation(line: 153, column: 24, scope: !1001)
!1006 = !DILocation(line: 0, scope: !1001)
!1007 = !DILocation(line: 153, column: 2, scope: !998)
!1008 = !DILocation(line: 154, column: 7, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 154, column: 7)
!1010 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 153, column: 47)
!1011 = !DILocation(line: 154, column: 19, scope: !1009)
!1012 = !DILocation(line: 154, column: 30, scope: !1009)
!1013 = !DILocation(line: 154, column: 7, scope: !1010)
!1014 = !DILocation(line: 155, column: 9, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 155, column: 8)
!1016 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 154, column: 58)
!1017 = !DILocation(line: 155, column: 21, scope: !1015)
!1018 = !DILocation(line: 155, column: 8, scope: !1016)
!1019 = !DILocation(line: 171, column: 5, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 155, column: 27)
!1021 = !DILocation(line: 176, column: 30, scope: !1020)
!1022 = !DILocation(line: 176, column: 42, scope: !1020)
!1023 = !DILocation(line: 177, column: 17, scope: !1020)
!1024 = !DILocation(line: 176, column: 5, scope: !1020)
!1025 = !DILocation(line: 178, column: 5, scope: !1020)
!1026 = !DILocation(line: 181, column: 8, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 181, column: 8)
!1028 = !DILocation(line: 181, column: 20, scope: !1027)
!1029 = !DILocation(line: 181, column: 26, scope: !1027)
!1030 = !DILocation(line: 181, column: 31, scope: !1027)
!1031 = !DILocation(line: 181, column: 8, scope: !1016)
!1032 = !DILocation(line: 186, column: 5, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 181, column: 52)
!1034 = !DILocation(line: 186, column: 17, scope: !1033)
!1035 = !DILocation(line: 186, column: 28, scope: !1033)
!1036 = !DILocation(line: 188, column: 39, scope: !1033)
!1037 = !DILocation(line: 189, column: 11, scope: !1033)
!1038 = !DILocation(line: 190, column: 12, scope: !1033)
!1039 = !DILocation(line: 192, column: 11, scope: !1033)
!1040 = !DILocation(line: 192, column: 20, scope: !1033)
!1041 = !DILocation(line: 188, column: 9, scope: !1033)
!1042 = !DILocation(line: 187, column: 12, scope: !1033)
!1043 = !DILocation(line: 193, column: 4, scope: !1033)
!1044 = !DILocation(line: 197, column: 9, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 193, column: 11)
!1046 = !DILocation(line: 196, column: 5, scope: !1045)
!1047 = !DILocation(line: 196, column: 23, scope: !1045)
!1048 = !DILocation(line: 196, column: 32, scope: !1045)
!1049 = !DILocation(line: 196, column: 35, scope: !1045)
!1050 = !DILocation(line: 200, column: 3, scope: !1016)
!1051 = !DILocation(line: 202, column: 38, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 200, column: 10)
!1053 = !DILocation(line: 202, column: 50, scope: !1052)
!1054 = !DILocation(line: 203, column: 11, scope: !1052)
!1055 = !DILocation(line: 204, column: 10, scope: !1052)
!1056 = !DILocation(line: 204, column: 19, scope: !1052)
!1057 = !DILocation(line: 202, column: 8, scope: !1052)
!1058 = !DILocation(line: 201, column: 11, scope: !1052)
!1059 = !DILocation(line: 205, column: 8, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 205, column: 8)
!1061 = !DILocation(line: 205, column: 15, scope: !1060)
!1062 = !DILocation(line: 205, column: 8, scope: !1052)
!1063 = !DILocation(line: 206, column: 5, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 205, column: 32)
!1065 = !DILocation(line: 208, column: 4, scope: !1064)
!1066 = !DILocation(line: 210, column: 9, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 210, column: 8)
!1068 = !DILocation(line: 210, column: 8, scope: !1052)
!1069 = !DILocation(line: 218, column: 13, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 210, column: 28)
!1071 = !DILocation(line: 219, column: 13, scope: !1070)
!1072 = !DILocation(line: 219, column: 22, scope: !1070)
!1073 = !DILocation(line: 220, column: 14, scope: !1070)
!1074 = !DILocation(line: 221, column: 13, scope: !1070)
!1075 = !DILocation(line: 221, column: 22, scope: !1070)
!1076 = !DILocation(line: 217, column: 5, scope: !1070)
!1077 = !DILocation(line: 222, column: 4, scope: !1070)
!1078 = !DILocation(line: 225, column: 8, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 225, column: 7)
!1080 = !DILocation(line: 225, column: 7, scope: !1079)
!1081 = !DILocation(line: 225, column: 7, scope: !1010)
!1082 = !DILocation(line: 230, column: 10, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 225, column: 22)
!1084 = !DILocation(line: 230, column: 9, scope: !1083)
!1085 = !DILocation(line: 230, column: 32, scope: !1083)
!1086 = !DILocation(line: 229, column: 20, scope: !1083)
!1087 = !DILocation(line: 231, column: 8, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 231, column: 8)
!1089 = !DILocation(line: 231, column: 24, scope: !1088)
!1090 = !DILocation(line: 231, column: 8, scope: !1083)
!1091 = !DILocation(line: 236, column: 16, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 236, column: 5)
!1093 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 231, column: 29)
!1094 = !DILocation(line: 236, column: 10, scope: !1092)
!1095 = !DILocation(line: 237, column: 10, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 236, column: 5)
!1097 = !DILocation(line: 237, column: 24, scope: !1096)
!1098 = !DILocation(line: 237, column: 19, scope: !1096)
!1099 = !DILocation(line: 237, column: 40, scope: !1096)
!1100 = !DILocation(line: 237, column: 16, scope: !1096)
!1101 = !DILocation(line: 236, column: 5, scope: !1092)
!1102 = !DILocation(line: 239, column: 29, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 238, column: 19)
!1104 = !DILocation(line: 241, column: 15, scope: !1103)
!1105 = !DILocation(line: 241, column: 24, scope: !1103)
!1106 = !DILocation(line: 239, column: 6, scope: !1103)
!1107 = !DILocation(line: 242, column: 5, scope: !1103)
!1108 = !DILocation(line: 238, column: 15, scope: !1096)
!1109 = !DILocation(line: 236, column: 5, scope: !1096)
!1110 = distinct !{!1110, !1101, !1111, !923, !924}
!1111 = !DILocation(line: 242, column: 5, scope: !1092)
!1112 = !DILocation(line: 243, column: 4, scope: !1093)
!1113 = !DILocation(line: 244, column: 3, scope: !1083)
!1114 = !DILocation(line: 246, column: 9, scope: !1010)
!1115 = !DILocation(line: 246, column: 21, scope: !1010)
!1116 = !DILocation(line: 246, column: 7, scope: !1010)
!1117 = !DILocation(line: 247, column: 2, scope: !1010)
!1118 = !DILocation(line: 153, column: 43, scope: !1001)
!1119 = !DILocation(line: 153, column: 2, scope: !1001)
!1120 = distinct !{!1120, !1007, !1121, !923, !924}
!1121 = !DILocation(line: 247, column: 2, scope: !998)
!1122 = !DILocation(line: 251, column: 6, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !862, file: !3, line: 251, column: 6)
!1124 = !DILocation(line: 251, column: 6, scope: !862)
!1125 = !DILocation(line: 264, column: 3, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 251, column: 11)
!1127 = !DILocation(line: 264, column: 10, scope: !1126)
!1128 = !DILocation(line: 269, column: 8, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 269, column: 8)
!1130 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 264, column: 15)
!1131 = !DILocation(line: 269, column: 20, scope: !1129)
!1132 = !DILocation(line: 269, column: 8, scope: !1130)
!1133 = !DILocation(line: 270, column: 30, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 269, column: 26)
!1135 = !DILocation(line: 270, column: 5, scope: !1134)
!1136 = !DILocation(line: 274, column: 5, scope: !1134)
!1137 = !DILocation(line: 274, column: 17, scope: !1134)
!1138 = !DILocation(line: 274, column: 22, scope: !1134)
!1139 = !DILocation(line: 275, column: 4, scope: !1134)
!1140 = !DILocation(line: 279, column: 5, scope: !1130)
!1141 = !DILocation(line: 280, column: 10, scope: !1130)
!1142 = !DILocation(line: 280, column: 22, scope: !1130)
!1143 = !DILocation(line: 280, column: 8, scope: !1130)
!1144 = distinct !{!1144, !1125, !1145, !923, !924}
!1145 = !DILocation(line: 281, column: 3, scope: !1126)
!1146 = !DILocation(line: 283, column: 3, scope: !1126)
!1147 = !DILocation(line: 286, column: 2, scope: !1126)
!1148 = !DILocation(line: 286, column: 13, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 286, column: 13)
!1150 = !DILocation(line: 286, column: 17, scope: !1149)
!1151 = !DILocation(line: 286, column: 15, scope: !1149)
!1152 = !DILocation(line: 286, column: 13, scope: !1123)
!1153 = !DILocation(line: 299, column: 2, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 286, column: 32)
!1155 = !DILocation(line: 303, column: 7, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !862, file: !3, line: 303, column: 6)
!1157 = !DILocation(line: 303, column: 6, scope: !862)
!1158 = !DILocation(line: 304, column: 3, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 303, column: 26)
!1160 = !DILocation(line: 304, column: 21, scope: !1159)
!1161 = !DILocation(line: 304, column: 27, scope: !1159)
!1162 = !DILocation(line: 305, column: 2, scope: !1159)
!1163 = !DILocation(line: 307, column: 20, scope: !862)
!1164 = !DILocation(line: 307, column: 2, scope: !862)
!1165 = !DILocation(line: 307, column: 13, scope: !862)
!1166 = !DILocation(line: 307, column: 18, scope: !862)
!1167 = !DILocation(line: 308, column: 2, scope: !862)
!1168 = !DILocation(line: 309, column: 1, scope: !862)
!1169 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !1170, file: !1170, line: 436, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1170 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!41, !1173, !30, !30, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !29, line: 644, baseType: !30)
!1175 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1176, file: !1176, line: 55, type: !1177, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1179)
!1176 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!139, !37}
!1179 = !{!1180, !1181, !1183, !1186, !1187, !1190}
!1180 = !DILocalVariable(name: "size", arg: 1, scope: !1175, file: !1176, line: 55, type: !37)
!1181 = !DILocalVariable(name: "_flags", scope: !1182, file: !1176, line: 57, type: !806)
!1182 = distinct !DILexicalBlock(scope: !1175, file: !1176, line: 57, column: 23)
!1183 = !DILocalVariable(name: "__dummy", scope: !1184, file: !1176, line: 57, type: !806)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !1176, line: 57, column: 23)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !1176, line: 57, column: 23)
!1186 = !DILocalVariable(name: "__dummy2", scope: !1184, file: !1176, line: 57, type: !806)
!1187 = !DILocalVariable(name: "__dummy", scope: !1188, file: !1176, line: 57, type: !806)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !1176, line: 57, column: 23)
!1189 = distinct !DILexicalBlock(scope: !1182, file: !1176, line: 57, column: 23)
!1190 = !DILocalVariable(name: "__dummy2", scope: !1188, file: !1176, line: 57, type: !806)
!1191 = !DILocation(line: 55, column: 55, scope: !1175)
!1192 = !DILocation(line: 57, column: 17, scope: !1175)
!1193 = !DILocation(line: 57, column: 23, scope: !1182)
!1194 = !DILocation(line: 57, column: 23, scope: !1184)
!1195 = !DILocation(line: 57, column: 23, scope: !1185)
!1196 = !DILocation(line: 57, column: 23, scope: !1188)
!1197 = !DILocation(line: 57, column: 23, scope: !1189)
!1198 = !DILocation(line: 57, column: 23, scope: !1175)
!1199 = !DILocation(line: 57, column: 9, scope: !1175)
!1200 = !DILocation(line: 57, column: 2, scope: !1175)
!1201 = !DISubprogram(name: "acpi_ut_delete_object_desc", scope: !1170, file: !1170, line: 449, type: !1202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{null, !41}
!1204 = !DISubprogram(name: "acpi_exception", scope: !1205, file: !1205, line: 906, type: !1206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1205 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1206 = !DISubroutineType(types: !1207)
!1207 = !{null, !1173, !30, !28, !1173, null}
!1208 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1170, file: !1170, line: 369, type: !1202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1209 = !DISubprogram(name: "acpi_ds_build_internal_object", scope: !1210, file: !1210, line: 206, type: !1211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1210 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!28, !162, !196, !126}
!1213 = !DISubprogram(name: "acpi_error", scope: !1205, file: !1205, line: 901, type: !1214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !1173, !30, !1173, null}
!1216 = distinct !DISubprogram(name: "acpi_ds_init_package_element", scope: !3, file: !3, line: 324, type: !1217, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1219)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!28, !50, !41, !278, !139}
!1219 = !{!1220, !1221, !1222, !1223, !1224}
!1220 = !DILocalVariable(name: "object_type", arg: 1, scope: !1216, file: !3, line: 324, type: !50)
!1221 = !DILocalVariable(name: "source_object", arg: 2, scope: !1216, file: !3, line: 325, type: !41)
!1222 = !DILocalVariable(name: "state", arg: 3, scope: !1216, file: !3, line: 326, type: !278)
!1223 = !DILocalVariable(name: "context", arg: 4, scope: !1216, file: !3, line: 326, type: !139)
!1224 = !DILocalVariable(name: "element_ptr", scope: !1216, file: !3, line: 328, type: !126)
!1225 = !DILocation(line: 324, column: 33, scope: !1216)
!1226 = !DILocation(line: 325, column: 36, scope: !1216)
!1227 = !DILocation(line: 326, column: 35, scope: !1216)
!1228 = !DILocation(line: 326, column: 48, scope: !1216)
!1229 = !DILocation(line: 328, column: 2, scope: !1216)
!1230 = !DILocation(line: 328, column: 30, scope: !1216)
!1231 = !DILocation(line: 332, column: 7, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 332, column: 6)
!1233 = !DILocation(line: 332, column: 6, scope: !1216)
!1234 = !DILocation(line: 333, column: 3, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 332, column: 22)
!1236 = !DILocation(line: 342, column: 6, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 342, column: 6)
!1238 = !DILocation(line: 342, column: 6, scope: !1216)
!1239 = !DILocation(line: 346, column: 47, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 342, column: 15)
!1241 = !DILocation(line: 346, column: 15, scope: !1240)
!1242 = !DILocation(line: 347, column: 2, scope: !1240)
!1243 = !DILocation(line: 350, column: 17, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 347, column: 9)
!1245 = !DILocation(line: 350, column: 28, scope: !1244)
!1246 = !DILocation(line: 350, column: 15, scope: !1244)
!1247 = !DILocation(line: 355, column: 6, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 355, column: 6)
!1249 = !DILocation(line: 355, column: 28, scope: !1248)
!1250 = !DILocation(line: 355, column: 33, scope: !1248)
!1251 = !DILocation(line: 355, column: 6, scope: !1216)
!1252 = !DILocation(line: 359, column: 35, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 355, column: 63)
!1254 = !DILocation(line: 359, column: 3, scope: !1253)
!1255 = !DILocation(line: 360, column: 2, scope: !1253)
!1256 = !DILocation(line: 360, column: 13, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 360, column: 13)
!1258 = !DILocation(line: 360, column: 35, scope: !1257)
!1259 = !DILocation(line: 360, column: 40, scope: !1257)
!1260 = !DILocation(line: 360, column: 13, scope: !1248)
!1261 = !DILocation(line: 361, column: 3, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 360, column: 62)
!1263 = !DILocation(line: 361, column: 26, scope: !1262)
!1264 = !DILocation(line: 361, column: 32, scope: !1262)
!1265 = !DILocation(line: 362, column: 2, scope: !1262)
!1266 = !DILocation(line: 364, column: 2, scope: !1216)
!1267 = !DILocation(line: 365, column: 1, scope: !1216)
!1268 = !DISubprogram(name: "acpi_ut_add_reference", scope: !1170, file: !1170, line: 367, type: !1202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1269 = !DISubprogram(name: "acpi_info", scope: !1205, file: !1205, line: 917, type: !1270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{null, !1173, null}
!1272 = distinct !DISubprogram(name: "acpi_ds_resolve_package_element", scope: !3, file: !3, line: 381, type: !1273, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1275)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{null, !126}
!1275 = !{!1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284}
!1276 = !DILocalVariable(name: "element_ptr", arg: 1, scope: !1272, file: !3, line: 381, type: !126)
!1277 = !DILocalVariable(name: "status", scope: !1272, file: !3, line: 383, type: !28)
!1278 = !DILocalVariable(name: "status2", scope: !1272, file: !3, line: 384, type: !28)
!1279 = !DILocalVariable(name: "scope_info", scope: !1272, file: !3, line: 385, type: !279)
!1280 = !DILocalVariable(name: "element", scope: !1272, file: !3, line: 386, type: !41)
!1281 = !DILocalVariable(name: "resolved_node", scope: !1272, file: !3, line: 387, type: !95)
!1282 = !DILocalVariable(name: "original_node", scope: !1272, file: !3, line: 388, type: !95)
!1283 = !DILocalVariable(name: "external_path", scope: !1272, file: !3, line: 389, type: !78)
!1284 = !DILocalVariable(name: "type", scope: !1272, file: !3, line: 390, type: !1174)
!1285 = !DILocation(line: 381, column: 61, scope: !1272)
!1286 = !DILocation(line: 383, column: 2, scope: !1272)
!1287 = !DILocation(line: 383, column: 14, scope: !1272)
!1288 = !DILocation(line: 384, column: 2, scope: !1272)
!1289 = !DILocation(line: 384, column: 14, scope: !1272)
!1290 = !DILocation(line: 385, column: 2, scope: !1272)
!1291 = !DILocation(line: 385, column: 27, scope: !1272)
!1292 = !DILocation(line: 386, column: 2, scope: !1272)
!1293 = !DILocation(line: 386, column: 29, scope: !1272)
!1294 = !DILocation(line: 386, column: 40, scope: !1272)
!1295 = !DILocation(line: 386, column: 39, scope: !1272)
!1296 = !DILocation(line: 387, column: 2, scope: !1272)
!1297 = !DILocation(line: 387, column: 30, scope: !1272)
!1298 = !DILocation(line: 388, column: 2, scope: !1272)
!1299 = !DILocation(line: 388, column: 30, scope: !1272)
!1300 = !DILocation(line: 389, column: 2, scope: !1272)
!1301 = !DILocation(line: 389, column: 8, scope: !1272)
!1302 = !DILocation(line: 390, column: 2, scope: !1272)
!1303 = !DILocation(line: 390, column: 19, scope: !1272)
!1304 = !DILocation(line: 396, column: 6, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 396, column: 6)
!1306 = !DILocation(line: 396, column: 25, scope: !1305)
!1307 = !DILocation(line: 396, column: 6, scope: !1272)
!1308 = !DILocation(line: 401, column: 3, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 396, column: 35)
!1310 = !DILocation(line: 406, column: 26, scope: !1272)
!1311 = !DILocation(line: 406, column: 45, scope: !1272)
!1312 = !DILocation(line: 406, column: 19, scope: !1272)
!1313 = !DILocation(line: 406, column: 24, scope: !1272)
!1314 = !DILocation(line: 408, column: 47, scope: !1272)
!1315 = !DILocation(line: 408, column: 66, scope: !1272)
!1316 = !DILocation(line: 408, column: 11, scope: !1272)
!1317 = !DILocation(line: 408, column: 9, scope: !1272)
!1318 = !DILocation(line: 412, column: 6, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 412, column: 6)
!1320 = !DILocation(line: 412, column: 6, scope: !1272)
!1321 = !DILocation(line: 413, column: 8, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 413, column: 7)
!1323 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 412, column: 28)
!1324 = !DILocation(line: 413, column: 15, scope: !1322)
!1325 = !DILocation(line: 414, column: 7, scope: !1322)
!1326 = !DILocation(line: 414, column: 10, scope: !1322)
!1327 = !DILocation(line: 413, column: 7, scope: !1323)
!1328 = !DILocation(line: 429, column: 30, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 414, column: 53)
!1330 = !DILocation(line: 429, column: 29, scope: !1329)
!1331 = !DILocation(line: 429, column: 4, scope: !1329)
!1332 = !DILocation(line: 430, column: 5, scope: !1329)
!1333 = !DILocation(line: 430, column: 17, scope: !1329)
!1334 = !DILocation(line: 431, column: 4, scope: !1329)
!1335 = !DILocation(line: 435, column: 18, scope: !1323)
!1336 = !DILocation(line: 436, column: 10, scope: !1323)
!1337 = !DILocation(line: 434, column: 13, scope: !1323)
!1338 = !DILocation(line: 434, column: 11, scope: !1323)
!1339 = !DILocation(line: 438, column: 3, scope: !1323)
!1340 = !DILocation(line: 441, column: 7, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 441, column: 7)
!1342 = !DILocation(line: 441, column: 7, scope: !1323)
!1343 = !DILocation(line: 442, column: 4, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 441, column: 30)
!1345 = !DILocation(line: 443, column: 3, scope: !1344)
!1346 = !DILocation(line: 447, column: 29, scope: !1323)
!1347 = !DILocation(line: 447, column: 28, scope: !1323)
!1348 = !DILocation(line: 447, column: 3, scope: !1323)
!1349 = !DILocation(line: 448, column: 4, scope: !1323)
!1350 = !DILocation(line: 448, column: 16, scope: !1323)
!1351 = !DILocation(line: 449, column: 3, scope: !1323)
!1352 = !DILocation(line: 450, column: 13, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 450, column: 13)
!1354 = !DILocation(line: 450, column: 28, scope: !1353)
!1355 = !DILocation(line: 450, column: 33, scope: !1353)
!1356 = !DILocation(line: 450, column: 13, scope: !1319)
!1357 = !DILocation(line: 454, column: 3, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 450, column: 51)
!1359 = !DILocation(line: 458, column: 4, scope: !1358)
!1360 = !DILocation(line: 458, column: 16, scope: !1358)
!1361 = !DILocation(line: 459, column: 3, scope: !1358)
!1362 = !DILocation(line: 466, column: 6, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 466, column: 6)
!1364 = !DILocation(line: 466, column: 21, scope: !1363)
!1365 = !DILocation(line: 466, column: 26, scope: !1363)
!1366 = !DILocation(line: 466, column: 6, scope: !1272)
!1367 = !DILocation(line: 467, column: 19, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 466, column: 52)
!1369 = !DILocation(line: 467, column: 17, scope: !1368)
!1370 = !DILocation(line: 469, column: 2, scope: !1368)
!1371 = !DILocation(line: 473, column: 2, scope: !1272)
!1372 = !DILocation(line: 473, column: 21, scope: !1272)
!1373 = !DILocation(line: 473, column: 30, scope: !1272)
!1374 = !DILocation(line: 474, column: 28, scope: !1272)
!1375 = !DILocation(line: 474, column: 2, scope: !1272)
!1376 = !DILocation(line: 474, column: 21, scope: !1272)
!1377 = !DILocation(line: 474, column: 26, scope: !1272)
!1378 = !DILocation(line: 475, column: 9, scope: !1272)
!1379 = !DILocation(line: 475, column: 28, scope: !1272)
!1380 = !DILocation(line: 475, column: 34, scope: !1272)
!1381 = !DILocation(line: 475, column: 7, scope: !1272)
!1382 = !DILocation(line: 491, column: 18, scope: !1272)
!1383 = !DILocation(line: 491, column: 16, scope: !1272)
!1384 = !DILocation(line: 492, column: 11, scope: !1272)
!1385 = !DILocation(line: 492, column: 9, scope: !1272)
!1386 = !DILocation(line: 493, column: 6, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 493, column: 6)
!1388 = !DILocation(line: 493, column: 6, scope: !1272)
!1389 = !DILocation(line: 494, column: 3, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 493, column: 28)
!1391 = !DILocation(line: 497, column: 10, scope: !1272)
!1392 = !DILocation(line: 497, column: 2, scope: !1272)
!1393 = !DILocation(line: 506, column: 3, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 497, column: 16)
!1395 = !DILocation(line: 516, column: 28, scope: !1394)
!1396 = !DILocation(line: 516, column: 43, scope: !1394)
!1397 = !DILocation(line: 516, column: 3, scope: !1394)
!1398 = !DILocation(line: 517, column: 3, scope: !1394)
!1399 = !DILocation(line: 525, column: 28, scope: !1394)
!1400 = !DILocation(line: 525, column: 3, scope: !1394)
!1401 = !DILocation(line: 526, column: 47, scope: !1394)
!1402 = !DILocation(line: 526, column: 4, scope: !1394)
!1403 = !DILocation(line: 526, column: 16, scope: !1394)
!1404 = !DILocation(line: 527, column: 3, scope: !1394)
!1405 = !DILocation(line: 530, column: 2, scope: !1272)
!1406 = !DILocation(line: 531, column: 1, scope: !1272)
!1407 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !1408, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1414)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!139, !1410, !807}
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !805, line: 61, baseType: !1411)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1412, line: 72, baseType: !1413)
!1412 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1412, line: 16, baseType: !806)
!1414 = !{!1415, !1416}
!1415 = !DILocalVariable(name: "size", arg: 1, scope: !1407, file: !12, line: 719, type: !1410)
!1416 = !DILocalVariable(name: "flags", arg: 2, scope: !1407, file: !12, line: 719, type: !807)
!1417 = !DILocation(line: 719, column: 52, scope: !1407)
!1418 = !DILocation(line: 719, column: 64, scope: !1407)
!1419 = !DILocation(line: 721, column: 17, scope: !1407)
!1420 = !DILocation(line: 721, column: 23, scope: !1407)
!1421 = !DILocation(line: 721, column: 29, scope: !1407)
!1422 = !DILocation(line: 721, column: 9, scope: !1407)
!1423 = !DILocation(line: 721, column: 2, scope: !1407)
!1424 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1425, file: !1425, line: 65, type: !1426, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1425 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!806}
!1428 = !DILocation(line: 67, column: 9, scope: !1424)
!1429 = !DILocation(line: 67, column: 2, scope: !1424)
!1430 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1425, file: !1425, line: 120, type: !1431, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1434)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!1433, !806}
!1433 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1434 = !{!1435}
!1435 = !DILocalVariable(name: "flags", arg: 1, scope: !1430, file: !1425, line: 120, type: !806)
!1436 = !DILocation(line: 120, column: 67, scope: !1430)
!1437 = !DILocation(line: 122, column: 11, scope: !1430)
!1438 = !DILocation(line: 122, column: 17, scope: !1430)
!1439 = !DILocation(line: 122, column: 9, scope: !1430)
!1440 = !DILocation(line: 122, column: 2, scope: !1430)
!1441 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !1408, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1442)
!1442 = !{!1443, !1444, !1445}
!1443 = !DILocalVariable(name: "size", arg: 1, scope: !1441, file: !12, line: 591, type: !1410)
!1444 = !DILocalVariable(name: "flags", arg: 2, scope: !1441, file: !12, line: 591, type: !807)
!1445 = !DILocalVariable(name: "index", scope: !1446, file: !12, line: 594, type: !7)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !12, line: 593, column: 42)
!1447 = distinct !DILexicalBlock(scope: !1441, file: !12, line: 593, column: 6)
!1448 = !DILocation(line: 591, column: 61, scope: !1441)
!1449 = !DILocation(line: 591, column: 73, scope: !1441)
!1450 = !DILocation(line: 593, column: 27, scope: !1447)
!1451 = !DILocation(line: 593, column: 6, scope: !1447)
!1452 = !DILocation(line: 593, column: 33, scope: !1447)
!1453 = !DILocation(line: 593, column: 36, scope: !1447)
!1454 = !DILocation(line: 593, column: 6, scope: !1441)
!1455 = !DILocation(line: 594, column: 3, scope: !1446)
!1456 = !DILocation(line: 594, column: 16, scope: !1446)
!1457 = !DILocation(line: 596, column: 7, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1446, file: !12, line: 596, column: 7)
!1459 = !DILocation(line: 596, column: 12, scope: !1458)
!1460 = !DILocation(line: 596, column: 7, scope: !1446)
!1461 = !DILocation(line: 597, column: 25, scope: !1458)
!1462 = !DILocation(line: 597, column: 31, scope: !1458)
!1463 = !DILocation(line: 597, column: 11, scope: !1458)
!1464 = !DILocation(line: 597, column: 4, scope: !1458)
!1465 = !DILocation(line: 599, column: 11, scope: !1446)
!1466 = !DILocation(line: 599, column: 9, scope: !1446)
!1467 = !DILocation(line: 601, column: 33, scope: !1446)
!1468 = !DILocation(line: 601, column: 40, scope: !1446)
!1469 = !DILocation(line: 601, column: 20, scope: !1446)
!1470 = !DILocation(line: 601, column: 5, scope: !1446)
!1471 = !DILocation(line: 601, column: 51, scope: !1446)
!1472 = !DILocation(line: 602, column: 5, scope: !1446)
!1473 = !DILocation(line: 602, column: 12, scope: !1446)
!1474 = !DILocation(line: 600, column: 10, scope: !1446)
!1475 = !DILocation(line: 600, column: 3, scope: !1446)
!1476 = !DILocation(line: 603, column: 2, scope: !1447)
!1477 = !DILocation(line: 604, column: 19, scope: !1441)
!1478 = !DILocation(line: 604, column: 25, scope: !1441)
!1479 = !DILocation(line: 604, column: 9, scope: !1441)
!1480 = !DILocation(line: 604, column: 2, scope: !1441)
!1481 = !DILocation(line: 605, column: 1, scope: !1441)
!1482 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !1408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1483 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !1484, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1488)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!7, !1410, !1486}
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !805, line: 35, baseType: !1487)
!1487 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1488 = !{!1489, !1490}
!1489 = !DILocalVariable(name: "size", arg: 1, scope: !1483, file: !12, line: 444, type: !1410)
!1490 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1483, file: !12, line: 445, type: !1486)
!1491 = !DILocation(line: 444, column: 60, scope: !1483)
!1492 = !DILocation(line: 445, column: 16, scope: !1483)
!1493 = !DILocation(line: 447, column: 7, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 447, column: 6)
!1495 = !DILocation(line: 447, column: 6, scope: !1483)
!1496 = !DILocation(line: 448, column: 3, scope: !1494)
!1497 = !DILocation(line: 450, column: 6, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 450, column: 6)
!1499 = !DILocation(line: 450, column: 11, scope: !1498)
!1500 = !DILocation(line: 450, column: 6, scope: !1483)
!1501 = !DILocation(line: 451, column: 3, scope: !1498)
!1502 = !DILocation(line: 453, column: 32, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 453, column: 6)
!1504 = !DILocation(line: 453, column: 37, scope: !1503)
!1505 = !DILocation(line: 453, column: 42, scope: !1503)
!1506 = !DILocation(line: 453, column: 45, scope: !1503)
!1507 = !DILocation(line: 453, column: 50, scope: !1503)
!1508 = !DILocation(line: 453, column: 6, scope: !1483)
!1509 = !DILocation(line: 454, column: 3, scope: !1503)
!1510 = !DILocation(line: 455, column: 32, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 455, column: 6)
!1512 = !DILocation(line: 455, column: 37, scope: !1511)
!1513 = !DILocation(line: 455, column: 43, scope: !1511)
!1514 = !DILocation(line: 455, column: 46, scope: !1511)
!1515 = !DILocation(line: 455, column: 51, scope: !1511)
!1516 = !DILocation(line: 455, column: 6, scope: !1483)
!1517 = !DILocation(line: 456, column: 3, scope: !1511)
!1518 = !DILocation(line: 457, column: 6, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 457, column: 6)
!1520 = !DILocation(line: 457, column: 11, scope: !1519)
!1521 = !DILocation(line: 457, column: 6, scope: !1483)
!1522 = !DILocation(line: 457, column: 26, scope: !1519)
!1523 = !DILocation(line: 458, column: 6, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 458, column: 6)
!1525 = !DILocation(line: 458, column: 11, scope: !1524)
!1526 = !DILocation(line: 458, column: 6, scope: !1483)
!1527 = !DILocation(line: 458, column: 26, scope: !1524)
!1528 = !DILocation(line: 459, column: 6, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 459, column: 6)
!1530 = !DILocation(line: 459, column: 11, scope: !1529)
!1531 = !DILocation(line: 459, column: 6, scope: !1483)
!1532 = !DILocation(line: 459, column: 26, scope: !1529)
!1533 = !DILocation(line: 460, column: 6, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 460, column: 6)
!1535 = !DILocation(line: 460, column: 11, scope: !1534)
!1536 = !DILocation(line: 460, column: 6, scope: !1483)
!1537 = !DILocation(line: 460, column: 26, scope: !1534)
!1538 = !DILocation(line: 461, column: 6, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 461, column: 6)
!1540 = !DILocation(line: 461, column: 11, scope: !1539)
!1541 = !DILocation(line: 461, column: 6, scope: !1483)
!1542 = !DILocation(line: 461, column: 26, scope: !1539)
!1543 = !DILocation(line: 462, column: 6, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 462, column: 6)
!1545 = !DILocation(line: 462, column: 11, scope: !1544)
!1546 = !DILocation(line: 462, column: 6, scope: !1483)
!1547 = !DILocation(line: 462, column: 26, scope: !1544)
!1548 = !DILocation(line: 463, column: 6, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 463, column: 6)
!1550 = !DILocation(line: 463, column: 11, scope: !1549)
!1551 = !DILocation(line: 463, column: 6, scope: !1483)
!1552 = !DILocation(line: 463, column: 26, scope: !1549)
!1553 = !DILocation(line: 464, column: 6, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 464, column: 6)
!1555 = !DILocation(line: 464, column: 11, scope: !1554)
!1556 = !DILocation(line: 464, column: 6, scope: !1483)
!1557 = !DILocation(line: 464, column: 26, scope: !1554)
!1558 = !DILocation(line: 465, column: 6, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 465, column: 6)
!1560 = !DILocation(line: 465, column: 11, scope: !1559)
!1561 = !DILocation(line: 465, column: 6, scope: !1483)
!1562 = !DILocation(line: 465, column: 26, scope: !1559)
!1563 = !DILocation(line: 466, column: 6, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 466, column: 6)
!1565 = !DILocation(line: 466, column: 11, scope: !1564)
!1566 = !DILocation(line: 466, column: 6, scope: !1483)
!1567 = !DILocation(line: 466, column: 26, scope: !1564)
!1568 = !DILocation(line: 467, column: 6, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 467, column: 6)
!1570 = !DILocation(line: 467, column: 11, scope: !1569)
!1571 = !DILocation(line: 467, column: 6, scope: !1483)
!1572 = !DILocation(line: 467, column: 26, scope: !1569)
!1573 = !DILocation(line: 468, column: 6, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 468, column: 6)
!1575 = !DILocation(line: 468, column: 11, scope: !1574)
!1576 = !DILocation(line: 468, column: 6, scope: !1483)
!1577 = !DILocation(line: 468, column: 26, scope: !1574)
!1578 = !DILocation(line: 469, column: 6, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 469, column: 6)
!1580 = !DILocation(line: 469, column: 11, scope: !1579)
!1581 = !DILocation(line: 469, column: 6, scope: !1483)
!1582 = !DILocation(line: 469, column: 26, scope: !1579)
!1583 = !DILocation(line: 470, column: 6, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 470, column: 6)
!1585 = !DILocation(line: 470, column: 11, scope: !1584)
!1586 = !DILocation(line: 470, column: 6, scope: !1483)
!1587 = !DILocation(line: 470, column: 26, scope: !1584)
!1588 = !DILocation(line: 471, column: 6, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 471, column: 6)
!1590 = !DILocation(line: 471, column: 11, scope: !1589)
!1591 = !DILocation(line: 471, column: 6, scope: !1483)
!1592 = !DILocation(line: 471, column: 26, scope: !1589)
!1593 = !DILocation(line: 472, column: 6, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 472, column: 6)
!1595 = !DILocation(line: 472, column: 11, scope: !1594)
!1596 = !DILocation(line: 472, column: 6, scope: !1483)
!1597 = !DILocation(line: 472, column: 26, scope: !1594)
!1598 = !DILocation(line: 473, column: 6, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 473, column: 6)
!1600 = !DILocation(line: 473, column: 11, scope: !1599)
!1601 = !DILocation(line: 473, column: 6, scope: !1483)
!1602 = !DILocation(line: 473, column: 26, scope: !1599)
!1603 = !DILocation(line: 474, column: 6, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 474, column: 6)
!1605 = !DILocation(line: 474, column: 11, scope: !1604)
!1606 = !DILocation(line: 474, column: 6, scope: !1483)
!1607 = !DILocation(line: 474, column: 27, scope: !1604)
!1608 = !DILocation(line: 475, column: 6, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 475, column: 6)
!1610 = !DILocation(line: 475, column: 11, scope: !1609)
!1611 = !DILocation(line: 475, column: 6, scope: !1483)
!1612 = !DILocation(line: 475, column: 32, scope: !1609)
!1613 = !DILocation(line: 477, column: 50, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1483, file: !12, line: 477, column: 6)
!1615 = !{i8 0, i8 2}
!1616 = !{}
!1617 = !DILocation(line: 477, column: 6, scope: !1483)
!1618 = !DILocation(line: 478, column: 3, scope: !1614)
!1619 = !DILocation(line: 478, column: 3, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !12, line: 478, column: 3)
!1621 = distinct !DILexicalBlock(scope: !1614, file: !12, line: 478, column: 3)
!1622 = !{i32 -2143033424}
!1623 = !DILocation(line: 478, column: 3, scope: !1621)
!1624 = !DILocation(line: 480, column: 3, scope: !1614)
!1625 = !DILocation(line: 480, column: 3, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1614, file: !12, line: 480, column: 3)
!1627 = !DILocation(line: 480, column: 3, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1626, file: !12, line: 480, column: 3)
!1629 = !DILocation(line: 480, column: 3, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1626, file: !12, line: 480, column: 3)
!1631 = !{i64 2151934075, i64 2151934104, i64 2151934150, i64 2151934208, i64 2151934262, i64 2151934316, i64 2151934371, i64 2151934402}
!1632 = !DILocation(line: 483, column: 2, scope: !1483)
!1633 = !DILocation(line: 484, column: 1, scope: !1483)
!1634 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !1635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!139, !1637, !807, !1410}
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1639, line: 11, flags: DIFlagFwdDecl)
!1639 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1640 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !1641, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1643)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!11, !807, !806}
!1643 = !{!1644, !1645}
!1644 = !DILocalVariable(name: "flags", arg: 1, scope: !1640, file: !12, line: 401, type: !807)
!1645 = !DILocalVariable(name: "caller", arg: 2, scope: !1640, file: !12, line: 401, type: !806)
!1646 = !DILocation(line: 401, column: 67, scope: !1640)
!1647 = !DILocation(line: 401, column: 88, scope: !1640)
!1648 = !DILocation(line: 407, column: 6, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1640, file: !12, line: 407, column: 6)
!1650 = !DILocation(line: 407, column: 6, scope: !1640)
!1651 = !DILocation(line: 413, column: 3, scope: !1649)
!1652 = !DILocation(line: 423, column: 38, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1640, file: !12, line: 423, column: 6)
!1654 = !DILocation(line: 423, column: 44, scope: !1653)
!1655 = !DILocation(line: 423, column: 6, scope: !1640)
!1656 = !DILocation(line: 424, column: 3, scope: !1653)
!1657 = !DILocation(line: 426, column: 3, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1640, file: !12, line: 425, column: 6)
!1659 = !DILocation(line: 429, column: 1, scope: !1640)
!1660 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !1408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1661 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !1662, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{null}
!1664 = distinct !DISubprogram(name: "native_save_fl", scope: !1425, file: !1425, line: 17, type: !1426, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1665)
!1665 = !{!1666}
!1666 = !DILocalVariable(name: "flags", scope: !1664, file: !1425, line: 19, type: !806)
!1667 = !DILocation(line: 19, column: 2, scope: !1664)
!1668 = !DILocation(line: 19, column: 16, scope: !1664)
!1669 = !DILocation(line: 26, column: 2, scope: !1664)
!1670 = !{i64 1523994, i64 1524015}
!1671 = !DILocation(line: 32, column: 9, scope: !1664)
!1672 = !DILocation(line: 33, column: 1, scope: !1664)
!1673 = !DILocation(line: 32, column: 2, scope: !1664)
!1674 = !DISubprogram(name: "acpi_ns_lookup", scope: !1675, file: !1675, line: 118, type: !1676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1675 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!28, !278, !78, !1174, !1678, !30, !162, !1679}
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_interpreter_mode", file: !22, line: 120, baseType: !21)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!1680 = !DISubprogram(name: "acpi_ns_externalize_name", scope: !1675, file: !1675, line: 394, type: !1681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!28, !30, !1173, !1683, !1684}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!1685 = distinct !DISubprogram(name: "acpi_os_free", scope: !1176, file: !1176, line: 60, type: !1686, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1688)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{null, !139}
!1688 = !{!1689}
!1689 = !DILocalVariable(name: "memory", arg: 1, scope: !1685, file: !1176, line: 60, type: !139)
!1690 = !DILocation(line: 60, column: 39, scope: !1685)
!1691 = !DILocation(line: 62, column: 8, scope: !1685)
!1692 = !DILocation(line: 62, column: 2, scope: !1685)
!1693 = !DILocation(line: 63, column: 1, scope: !1685)
!1694 = !DISubprogram(name: "acpi_ex_resolve_node_to_value", scope: !1695, file: !1695, line: 370, type: !1696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1695 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!28, !1679, !162}
!1698 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !1699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{null, !1701}
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
