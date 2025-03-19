; ModuleID = 'drivers/acpi/acpica/nsaccess.c'
source_filename = "drivers/acpi/acpica/nsaccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_predefined_names = type { ptr, i8, ptr }
%struct.acpi_object_method = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, %union.anon, i32, i16, i8 }
%union.anon = type { ptr }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_string = type { ptr, i8, i8, i16, i8, ptr, i32 }
%struct.acpi_object_mutex = type { ptr, i8, i8, i16, i8, i8, i16, ptr, i64, ptr, ptr, ptr, ptr, i8 }
%struct.acpi_scope_state = type { ptr, i8, i8, i16, i16, ptr }
%struct.acpi_common_descriptor = type { ptr, i8 }

@acpi_gbl_root_node = external dso_local global ptr, align 8
@acpi_gbl_root_node_struct = external dso_local global %struct.acpi_namespace_node, align 8
@acpi_gbl_pre_defined_names = external dso_local constant [10 x %struct.acpi_predefined_names], align 16
@.str = private unnamed_addr constant [5 x i8] c"_OSI\00", align 1, !dbg !0
@acpi_gbl_create_osi_method = external dso_local global i8, align 1
@_acpi_module_name = internal constant [9 x i8] c"nsaccess\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not override predefined %s\00", align 1, !dbg !809
@.str.2 = private unnamed_addr constant [5 x i8] c"_GL_\00", align 1, !dbg !814
@acpi_gbl_global_lock_mutex = external dso_local global ptr, align 8
@acpi_gbl_global_lock_semaphore = external dso_local global ptr, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Unsupported initial type value 0x%X\00", align 1, !dbg !816
@.str.4 = private unnamed_addr constant [6 x i8] c"\\_GPE\00", align 1, !dbg !821
@acpi_gbl_fadt_gpe_device = external dso_local global ptr, align 8
@acpi_gbl_ns_lookup_count = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"%p is not a namespace node [%s]\00", align 1, !dbg !826
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !831
@.str.7 = private unnamed_addr constant [42 x i8] c"%s: Path has too many parent prefixes (^)\00", align 1, !dbg !836
@.str.8 = private unnamed_addr constant [55 x i8] c"\013ACPI BIOS Error (bug): Object does not exist: %4.4s\0A\00", align 1, !dbg !841
@.str.9 = private unnamed_addr constant [58 x i8] c"NsLookup: Type mismatch on %4.4s (%s), searching for (%s)\00", align 1, !dbg !846

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_root_initialize() #0 align 16 !dbg !862 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %init_val = alloca ptr, align 8
  %new_node = alloca ptr, align 8
  %prev_node = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %val = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !882
  call void @llvm.dbg.declare(metadata ptr %status, metadata !866, metadata !DIExpression()), !dbg !883
  call void @llvm.lifetime.start.p0(i64 8, ptr %init_val) #5, !dbg !884
  call void @llvm.dbg.declare(metadata ptr %init_val, metadata !867, metadata !DIExpression()), !dbg !885
  store ptr null, ptr %init_val, align 8, !dbg !885
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_node) #5, !dbg !886
  call void @llvm.dbg.declare(metadata ptr %new_node, metadata !876, metadata !DIExpression()), !dbg !887
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_node) #5, !dbg !888
  call void @llvm.dbg.declare(metadata ptr %prev_node, metadata !877, metadata !DIExpression()), !dbg !889
  store ptr null, ptr %prev_node, align 8, !dbg !889
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #5, !dbg !890
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !878, metadata !DIExpression()), !dbg !891
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #5, !dbg !892
  call void @llvm.dbg.declare(metadata ptr %val, metadata !879, metadata !DIExpression()), !dbg !893
  store ptr null, ptr %val, align 8, !dbg !893
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #6, !dbg !894
  store i32 %call, ptr %status, align 4, !dbg !895
  %0 = load i32, ptr %status, align 4, !dbg !896
  %tobool = icmp ne i32 %0, 0, !dbg !896
  br i1 %tobool, label %if.then, label %if.end, !dbg !898

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !899
  store i32 %1, ptr %retval, align 4, !dbg !899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !899

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !901
  %tobool1 = icmp ne ptr %2, null, !dbg !901
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !903

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %status, align 4, !dbg !904
  br label %unlock_and_exit, !dbg !906

if.end3:                                          ; preds = %if.end
  store ptr @acpi_gbl_root_node_struct, ptr @acpi_gbl_root_node, align 8, !dbg !907
  store ptr @acpi_gbl_pre_defined_names, ptr %init_val, align 8, !dbg !908
  br label %for.cond, !dbg !910

for.cond:                                         ; preds = %for.inc, %if.end3
  %3 = load ptr, ptr %init_val, align 8, !dbg !911
  %name = getelementptr inbounds %struct.acpi_predefined_names, ptr %3, i32 0, i32 0, !dbg !913
  %4 = load ptr, ptr %name, align 8, !dbg !913
  %tobool4 = icmp ne ptr %4, null, !dbg !914
  br i1 %tobool4, label %for.body, label %for.end, !dbg !914

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %status, align 4, !dbg !915
  %5 = load ptr, ptr %init_val, align 8, !dbg !917
  %name5 = getelementptr inbounds %struct.acpi_predefined_names, ptr %5, i32 0, i32 0, !dbg !919
  %6 = load ptr, ptr %name5, align 8, !dbg !919
  %call6 = call i32 @strcmp(ptr noundef %6, ptr noundef @.str) #6, !dbg !920
  %tobool7 = icmp ne i32 %call6, 0, !dbg !920
  br i1 %tobool7, label %if.end10, label %land.lhs.true, !dbg !921

land.lhs.true:                                    ; preds = %for.body
  %7 = load i8, ptr @acpi_gbl_create_osi_method, align 1, !dbg !922
  %tobool8 = icmp ne i8 %7, 0, !dbg !922
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !923

if.then9:                                         ; preds = %land.lhs.true
  br label %for.inc, !dbg !924

if.end10:                                         ; preds = %land.lhs.true, %for.body
  %8 = load ptr, ptr %init_val, align 8, !dbg !926
  %name11 = getelementptr inbounds %struct.acpi_predefined_names, ptr %8, i32 0, i32 0, !dbg !926
  %9 = load ptr, ptr %name11, align 8, !dbg !926
  %10 = ptrtoint ptr %9 to i64, !dbg !926
  %11 = inttoptr i64 %10 to ptr, !dbg !926
  %12 = load i32, ptr %11, align 4, !dbg !927
  %call12 = call ptr @acpi_ns_create_node(i32 noundef %12) #6, !dbg !928
  store ptr %call12, ptr %new_node, align 8, !dbg !929
  %13 = load ptr, ptr %new_node, align 8, !dbg !930
  %tobool13 = icmp ne ptr %13, null, !dbg !930
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !932

if.then14:                                        ; preds = %if.end10
  store i32 4, ptr %status, align 4, !dbg !933
  br label %unlock_and_exit, !dbg !935

if.end15:                                         ; preds = %if.end10
  %14 = load ptr, ptr %new_node, align 8, !dbg !936
  %descriptor_type = getelementptr inbounds %struct.acpi_namespace_node, ptr %14, i32 0, i32 1, !dbg !937
  store i8 15, ptr %descriptor_type, align 8, !dbg !938
  %15 = load ptr, ptr %init_val, align 8, !dbg !939
  %type = getelementptr inbounds %struct.acpi_predefined_names, ptr %15, i32 0, i32 1, !dbg !940
  %16 = load i8, ptr %type, align 8, !dbg !940
  %17 = load ptr, ptr %new_node, align 8, !dbg !941
  %type16 = getelementptr inbounds %struct.acpi_namespace_node, ptr %17, i32 0, i32 2, !dbg !942
  store i8 %16, ptr %type16, align 1, !dbg !943
  %18 = load ptr, ptr %prev_node, align 8, !dbg !944
  %tobool17 = icmp ne ptr %18, null, !dbg !944
  br i1 %tobool17, label %if.else, label %if.then18, !dbg !946

if.then18:                                        ; preds = %if.end15
  %19 = load ptr, ptr %new_node, align 8, !dbg !947
  store ptr %19, ptr getelementptr inbounds (%struct.acpi_namespace_node, ptr @acpi_gbl_root_node_struct, i32 0, i32 6), align 8, !dbg !949
  br label %if.end19, !dbg !950

if.else:                                          ; preds = %if.end15
  %20 = load ptr, ptr %new_node, align 8, !dbg !951
  %21 = load ptr, ptr %prev_node, align 8, !dbg !953
  %peer = getelementptr inbounds %struct.acpi_namespace_node, ptr %21, i32 0, i32 7, !dbg !954
  store ptr %20, ptr %peer, align 8, !dbg !955
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then18
  %22 = load ptr, ptr %new_node, align 8, !dbg !956
  %parent = getelementptr inbounds %struct.acpi_namespace_node, ptr %22, i32 0, i32 5, !dbg !957
  store ptr @acpi_gbl_root_node_struct, ptr %parent, align 8, !dbg !958
  %23 = load ptr, ptr %new_node, align 8, !dbg !959
  store ptr %23, ptr %prev_node, align 8, !dbg !960
  %24 = load ptr, ptr %init_val, align 8, !dbg !961
  %val20 = getelementptr inbounds %struct.acpi_predefined_names, ptr %24, i32 0, i32 2, !dbg !963
  %25 = load ptr, ptr %val20, align 8, !dbg !963
  %tobool21 = icmp ne ptr %25, null, !dbg !961
  br i1 %tobool21, label %if.then22, label %if.end70, !dbg !964

if.then22:                                        ; preds = %if.end19
  %26 = load ptr, ptr %init_val, align 8, !dbg !965
  %call23 = call i32 @acpi_os_predefined_override(ptr noundef %26, ptr noundef %val) #6, !dbg !967
  store i32 %call23, ptr %status, align 4, !dbg !968
  %27 = load i32, ptr %status, align 4, !dbg !969
  %tobool24 = icmp ne i32 %27, 0, !dbg !969
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !971

if.then25:                                        ; preds = %if.then22
  %28 = load ptr, ptr %init_val, align 8, !dbg !972
  %name26 = getelementptr inbounds %struct.acpi_predefined_names, ptr %28, i32 0, i32 0, !dbg !972
  %29 = load ptr, ptr %name26, align 8, !dbg !972
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 127, ptr noundef @.str.1, ptr noundef %29) #6, !dbg !972
  br label %if.end27, !dbg !974

if.end27:                                         ; preds = %if.then25, %if.then22
  %30 = load ptr, ptr %val, align 8, !dbg !975
  %tobool28 = icmp ne ptr %30, null, !dbg !975
  br i1 %tobool28, label %if.end31, label %if.then29, !dbg !977

if.then29:                                        ; preds = %if.end27
  %31 = load ptr, ptr %init_val, align 8, !dbg !978
  %val30 = getelementptr inbounds %struct.acpi_predefined_names, ptr %31, i32 0, i32 2, !dbg !980
  %32 = load ptr, ptr %val30, align 8, !dbg !980
  store ptr %32, ptr %val, align 8, !dbg !981
  br label %if.end31, !dbg !982

if.end31:                                         ; preds = %if.then29, %if.end27
  %33 = load ptr, ptr %init_val, align 8, !dbg !983
  %type32 = getelementptr inbounds %struct.acpi_predefined_names, ptr %33, i32 0, i32 1, !dbg !983
  %34 = load i8, ptr %type32, align 8, !dbg !983
  %conv = zext i8 %34 to i32, !dbg !983
  %call33 = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 141, i32 noundef 16, i32 noundef %conv) #6, !dbg !983
  store ptr %call33, ptr %obj_desc, align 8, !dbg !984
  %35 = load ptr, ptr %obj_desc, align 8, !dbg !985
  %tobool34 = icmp ne ptr %35, null, !dbg !985
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !987

if.then35:                                        ; preds = %if.end31
  store i32 4, ptr %status, align 4, !dbg !988
  br label %unlock_and_exit, !dbg !990

if.end36:                                         ; preds = %if.end31
  %36 = load ptr, ptr %init_val, align 8, !dbg !991
  %type37 = getelementptr inbounds %struct.acpi_predefined_names, ptr %36, i32 0, i32 1, !dbg !992
  %37 = load i8, ptr %type37, align 8, !dbg !992
  %conv38 = zext i8 %37 to i32, !dbg !991
  switch i32 %conv38, label %sw.default [
    i32 8, label %sw.bb
    i32 1, label %sw.bb42
    i32 2, label %sw.bb43
    i32 9, label %sw.bb50
  ], !dbg !993

sw.bb:                                            ; preds = %if.end36
  %38 = load ptr, ptr %val, align 8, !dbg !994
  %39 = ptrtoint ptr %38 to i64, !dbg !994
  %conv39 = trunc i64 %39 to i8, !dbg !996
  %40 = load ptr, ptr %obj_desc, align 8, !dbg !997
  %param_count = getelementptr inbounds %struct.acpi_object_method, ptr %40, i32 0, i32 6, !dbg !998
  store i8 %conv39, ptr %param_count, align 2, !dbg !999
  %41 = load ptr, ptr %obj_desc, align 8, !dbg !1000
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %41, i32 0, i32 4, !dbg !1001
  %42 = load i8, ptr %flags, align 4, !dbg !1002
  %conv40 = zext i8 %42 to i32, !dbg !1002
  %or = or i32 %conv40, 4, !dbg !1002
  %conv41 = trunc i32 %or to i8, !dbg !1002
  store i8 %conv41, ptr %flags, align 4, !dbg !1002
  %43 = load ptr, ptr %obj_desc, align 8, !dbg !1003
  %info_flags = getelementptr inbounds %struct.acpi_object_method, ptr %43, i32 0, i32 5, !dbg !1004
  store i8 2, ptr %info_flags, align 1, !dbg !1005
  %44 = load ptr, ptr %obj_desc, align 8, !dbg !1006
  %dispatch = getelementptr inbounds %struct.acpi_object_method, ptr %44, i32 0, i32 11, !dbg !1007
  store ptr @acpi_ut_osi_implementation, ptr %dispatch, align 8, !dbg !1008
  br label %sw.epilog, !dbg !1009

sw.bb42:                                          ; preds = %if.end36
  %45 = load ptr, ptr %val, align 8, !dbg !1010
  %46 = ptrtoint ptr %45 to i64, !dbg !1010
  %47 = load ptr, ptr %obj_desc, align 8, !dbg !1011
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %47, i32 0, i32 6, !dbg !1012
  store i64 %46, ptr %value, align 8, !dbg !1013
  br label %sw.epilog, !dbg !1014

sw.bb43:                                          ; preds = %if.end36
  %48 = load ptr, ptr %val, align 8, !dbg !1015
  %call44 = call i64 @strlen(ptr noundef %48) #6, !dbg !1016
  %conv45 = trunc i64 %call44 to i32, !dbg !1017
  %49 = load ptr, ptr %obj_desc, align 8, !dbg !1018
  %length = getelementptr inbounds %struct.acpi_object_string, ptr %49, i32 0, i32 6, !dbg !1019
  store i32 %conv45, ptr %length, align 8, !dbg !1020
  %50 = load ptr, ptr %val, align 8, !dbg !1021
  %51 = load ptr, ptr %obj_desc, align 8, !dbg !1022
  %pointer = getelementptr inbounds %struct.acpi_object_string, ptr %51, i32 0, i32 5, !dbg !1023
  store ptr %50, ptr %pointer, align 8, !dbg !1024
  %52 = load ptr, ptr %obj_desc, align 8, !dbg !1025
  %flags46 = getelementptr inbounds %struct.acpi_object_common, ptr %52, i32 0, i32 4, !dbg !1026
  %53 = load i8, ptr %flags46, align 4, !dbg !1027
  %conv47 = zext i8 %53 to i32, !dbg !1027
  %or48 = or i32 %conv47, 2, !dbg !1027
  %conv49 = trunc i32 %or48 to i8, !dbg !1027
  store i8 %conv49, ptr %flags46, align 4, !dbg !1027
  br label %sw.epilog, !dbg !1028

sw.bb50:                                          ; preds = %if.end36
  %54 = load ptr, ptr %new_node, align 8, !dbg !1029
  %55 = load ptr, ptr %obj_desc, align 8, !dbg !1030
  %node = getelementptr inbounds %struct.acpi_object_mutex, ptr %55, i32 0, i32 12, !dbg !1031
  store ptr %54, ptr %node, align 8, !dbg !1032
  %56 = load ptr, ptr %val, align 8, !dbg !1033
  %57 = ptrtoint ptr %56 to i64, !dbg !1033
  %sub = sub i64 %57, 1, !dbg !1034
  %conv51 = trunc i64 %sub to i8, !dbg !1035
  %58 = load ptr, ptr %obj_desc, align 8, !dbg !1036
  %sync_level = getelementptr inbounds %struct.acpi_object_mutex, ptr %58, i32 0, i32 5, !dbg !1037
  store i8 %conv51, ptr %sync_level, align 1, !dbg !1038
  %59 = load ptr, ptr %obj_desc, align 8, !dbg !1039
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, ptr %59, i32 0, i32 7, !dbg !1039
  %call52 = call i32 @acpi_os_create_semaphore(i32 noundef 1, i32 noundef 1, ptr noundef %os_mutex) #6, !dbg !1039
  store i32 %call52, ptr %status, align 4, !dbg !1040
  %60 = load i32, ptr %status, align 4, !dbg !1041
  %tobool53 = icmp ne i32 %60, 0, !dbg !1041
  br i1 %tobool53, label %if.then54, label %if.end55, !dbg !1043

if.then54:                                        ; preds = %sw.bb50
  %61 = load ptr, ptr %obj_desc, align 8, !dbg !1044
  call void @acpi_ut_remove_reference(ptr noundef %61) #6, !dbg !1046
  br label %unlock_and_exit, !dbg !1047

if.end55:                                         ; preds = %sw.bb50
  %62 = load ptr, ptr %init_val, align 8, !dbg !1048
  %name56 = getelementptr inbounds %struct.acpi_predefined_names, ptr %62, i32 0, i32 0, !dbg !1050
  %63 = load ptr, ptr %name56, align 8, !dbg !1050
  %call57 = call i32 @strcmp(ptr noundef %63, ptr noundef @.str.2) #6, !dbg !1051
  %cmp = icmp eq i32 %call57, 0, !dbg !1052
  br i1 %cmp, label %if.then59, label %if.end64, !dbg !1053

if.then59:                                        ; preds = %if.end55
  %64 = load ptr, ptr %obj_desc, align 8, !dbg !1054
  store ptr %64, ptr @acpi_gbl_global_lock_mutex, align 8, !dbg !1056
  %call60 = call i32 @acpi_os_create_semaphore(i32 noundef 1, i32 noundef 0, ptr noundef @acpi_gbl_global_lock_semaphore) #6, !dbg !1057
  store i32 %call60, ptr %status, align 4, !dbg !1058
  %65 = load i32, ptr %status, align 4, !dbg !1059
  %tobool61 = icmp ne i32 %65, 0, !dbg !1059
  br i1 %tobool61, label %if.then62, label %if.end63, !dbg !1061

if.then62:                                        ; preds = %if.then59
  %66 = load ptr, ptr %obj_desc, align 8, !dbg !1062
  call void @acpi_ut_remove_reference(ptr noundef %66) #6, !dbg !1064
  br label %unlock_and_exit, !dbg !1065

if.end63:                                         ; preds = %if.then59
  br label %if.end64, !dbg !1066

if.end64:                                         ; preds = %if.end63, %if.end55
  br label %sw.epilog, !dbg !1067

sw.default:                                       ; preds = %if.end36
  %67 = load ptr, ptr %init_val, align 8, !dbg !1068
  %type65 = getelementptr inbounds %struct.acpi_predefined_names, ptr %67, i32 0, i32 1, !dbg !1068
  %68 = load i8, ptr %type65, align 8, !dbg !1068
  %conv66 = zext i8 %68 to i32, !dbg !1068
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 224, ptr noundef @.str.3, i32 noundef %conv66) #6, !dbg !1068
  %69 = load ptr, ptr %obj_desc, align 8, !dbg !1069
  call void @acpi_ut_remove_reference(ptr noundef %69) #6, !dbg !1070
  store ptr null, ptr %obj_desc, align 8, !dbg !1071
  br label %for.inc, !dbg !1072

sw.epilog:                                        ; preds = %if.end64, %sw.bb43, %sw.bb42, %sw.bb
  %70 = load ptr, ptr %new_node, align 8, !dbg !1073
  %71 = load ptr, ptr %obj_desc, align 8, !dbg !1074
  %72 = load ptr, ptr %obj_desc, align 8, !dbg !1075
  %type67 = getelementptr inbounds %struct.acpi_object_common, ptr %72, i32 0, i32 2, !dbg !1076
  %73 = load i8, ptr %type67, align 1, !dbg !1076
  %conv68 = zext i8 %73 to i32, !dbg !1075
  %call69 = call i32 @acpi_ns_attach_object(ptr noundef %70, ptr noundef %71, i32 noundef %conv68) #6, !dbg !1077
  store i32 %call69, ptr %status, align 4, !dbg !1078
  %74 = load ptr, ptr %obj_desc, align 8, !dbg !1079
  call void @acpi_ut_remove_reference(ptr noundef %74) #6, !dbg !1080
  br label %if.end70, !dbg !1081

if.end70:                                         ; preds = %sw.epilog, %if.end19
  br label %for.inc, !dbg !1082

for.inc:                                          ; preds = %if.end70, %sw.default, %if.then9
  %75 = load ptr, ptr %init_val, align 8, !dbg !1083
  %incdec.ptr = getelementptr %struct.acpi_predefined_names, ptr %75, i32 1, !dbg !1083
  store ptr %incdec.ptr, ptr %init_val, align 8, !dbg !1083
  br label %for.cond, !dbg !1084, !llvm.loop !1085

for.end:                                          ; preds = %for.cond
  br label %unlock_and_exit, !dbg !1086

unlock_and_exit:                                  ; preds = %for.end, %if.then62, %if.then54, %if.then35, %if.then14, %if.then2
  call void @llvm.dbg.label(metadata !881), !dbg !1089
  %call71 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #6, !dbg !1090
  %76 = load i32, ptr %status, align 4, !dbg !1091
  %tobool72 = icmp ne i32 %76, 0, !dbg !1091
  br i1 %tobool72, label %if.end75, label %if.then73, !dbg !1093

if.then73:                                        ; preds = %unlock_and_exit
  %call74 = call i32 @acpi_ns_get_node(ptr noundef null, ptr noundef @.str.4, i32 noundef 0, ptr noundef @acpi_gbl_fadt_gpe_device) #6, !dbg !1094
  store i32 %call74, ptr %status, align 4, !dbg !1096
  br label %if.end75, !dbg !1097

if.end75:                                         ; preds = %if.then73, %unlock_and_exit
  %77 = load i32, ptr %status, align 4, !dbg !1098
  store i32 %77, ptr %retval, align 4, !dbg !1098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1098

cleanup:                                          ; preds = %if.end75, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #5, !dbg !1099
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #5, !dbg !1099
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_node) #5, !dbg !1099
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_node) #5, !dbg !1099
  call void @llvm.lifetime.end.p0(i64 8, ptr %init_val) #5, !dbg !1099
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1099
  %78 = load i32, ptr %retval, align 4, !dbg !1099
  ret i32 %78, !dbg !1099
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1100 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1105 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1110 dso_local ptr @acpi_ns_create_node(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1114 dso_local i32 @acpi_os_predefined_override(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1119 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1123 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ut_osi_implementation(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1127 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1130 dso_local i32 @acpi_os_create_semaphore(i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1133 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1136 dso_local i32 @acpi_ns_attach_object(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1139 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1140 dso_local i32 @acpi_ns_get_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_lookup(ptr noundef %scope_info, ptr noundef %pathname, i32 noundef %type, i32 noundef %interpreter_mode, i32 noundef %flags, ptr noundef %walk_state, ptr noundef %return_node) #0 align 16 !dbg !1144 {
entry:
  %retval = alloca i32, align 4
  %scope_info.addr = alloca ptr, align 8
  %pathname.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %interpreter_mode.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %return_node.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %path = alloca ptr, align 8
  %external_path = alloca ptr, align 8
  %prefix_node = alloca ptr, align 8
  %current_node = alloca ptr, align 8
  %this_node = alloca ptr, align 8
  %num_segments = alloca i32, align 4
  %num_carats = alloca i32, align 4
  %simple_name = alloca i32, align 4
  %type_to_check_for = alloca i32, align 4
  %this_search_type = alloca i32, align 4
  %search_parent_flag = alloca i32, align 4
  %local_flags = alloca i32, align 4
  %local_interpreter_mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %scope_info, ptr %scope_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scope_info.addr, metadata !1149, metadata !DIExpression()), !dbg !1171
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !1150, metadata !DIExpression()), !dbg !1172
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1151, metadata !DIExpression()), !dbg !1173
  store i32 %interpreter_mode, ptr %interpreter_mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %interpreter_mode.addr, metadata !1152, metadata !DIExpression()), !dbg !1174
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1153, metadata !DIExpression()), !dbg !1175
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1154, metadata !DIExpression()), !dbg !1176
  store ptr %return_node, ptr %return_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_node.addr, metadata !1155, metadata !DIExpression()), !dbg !1177
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1178
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1156, metadata !DIExpression()), !dbg !1179
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #5, !dbg !1180
  call void @llvm.dbg.declare(metadata ptr %path, metadata !1157, metadata !DIExpression()), !dbg !1181
  %0 = load ptr, ptr %pathname.addr, align 8, !dbg !1182
  store ptr %0, ptr %path, align 8, !dbg !1181
  call void @llvm.lifetime.start.p0(i64 8, ptr %external_path) #5, !dbg !1183
  call void @llvm.dbg.declare(metadata ptr %external_path, metadata !1158, metadata !DIExpression()), !dbg !1184
  call void @llvm.lifetime.start.p0(i64 8, ptr %prefix_node) #5, !dbg !1185
  call void @llvm.dbg.declare(metadata ptr %prefix_node, metadata !1159, metadata !DIExpression()), !dbg !1186
  call void @llvm.lifetime.start.p0(i64 8, ptr %current_node) #5, !dbg !1187
  call void @llvm.dbg.declare(metadata ptr %current_node, metadata !1160, metadata !DIExpression()), !dbg !1188
  store ptr null, ptr %current_node, align 8, !dbg !1188
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_node) #5, !dbg !1189
  call void @llvm.dbg.declare(metadata ptr %this_node, metadata !1161, metadata !DIExpression()), !dbg !1190
  store ptr null, ptr %this_node, align 8, !dbg !1190
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_segments) #5, !dbg !1191
  call void @llvm.dbg.declare(metadata ptr %num_segments, metadata !1162, metadata !DIExpression()), !dbg !1192
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_carats) #5, !dbg !1193
  call void @llvm.dbg.declare(metadata ptr %num_carats, metadata !1163, metadata !DIExpression()), !dbg !1194
  call void @llvm.lifetime.start.p0(i64 4, ptr %simple_name) #5, !dbg !1195
  call void @llvm.dbg.declare(metadata ptr %simple_name, metadata !1164, metadata !DIExpression()), !dbg !1196
  call void @llvm.lifetime.start.p0(i64 4, ptr %type_to_check_for) #5, !dbg !1197
  call void @llvm.dbg.declare(metadata ptr %type_to_check_for, metadata !1166, metadata !DIExpression()), !dbg !1198
  call void @llvm.lifetime.start.p0(i64 4, ptr %this_search_type) #5, !dbg !1199
  call void @llvm.dbg.declare(metadata ptr %this_search_type, metadata !1167, metadata !DIExpression()), !dbg !1200
  call void @llvm.lifetime.start.p0(i64 4, ptr %search_parent_flag) #5, !dbg !1201
  call void @llvm.dbg.declare(metadata ptr %search_parent_flag, metadata !1168, metadata !DIExpression()), !dbg !1202
  store i32 1, ptr %search_parent_flag, align 4, !dbg !1202
  call void @llvm.lifetime.start.p0(i64 4, ptr %local_flags) #5, !dbg !1203
  call void @llvm.dbg.declare(metadata ptr %local_flags, metadata !1169, metadata !DIExpression()), !dbg !1204
  call void @llvm.lifetime.start.p0(i64 4, ptr %local_interpreter_mode) #5, !dbg !1205
  call void @llvm.dbg.declare(metadata ptr %local_interpreter_mode, metadata !1170, metadata !DIExpression()), !dbg !1206
  %1 = load ptr, ptr %return_node.addr, align 8, !dbg !1207
  %tobool = icmp ne ptr %1, null, !dbg !1207
  br i1 %tobool, label %if.end, label %if.then, !dbg !1209

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1210

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %flags.addr, align 4, !dbg !1212
  %and = and i32 %2, -138, !dbg !1213
  store i32 %and, ptr %local_flags, align 4, !dbg !1214
  %3 = load ptr, ptr %return_node.addr, align 8, !dbg !1215
  store ptr null, ptr %3, align 8, !dbg !1216
  %4 = load i32, ptr @acpi_gbl_ns_lookup_count, align 4, !dbg !1217
  %inc = add i32 %4, 1, !dbg !1217
  store i32 %inc, ptr @acpi_gbl_ns_lookup_count, align 4, !dbg !1217
  %5 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1218
  %tobool1 = icmp ne ptr %5, null, !dbg !1218
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1220

if.then2:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1221

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %scope_info.addr, align 8, !dbg !1223
  %tobool4 = icmp ne ptr %6, null, !dbg !1223
  br i1 %tobool4, label %lor.lhs.false, label %if.then6, !dbg !1225

lor.lhs.false:                                    ; preds = %if.end3
  %7 = load ptr, ptr %scope_info.addr, align 8, !dbg !1226
  %node = getelementptr inbounds %struct.acpi_scope_state, ptr %7, i32 0, i32 5, !dbg !1227
  %8 = load ptr, ptr %node, align 8, !dbg !1227
  %tobool5 = icmp ne ptr %8, null, !dbg !1226
  br i1 %tobool5, label %if.else, label %if.then6, !dbg !1228

if.then6:                                         ; preds = %lor.lhs.false, %if.end3
  %9 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1229
  store ptr %9, ptr %prefix_node, align 8, !dbg !1231
  br label %if.end23, !dbg !1232

if.else:                                          ; preds = %lor.lhs.false
  %10 = load ptr, ptr %scope_info.addr, align 8, !dbg !1233
  %node7 = getelementptr inbounds %struct.acpi_scope_state, ptr %10, i32 0, i32 5, !dbg !1235
  %11 = load ptr, ptr %node7, align 8, !dbg !1235
  store ptr %11, ptr %prefix_node, align 8, !dbg !1236
  %12 = load ptr, ptr %prefix_node, align 8, !dbg !1237
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %12, i32 0, i32 1, !dbg !1237
  %13 = load i8, ptr %descriptor_type, align 8, !dbg !1237
  %conv = zext i8 %13 to i32, !dbg !1237
  %cmp = icmp ne i32 %conv, 15, !dbg !1239
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !1240

if.then9:                                         ; preds = %if.else
  %14 = load ptr, ptr %prefix_node, align 8, !dbg !1241
  %15 = load ptr, ptr %prefix_node, align 8, !dbg !1241
  %call = call ptr @acpi_ut_get_descriptor_name(ptr noundef %15) #6, !dbg !1241
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 331, ptr noundef @.str.5, ptr noundef %14, ptr noundef %call) #6, !dbg !1241
  store i32 12303, ptr %retval, align 4, !dbg !1243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1243

if.end10:                                         ; preds = %if.else
  %16 = load i32, ptr %flags.addr, align 4, !dbg !1244
  %and11 = and i32 %16, 16, !dbg !1246
  %tobool12 = icmp ne i32 %and11, 0, !dbg !1246
  br i1 %tobool12, label %if.end22, label %if.then13, !dbg !1247

if.then13:                                        ; preds = %if.end10
  br label %while.cond, !dbg !1248

while.cond:                                       ; preds = %while.body, %if.then13
  %17 = load ptr, ptr %prefix_node, align 8, !dbg !1250
  %type14 = getelementptr inbounds %struct.acpi_namespace_node, ptr %17, i32 0, i32 2, !dbg !1251
  %18 = load i8, ptr %type14, align 1, !dbg !1251
  %conv15 = zext i8 %18 to i32, !dbg !1250
  %call16 = call i32 @acpi_ns_opens_scope(i32 noundef %conv15) #6, !dbg !1252
  %tobool17 = icmp ne i32 %call16, 0, !dbg !1252
  br i1 %tobool17, label %land.end, label %land.rhs, !dbg !1253

land.rhs:                                         ; preds = %while.cond
  %19 = load ptr, ptr %prefix_node, align 8, !dbg !1254
  %type18 = getelementptr inbounds %struct.acpi_namespace_node, ptr %19, i32 0, i32 2, !dbg !1255
  %20 = load i8, ptr %type18, align 1, !dbg !1255
  %conv19 = zext i8 %20 to i32, !dbg !1254
  %cmp20 = icmp ne i32 %conv19, 0, !dbg !1256
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %cmp20, %land.rhs ], !dbg !1257
  br i1 %21, label %while.body, label %while.end, !dbg !1248

while.body:                                       ; preds = %land.end
  %22 = load ptr, ptr %prefix_node, align 8, !dbg !1258
  %parent = getelementptr inbounds %struct.acpi_namespace_node, ptr %22, i32 0, i32 5, !dbg !1260
  %23 = load ptr, ptr %parent, align 8, !dbg !1260
  store ptr %23, ptr %prefix_node, align 8, !dbg !1261
  br label %while.cond, !dbg !1248, !llvm.loop !1262

while.end:                                        ; preds = %land.end
  br label %if.end22, !dbg !1264

if.end22:                                         ; preds = %while.end, %if.end10
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then6
  %24 = load i32, ptr %type.addr, align 4, !dbg !1265
  store i32 %24, ptr %type_to_check_for, align 4, !dbg !1266
  %25 = load ptr, ptr %pathname.addr, align 8, !dbg !1267
  %tobool24 = icmp ne ptr %25, null, !dbg !1267
  br i1 %tobool24, label %if.else26, label %if.then25, !dbg !1269

if.then25:                                        ; preds = %if.end23
  store i32 0, ptr %num_segments, align 4, !dbg !1270
  %26 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1272
  store ptr %26, ptr %this_node, align 8, !dbg !1273
  store ptr @.str.6, ptr %path, align 8, !dbg !1274
  br label %if.end62, !dbg !1275

if.else26:                                        ; preds = %if.end23
  %27 = load ptr, ptr %path, align 8, !dbg !1276
  %28 = load i8, ptr %27, align 1, !dbg !1279
  %conv27 = zext i8 %28 to i32, !dbg !1279
  %cmp28 = icmp eq i32 %conv27, 92, !dbg !1280
  br i1 %cmp28, label %if.then30, label %if.else31, !dbg !1281

if.then30:                                        ; preds = %if.else26
  %29 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1282
  store ptr %29, ptr %this_node, align 8, !dbg !1284
  store i32 0, ptr %search_parent_flag, align 4, !dbg !1285
  %30 = load ptr, ptr %path, align 8, !dbg !1286
  %incdec.ptr = getelementptr i8, ptr %30, i32 1, !dbg !1286
  store ptr %incdec.ptr, ptr %path, align 8, !dbg !1286
  br label %if.end52, !dbg !1287

if.else31:                                        ; preds = %if.else26
  %31 = load ptr, ptr %prefix_node, align 8, !dbg !1288
  store ptr %31, ptr %this_node, align 8, !dbg !1290
  store i32 0, ptr %num_carats, align 4, !dbg !1291
  br label %while.cond32, !dbg !1292

while.cond32:                                     ; preds = %if.end46, %if.else31
  %32 = load ptr, ptr %path, align 8, !dbg !1293
  %33 = load i8, ptr %32, align 1, !dbg !1294
  %conv33 = zext i8 %33 to i32, !dbg !1294
  %cmp34 = icmp eq i32 %conv33, 94, !dbg !1295
  br i1 %cmp34, label %while.body36, label %while.end47, !dbg !1292

while.body36:                                     ; preds = %while.cond32
  store i32 0, ptr %search_parent_flag, align 4, !dbg !1296
  %34 = load ptr, ptr %path, align 8, !dbg !1298
  %incdec.ptr37 = getelementptr i8, ptr %34, i32 1, !dbg !1298
  store ptr %incdec.ptr37, ptr %path, align 8, !dbg !1298
  %35 = load i32, ptr %num_carats, align 4, !dbg !1299
  %inc38 = add i32 %35, 1, !dbg !1299
  store i32 %inc38, ptr %num_carats, align 4, !dbg !1299
  %36 = load ptr, ptr %this_node, align 8, !dbg !1300
  %parent39 = getelementptr inbounds %struct.acpi_namespace_node, ptr %36, i32 0, i32 5, !dbg !1301
  %37 = load ptr, ptr %parent39, align 8, !dbg !1301
  store ptr %37, ptr %this_node, align 8, !dbg !1302
  %38 = load ptr, ptr %this_node, align 8, !dbg !1303
  %tobool40 = icmp ne ptr %38, null, !dbg !1303
  br i1 %tobool40, label %if.end46, label %if.then41, !dbg !1305

if.then41:                                        ; preds = %while.body36
  %39 = load ptr, ptr %pathname.addr, align 8, !dbg !1306
  %call42 = call i32 @acpi_ns_externalize_name(i32 noundef -1, ptr noundef %39, ptr noundef null, ptr noundef %external_path) #6, !dbg !1308
  store i32 %call42, ptr %status, align 4, !dbg !1309
  %40 = load i32, ptr %status, align 4, !dbg !1310
  %tobool43 = icmp ne i32 %40, 0, !dbg !1310
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !1312

if.then44:                                        ; preds = %if.then41
  %41 = load ptr, ptr %external_path, align 8, !dbg !1313
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 436, ptr noundef @.str.7, ptr noundef %41) #6, !dbg !1313
  %42 = load ptr, ptr %external_path, align 8, !dbg !1315
  call void @acpi_os_free(ptr noundef %42) #6, !dbg !1315
  br label %if.end45, !dbg !1316

if.end45:                                         ; preds = %if.then44, %if.then41
  store i32 5, ptr %retval, align 4, !dbg !1317
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1317

if.end46:                                         ; preds = %while.body36
  br label %while.cond32, !dbg !1292, !llvm.loop !1318

while.end47:                                      ; preds = %while.cond32
  %43 = load i32, ptr %search_parent_flag, align 4, !dbg !1320
  %cmp48 = icmp eq i32 %43, 0, !dbg !1322
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !1323

if.then50:                                        ; preds = %while.end47
  br label %if.end51, !dbg !1324

if.end51:                                         ; preds = %if.then50, %while.end47
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then30
  %44 = load ptr, ptr %path, align 8, !dbg !1326
  %45 = load i8, ptr %44, align 1, !dbg !1327
  %conv53 = zext i8 %45 to i32, !dbg !1327
  switch i32 %conv53, label %sw.default [
    i32 0, label %sw.bb
    i32 46, label %sw.bb56
    i32 47, label %sw.bb58
  ], !dbg !1328

sw.bb:                                            ; preds = %if.end52
  store i32 0, ptr %num_segments, align 4, !dbg !1329
  %46 = load ptr, ptr %this_node, align 8, !dbg !1331
  %type54 = getelementptr inbounds %struct.acpi_namespace_node, ptr %46, i32 0, i32 2, !dbg !1332
  %47 = load i8, ptr %type54, align 1, !dbg !1332
  %conv55 = zext i8 %47 to i32, !dbg !1331
  store i32 %conv55, ptr %type.addr, align 4, !dbg !1333
  br label %sw.epilog, !dbg !1334

sw.bb56:                                          ; preds = %if.end52
  store i32 0, ptr %search_parent_flag, align 4, !dbg !1335
  store i32 2, ptr %num_segments, align 4, !dbg !1336
  %48 = load ptr, ptr %path, align 8, !dbg !1337
  %incdec.ptr57 = getelementptr i8, ptr %48, i32 1, !dbg !1337
  store ptr %incdec.ptr57, ptr %path, align 8, !dbg !1337
  br label %sw.epilog, !dbg !1338

sw.bb58:                                          ; preds = %if.end52
  store i32 0, ptr %search_parent_flag, align 4, !dbg !1339
  %49 = load ptr, ptr %path, align 8, !dbg !1340
  %incdec.ptr59 = getelementptr i8, ptr %49, i32 1, !dbg !1340
  store ptr %incdec.ptr59, ptr %path, align 8, !dbg !1340
  %50 = load ptr, ptr %path, align 8, !dbg !1341
  %51 = load i8, ptr %50, align 1, !dbg !1342
  %conv60 = zext i8 %51 to i32, !dbg !1343
  store i32 %conv60, ptr %num_segments, align 4, !dbg !1344
  %52 = load ptr, ptr %path, align 8, !dbg !1345
  %incdec.ptr61 = getelementptr i8, ptr %52, i32 1, !dbg !1345
  store ptr %incdec.ptr61, ptr %path, align 8, !dbg !1345
  br label %sw.epilog, !dbg !1346

sw.default:                                       ; preds = %if.end52
  store i32 1, ptr %num_segments, align 4, !dbg !1347
  br label %sw.epilog, !dbg !1348

sw.epilog:                                        ; preds = %sw.default, %sw.bb58, %sw.bb56, %sw.bb
  br label %if.end62

if.end62:                                         ; preds = %sw.epilog, %if.then25
  store i32 0, ptr %this_search_type, align 4, !dbg !1349
  %53 = load ptr, ptr %this_node, align 8, !dbg !1350
  store ptr %53, ptr %current_node, align 8, !dbg !1351
  br label %while.cond63, !dbg !1352

while.cond63:                                     ; preds = %if.end161, %if.end62
  %54 = load i32, ptr %num_segments, align 4, !dbg !1353
  %tobool64 = icmp ne i32 %54, 0, !dbg !1353
  br i1 %tobool64, label %land.rhs65, label %land.end67, !dbg !1354

land.rhs65:                                       ; preds = %while.cond63
  %55 = load ptr, ptr %current_node, align 8, !dbg !1355
  %tobool66 = icmp ne ptr %55, null, !dbg !1354
  br label %land.end67

land.end67:                                       ; preds = %land.rhs65, %while.cond63
  %56 = phi i1 [ false, %while.cond63 ], [ %tobool66, %land.rhs65 ], !dbg !1356
  br i1 %56, label %while.body68, label %while.end162, !dbg !1352

while.body68:                                     ; preds = %land.end67
  %57 = load i32, ptr %num_segments, align 4, !dbg !1357
  %dec = add i32 %57, -1, !dbg !1357
  store i32 %dec, ptr %num_segments, align 4, !dbg !1357
  %58 = load i32, ptr %num_segments, align 4, !dbg !1359
  %tobool69 = icmp ne i32 %58, 0, !dbg !1359
  br i1 %tobool69, label %if.end87, label %if.then70, !dbg !1361

if.then70:                                        ; preds = %while.body68
  %59 = load i32, ptr %type.addr, align 4, !dbg !1362
  store i32 %59, ptr %this_search_type, align 4, !dbg !1364
  %60 = load i32, ptr %search_parent_flag, align 4, !dbg !1365
  %cmp71 = icmp ne i32 %60, 0, !dbg !1367
  br i1 %cmp71, label %land.lhs.true, label %if.end76, !dbg !1368

land.lhs.true:                                    ; preds = %if.then70
  %61 = load i32, ptr %flags.addr, align 4, !dbg !1369
  %and73 = and i32 %61, 1, !dbg !1370
  %tobool74 = icmp ne i32 %and73, 0, !dbg !1370
  br i1 %tobool74, label %if.then75, label %if.end76, !dbg !1371

if.then75:                                        ; preds = %land.lhs.true
  %62 = load i32, ptr %local_flags, align 4, !dbg !1372
  %or = or i32 %62, 1, !dbg !1372
  store i32 %or, ptr %local_flags, align 4, !dbg !1372
  br label %if.end76, !dbg !1374

if.end76:                                         ; preds = %if.then75, %land.lhs.true, %if.then70
  %63 = load i32, ptr %flags.addr, align 4, !dbg !1375
  %and77 = and i32 %63, 8, !dbg !1377
  %tobool78 = icmp ne i32 %and77, 0, !dbg !1377
  br i1 %tobool78, label %if.then79, label %if.end81, !dbg !1378

if.then79:                                        ; preds = %if.end76
  %64 = load i32, ptr %local_flags, align 4, !dbg !1379
  %or80 = or i32 %64, 8, !dbg !1379
  store i32 %or80, ptr %local_flags, align 4, !dbg !1379
  br label %if.end81, !dbg !1381

if.end81:                                         ; preds = %if.then79, %if.end76
  %65 = load i32, ptr %flags.addr, align 4, !dbg !1382
  %and82 = and i32 %65, 128, !dbg !1384
  %tobool83 = icmp ne i32 %and82, 0, !dbg !1384
  br i1 %tobool83, label %if.then84, label %if.end86, !dbg !1385

if.then84:                                        ; preds = %if.end81
  %66 = load i32, ptr %local_flags, align 4, !dbg !1386
  %or85 = or i32 %66, 128, !dbg !1386
  store i32 %or85, ptr %local_flags, align 4, !dbg !1386
  br label %if.end86, !dbg !1388

if.end86:                                         ; preds = %if.then84, %if.end81
  br label %if.end87, !dbg !1389

if.end87:                                         ; preds = %if.end86, %while.body68
  %67 = load i32, ptr %interpreter_mode.addr, align 4, !dbg !1390
  store i32 %67, ptr %local_interpreter_mode, align 4, !dbg !1391
  %68 = load i32, ptr %flags.addr, align 4, !dbg !1392
  %and88 = and i32 %68, 512, !dbg !1394
  %tobool89 = icmp ne i32 %and88, 0, !dbg !1394
  br i1 %tobool89, label %land.lhs.true90, label %if.end94, !dbg !1395

land.lhs.true90:                                  ; preds = %if.end87
  %69 = load i32, ptr %num_segments, align 4, !dbg !1396
  %cmp91 = icmp ugt i32 %69, 0, !dbg !1397
  br i1 %cmp91, label %if.then93, label %if.end94, !dbg !1398

if.then93:                                        ; preds = %land.lhs.true90
  store i32 3, ptr %local_interpreter_mode, align 4, !dbg !1399
  br label %if.end94, !dbg !1401

if.end94:                                         ; preds = %if.then93, %land.lhs.true90, %if.end87
  %70 = load ptr, ptr %path, align 8, !dbg !1402
  %71 = load i32, ptr %70, align 4, !dbg !1402
  store i32 %71, ptr %simple_name, align 4, !dbg !1402
  %72 = load i32, ptr %simple_name, align 4, !dbg !1403
  %73 = load ptr, ptr %walk_state.addr, align 8, !dbg !1404
  %74 = load ptr, ptr %current_node, align 8, !dbg !1405
  %75 = load i32, ptr %local_interpreter_mode, align 4, !dbg !1406
  %76 = load i32, ptr %this_search_type, align 4, !dbg !1407
  %77 = load i32, ptr %local_flags, align 4, !dbg !1408
  %call95 = call i32 @acpi_ns_search_and_enter(i32 noundef %72, ptr noundef %73, ptr noundef %74, i32 noundef %75, i32 noundef %76, i32 noundef %77, ptr noundef %this_node) #6, !dbg !1409
  store i32 %call95, ptr %status, align 4, !dbg !1410
  %78 = load i32, ptr %status, align 4, !dbg !1411
  %tobool96 = icmp ne i32 %78, 0, !dbg !1411
  br i1 %tobool96, label %if.then97, label %if.end106, !dbg !1413

if.then97:                                        ; preds = %if.end94
  %79 = load i32, ptr %status, align 4, !dbg !1414
  %cmp98 = icmp eq i32 %79, 5, !dbg !1417
  br i1 %cmp98, label %if.then100, label %if.end105, !dbg !1418

if.then100:                                       ; preds = %if.then97
  %80 = load i32, ptr %flags.addr, align 4, !dbg !1419
  %and101 = and i32 %80, 512, !dbg !1422
  %tobool102 = icmp ne i32 %and101, 0, !dbg !1422
  br i1 %tobool102, label %if.then103, label %if.end104, !dbg !1423

if.then103:                                       ; preds = %if.then100
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.8, ptr noundef %simple_name) #6, !dbg !1424
  br label %if.end104, !dbg !1426

if.end104:                                        ; preds = %if.then103, %if.then100
  br label %if.end105, !dbg !1427

if.end105:                                        ; preds = %if.end104, %if.then97
  %81 = load ptr, ptr %this_node, align 8, !dbg !1428
  %82 = load ptr, ptr %return_node.addr, align 8, !dbg !1429
  store ptr %81, ptr %82, align 8, !dbg !1430
  %83 = load i32, ptr %status, align 4, !dbg !1431
  store i32 %83, ptr %retval, align 4, !dbg !1431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1431

if.end106:                                        ; preds = %if.end94
  %84 = load i32, ptr %num_segments, align 4, !dbg !1432
  %cmp107 = icmp ugt i32 %84, 0, !dbg !1434
  br i1 %cmp107, label %if.then109, label %if.else127, !dbg !1435

if.then109:                                       ; preds = %if.end106
  %85 = load ptr, ptr %this_node, align 8, !dbg !1436
  %type110 = getelementptr inbounds %struct.acpi_namespace_node, ptr %85, i32 0, i32 2, !dbg !1439
  %86 = load i8, ptr %type110, align 1, !dbg !1439
  %conv111 = zext i8 %86 to i32, !dbg !1436
  %cmp112 = icmp eq i32 %conv111, 21, !dbg !1440
  br i1 %cmp112, label %if.then114, label %if.end126, !dbg !1441

if.then114:                                       ; preds = %if.then109
  %87 = load ptr, ptr %this_node, align 8, !dbg !1442
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %87, i32 0, i32 0, !dbg !1445
  %88 = load ptr, ptr %object, align 8, !dbg !1445
  %tobool115 = icmp ne ptr %88, null, !dbg !1442
  br i1 %tobool115, label %if.end117, label %if.then116, !dbg !1446

if.then116:                                       ; preds = %if.then114
  store i32 6, ptr %retval, align 4, !dbg !1447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1447

if.end117:                                        ; preds = %if.then114
  %89 = load ptr, ptr %this_node, align 8, !dbg !1449
  %object118 = getelementptr inbounds %struct.acpi_namespace_node, ptr %89, i32 0, i32 0, !dbg !1451
  %90 = load ptr, ptr %object118, align 8, !dbg !1451
  %type119 = getelementptr inbounds %struct.acpi_namespace_node, ptr %90, i32 0, i32 2, !dbg !1452
  %91 = load i8, ptr %type119, align 1, !dbg !1452
  %conv120 = zext i8 %91 to i32, !dbg !1453
  %call121 = call i32 @acpi_ns_opens_scope(i32 noundef %conv120) #6, !dbg !1454
  %tobool122 = icmp ne i32 %call121, 0, !dbg !1454
  br i1 %tobool122, label %if.then123, label %if.end125, !dbg !1455

if.then123:                                       ; preds = %if.end117
  %92 = load ptr, ptr %this_node, align 8, !dbg !1456
  %object124 = getelementptr inbounds %struct.acpi_namespace_node, ptr %92, i32 0, i32 0, !dbg !1458
  %93 = load ptr, ptr %object124, align 8, !dbg !1458
  store ptr %93, ptr %this_node, align 8, !dbg !1459
  br label %if.end125, !dbg !1460

if.end125:                                        ; preds = %if.then123, %if.end117
  br label %if.end126, !dbg !1461

if.end126:                                        ; preds = %if.end125, %if.then109
  br label %if.end161, !dbg !1462

if.else127:                                       ; preds = %if.end106
  %94 = load i32, ptr %type_to_check_for, align 4, !dbg !1463
  %cmp128 = icmp ne i32 %94, 0, !dbg !1466
  br i1 %cmp128, label %land.lhs.true130, label %if.end154, !dbg !1467

land.lhs.true130:                                 ; preds = %if.else127
  %95 = load i32, ptr %type_to_check_for, align 4, !dbg !1468
  %cmp131 = icmp ne i32 %95, 21, !dbg !1469
  br i1 %cmp131, label %land.lhs.true133, label %if.end154, !dbg !1470

land.lhs.true133:                                 ; preds = %land.lhs.true130
  %96 = load i32, ptr %type_to_check_for, align 4, !dbg !1471
  %cmp134 = icmp ne i32 %96, 22, !dbg !1472
  br i1 %cmp134, label %land.lhs.true136, label %if.end154, !dbg !1473

land.lhs.true136:                                 ; preds = %land.lhs.true133
  %97 = load i32, ptr %type_to_check_for, align 4, !dbg !1474
  %cmp137 = icmp ne i32 %97, 27, !dbg !1475
  br i1 %cmp137, label %land.lhs.true139, label %if.end154, !dbg !1476

land.lhs.true139:                                 ; preds = %land.lhs.true136
  %98 = load ptr, ptr %this_node, align 8, !dbg !1477
  %type140 = getelementptr inbounds %struct.acpi_namespace_node, ptr %98, i32 0, i32 2, !dbg !1478
  %99 = load i8, ptr %type140, align 1, !dbg !1478
  %conv141 = zext i8 %99 to i32, !dbg !1477
  %cmp142 = icmp ne i32 %conv141, 0, !dbg !1479
  br i1 %cmp142, label %land.lhs.true144, label %if.end154, !dbg !1480

land.lhs.true144:                                 ; preds = %land.lhs.true139
  %100 = load ptr, ptr %this_node, align 8, !dbg !1481
  %type145 = getelementptr inbounds %struct.acpi_namespace_node, ptr %100, i32 0, i32 2, !dbg !1482
  %101 = load i8, ptr %type145, align 1, !dbg !1482
  %conv146 = zext i8 %101 to i32, !dbg !1481
  %102 = load i32, ptr %type_to_check_for, align 4, !dbg !1483
  %cmp147 = icmp ne i32 %conv146, %102, !dbg !1484
  br i1 %cmp147, label %if.then149, label %if.end154, !dbg !1485

if.then149:                                       ; preds = %land.lhs.true144
  %103 = ptrtoint ptr %simple_name to i64, !dbg !1486
  %104 = inttoptr i64 %103 to ptr, !dbg !1486
  %105 = load ptr, ptr %this_node, align 8, !dbg !1486
  %type150 = getelementptr inbounds %struct.acpi_namespace_node, ptr %105, i32 0, i32 2, !dbg !1486
  %106 = load i8, ptr %type150, align 1, !dbg !1486
  %conv151 = zext i8 %106 to i32, !dbg !1486
  %call152 = call ptr @acpi_ut_get_type_name(i32 noundef %conv151) #6, !dbg !1486
  %107 = load i32, ptr %type_to_check_for, align 4, !dbg !1486
  %call153 = call ptr @acpi_ut_get_type_name(i32 noundef %107) #6, !dbg !1486
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 696, ptr noundef @.str.9, ptr noundef %104, ptr noundef %call152, ptr noundef %call153) #6, !dbg !1486
  br label %if.end154, !dbg !1488

if.end154:                                        ; preds = %if.then149, %land.lhs.true144, %land.lhs.true139, %land.lhs.true136, %land.lhs.true133, %land.lhs.true130, %if.else127
  %108 = load i32, ptr %type.addr, align 4, !dbg !1489
  %cmp155 = icmp eq i32 %108, 0, !dbg !1491
  br i1 %cmp155, label %if.then157, label %if.end160, !dbg !1492

if.then157:                                       ; preds = %if.end154
  %109 = load ptr, ptr %this_node, align 8, !dbg !1493
  %type158 = getelementptr inbounds %struct.acpi_namespace_node, ptr %109, i32 0, i32 2, !dbg !1495
  %110 = load i8, ptr %type158, align 1, !dbg !1495
  %conv159 = zext i8 %110 to i32, !dbg !1493
  store i32 %conv159, ptr %type.addr, align 4, !dbg !1496
  br label %if.end160, !dbg !1497

if.end160:                                        ; preds = %if.then157, %if.end154
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.end126
  %111 = load ptr, ptr %path, align 8, !dbg !1498
  %add.ptr = getelementptr i8, ptr %111, i64 4, !dbg !1498
  store ptr %add.ptr, ptr %path, align 8, !dbg !1498
  %112 = load ptr, ptr %this_node, align 8, !dbg !1499
  store ptr %112, ptr %current_node, align 8, !dbg !1500
  br label %while.cond63, !dbg !1352, !llvm.loop !1501

while.end162:                                     ; preds = %land.end67
  %113 = load i32, ptr %flags.addr, align 4, !dbg !1503
  %and163 = and i32 %113, 2, !dbg !1505
  %tobool164 = icmp ne i32 %and163, 0, !dbg !1505
  br i1 %tobool164, label %if.end176, label %land.lhs.true165, !dbg !1506

land.lhs.true165:                                 ; preds = %while.end162
  %114 = load ptr, ptr %walk_state.addr, align 8, !dbg !1507
  %tobool166 = icmp ne ptr %114, null, !dbg !1508
  br i1 %tobool166, label %if.then167, label %if.end176, !dbg !1509

if.then167:                                       ; preds = %land.lhs.true165
  %115 = load i32, ptr %type.addr, align 4, !dbg !1510
  %call168 = call i32 @acpi_ns_opens_scope(i32 noundef %115) #6, !dbg !1513
  %tobool169 = icmp ne i32 %call168, 0, !dbg !1513
  br i1 %tobool169, label %if.then170, label %if.end175, !dbg !1514

if.then170:                                       ; preds = %if.then167
  %116 = load ptr, ptr %this_node, align 8, !dbg !1515
  %117 = load i32, ptr %type.addr, align 4, !dbg !1517
  %118 = load ptr, ptr %walk_state.addr, align 8, !dbg !1518
  %call171 = call i32 @acpi_ds_scope_stack_push(ptr noundef %116, i32 noundef %117, ptr noundef %118) #6, !dbg !1519
  store i32 %call171, ptr %status, align 4, !dbg !1520
  %119 = load i32, ptr %status, align 4, !dbg !1521
  %tobool172 = icmp ne i32 %119, 0, !dbg !1521
  br i1 %tobool172, label %if.then173, label %if.end174, !dbg !1523

if.then173:                                       ; preds = %if.then170
  %120 = load i32, ptr %status, align 4, !dbg !1524
  store i32 %120, ptr %retval, align 4, !dbg !1524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1524

if.end174:                                        ; preds = %if.then170
  br label %if.end175, !dbg !1526

if.end175:                                        ; preds = %if.end174, %if.then167
  br label %if.end176, !dbg !1527

if.end176:                                        ; preds = %if.end175, %land.lhs.true165, %while.end162
  %121 = load ptr, ptr %this_node, align 8, !dbg !1528
  %122 = load ptr, ptr %return_node.addr, align 8, !dbg !1529
  store ptr %121, ptr %122, align 8, !dbg !1530
  store i32 0, ptr %retval, align 4, !dbg !1531
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1531

cleanup:                                          ; preds = %if.end176, %if.then173, %if.then116, %if.end105, %if.end45, %if.then9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %local_interpreter_mode) #5, !dbg !1532
  call void @llvm.lifetime.end.p0(i64 4, ptr %local_flags) #5, !dbg !1532
  call void @llvm.lifetime.end.p0(i64 4, ptr %search_parent_flag) #5, !dbg !1532
  call void @llvm.lifetime.end.p0(i64 4, ptr %this_search_type) #5, !dbg !1532
  call void @llvm.lifetime.end.p0(i64 4, ptr %type_to_check_for) #5, !dbg !1532
  call void @llvm.lifetime.end.p0(i64 4, ptr %simple_name) #5, !dbg !1532
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_carats) #5, !dbg !1532
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_segments) #5, !dbg !1532
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_node) #5, !dbg !1532
  call void @llvm.lifetime.end.p0(i64 8, ptr %current_node) #5, !dbg !1532
  call void @llvm.lifetime.end.p0(i64 8, ptr %prefix_node) #5, !dbg !1532
  call void @llvm.lifetime.end.p0(i64 8, ptr %external_path) #5, !dbg !1532
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #5, !dbg !1532
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1532
  %123 = load i32, ptr %retval, align 4, !dbg !1532
  ret i32 %123, !dbg !1532
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1533 dso_local ptr @acpi_ut_get_descriptor_name(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1536 dso_local i32 @acpi_ns_opens_scope(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1539 dso_local i32 @acpi_ns_externalize_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !1543 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1548, metadata !DIExpression()), !dbg !1549
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1550
  call void @kfree(ptr noundef %0) #6, !dbg !1551
  ret void, !dbg !1552
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1553 dso_local i32 @acpi_ns_search_and_enter(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1556 dso_local void @acpi_os_printf(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1559 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1560 dso_local ptr @acpi_ut_get_type_name(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1563 dso_local i32 @acpi_ds_scope_stack_push(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1567 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!853, !854, !855, !856, !857, !858, !859, !860}
!llvm.ident = !{!861}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/nsaccess.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "25808b529dab7ffb987e1abeb6df7db2")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !9, file: !2, line: 19, type: !851, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.nsaccess.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22nsaccess\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/nsaccess.ll drivers/acpi/acpica/nsaccess.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !18, globals: !808, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 116, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1)
!16 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2)
!17 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3)
!18 = !{!19, !25, !26, !29, !21, !32, !40, !53, !82, !98}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !20, line: 421, baseType: !21)
!20 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !22, line: 21, baseType: !23)
!22 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !24, line: 27, baseType: !13)
!24 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !27, line: 42, baseType: !28)
!27 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!28 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !22, line: 17, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !24, line: 21, baseType: !31)
!31 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !34, line: 434, size: 1600, elements: !35)
!34 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!35 = !{!36, !42, !806, !807}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !33, file: !34, line: 435, baseType: !37, size: 128)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !34, line: 429, size: 128, elements: !38)
!38 = !{!39, !41}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !37, file: !34, line: 430, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !37, file: !34, line: 431, baseType: !29, size: 8, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !33, file: !34, line: 436, baseType: !43, size: 576)
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !34, line: 369, size: 576, elements: !44)
!44 = !{!45, !57, !73, !84, !119, !133, !142, !455, !472, !488, !501, !579, !591, !605, !615, !633, !655, !674, !693, !712, !725, !752, !769, !782, !796, !805}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !43, file: !34, line: 370, baseType: !46, size: 128)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !34, line: 73, size: 128, elements: !47)
!47 = !{!48, !50, !51, !52, !56}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !46, file: !34, line: 74, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !46, file: !34, line: 74, baseType: !29, size: 8, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !46, file: !34, line: 74, baseType: !29, size: 8, offset: 72)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !46, file: !34, line: 74, baseType: !53, size: 16, offset: 80)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !22, line: 19, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !24, line: 24, baseType: !55)
!55 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !46, file: !34, line: 74, baseType: !29, size: 8, offset: 96)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !43, file: !34, line: 371, baseType: !58, size: 192)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !34, line: 76, size: 192, elements: !59)
!59 = !{!60, !61, !62, !63, !64, !65, !69}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !58, file: !34, line: 77, baseType: !49, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !58, file: !34, line: 77, baseType: !29, size: 8, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !58, file: !34, line: 77, baseType: !29, size: 8, offset: 72)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !58, file: !34, line: 77, baseType: !53, size: 16, offset: 80)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !58, file: !34, line: 77, baseType: !29, size: 8, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !58, file: !34, line: 77, baseType: !66, size: 24, offset: 104)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 24, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 3)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !58, file: !34, line: 78, baseType: !70, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !22, line: 23, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !24, line: 31, baseType: !72)
!72 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !43, file: !34, line: 372, baseType: !74, size: 256)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !34, line: 93, size: 256, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !83}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !74, file: !34, line: 94, baseType: !49, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !74, file: !34, line: 94, baseType: !29, size: 8, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !74, file: !34, line: 94, baseType: !29, size: 8, offset: 72)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !74, file: !34, line: 94, baseType: !53, size: 16, offset: 80)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !74, file: !34, line: 94, baseType: !29, size: 8, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !74, file: !34, line: 94, baseType: !82, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !74, file: !34, line: 94, baseType: !21, size: 32, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !43, file: !34, line: 373, baseType: !85, size: 384)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !34, line: 97, size: 384, elements: !86)
!86 = !{!87, !88, !89, !90, !91, !92, !94, !95, !96, !97}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !85, file: !34, line: 98, baseType: !49, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !85, file: !34, line: 98, baseType: !29, size: 8, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !85, file: !34, line: 98, baseType: !29, size: 8, offset: 72)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !85, file: !34, line: 98, baseType: !53, size: 16, offset: 80)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !85, file: !34, line: 98, baseType: !29, size: 8, offset: 96)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !85, file: !34, line: 98, baseType: !93, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !85, file: !34, line: 98, baseType: !21, size: 32, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !85, file: !34, line: 99, baseType: !21, size: 32, offset: 224)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !85, file: !34, line: 100, baseType: !93, size: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !85, file: !34, line: 101, baseType: !98, size: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !12, line: 133, size: 384, elements: !100)
!100 = !{!101, !102, !103, !104, !105, !114, !115, !116, !117}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !99, file: !12, line: 134, baseType: !49, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !99, file: !12, line: 135, baseType: !29, size: 8, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !99, file: !12, line: 136, baseType: !29, size: 8, offset: 72)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !99, file: !12, line: 137, baseType: !53, size: 16, offset: 80)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !99, file: !12, line: 138, baseType: !106, size: 32, offset: 96)
!106 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !107, line: 328, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !106, file: !107, line: 329, baseType: !21, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !106, file: !107, line: 330, baseType: !111, size: 32)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 4)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !99, file: !12, line: 139, baseType: !98, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !99, file: !12, line: 140, baseType: !98, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !99, file: !12, line: 141, baseType: !98, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !99, file: !12, line: 142, baseType: !118, size: 16, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !20, line: 445, baseType: !53)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !43, file: !34, line: 374, baseType: !120, size: 384)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !34, line: 104, size: 384, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127, !128, !130, !131, !132}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !120, file: !34, line: 105, baseType: !49, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !120, file: !34, line: 105, baseType: !29, size: 8, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !120, file: !34, line: 105, baseType: !29, size: 8, offset: 72)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !120, file: !34, line: 105, baseType: !53, size: 16, offset: 80)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !34, line: 105, baseType: !29, size: 8, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !120, file: !34, line: 105, baseType: !98, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !120, file: !34, line: 106, baseType: !129, size: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !120, file: !34, line: 107, baseType: !93, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !120, file: !34, line: 108, baseType: !21, size: 32, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !120, file: !34, line: 109, baseType: !21, size: 32, offset: 352)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !43, file: !34, line: 375, baseType: !134, size: 192)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !34, line: 118, size: 192, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !134, file: !34, line: 119, baseType: !49, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !134, file: !34, line: 119, baseType: !29, size: 8, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !134, file: !34, line: 119, baseType: !29, size: 8, offset: 72)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !134, file: !34, line: 119, baseType: !53, size: 16, offset: 80)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !34, line: 119, baseType: !29, size: 8, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !134, file: !34, line: 119, baseType: !40, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !43, file: !34, line: 376, baseType: !143, size: 448)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !34, line: 144, size: 448, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !452, !453, !454}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !143, file: !34, line: 145, baseType: !49, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !143, file: !34, line: 145, baseType: !29, size: 8, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !34, line: 145, baseType: !29, size: 8, offset: 72)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !143, file: !34, line: 145, baseType: !53, size: 16, offset: 80)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !143, file: !34, line: 145, baseType: !29, size: 8, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !143, file: !34, line: 145, baseType: !29, size: 8, offset: 104)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !143, file: !34, line: 146, baseType: !29, size: 8, offset: 112)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !143, file: !34, line: 147, baseType: !29, size: 8, offset: 120)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !143, file: !34, line: 148, baseType: !49, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !143, file: !34, line: 149, baseType: !49, size: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !143, file: !34, line: 150, baseType: !93, size: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !143, file: !34, line: 154, baseType: !157, size: 64, offset: 320)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !34, line: 151, size: 64, elements: !158)
!158 = !{!159, !451}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !157, file: !34, line: 152, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !12, line: 248, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!19, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !166, line: 37, size: 9024, elements: !167)
!166 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !397, !398, !399, !400, !401, !405, !407, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !434, !435, !436, !437, !438, !439, !440, !441, !443, !449}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !165, file: !166, line: 38, baseType: !164, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !165, file: !166, line: 39, baseType: !29, size: 8, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !165, file: !166, line: 40, baseType: !29, size: 8, offset: 72)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !165, file: !166, line: 41, baseType: !53, size: 16, offset: 80)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !165, file: !166, line: 42, baseType: !29, size: 8, offset: 96)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !165, file: !166, line: 43, baseType: !29, size: 8, offset: 104)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !165, file: !166, line: 44, baseType: !29, size: 8, offset: 112)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !165, file: !166, line: 45, baseType: !118, size: 16, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !165, file: !166, line: 46, baseType: !29, size: 8, offset: 144)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !165, file: !166, line: 47, baseType: !29, size: 8, offset: 152)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !165, file: !166, line: 48, baseType: !29, size: 8, offset: 160)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !165, file: !166, line: 49, baseType: !29, size: 8, offset: 168)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !165, file: !166, line: 50, baseType: !29, size: 8, offset: 176)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !165, file: !166, line: 51, baseType: !29, size: 8, offset: 184)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !165, file: !166, line: 52, baseType: !29, size: 8, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !165, file: !166, line: 53, baseType: !29, size: 8, offset: 200)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !165, file: !166, line: 54, baseType: !93, size: 64, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !165, file: !166, line: 55, baseType: !21, size: 32, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !165, file: !166, line: 56, baseType: !21, size: 32, offset: 352)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !165, file: !166, line: 57, baseType: !21, size: 32, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !165, file: !166, line: 58, baseType: !21, size: 32, offset: 416)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !165, file: !166, line: 60, baseType: !190, size: 640, offset: 448)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !12, line: 909, size: 640, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !278, !279, !395, !396}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !190, file: !12, line: 910, baseType: !93, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !190, file: !12, line: 911, baseType: !93, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !190, file: !12, line: 912, baseType: !93, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !190, file: !12, line: 913, baseType: !93, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !190, file: !12, line: 914, baseType: !93, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !190, file: !12, line: 915, baseType: !198, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !12, line: 891, size: 1600, elements: !200)
!200 = !{!201, !221, !237}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !199, file: !12, line: 892, baseType: !202, size: 448)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !12, line: 844, size: 448, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !220}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !202, file: !12, line: 845, baseType: !198, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !202, file: !12, line: 845, baseType: !29, size: 8, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !202, file: !12, line: 845, baseType: !29, size: 8, offset: 72)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !202, file: !12, line: 845, baseType: !53, size: 16, offset: 80)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !202, file: !12, line: 845, baseType: !93, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !202, file: !12, line: 845, baseType: !198, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !202, file: !12, line: 845, baseType: !98, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !202, file: !12, line: 845, baseType: !212, size: 64, offset: 320)
!212 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !12, line: 732, size: 64, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !212, file: !12, line: 733, baseType: !70, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !212, file: !12, line: 734, baseType: !21, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !212, file: !12, line: 735, baseType: !82, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !212, file: !12, line: 736, baseType: !93, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !212, file: !12, line: 737, baseType: !82, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !212, file: !12, line: 738, baseType: !198, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !202, file: !12, line: 845, baseType: !29, size: 8, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !199, file: !12, line: 893, baseType: !222, size: 640)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !12, line: 851, size: 640, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !222, file: !12, line: 852, baseType: !198, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !222, file: !12, line: 852, baseType: !29, size: 8, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !222, file: !12, line: 852, baseType: !29, size: 8, offset: 72)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !222, file: !12, line: 852, baseType: !53, size: 16, offset: 80)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !222, file: !12, line: 852, baseType: !93, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !12, line: 852, baseType: !198, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !222, file: !12, line: 852, baseType: !98, size: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !222, file: !12, line: 852, baseType: !212, size: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !222, file: !12, line: 852, baseType: !29, size: 8, offset: 384)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !222, file: !12, line: 852, baseType: !82, size: 64, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !222, file: !12, line: 853, baseType: !93, size: 64, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !222, file: !12, line: 854, baseType: !21, size: 32, offset: 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !222, file: !12, line: 855, baseType: !21, size: 32, offset: 608)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !199, file: !12, line: 894, baseType: !238, size: 1600)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !12, line: 862, size: 1600, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !238, file: !12, line: 863, baseType: !198, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !238, file: !12, line: 863, baseType: !29, size: 8, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !238, file: !12, line: 863, baseType: !29, size: 8, offset: 72)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !238, file: !12, line: 863, baseType: !53, size: 16, offset: 80)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !238, file: !12, line: 863, baseType: !93, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !238, file: !12, line: 863, baseType: !198, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !238, file: !12, line: 863, baseType: !98, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !238, file: !12, line: 863, baseType: !212, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !238, file: !12, line: 863, baseType: !29, size: 8, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !238, file: !12, line: 863, baseType: !198, size: 64, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !238, file: !12, line: 864, baseType: !198, size: 64, offset: 512)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !238, file: !12, line: 865, baseType: !82, size: 64, offset: 576)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !238, file: !12, line: 866, baseType: !29, size: 8, offset: 640)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !238, file: !12, line: 867, baseType: !82, size: 64, offset: 704)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !238, file: !12, line: 868, baseType: !82, size: 64, offset: 768)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !238, file: !12, line: 869, baseType: !82, size: 64, offset: 832)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !238, file: !12, line: 870, baseType: !111, size: 32, offset: 896)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !238, file: !12, line: 871, baseType: !21, size: 32, offset: 928)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !238, file: !12, line: 872, baseType: !21, size: 32, offset: 960)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !238, file: !12, line: 873, baseType: !21, size: 32, offset: 992)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !238, file: !12, line: 874, baseType: !21, size: 32, offset: 1024)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !238, file: !12, line: 875, baseType: !21, size: 32, offset: 1056)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !238, file: !12, line: 876, baseType: !21, size: 32, offset: 1088)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !238, file: !12, line: 877, baseType: !21, size: 32, offset: 1120)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !238, file: !12, line: 878, baseType: !21, size: 32, offset: 1152)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !238, file: !12, line: 879, baseType: !21, size: 32, offset: 1184)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !238, file: !12, line: 880, baseType: !21, size: 32, offset: 1216)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !238, file: !12, line: 881, baseType: !21, size: 32, offset: 1248)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !238, file: !12, line: 882, baseType: !21, size: 32, offset: 1280)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !238, file: !12, line: 883, baseType: !21, size: 32, offset: 1312)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !238, file: !12, line: 884, baseType: !53, size: 16, offset: 1344)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !238, file: !12, line: 885, baseType: !29, size: 8, offset: 1360)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !238, file: !12, line: 886, baseType: !29, size: 8, offset: 1368)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !238, file: !12, line: 887, baseType: !29, size: 8, offset: 1376)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !238, file: !12, line: 888, baseType: !275, size: 160, offset: 1384)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 20)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !190, file: !12, line: 916, baseType: !98, size: 64, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !190, file: !12, line: 917, baseType: !280, size: 64, offset: 448)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !12, line: 679, size: 640, elements: !282)
!282 = !{!283, !291, !304, !313, !322, !335, !349, !361, !373}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !281, file: !12, line: 680, baseType: !284, size: 128)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !12, line: 575, size: 128, elements: !285)
!285 = !{!286, !287, !288, !289, !290}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !284, file: !12, line: 576, baseType: !40, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !284, file: !12, line: 576, baseType: !29, size: 8, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !284, file: !12, line: 576, baseType: !29, size: 8, offset: 72)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !284, file: !12, line: 576, baseType: !53, size: 16, offset: 80)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !284, file: !12, line: 576, baseType: !53, size: 16, offset: 96)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !281, file: !12, line: 681, baseType: !292, size: 384)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !12, line: 604, size: 384, elements: !293)
!293 = !{!294, !295, !296, !297, !298, !299, !300, !301, !302, !303}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !12, line: 605, baseType: !40, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !292, file: !12, line: 605, baseType: !29, size: 8, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !292, file: !12, line: 605, baseType: !29, size: 8, offset: 72)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !292, file: !12, line: 605, baseType: !53, size: 16, offset: 80)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !292, file: !12, line: 605, baseType: !53, size: 16, offset: 96)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !292, file: !12, line: 606, baseType: !53, size: 16, offset: 112)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !292, file: !12, line: 607, baseType: !198, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !292, file: !12, line: 608, baseType: !93, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !292, file: !12, line: 609, baseType: !93, size: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !292, file: !12, line: 610, baseType: !70, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !281, file: !12, line: 682, baseType: !305, size: 192)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !12, line: 582, size: 192, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !12, line: 583, baseType: !40, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !305, file: !12, line: 583, baseType: !29, size: 8, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !12, line: 583, baseType: !29, size: 8, offset: 72)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !305, file: !12, line: 583, baseType: !53, size: 16, offset: 80)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !305, file: !12, line: 583, baseType: !53, size: 16, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !305, file: !12, line: 584, baseType: !49, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !281, file: !12, line: 683, baseType: !314, size: 192)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !12, line: 616, size: 192, elements: !315)
!315 = !{!316, !317, !318, !319, !320, !321}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !12, line: 617, baseType: !40, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !314, file: !12, line: 617, baseType: !29, size: 8, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !12, line: 617, baseType: !29, size: 8, offset: 72)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !314, file: !12, line: 617, baseType: !53, size: 16, offset: 80)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !314, file: !12, line: 617, baseType: !53, size: 16, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !314, file: !12, line: 618, baseType: !98, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !281, file: !12, line: 684, baseType: !323, size: 448)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !12, line: 621, size: 448, elements: !324)
!324 = !{!325, !326, !327, !328, !329, !330, !331, !332, !333, !334}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !12, line: 622, baseType: !40, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !323, file: !12, line: 622, baseType: !29, size: 8, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !323, file: !12, line: 622, baseType: !29, size: 8, offset: 72)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !323, file: !12, line: 622, baseType: !53, size: 16, offset: 80)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !323, file: !12, line: 622, baseType: !53, size: 16, offset: 96)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !323, file: !12, line: 623, baseType: !21, size: 32, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !323, file: !12, line: 624, baseType: !198, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !323, file: !12, line: 625, baseType: !93, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !323, file: !12, line: 626, baseType: !93, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !323, file: !12, line: 627, baseType: !21, size: 32, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !281, file: !12, line: 685, baseType: !336, size: 512)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !12, line: 590, size: 512, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !12, line: 591, baseType: !40, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !336, file: !12, line: 591, baseType: !29, size: 8, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !12, line: 591, baseType: !29, size: 8, offset: 72)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !336, file: !12, line: 591, baseType: !53, size: 16, offset: 80)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !336, file: !12, line: 591, baseType: !53, size: 16, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !336, file: !12, line: 592, baseType: !21, size: 32, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !336, file: !12, line: 593, baseType: !49, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !336, file: !12, line: 594, baseType: !49, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !336, file: !12, line: 595, baseType: !164, size: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !336, file: !12, line: 596, baseType: !40, size: 64, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !336, file: !12, line: 597, baseType: !21, size: 32, offset: 448)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !281, file: !12, line: 686, baseType: !350, size: 320)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !12, line: 634, size: 320, elements: !351)
!351 = !{!352, !353, !354, !355, !356, !357, !358, !359, !360}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !350, file: !12, line: 635, baseType: !40, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !350, file: !12, line: 635, baseType: !29, size: 8, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !350, file: !12, line: 635, baseType: !29, size: 8, offset: 72)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !350, file: !12, line: 635, baseType: !53, size: 16, offset: 80)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !350, file: !12, line: 635, baseType: !53, size: 16, offset: 96)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !350, file: !12, line: 636, baseType: !29, size: 8, offset: 112)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !350, file: !12, line: 637, baseType: !164, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !350, file: !12, line: 638, baseType: !49, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !350, file: !12, line: 639, baseType: !70, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !281, file: !12, line: 687, baseType: !362, size: 640)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !12, line: 646, size: 640, elements: !363)
!363 = !{!364, !365, !366, !367, !368, !369}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !362, file: !12, line: 647, baseType: !40, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !362, file: !12, line: 647, baseType: !29, size: 8, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !362, file: !12, line: 647, baseType: !29, size: 8, offset: 72)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !362, file: !12, line: 647, baseType: !53, size: 16, offset: 80)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !362, file: !12, line: 647, baseType: !53, size: 16, offset: 96)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !362, file: !12, line: 648, baseType: !370, size: 512, offset: 128)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 512, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 8)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !281, file: !12, line: 688, baseType: !374, size: 320)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !12, line: 669, size: 320, elements: !375)
!375 = !{!376, !377, !378, !379, !380, !381, !382, !383, !384}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !374, file: !12, line: 670, baseType: !40, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !374, file: !12, line: 670, baseType: !29, size: 8, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !374, file: !12, line: 670, baseType: !29, size: 8, offset: 72)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !374, file: !12, line: 670, baseType: !53, size: 16, offset: 80)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !374, file: !12, line: 670, baseType: !53, size: 16, offset: 96)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !374, file: !12, line: 671, baseType: !29, size: 8, offset: 112)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !374, file: !12, line: 672, baseType: !98, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !374, file: !12, line: 673, baseType: !49, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !374, file: !12, line: 674, baseType: !385, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !12, line: 660, size: 128, elements: !387)
!387 = !{!388, !394}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !386, file: !12, line: 661, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !20, line: 1061, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393, !21, !40}
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !20, line: 424, baseType: !40)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !386, file: !12, line: 662, baseType: !40, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !190, file: !12, line: 918, baseType: !198, size: 64, offset: 512)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !190, file: !12, line: 919, baseType: !21, size: 32, offset: 576)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !165, file: !166, line: 61, baseType: !21, size: 32, offset: 1088)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !165, file: !166, line: 62, baseType: !21, size: 32, offset: 1120)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !165, file: !166, line: 63, baseType: !53, size: 16, offset: 1152)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !165, file: !166, line: 64, baseType: !29, size: 8, offset: 1168)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !165, file: !166, line: 66, baseType: !402, size: 2688, offset: 1216)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 2688, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 7)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !165, file: !166, line: 67, baseType: !406, size: 3072, offset: 3904)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 3072, elements: !371)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !165, file: !166, line: 68, baseType: !408, size: 576, offset: 6976)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 576, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 9)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !165, file: !166, line: 69, baseType: !129, size: 64, offset: 7552)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !165, file: !166, line: 71, baseType: !93, size: 64, offset: 7616)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !165, file: !166, line: 72, baseType: !129, size: 64, offset: 7680)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !165, file: !166, line: 73, baseType: !280, size: 64, offset: 7744)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !165, file: !166, line: 74, baseType: !98, size: 64, offset: 7808)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !165, file: !166, line: 75, baseType: !49, size: 64, offset: 7872)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !165, file: !166, line: 76, baseType: !98, size: 64, offset: 7936)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !165, file: !166, line: 77, baseType: !198, size: 64, offset: 8000)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !165, file: !166, line: 78, baseType: !49, size: 64, offset: 8064)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !165, file: !166, line: 79, baseType: !98, size: 64, offset: 8128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !165, file: !166, line: 80, baseType: !82, size: 64, offset: 8192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !165, file: !166, line: 81, baseType: !198, size: 64, offset: 8256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !165, file: !166, line: 82, baseType: !424, size: 64, offset: 8320)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !12, line: 718, size: 128, elements: !427)
!427 = !{!428, !429, !430, !431, !432, !433}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !426, file: !12, line: 722, baseType: !21, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !426, file: !12, line: 723, baseType: !21, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !426, file: !12, line: 724, baseType: !53, size: 16, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !426, file: !12, line: 725, baseType: !29, size: 8, offset: 80)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !426, file: !12, line: 726, baseType: !29, size: 8, offset: 88)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !426, file: !12, line: 727, baseType: !29, size: 8, offset: 96)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !165, file: !166, line: 83, baseType: !198, size: 64, offset: 8384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !165, file: !166, line: 84, baseType: !49, size: 64, offset: 8448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !165, file: !166, line: 85, baseType: !280, size: 64, offset: 8512)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !165, file: !166, line: 86, baseType: !49, size: 64, offset: 8576)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !165, file: !166, line: 87, baseType: !280, size: 64, offset: 8640)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !165, file: !166, line: 88, baseType: !198, size: 64, offset: 8704)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !165, file: !166, line: 89, baseType: !198, size: 64, offset: 8768)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !165, file: !166, line: 90, baseType: !442, size: 64, offset: 8832)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !165, file: !166, line: 91, baseType: !444, size: 64, offset: 8896)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !12, line: 652, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!19, !164, !448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !165, file: !166, line: 92, baseType: !450, size: 64, offset: 8960)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !12, line: 656, baseType: !161)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !157, file: !34, line: 153, baseType: !49, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !143, file: !34, line: 156, baseType: !21, size: 32, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !143, file: !34, line: 157, baseType: !118, size: 16, offset: 416)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !143, file: !34, line: 158, baseType: !29, size: 8, offset: 432)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !43, file: !34, line: 377, baseType: !456, size: 576)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !34, line: 122, size: 576, elements: !457)
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !456, file: !34, line: 123, baseType: !49, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !456, file: !34, line: 123, baseType: !29, size: 8, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !456, file: !34, line: 123, baseType: !29, size: 8, offset: 72)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !456, file: !34, line: 123, baseType: !53, size: 16, offset: 80)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !456, file: !34, line: 123, baseType: !29, size: 8, offset: 96)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !456, file: !34, line: 123, baseType: !29, size: 8, offset: 104)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !456, file: !34, line: 124, baseType: !53, size: 16, offset: 112)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !456, file: !34, line: 125, baseType: !40, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !456, file: !34, line: 126, baseType: !70, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !456, file: !34, line: 127, baseType: !442, size: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !456, file: !34, line: 128, baseType: !49, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !456, file: !34, line: 129, baseType: !49, size: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !456, file: !34, line: 130, baseType: !98, size: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !456, file: !34, line: 131, baseType: !29, size: 8, offset: 512)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !43, file: !34, line: 378, baseType: !473, size: 512)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !34, line: 134, size: 512, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !486, !487}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !473, file: !34, line: 135, baseType: !49, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !473, file: !34, line: 135, baseType: !29, size: 8, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !473, file: !34, line: 135, baseType: !29, size: 8, offset: 72)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !473, file: !34, line: 135, baseType: !53, size: 16, offset: 80)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !473, file: !34, line: 135, baseType: !29, size: 8, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !473, file: !34, line: 135, baseType: !29, size: 8, offset: 104)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !473, file: !34, line: 136, baseType: !98, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !473, file: !34, line: 137, baseType: !49, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !473, file: !34, line: 138, baseType: !49, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !473, file: !34, line: 139, baseType: !485, size: 64, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !20, line: 129, baseType: !70)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !473, file: !34, line: 140, baseType: !21, size: 32, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !473, file: !34, line: 141, baseType: !40, size: 64, offset: 448)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !43, file: !34, line: 379, baseType: !489, size: 320)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !34, line: 185, size: 320, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !500}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !489, file: !34, line: 186, baseType: !49, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !489, file: !34, line: 186, baseType: !29, size: 8, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !489, file: !34, line: 186, baseType: !29, size: 8, offset: 72)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !489, file: !34, line: 186, baseType: !53, size: 16, offset: 80)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !489, file: !34, line: 186, baseType: !29, size: 8, offset: 96)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !489, file: !34, line: 186, baseType: !497, size: 128, offset: 128)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 128, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 2)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !489, file: !34, line: 186, baseType: !49, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !43, file: !34, line: 380, baseType: !502, size: 384)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !34, line: 188, size: 384, elements: !503)
!503 = !{!504, !505, !506, !507, !508, !509, !510, !511}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !502, file: !34, line: 189, baseType: !49, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !502, file: !34, line: 189, baseType: !29, size: 8, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !502, file: !34, line: 189, baseType: !29, size: 8, offset: 72)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !502, file: !34, line: 189, baseType: !53, size: 16, offset: 80)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !502, file: !34, line: 189, baseType: !29, size: 8, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !502, file: !34, line: 190, baseType: !497, size: 128, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !502, file: !34, line: 190, baseType: !49, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !502, file: !34, line: 190, baseType: !512, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !12, line: 480, size: 576, elements: !514)
!514 = !{!515, !516, !517, !518, !526, !541, !573, !574, !575, !576, !577, !578}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !513, file: !12, line: 481, baseType: !98, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !513, file: !12, line: 482, baseType: !512, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !513, file: !12, line: 483, baseType: !512, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !513, file: !12, line: 484, baseType: !519, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !12, line: 497, size: 256, elements: !521)
!521 = !{!522, !523, !524, !525}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !520, file: !12, line: 498, baseType: !519, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !520, file: !12, line: 499, baseType: !519, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !520, file: !12, line: 500, baseType: !512, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !520, file: !12, line: 501, baseType: !21, size: 32, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !513, file: !12, line: 485, baseType: !527, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !12, line: 466, size: 320, elements: !529)
!529 = !{!530, !535, !536, !537, !538, !539, !540}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !528, file: !12, line: 467, baseType: !531, size: 128)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !12, line: 459, size: 128, elements: !532)
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !531, file: !12, line: 460, baseType: !29, size: 8)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !531, file: !12, line: 461, baseType: !70, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !528, file: !12, line: 468, baseType: !531, size: 128, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !528, file: !12, line: 469, baseType: !53, size: 16, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !528, file: !12, line: 470, baseType: !29, size: 8, offset: 272)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !528, file: !12, line: 471, baseType: !29, size: 8, offset: 280)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !528, file: !12, line: 472, baseType: !29, size: 8, offset: 288)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !528, file: !12, line: 473, baseType: !29, size: 8, offset: 296)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !513, file: !12, line: 486, baseType: !542, size: 64, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !12, line: 448, size: 192, elements: !544)
!544 = !{!545, !568, !569, !570, !571, !572}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !543, file: !12, line: 449, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !12, line: 438, size: 64, elements: !547)
!547 = !{!548, !549, !562}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !546, file: !12, line: 439, baseType: !98, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !546, file: !12, line: 440, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !12, line: 419, size: 256, elements: !552)
!552 = !{!553, !558, !559, !560, !561}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !551, file: !12, line: 420, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !20, line: 1058, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!21, !393, !21, !40}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !551, file: !12, line: 421, baseType: !40, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !551, file: !12, line: 422, baseType: !98, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !551, file: !12, line: 423, baseType: !29, size: 8, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !551, file: !12, line: 424, baseType: !29, size: 8, offset: 200)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !546, file: !12, line: 441, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !12, line: 429, size: 128, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !564, file: !12, line: 430, baseType: !98, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !564, file: !12, line: 431, baseType: !563, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !543, file: !12, line: 450, baseType: !527, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !12, line: 451, baseType: !29, size: 8, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !543, file: !12, line: 452, baseType: !29, size: 8, offset: 136)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !543, file: !12, line: 453, baseType: !29, size: 8, offset: 144)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !543, file: !12, line: 454, baseType: !29, size: 8, offset: 152)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !513, file: !12, line: 487, baseType: !70, size: 64, offset: 384)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !513, file: !12, line: 488, baseType: !21, size: 32, offset: 448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !513, file: !12, line: 489, baseType: !53, size: 16, offset: 480)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !513, file: !12, line: 490, baseType: !53, size: 16, offset: 496)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !513, file: !12, line: 491, baseType: !29, size: 8, offset: 512)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !513, file: !12, line: 492, baseType: !29, size: 8, offset: 520)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !43, file: !34, line: 381, baseType: !580, size: 384)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !34, line: 193, size: 384, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588, !589, !590}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !580, file: !34, line: 194, baseType: !49, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !580, file: !34, line: 194, baseType: !29, size: 8, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !580, file: !34, line: 194, baseType: !29, size: 8, offset: 72)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !580, file: !34, line: 194, baseType: !53, size: 16, offset: 80)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !34, line: 194, baseType: !29, size: 8, offset: 96)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !580, file: !34, line: 194, baseType: !497, size: 128, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !580, file: !34, line: 194, baseType: !49, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !580, file: !34, line: 194, baseType: !21, size: 32, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !580, file: !34, line: 195, baseType: !21, size: 32, offset: 352)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !43, file: !34, line: 382, baseType: !592, size: 384)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !34, line: 198, size: 384, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !600, !601, !602, !603}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !592, file: !34, line: 199, baseType: !49, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !592, file: !34, line: 199, baseType: !29, size: 8, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !592, file: !34, line: 199, baseType: !29, size: 8, offset: 72)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !592, file: !34, line: 199, baseType: !53, size: 16, offset: 80)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !592, file: !34, line: 199, baseType: !29, size: 8, offset: 96)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !592, file: !34, line: 201, baseType: !29, size: 8, offset: 104)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !592, file: !34, line: 202, baseType: !29, size: 8, offset: 112)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !592, file: !34, line: 203, baseType: !497, size: 128, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !592, file: !34, line: 203, baseType: !49, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !592, file: !34, line: 203, baseType: !604, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !20, line: 128, baseType: !70)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !43, file: !34, line: 383, baseType: !606, size: 320)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !34, line: 206, size: 320, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !613, !614}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !606, file: !34, line: 207, baseType: !49, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !606, file: !34, line: 207, baseType: !29, size: 8, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !606, file: !34, line: 207, baseType: !29, size: 8, offset: 72)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !606, file: !34, line: 207, baseType: !53, size: 16, offset: 80)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !606, file: !34, line: 207, baseType: !29, size: 8, offset: 96)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !606, file: !34, line: 207, baseType: !497, size: 128, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !606, file: !34, line: 207, baseType: !49, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !43, file: !34, line: 384, baseType: !616, size: 384)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !34, line: 234, size: 384, elements: !617)
!617 = !{!618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !616, file: !34, line: 235, baseType: !49, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !616, file: !34, line: 235, baseType: !29, size: 8, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !616, file: !34, line: 235, baseType: !29, size: 8, offset: 72)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !616, file: !34, line: 235, baseType: !53, size: 16, offset: 80)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !616, file: !34, line: 235, baseType: !29, size: 8, offset: 96)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !616, file: !34, line: 235, baseType: !29, size: 8, offset: 104)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !616, file: !34, line: 235, baseType: !29, size: 8, offset: 112)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !616, file: !34, line: 235, baseType: !29, size: 8, offset: 120)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !616, file: !34, line: 235, baseType: !98, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !616, file: !34, line: 235, baseType: !21, size: 32, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !616, file: !34, line: 235, baseType: !21, size: 32, offset: 224)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !616, file: !34, line: 235, baseType: !21, size: 32, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !616, file: !34, line: 235, baseType: !29, size: 8, offset: 288)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !616, file: !34, line: 235, baseType: !29, size: 8, offset: 296)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !616, file: !34, line: 235, baseType: !49, size: 64, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !43, file: !34, line: 385, baseType: !634, size: 576)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !34, line: 238, size: 576, elements: !635)
!635 = !{!636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !634, file: !34, line: 239, baseType: !49, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !634, file: !34, line: 239, baseType: !29, size: 8, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !634, file: !34, line: 239, baseType: !29, size: 8, offset: 72)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !634, file: !34, line: 239, baseType: !53, size: 16, offset: 80)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !634, file: !34, line: 239, baseType: !29, size: 8, offset: 96)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !634, file: !34, line: 239, baseType: !29, size: 8, offset: 104)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !634, file: !34, line: 239, baseType: !29, size: 8, offset: 112)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !634, file: !34, line: 239, baseType: !29, size: 8, offset: 120)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !634, file: !34, line: 239, baseType: !98, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !634, file: !34, line: 239, baseType: !21, size: 32, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !634, file: !34, line: 239, baseType: !21, size: 32, offset: 224)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !634, file: !34, line: 239, baseType: !21, size: 32, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !634, file: !34, line: 239, baseType: !29, size: 8, offset: 288)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !634, file: !34, line: 239, baseType: !29, size: 8, offset: 296)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !634, file: !34, line: 239, baseType: !53, size: 16, offset: 304)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !634, file: !34, line: 240, baseType: !49, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !634, file: !34, line: 241, baseType: !93, size: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !634, file: !34, line: 242, baseType: !53, size: 16, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !634, file: !34, line: 243, baseType: !93, size: 64, offset: 512)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !43, file: !34, line: 386, baseType: !656, size: 384)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !34, line: 263, size: 384, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !656, file: !34, line: 264, baseType: !49, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !656, file: !34, line: 264, baseType: !29, size: 8, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !656, file: !34, line: 264, baseType: !29, size: 8, offset: 72)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !656, file: !34, line: 264, baseType: !53, size: 16, offset: 80)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !656, file: !34, line: 264, baseType: !29, size: 8, offset: 96)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !656, file: !34, line: 264, baseType: !29, size: 8, offset: 104)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !656, file: !34, line: 264, baseType: !29, size: 8, offset: 112)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !656, file: !34, line: 264, baseType: !29, size: 8, offset: 120)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !656, file: !34, line: 264, baseType: !98, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !656, file: !34, line: 264, baseType: !21, size: 32, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !656, file: !34, line: 264, baseType: !21, size: 32, offset: 224)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !656, file: !34, line: 264, baseType: !21, size: 32, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !656, file: !34, line: 264, baseType: !29, size: 8, offset: 288)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !656, file: !34, line: 264, baseType: !29, size: 8, offset: 296)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !656, file: !34, line: 264, baseType: !29, size: 8, offset: 304)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !656, file: !34, line: 265, baseType: !49, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !43, file: !34, line: 387, baseType: !675, size: 448)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !34, line: 246, size: 448, elements: !676)
!676 = !{!677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !675, file: !34, line: 247, baseType: !49, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !675, file: !34, line: 247, baseType: !29, size: 8, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !675, file: !34, line: 247, baseType: !29, size: 8, offset: 72)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !675, file: !34, line: 247, baseType: !53, size: 16, offset: 80)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !34, line: 247, baseType: !29, size: 8, offset: 96)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !675, file: !34, line: 247, baseType: !29, size: 8, offset: 104)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !675, file: !34, line: 247, baseType: !29, size: 8, offset: 112)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !675, file: !34, line: 247, baseType: !29, size: 8, offset: 120)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !675, file: !34, line: 247, baseType: !98, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !675, file: !34, line: 247, baseType: !21, size: 32, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !675, file: !34, line: 247, baseType: !21, size: 32, offset: 224)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !675, file: !34, line: 247, baseType: !21, size: 32, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !675, file: !34, line: 247, baseType: !29, size: 8, offset: 288)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !675, file: !34, line: 247, baseType: !29, size: 8, offset: 296)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !675, file: !34, line: 247, baseType: !49, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !675, file: !34, line: 248, baseType: !49, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !43, file: !34, line: 388, baseType: !694, size: 448)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !34, line: 251, size: 448, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !694, file: !34, line: 252, baseType: !49, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !694, file: !34, line: 252, baseType: !29, size: 8, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !694, file: !34, line: 252, baseType: !29, size: 8, offset: 72)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !694, file: !34, line: 252, baseType: !53, size: 16, offset: 80)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !34, line: 252, baseType: !29, size: 8, offset: 96)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !694, file: !34, line: 252, baseType: !29, size: 8, offset: 104)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !694, file: !34, line: 252, baseType: !29, size: 8, offset: 112)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !694, file: !34, line: 252, baseType: !29, size: 8, offset: 120)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !694, file: !34, line: 252, baseType: !98, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !694, file: !34, line: 252, baseType: !21, size: 32, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !694, file: !34, line: 252, baseType: !21, size: 32, offset: 224)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !694, file: !34, line: 252, baseType: !21, size: 32, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !694, file: !34, line: 252, baseType: !29, size: 8, offset: 288)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !694, file: !34, line: 252, baseType: !29, size: 8, offset: 296)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !694, file: !34, line: 257, baseType: !49, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !694, file: !34, line: 258, baseType: !49, size: 64, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !43, file: !34, line: 389, baseType: !713, size: 512)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !34, line: 274, size: 512, elements: !714)
!714 = !{!715, !716, !717, !718, !719, !720, !721, !722, !723, !724}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !713, file: !34, line: 275, baseType: !49, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !713, file: !34, line: 275, baseType: !29, size: 8, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !713, file: !34, line: 275, baseType: !29, size: 8, offset: 72)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !713, file: !34, line: 275, baseType: !53, size: 16, offset: 80)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !713, file: !34, line: 275, baseType: !29, size: 8, offset: 96)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !713, file: !34, line: 275, baseType: !98, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !713, file: !34, line: 276, baseType: !21, size: 32, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !713, file: !34, line: 277, baseType: !389, size: 64, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !713, file: !34, line: 278, baseType: !40, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !713, file: !34, line: 279, baseType: !497, size: 128, offset: 384)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !43, file: !34, line: 390, baseType: !726, size: 576)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !34, line: 282, size: 576, elements: !727)
!727 = !{!728, !729, !730, !731, !732, !733, !734, !735, !741, !742, !743, !744, !750, !751}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !726, file: !34, line: 283, baseType: !49, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !726, file: !34, line: 283, baseType: !29, size: 8, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !726, file: !34, line: 283, baseType: !29, size: 8, offset: 72)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !726, file: !34, line: 283, baseType: !53, size: 16, offset: 80)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !726, file: !34, line: 283, baseType: !29, size: 8, offset: 96)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !726, file: !34, line: 283, baseType: !29, size: 8, offset: 104)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !726, file: !34, line: 284, baseType: !29, size: 8, offset: 112)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !726, file: !34, line: 285, baseType: !736, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !20, line: 1093, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!19, !21, !485, !21, !740, !40, !40}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !726, file: !34, line: 286, baseType: !98, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !726, file: !34, line: 287, baseType: !40, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !726, file: !34, line: 288, baseType: !40, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !726, file: !34, line: 289, baseType: !745, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !20, line: 1126, baseType: !746)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!19, !393, !21, !40, !749}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !726, file: !34, line: 290, baseType: !49, size: 64, offset: 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !726, file: !34, line: 291, baseType: !49, size: 64, offset: 512)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !43, file: !34, line: 391, baseType: !753, size: 512)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !34, line: 309, size: 512, elements: !754)
!754 = !{!755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !753, file: !34, line: 310, baseType: !49, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !753, file: !34, line: 310, baseType: !29, size: 8, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !753, file: !34, line: 310, baseType: !29, size: 8, offset: 72)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !753, file: !34, line: 310, baseType: !53, size: 16, offset: 80)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !753, file: !34, line: 310, baseType: !29, size: 8, offset: 96)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !753, file: !34, line: 310, baseType: !29, size: 8, offset: 104)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !753, file: !34, line: 311, baseType: !29, size: 8, offset: 112)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !753, file: !34, line: 312, baseType: !29, size: 8, offset: 120)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !753, file: !34, line: 313, baseType: !40, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !753, file: !34, line: 314, baseType: !98, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !753, file: !34, line: 315, baseType: !129, size: 64, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !753, file: !34, line: 316, baseType: !93, size: 64, offset: 320)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !753, file: !34, line: 317, baseType: !93, size: 64, offset: 384)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !753, file: !34, line: 318, baseType: !21, size: 32, offset: 448)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !43, file: !34, line: 392, baseType: !770, size: 448)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !34, line: 342, size: 448, elements: !771)
!771 = !{!772, !773, !774, !775, !776, !777, !778, !779, !780, !781}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !770, file: !34, line: 343, baseType: !49, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !770, file: !34, line: 343, baseType: !29, size: 8, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !770, file: !34, line: 343, baseType: !29, size: 8, offset: 72)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !770, file: !34, line: 343, baseType: !53, size: 16, offset: 80)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !770, file: !34, line: 343, baseType: !29, size: 8, offset: 96)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !770, file: !34, line: 343, baseType: !98, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !770, file: !34, line: 344, baseType: !98, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !770, file: !34, line: 345, baseType: !40, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !770, file: !34, line: 346, baseType: !93, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !770, file: !34, line: 347, baseType: !21, size: 32, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !43, file: !34, line: 393, baseType: !783, size: 256)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !34, line: 352, size: 256, elements: !784)
!784 = !{!785, !786, !787, !788, !789, !790, !795}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !783, file: !34, line: 353, baseType: !49, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !783, file: !34, line: 353, baseType: !29, size: 8, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !783, file: !34, line: 353, baseType: !29, size: 8, offset: 72)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !783, file: !34, line: 353, baseType: !53, size: 16, offset: 80)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !783, file: !34, line: 353, baseType: !29, size: 8, offset: 96)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !783, file: !34, line: 353, baseType: !791, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !20, line: 1064, baseType: !792)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !393, !40}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !783, file: !34, line: 354, baseType: !40, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !43, file: !34, line: 394, baseType: !797, size: 192)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !34, line: 359, size: 192, elements: !798)
!798 = !{!799, !800, !801, !802, !803, !804}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !797, file: !34, line: 360, baseType: !49, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !797, file: !34, line: 360, baseType: !29, size: 8, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !797, file: !34, line: 360, baseType: !29, size: 8, offset: 72)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !797, file: !34, line: 360, baseType: !53, size: 16, offset: 80)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !797, file: !34, line: 360, baseType: !29, size: 8, offset: 96)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !797, file: !34, line: 360, baseType: !49, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !43, file: !34, line: 401, baseType: !99, size: 384)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !33, file: !34, line: 437, baseType: !99, size: 384)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !33, file: !34, line: 438, baseType: !199, size: 1600)
!808 = !{!0, !809, !814, !816, !821, !826, !831, !836, !841, !846, !7}
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !811, isLocal: true, isDefinition: true)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !812)
!812 = !{!813}
!813 = !DISubrange(count: 33)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(scope: null, file: !2, line: 206, type: !3, isLocal: true, isDefinition: true)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(scope: null, file: !2, line: 224, type: !818, isLocal: true, isDefinition: true)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 36)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !823, isLocal: true, isDefinition: true)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !824)
!824 = !{!825}
!825 = !DISubrange(count: 6)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(scope: null, file: !2, line: 331, type: !828, isLocal: true, isDefinition: true)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !829)
!829 = !{!830}
!830 = !DISubrange(count: 32)
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression())
!832 = distinct !DIGlobalVariable(scope: null, file: !2, line: 363, type: !833, isLocal: true, isDefinition: true)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !834)
!834 = !{!835}
!835 = !DISubrange(count: 1)
!836 = !DIGlobalVariableExpression(var: !837, expr: !DIExpression())
!837 = distinct !DIGlobalVariable(scope: null, file: !2, line: 436, type: !838, isLocal: true, isDefinition: true)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !839)
!839 = !{!840}
!840 = !DISubrange(count: 42)
!841 = !DIGlobalVariableExpression(var: !842, expr: !DIExpression())
!842 = distinct !DIGlobalVariable(scope: null, file: !2, line: 598, type: !843, isLocal: true, isDefinition: true)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !844)
!844 = !{!845}
!845 = !DISubrange(count: 55)
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(scope: null, file: !2, line: 696, type: !848, isLocal: true, isDefinition: true)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !849)
!849 = !{!850}
!850 = !DISubrange(count: 58)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 72, elements: !409)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!853 = !{i32 7, !"Dwarf Version", i32 5}
!854 = !{i32 2, !"Debug Info Version", i32 3}
!855 = !{i32 1, !"wchar_size", i32 2}
!856 = !{i32 8, !"cf-protection-branch", i32 1}
!857 = !{i32 4, !"function_return_thunk_extern", i32 1}
!858 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!859 = !{i32 1, !"Code Model", i32 2}
!860 = !{i32 1, !"override-stack-alignment", i32 8}
!861 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!862 = distinct !DISubprogram(name: "acpi_ns_root_initialize", scope: !2, file: !2, line: 34, type: !863, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !865)
!863 = !DISubroutineType(types: !864)
!864 = !{!19}
!865 = !{!866, !867, !876, !877, !878, !879, !881}
!866 = !DILocalVariable(name: "status", scope: !862, file: !2, line: 36, type: !19)
!867 = !DILocalVariable(name: "init_val", scope: !862, file: !2, line: 37, type: !868)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !870)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_predefined_names", file: !20, line: 994, size: 192, elements: !871)
!871 = !{!872, !874, !875}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !870, file: !20, line: 995, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !870, file: !20, line: 996, baseType: !29, size: 8, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !870, file: !20, line: 997, baseType: !82, size: 64, offset: 128)
!876 = !DILocalVariable(name: "new_node", scope: !862, file: !2, line: 38, type: !98)
!877 = !DILocalVariable(name: "prev_node", scope: !862, file: !2, line: 39, type: !98)
!878 = !DILocalVariable(name: "obj_desc", scope: !862, file: !2, line: 40, type: !49)
!879 = !DILocalVariable(name: "val", scope: !862, file: !2, line: 41, type: !880)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !20, line: 423, baseType: !82)
!881 = !DILabel(scope: !862, name: "unlock_and_exit", file: !2, line: 243)
!882 = !DILocation(line: 36, column: 2, scope: !862)
!883 = !DILocation(line: 36, column: 14, scope: !862)
!884 = !DILocation(line: 37, column: 2, scope: !862)
!885 = !DILocation(line: 37, column: 38, scope: !862)
!886 = !DILocation(line: 38, column: 2, scope: !862)
!887 = !DILocation(line: 38, column: 30, scope: !862)
!888 = !DILocation(line: 39, column: 2, scope: !862)
!889 = !DILocation(line: 39, column: 30, scope: !862)
!890 = !DILocation(line: 40, column: 2, scope: !862)
!891 = !DILocation(line: 40, column: 29, scope: !862)
!892 = !DILocation(line: 41, column: 2, scope: !862)
!893 = !DILocation(line: 41, column: 14, scope: !862)
!894 = !DILocation(line: 45, column: 11, scope: !862)
!895 = !DILocation(line: 45, column: 9, scope: !862)
!896 = !DILocation(line: 46, column: 6, scope: !897)
!897 = distinct !DILexicalBlock(scope: !862, file: !2, line: 46, column: 6)
!898 = !DILocation(line: 46, column: 6, scope: !862)
!899 = !DILocation(line: 47, column: 3, scope: !900)
!900 = distinct !DILexicalBlock(scope: !897, file: !2, line: 46, column: 28)
!901 = !DILocation(line: 54, column: 6, scope: !902)
!902 = distinct !DILexicalBlock(scope: !862, file: !2, line: 54, column: 6)
!903 = !DILocation(line: 54, column: 6, scope: !862)
!904 = !DILocation(line: 55, column: 10, scope: !905)
!905 = distinct !DILexicalBlock(scope: !902, file: !2, line: 54, column: 26)
!906 = !DILocation(line: 56, column: 3, scope: !905)
!907 = !DILocation(line: 63, column: 21, scope: !862)
!908 = !DILocation(line: 85, column: 16, scope: !909)
!909 = distinct !DILexicalBlock(scope: !862, file: !2, line: 85, column: 2)
!910 = !DILocation(line: 85, column: 7, scope: !909)
!911 = !DILocation(line: 85, column: 46, scope: !912)
!912 = distinct !DILexicalBlock(scope: !909, file: !2, line: 85, column: 2)
!913 = !DILocation(line: 85, column: 56, scope: !912)
!914 = !DILocation(line: 85, column: 2, scope: !909)
!915 = !DILocation(line: 86, column: 10, scope: !916)
!916 = distinct !DILexicalBlock(scope: !912, file: !2, line: 85, column: 74)
!917 = !DILocation(line: 90, column: 15, scope: !918)
!918 = distinct !DILexicalBlock(scope: !916, file: !2, line: 90, column: 7)
!919 = !DILocation(line: 90, column: 25, scope: !918)
!920 = !DILocation(line: 90, column: 8, scope: !918)
!921 = !DILocation(line: 91, column: 7, scope: !918)
!922 = !DILocation(line: 91, column: 11, scope: !918)
!923 = !DILocation(line: 90, column: 7, scope: !916)
!924 = !DILocation(line: 92, column: 4, scope: !925)
!925 = distinct !DILexicalBlock(scope: !918, file: !2, line: 91, column: 39)
!926 = !DILocation(line: 102, column: 28, scope: !916)
!927 = !DILocation(line: 102, column: 27, scope: !916)
!928 = !DILocation(line: 102, column: 7, scope: !916)
!929 = !DILocation(line: 101, column: 12, scope: !916)
!930 = !DILocation(line: 103, column: 8, scope: !931)
!931 = distinct !DILexicalBlock(scope: !916, file: !2, line: 103, column: 7)
!932 = !DILocation(line: 103, column: 7, scope: !916)
!933 = !DILocation(line: 104, column: 11, scope: !934)
!934 = distinct !DILexicalBlock(scope: !931, file: !2, line: 103, column: 18)
!935 = !DILocation(line: 105, column: 4, scope: !934)
!936 = !DILocation(line: 108, column: 3, scope: !916)
!937 = !DILocation(line: 108, column: 13, scope: !916)
!938 = !DILocation(line: 108, column: 29, scope: !916)
!939 = !DILocation(line: 109, column: 20, scope: !916)
!940 = !DILocation(line: 109, column: 30, scope: !916)
!941 = !DILocation(line: 109, column: 3, scope: !916)
!942 = !DILocation(line: 109, column: 13, scope: !916)
!943 = !DILocation(line: 109, column: 18, scope: !916)
!944 = !DILocation(line: 111, column: 8, scope: !945)
!945 = distinct !DILexicalBlock(scope: !916, file: !2, line: 111, column: 7)
!946 = !DILocation(line: 111, column: 7, scope: !916)
!947 = !DILocation(line: 112, column: 38, scope: !948)
!948 = distinct !DILexicalBlock(scope: !945, file: !2, line: 111, column: 19)
!949 = !DILocation(line: 112, column: 36, scope: !948)
!950 = !DILocation(line: 113, column: 3, scope: !948)
!951 = !DILocation(line: 114, column: 22, scope: !952)
!952 = distinct !DILexicalBlock(scope: !945, file: !2, line: 113, column: 10)
!953 = !DILocation(line: 114, column: 4, scope: !952)
!954 = !DILocation(line: 114, column: 15, scope: !952)
!955 = !DILocation(line: 114, column: 20, scope: !952)
!956 = !DILocation(line: 117, column: 3, scope: !916)
!957 = !DILocation(line: 117, column: 13, scope: !916)
!958 = !DILocation(line: 117, column: 20, scope: !916)
!959 = !DILocation(line: 118, column: 15, scope: !916)
!960 = !DILocation(line: 118, column: 13, scope: !916)
!961 = !DILocation(line: 124, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !916, file: !2, line: 124, column: 7)
!963 = !DILocation(line: 124, column: 17, scope: !962)
!964 = !DILocation(line: 124, column: 7, scope: !916)
!965 = !DILocation(line: 125, column: 41, scope: !966)
!966 = distinct !DILexicalBlock(scope: !962, file: !2, line: 124, column: 22)
!967 = !DILocation(line: 125, column: 13, scope: !966)
!968 = !DILocation(line: 125, column: 11, scope: !966)
!969 = !DILocation(line: 126, column: 8, scope: !970)
!970 = distinct !DILexicalBlock(scope: !966, file: !2, line: 126, column: 8)
!971 = !DILocation(line: 126, column: 8, scope: !966)
!972 = !DILocation(line: 127, column: 5, scope: !973)
!973 = distinct !DILexicalBlock(scope: !970, file: !2, line: 126, column: 30)
!974 = !DILocation(line: 130, column: 4, scope: !973)
!975 = !DILocation(line: 132, column: 9, scope: !976)
!976 = distinct !DILexicalBlock(scope: !966, file: !2, line: 132, column: 8)
!977 = !DILocation(line: 132, column: 8, scope: !966)
!978 = !DILocation(line: 133, column: 11, scope: !979)
!979 = distinct !DILexicalBlock(scope: !976, file: !2, line: 132, column: 14)
!980 = !DILocation(line: 133, column: 21, scope: !979)
!981 = !DILocation(line: 133, column: 9, scope: !979)
!982 = !DILocation(line: 134, column: 4, scope: !979)
!983 = !DILocation(line: 141, column: 8, scope: !966)
!984 = !DILocation(line: 140, column: 13, scope: !966)
!985 = !DILocation(line: 142, column: 9, scope: !986)
!986 = distinct !DILexicalBlock(scope: !966, file: !2, line: 142, column: 8)
!987 = !DILocation(line: 142, column: 8, scope: !966)
!988 = !DILocation(line: 143, column: 12, scope: !989)
!989 = distinct !DILexicalBlock(scope: !986, file: !2, line: 142, column: 19)
!990 = !DILocation(line: 144, column: 5, scope: !989)
!991 = !DILocation(line: 152, column: 12, scope: !966)
!992 = !DILocation(line: 152, column: 22, scope: !966)
!993 = !DILocation(line: 152, column: 4, scope: !966)
!994 = !DILocation(line: 156, column: 14, scope: !995)
!995 = distinct !DILexicalBlock(scope: !966, file: !2, line: 152, column: 28)
!996 = !DILocation(line: 156, column: 9, scope: !995)
!997 = !DILocation(line: 155, column: 5, scope: !995)
!998 = !DILocation(line: 155, column: 22, scope: !995)
!999 = !DILocation(line: 155, column: 34, scope: !995)
!1000 = !DILocation(line: 157, column: 5, scope: !995)
!1001 = !DILocation(line: 157, column: 22, scope: !995)
!1002 = !DILocation(line: 157, column: 28, scope: !995)
!1003 = !DILocation(line: 167, column: 5, scope: !995)
!1004 = !DILocation(line: 167, column: 22, scope: !995)
!1005 = !DILocation(line: 167, column: 33, scope: !995)
!1006 = !DILocation(line: 169, column: 5, scope: !995)
!1007 = !DILocation(line: 169, column: 22, scope: !995)
!1008 = !DILocation(line: 169, column: 46, scope: !995)
!1009 = !DILocation(line: 172, column: 5, scope: !995)
!1010 = !DILocation(line: 176, column: 31, scope: !995)
!1011 = !DILocation(line: 176, column: 5, scope: !995)
!1012 = !DILocation(line: 176, column: 23, scope: !995)
!1013 = !DILocation(line: 176, column: 29, scope: !995)
!1014 = !DILocation(line: 177, column: 5, scope: !995)
!1015 = !DILocation(line: 183, column: 43, scope: !995)
!1016 = !DILocation(line: 183, column: 36, scope: !995)
!1017 = !DILocation(line: 183, column: 31, scope: !995)
!1018 = !DILocation(line: 183, column: 5, scope: !995)
!1019 = !DILocation(line: 183, column: 22, scope: !995)
!1020 = !DILocation(line: 183, column: 29, scope: !995)
!1021 = !DILocation(line: 184, column: 32, scope: !995)
!1022 = !DILocation(line: 184, column: 5, scope: !995)
!1023 = !DILocation(line: 184, column: 22, scope: !995)
!1024 = !DILocation(line: 184, column: 30, scope: !995)
!1025 = !DILocation(line: 185, column: 5, scope: !995)
!1026 = !DILocation(line: 185, column: 22, scope: !995)
!1027 = !DILocation(line: 185, column: 28, scope: !995)
!1028 = !DILocation(line: 186, column: 5, scope: !995)
!1029 = !DILocation(line: 190, column: 28, scope: !995)
!1030 = !DILocation(line: 190, column: 5, scope: !995)
!1031 = !DILocation(line: 190, column: 21, scope: !995)
!1032 = !DILocation(line: 190, column: 26, scope: !995)
!1033 = !DILocation(line: 192, column: 15, scope: !995)
!1034 = !DILocation(line: 192, column: 36, scope: !995)
!1035 = !DILocation(line: 192, column: 9, scope: !995)
!1036 = !DILocation(line: 191, column: 5, scope: !995)
!1037 = !DILocation(line: 191, column: 21, scope: !995)
!1038 = !DILocation(line: 191, column: 32, scope: !995)
!1039 = !DILocation(line: 197, column: 9, scope: !995)
!1040 = !DILocation(line: 196, column: 12, scope: !995)
!1041 = !DILocation(line: 199, column: 9, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !995, file: !2, line: 199, column: 9)
!1043 = !DILocation(line: 199, column: 9, scope: !995)
!1044 = !DILocation(line: 200, column: 31, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 199, column: 31)
!1046 = !DILocation(line: 200, column: 6, scope: !1045)
!1047 = !DILocation(line: 201, column: 6, scope: !1045)
!1048 = !DILocation(line: 206, column: 16, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !995, file: !2, line: 206, column: 9)
!1050 = !DILocation(line: 206, column: 26, scope: !1049)
!1051 = !DILocation(line: 206, column: 9, scope: !1049)
!1052 = !DILocation(line: 206, column: 40, scope: !1049)
!1053 = !DILocation(line: 206, column: 9, scope: !995)
!1054 = !DILocation(line: 207, column: 35, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 206, column: 46)
!1056 = !DILocation(line: 207, column: 33, scope: !1055)
!1057 = !DILocation(line: 212, column: 10, scope: !1055)
!1058 = !DILocation(line: 211, column: 13, scope: !1055)
!1059 = !DILocation(line: 214, column: 10, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 214, column: 10)
!1061 = !DILocation(line: 214, column: 10, scope: !1055)
!1062 = !DILocation(line: 216, column: 12, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 214, column: 32)
!1064 = !DILocation(line: 215, column: 7, scope: !1063)
!1065 = !DILocation(line: 217, column: 7, scope: !1063)
!1066 = !DILocation(line: 219, column: 5, scope: !1055)
!1067 = !DILocation(line: 220, column: 5, scope: !995)
!1068 = !DILocation(line: 224, column: 5, scope: !995)
!1069 = !DILocation(line: 227, column: 30, scope: !995)
!1070 = !DILocation(line: 227, column: 5, scope: !995)
!1071 = !DILocation(line: 228, column: 14, scope: !995)
!1072 = !DILocation(line: 229, column: 5, scope: !995)
!1073 = !DILocation(line: 234, column: 35, scope: !966)
!1074 = !DILocation(line: 234, column: 45, scope: !966)
!1075 = !DILocation(line: 235, column: 14, scope: !966)
!1076 = !DILocation(line: 235, column: 31, scope: !966)
!1077 = !DILocation(line: 234, column: 13, scope: !966)
!1078 = !DILocation(line: 234, column: 11, scope: !966)
!1079 = !DILocation(line: 239, column: 29, scope: !966)
!1080 = !DILocation(line: 239, column: 4, scope: !966)
!1081 = !DILocation(line: 240, column: 3, scope: !966)
!1082 = !DILocation(line: 241, column: 2, scope: !916)
!1083 = !DILocation(line: 85, column: 70, scope: !912)
!1084 = !DILocation(line: 85, column: 2, scope: !912)
!1085 = distinct !{!1085, !914, !1086, !1087, !1088}
!1086 = !DILocation(line: 241, column: 2, scope: !909)
!1087 = !{!"llvm.loop.mustprogress"}
!1088 = !{!"llvm.loop.unroll.disable"}
!1089 = !DILocation(line: 243, column: 1, scope: !862)
!1090 = !DILocation(line: 244, column: 8, scope: !862)
!1091 = !DILocation(line: 248, column: 6, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !862, file: !2, line: 248, column: 6)
!1093 = !DILocation(line: 248, column: 6, scope: !862)
!1094 = !DILocation(line: 249, column: 12, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1092, file: !2, line: 248, column: 28)
!1096 = !DILocation(line: 249, column: 10, scope: !1095)
!1097 = !DILocation(line: 251, column: 2, scope: !1095)
!1098 = !DILocation(line: 253, column: 2, scope: !862)
!1099 = !DILocation(line: 254, column: 1, scope: !862)
!1100 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !1101, file: !1101, line: 646, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1101 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!19, !1104}
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !12, line: 17, baseType: !21)
!1105 = !DISubprogram(name: "strcmp", scope: !1106, file: !1106, line: 88, type: !1107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1106 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!1109, !873, !873}
!1109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1110 = !DISubprogram(name: "acpi_ns_create_node", scope: !1111, file: !1111, line: 129, type: !1112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1111 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!98, !21}
!1114 = !DISubprogram(name: "acpi_os_predefined_override", scope: !1115, file: !1115, line: 64, type: !1116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1115 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!19, !868, !1118}
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!1119 = !DISubprogram(name: "acpi_error", scope: !1120, file: !1120, line: 901, type: !1121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1120 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !873, !21, !873, null}
!1123 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !1101, file: !1101, line: 436, type: !1124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!49, !873, !21, !21, !1126}
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !20, line: 644, baseType: !21)
!1127 = !DISubprogram(name: "strlen", scope: !1106, file: !1106, line: 128, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!28, !873}
!1130 = !DISubprogram(name: "acpi_os_create_semaphore", scope: !1115, file: !1115, line: 126, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!19, !21, !21, !749}
!1133 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1101, file: !1101, line: 369, type: !1134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null, !49}
!1136 = !DISubprogram(name: "acpi_ns_attach_object", scope: !1111, file: !1111, line: 295, type: !1137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!19, !98, !49, !1126}
!1139 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !1101, file: !1101, line: 648, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1140 = !DISubprogram(name: "acpi_ns_get_node", scope: !1111, file: !1111, line: 285, type: !1141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!19, !98, !873, !21, !1143}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!1144 = distinct !DISubprogram(name: "acpi_ns_lookup", scope: !2, file: !2, line: 280, type: !1145, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1148)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!19, !280, !82, !1126, !1147, !21, !164, !1143}
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_interpreter_mode", file: !12, line: 120, baseType: !11)
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1166, !1167, !1168, !1169, !1170}
!1149 = !DILocalVariable(name: "scope_info", arg: 1, scope: !1144, file: !2, line: 280, type: !280)
!1150 = !DILocalVariable(name: "pathname", arg: 2, scope: !1144, file: !2, line: 281, type: !82)
!1151 = !DILocalVariable(name: "type", arg: 3, scope: !1144, file: !2, line: 282, type: !1126)
!1152 = !DILocalVariable(name: "interpreter_mode", arg: 4, scope: !1144, file: !2, line: 283, type: !1147)
!1153 = !DILocalVariable(name: "flags", arg: 5, scope: !1144, file: !2, line: 284, type: !21)
!1154 = !DILocalVariable(name: "walk_state", arg: 6, scope: !1144, file: !2, line: 285, type: !164)
!1155 = !DILocalVariable(name: "return_node", arg: 7, scope: !1144, file: !2, line: 286, type: !1143)
!1156 = !DILocalVariable(name: "status", scope: !1144, file: !2, line: 288, type: !19)
!1157 = !DILocalVariable(name: "path", scope: !1144, file: !2, line: 289, type: !82)
!1158 = !DILocalVariable(name: "external_path", scope: !1144, file: !2, line: 290, type: !82)
!1159 = !DILocalVariable(name: "prefix_node", scope: !1144, file: !2, line: 291, type: !98)
!1160 = !DILocalVariable(name: "current_node", scope: !1144, file: !2, line: 292, type: !98)
!1161 = !DILocalVariable(name: "this_node", scope: !1144, file: !2, line: 293, type: !98)
!1162 = !DILocalVariable(name: "num_segments", scope: !1144, file: !2, line: 294, type: !21)
!1163 = !DILocalVariable(name: "num_carats", scope: !1144, file: !2, line: 295, type: !21)
!1164 = !DILocalVariable(name: "simple_name", scope: !1144, file: !2, line: 296, type: !1165)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_name", file: !20, line: 422, baseType: !21)
!1166 = !DILocalVariable(name: "type_to_check_for", scope: !1144, file: !2, line: 297, type: !1126)
!1167 = !DILocalVariable(name: "this_search_type", scope: !1144, file: !2, line: 298, type: !1126)
!1168 = !DILocalVariable(name: "search_parent_flag", scope: !1144, file: !2, line: 299, type: !21)
!1169 = !DILocalVariable(name: "local_flags", scope: !1144, file: !2, line: 300, type: !21)
!1170 = !DILocalVariable(name: "local_interpreter_mode", scope: !1144, file: !2, line: 301, type: !1147)
!1171 = !DILocation(line: 280, column: 42, scope: !1144)
!1172 = !DILocation(line: 281, column: 15, scope: !1144)
!1173 = !DILocation(line: 282, column: 26, scope: !1144)
!1174 = !DILocation(line: 283, column: 31, scope: !1144)
!1175 = !DILocation(line: 284, column: 13, scope: !1144)
!1176 = !DILocation(line: 285, column: 33, scope: !1144)
!1177 = !DILocation(line: 286, column: 38, scope: !1144)
!1178 = !DILocation(line: 288, column: 2, scope: !1144)
!1179 = !DILocation(line: 288, column: 14, scope: !1144)
!1180 = !DILocation(line: 289, column: 2, scope: !1144)
!1181 = !DILocation(line: 289, column: 8, scope: !1144)
!1182 = !DILocation(line: 289, column: 15, scope: !1144)
!1183 = !DILocation(line: 290, column: 2, scope: !1144)
!1184 = !DILocation(line: 290, column: 8, scope: !1144)
!1185 = !DILocation(line: 291, column: 2, scope: !1144)
!1186 = !DILocation(line: 291, column: 30, scope: !1144)
!1187 = !DILocation(line: 292, column: 2, scope: !1144)
!1188 = !DILocation(line: 292, column: 30, scope: !1144)
!1189 = !DILocation(line: 293, column: 2, scope: !1144)
!1190 = !DILocation(line: 293, column: 30, scope: !1144)
!1191 = !DILocation(line: 294, column: 2, scope: !1144)
!1192 = !DILocation(line: 294, column: 6, scope: !1144)
!1193 = !DILocation(line: 295, column: 2, scope: !1144)
!1194 = !DILocation(line: 295, column: 6, scope: !1144)
!1195 = !DILocation(line: 296, column: 2, scope: !1144)
!1196 = !DILocation(line: 296, column: 12, scope: !1144)
!1197 = !DILocation(line: 297, column: 2, scope: !1144)
!1198 = !DILocation(line: 297, column: 19, scope: !1144)
!1199 = !DILocation(line: 298, column: 2, scope: !1144)
!1200 = !DILocation(line: 298, column: 19, scope: !1144)
!1201 = !DILocation(line: 299, column: 2, scope: !1144)
!1202 = !DILocation(line: 299, column: 6, scope: !1144)
!1203 = !DILocation(line: 300, column: 2, scope: !1144)
!1204 = !DILocation(line: 300, column: 6, scope: !1144)
!1205 = !DILocation(line: 301, column: 2, scope: !1144)
!1206 = !DILocation(line: 301, column: 24, scope: !1144)
!1207 = !DILocation(line: 305, column: 7, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 305, column: 6)
!1209 = !DILocation(line: 305, column: 6, scope: !1144)
!1210 = !DILocation(line: 306, column: 3, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1208, file: !2, line: 305, column: 20)
!1212 = !DILocation(line: 309, column: 16, scope: !1144)
!1213 = !DILocation(line: 309, column: 22, scope: !1144)
!1214 = !DILocation(line: 309, column: 14, scope: !1144)
!1215 = !DILocation(line: 312, column: 3, scope: !1144)
!1216 = !DILocation(line: 312, column: 15, scope: !1144)
!1217 = !DILocation(line: 313, column: 26, scope: !1144)
!1218 = !DILocation(line: 315, column: 7, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 315, column: 6)
!1220 = !DILocation(line: 315, column: 6, scope: !1144)
!1221 = !DILocation(line: 316, column: 3, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1219, file: !2, line: 315, column: 27)
!1223 = !DILocation(line: 321, column: 8, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 321, column: 6)
!1225 = !DILocation(line: 321, column: 20, scope: !1224)
!1226 = !DILocation(line: 321, column: 25, scope: !1224)
!1227 = !DILocation(line: 321, column: 43, scope: !1224)
!1228 = !DILocation(line: 321, column: 6, scope: !1144)
!1229 = !DILocation(line: 326, column: 17, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 321, column: 50)
!1231 = !DILocation(line: 326, column: 15, scope: !1230)
!1232 = !DILocation(line: 327, column: 2, scope: !1230)
!1233 = !DILocation(line: 328, column: 17, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 327, column: 9)
!1235 = !DILocation(line: 328, column: 35, scope: !1234)
!1236 = !DILocation(line: 328, column: 15, scope: !1234)
!1237 = !DILocation(line: 329, column: 7, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1234, file: !2, line: 329, column: 7)
!1239 = !DILocation(line: 329, column: 45, scope: !1238)
!1240 = !DILocation(line: 329, column: 7, scope: !1234)
!1241 = !DILocation(line: 331, column: 4, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1238, file: !2, line: 330, column: 29)
!1243 = !DILocation(line: 334, column: 4, scope: !1242)
!1244 = !DILocation(line: 337, column: 9, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1234, file: !2, line: 337, column: 7)
!1246 = !DILocation(line: 337, column: 15, scope: !1245)
!1247 = !DILocation(line: 337, column: 7, scope: !1234)
!1248 = !DILocation(line: 343, column: 4, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !2, line: 337, column: 43)
!1250 = !DILocation(line: 343, column: 32, scope: !1249)
!1251 = !DILocation(line: 343, column: 45, scope: !1249)
!1252 = !DILocation(line: 343, column: 12, scope: !1249)
!1253 = !DILocation(line: 343, column: 51, scope: !1249)
!1254 = !DILocation(line: 344, column: 11, scope: !1249)
!1255 = !DILocation(line: 344, column: 24, scope: !1249)
!1256 = !DILocation(line: 344, column: 29, scope: !1249)
!1257 = !DILocation(line: 0, scope: !1249)
!1258 = !DILocation(line: 345, column: 19, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 344, column: 47)
!1260 = !DILocation(line: 345, column: 32, scope: !1259)
!1261 = !DILocation(line: 345, column: 17, scope: !1259)
!1262 = distinct !{!1262, !1248, !1263, !1087, !1088}
!1263 = !DILocation(line: 346, column: 4, scope: !1249)
!1264 = !DILocation(line: 347, column: 3, scope: !1249)
!1265 = !DILocation(line: 352, column: 22, scope: !1144)
!1266 = !DILocation(line: 352, column: 20, scope: !1144)
!1267 = !DILocation(line: 357, column: 7, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 357, column: 6)
!1269 = !DILocation(line: 357, column: 6, scope: !1144)
!1270 = !DILocation(line: 361, column: 16, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 357, column: 17)
!1272 = !DILocation(line: 362, column: 15, scope: !1271)
!1273 = !DILocation(line: 362, column: 13, scope: !1271)
!1274 = !DILocation(line: 363, column: 8, scope: !1271)
!1275 = !DILocation(line: 368, column: 2, scope: !1271)
!1276 = !DILocation(line: 382, column: 8, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 382, column: 7)
!1278 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 368, column: 9)
!1279 = !DILocation(line: 382, column: 7, scope: !1277)
!1280 = !DILocation(line: 382, column: 13, scope: !1277)
!1281 = !DILocation(line: 382, column: 7, scope: !1278)
!1282 = !DILocation(line: 386, column: 16, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 382, column: 38)
!1284 = !DILocation(line: 386, column: 14, scope: !1283)
!1285 = !DILocation(line: 387, column: 23, scope: !1283)
!1286 = !DILocation(line: 391, column: 8, scope: !1283)
!1287 = !DILocation(line: 396, column: 3, scope: !1283)
!1288 = !DILocation(line: 408, column: 16, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 396, column: 10)
!1290 = !DILocation(line: 408, column: 14, scope: !1289)
!1291 = !DILocation(line: 409, column: 15, scope: !1289)
!1292 = !DILocation(line: 410, column: 4, scope: !1289)
!1293 = !DILocation(line: 410, column: 12, scope: !1289)
!1294 = !DILocation(line: 410, column: 11, scope: !1289)
!1295 = !DILocation(line: 410, column: 17, scope: !1289)
!1296 = !DILocation(line: 414, column: 24, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 410, column: 44)
!1298 = !DILocation(line: 420, column: 9, scope: !1297)
!1299 = !DILocation(line: 424, column: 15, scope: !1297)
!1300 = !DILocation(line: 425, column: 17, scope: !1297)
!1301 = !DILocation(line: 425, column: 28, scope: !1297)
!1302 = !DILocation(line: 425, column: 15, scope: !1297)
!1303 = !DILocation(line: 426, column: 10, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1297, file: !2, line: 426, column: 9)
!1305 = !DILocation(line: 426, column: 9, scope: !1297)
!1306 = !DILocation(line: 433, column: 28, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 426, column: 21)
!1308 = !DILocation(line: 432, column: 10, scope: !1307)
!1309 = !DILocation(line: 431, column: 13, scope: !1307)
!1310 = !DILocation(line: 435, column: 10, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 435, column: 10)
!1312 = !DILocation(line: 435, column: 10, scope: !1307)
!1313 = !DILocation(line: 436, column: 7, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1311, file: !2, line: 435, column: 32)
!1315 = !DILocation(line: 440, column: 7, scope: !1314)
!1316 = !DILocation(line: 441, column: 6, scope: !1314)
!1317 = !DILocation(line: 443, column: 6, scope: !1307)
!1318 = distinct !{!1318, !1292, !1319, !1087, !1088}
!1319 = !DILocation(line: 445, column: 4, scope: !1289)
!1320 = !DILocation(line: 447, column: 8, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 447, column: 8)
!1322 = !DILocation(line: 447, column: 27, scope: !1321)
!1323 = !DILocation(line: 447, column: 8, scope: !1289)
!1324 = !DILocation(line: 452, column: 4, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 447, column: 51)
!1326 = !DILocation(line: 468, column: 12, scope: !1278)
!1327 = !DILocation(line: 468, column: 11, scope: !1278)
!1328 = !DILocation(line: 468, column: 3, scope: !1278)
!1329 = !DILocation(line: 474, column: 17, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 468, column: 18)
!1331 = !DILocation(line: 475, column: 11, scope: !1330)
!1332 = !DILocation(line: 475, column: 22, scope: !1330)
!1333 = !DILocation(line: 475, column: 9, scope: !1330)
!1334 = !DILocation(line: 480, column: 4, scope: !1330)
!1335 = !DILocation(line: 486, column: 23, scope: !1330)
!1336 = !DILocation(line: 490, column: 17, scope: !1330)
!1337 = !DILocation(line: 491, column: 8, scope: !1330)
!1338 = !DILocation(line: 496, column: 4, scope: !1330)
!1339 = !DILocation(line: 502, column: 23, scope: !1330)
!1340 = !DILocation(line: 506, column: 8, scope: !1330)
!1341 = !DILocation(line: 507, column: 32, scope: !1330)
!1342 = !DILocation(line: 507, column: 30, scope: !1330)
!1343 = !DILocation(line: 507, column: 19, scope: !1330)
!1344 = !DILocation(line: 507, column: 17, scope: !1330)
!1345 = !DILocation(line: 508, column: 8, scope: !1330)
!1346 = !DILocation(line: 513, column: 4, scope: !1330)
!1347 = !DILocation(line: 520, column: 17, scope: !1330)
!1348 = !DILocation(line: 525, column: 4, scope: !1330)
!1349 = !DILocation(line: 539, column: 19, scope: !1144)
!1350 = !DILocation(line: 540, column: 17, scope: !1144)
!1351 = !DILocation(line: 540, column: 15, scope: !1144)
!1352 = !DILocation(line: 542, column: 2, scope: !1144)
!1353 = !DILocation(line: 542, column: 9, scope: !1144)
!1354 = !DILocation(line: 542, column: 22, scope: !1144)
!1355 = !DILocation(line: 542, column: 25, scope: !1144)
!1356 = !DILocation(line: 0, scope: !1144)
!1357 = !DILocation(line: 543, column: 15, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 542, column: 39)
!1359 = !DILocation(line: 544, column: 8, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 544, column: 7)
!1361 = !DILocation(line: 544, column: 7, scope: !1358)
!1362 = !DILocation(line: 548, column: 23, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 544, column: 22)
!1364 = !DILocation(line: 548, column: 21, scope: !1363)
!1365 = !DILocation(line: 554, column: 9, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 554, column: 8)
!1367 = !DILocation(line: 554, column: 28, scope: !1366)
!1368 = !DILocation(line: 554, column: 52, scope: !1366)
!1369 = !DILocation(line: 555, column: 9, scope: !1366)
!1370 = !DILocation(line: 555, column: 15, scope: !1366)
!1371 = !DILocation(line: 554, column: 8, scope: !1363)
!1372 = !DILocation(line: 556, column: 17, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1366, file: !2, line: 555, column: 41)
!1374 = !DILocation(line: 557, column: 4, scope: !1373)
!1375 = !DILocation(line: 561, column: 8, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 561, column: 8)
!1377 = !DILocation(line: 561, column: 14, scope: !1376)
!1378 = !DILocation(line: 561, column: 8, scope: !1363)
!1379 = !DILocation(line: 562, column: 17, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 561, column: 40)
!1381 = !DILocation(line: 563, column: 4, scope: !1380)
!1382 = !DILocation(line: 567, column: 8, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 567, column: 8)
!1384 = !DILocation(line: 567, column: 14, scope: !1383)
!1385 = !DILocation(line: 567, column: 8, scope: !1363)
!1386 = !DILocation(line: 568, column: 17, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !2, line: 567, column: 43)
!1388 = !DILocation(line: 569, column: 4, scope: !1387)
!1389 = !DILocation(line: 570, column: 3, scope: !1363)
!1390 = !DILocation(line: 574, column: 28, scope: !1358)
!1391 = !DILocation(line: 574, column: 26, scope: !1358)
!1392 = !DILocation(line: 575, column: 8, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 575, column: 7)
!1394 = !DILocation(line: 575, column: 14, scope: !1393)
!1395 = !DILocation(line: 575, column: 43, scope: !1393)
!1396 = !DILocation(line: 575, column: 47, scope: !1393)
!1397 = !DILocation(line: 575, column: 60, scope: !1393)
!1398 = !DILocation(line: 575, column: 7, scope: !1358)
!1399 = !DILocation(line: 579, column: 27, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1393, file: !2, line: 575, column: 66)
!1401 = !DILocation(line: 580, column: 3, scope: !1400)
!1402 = !DILocation(line: 584, column: 3, scope: !1358)
!1403 = !DILocation(line: 589, column: 32, scope: !1358)
!1404 = !DILocation(line: 589, column: 45, scope: !1358)
!1405 = !DILocation(line: 590, column: 11, scope: !1358)
!1406 = !DILocation(line: 591, column: 11, scope: !1358)
!1407 = !DILocation(line: 592, column: 11, scope: !1358)
!1408 = !DILocation(line: 592, column: 29, scope: !1358)
!1409 = !DILocation(line: 589, column: 7, scope: !1358)
!1410 = !DILocation(line: 588, column: 10, scope: !1358)
!1411 = !DILocation(line: 594, column: 7, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 594, column: 7)
!1413 = !DILocation(line: 594, column: 7, scope: !1358)
!1414 = !DILocation(line: 595, column: 8, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 595, column: 8)
!1416 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 594, column: 29)
!1417 = !DILocation(line: 595, column: 15, scope: !1415)
!1418 = !DILocation(line: 595, column: 8, scope: !1416)
!1419 = !DILocation(line: 597, column: 9, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !2, line: 597, column: 9)
!1421 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 595, column: 32)
!1422 = !DILocation(line: 597, column: 15, scope: !1420)
!1423 = !DILocation(line: 597, column: 9, scope: !1421)
!1424 = !DILocation(line: 598, column: 6, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1420, file: !2, line: 597, column: 44)
!1426 = !DILocation(line: 601, column: 5, scope: !1425)
!1427 = !DILocation(line: 610, column: 4, scope: !1421)
!1428 = !DILocation(line: 643, column: 19, scope: !1416)
!1429 = !DILocation(line: 643, column: 5, scope: !1416)
!1430 = !DILocation(line: 643, column: 17, scope: !1416)
!1431 = !DILocation(line: 644, column: 4, scope: !1416)
!1432 = !DILocation(line: 649, column: 7, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 649, column: 7)
!1434 = !DILocation(line: 649, column: 20, scope: !1433)
!1435 = !DILocation(line: 649, column: 7, scope: !1358)
!1436 = !DILocation(line: 656, column: 8, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !2, line: 656, column: 8)
!1438 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 649, column: 25)
!1439 = !DILocation(line: 656, column: 19, scope: !1437)
!1440 = !DILocation(line: 656, column: 24, scope: !1437)
!1441 = !DILocation(line: 656, column: 8, scope: !1438)
!1442 = !DILocation(line: 657, column: 10, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !2, line: 657, column: 9)
!1444 = distinct !DILexicalBlock(scope: !1437, file: !2, line: 656, column: 50)
!1445 = !DILocation(line: 657, column: 21, scope: !1443)
!1446 = !DILocation(line: 657, column: 9, scope: !1444)
!1447 = !DILocation(line: 658, column: 6, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 657, column: 29)
!1449 = !DILocation(line: 663, column: 11, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1444, file: !2, line: 661, column: 9)
!1451 = !DILocation(line: 663, column: 22, scope: !1450)
!1452 = !DILocation(line: 663, column: 31, scope: !1450)
!1453 = !DILocation(line: 662, column: 10, scope: !1450)
!1454 = !DILocation(line: 661, column: 9, scope: !1450)
!1455 = !DILocation(line: 661, column: 9, scope: !1444)
!1456 = !DILocation(line: 666, column: 10, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1450, file: !2, line: 663, column: 38)
!1458 = !DILocation(line: 666, column: 21, scope: !1457)
!1459 = !DILocation(line: 664, column: 16, scope: !1457)
!1460 = !DILocation(line: 667, column: 5, scope: !1457)
!1461 = !DILocation(line: 668, column: 4, scope: !1444)
!1462 = !DILocation(line: 669, column: 3, scope: !1438)
!1463 = !DILocation(line: 687, column: 9, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !2, line: 687, column: 8)
!1465 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 673, column: 8)
!1466 = !DILocation(line: 687, column: 27, scope: !1464)
!1467 = !DILocation(line: 687, column: 45, scope: !1464)
!1468 = !DILocation(line: 688, column: 9, scope: !1464)
!1469 = !DILocation(line: 688, column: 27, scope: !1464)
!1470 = !DILocation(line: 688, column: 53, scope: !1464)
!1471 = !DILocation(line: 689, column: 9, scope: !1464)
!1472 = !DILocation(line: 689, column: 27, scope: !1464)
!1473 = !DILocation(line: 690, column: 8, scope: !1464)
!1474 = !DILocation(line: 690, column: 12, scope: !1464)
!1475 = !DILocation(line: 690, column: 30, scope: !1464)
!1476 = !DILocation(line: 691, column: 8, scope: !1464)
!1477 = !DILocation(line: 691, column: 12, scope: !1464)
!1478 = !DILocation(line: 691, column: 23, scope: !1464)
!1479 = !DILocation(line: 691, column: 28, scope: !1464)
!1480 = !DILocation(line: 692, column: 8, scope: !1464)
!1481 = !DILocation(line: 692, column: 12, scope: !1464)
!1482 = !DILocation(line: 692, column: 23, scope: !1464)
!1483 = !DILocation(line: 692, column: 31, scope: !1464)
!1484 = !DILocation(line: 692, column: 28, scope: !1464)
!1485 = !DILocation(line: 687, column: 8, scope: !1465)
!1486 = !DILocation(line: 696, column: 5, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1464, file: !2, line: 692, column: 51)
!1488 = !DILocation(line: 703, column: 4, scope: !1487)
!1489 = !DILocation(line: 710, column: 8, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1465, file: !2, line: 710, column: 8)
!1491 = !DILocation(line: 710, column: 13, scope: !1490)
!1492 = !DILocation(line: 710, column: 8, scope: !1465)
!1493 = !DILocation(line: 711, column: 12, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 710, column: 31)
!1495 = !DILocation(line: 711, column: 23, scope: !1494)
!1496 = !DILocation(line: 711, column: 10, scope: !1494)
!1497 = !DILocation(line: 712, column: 4, scope: !1494)
!1498 = !DILocation(line: 717, column: 8, scope: !1358)
!1499 = !DILocation(line: 718, column: 18, scope: !1358)
!1500 = !DILocation(line: 718, column: 16, scope: !1358)
!1501 = distinct !{!1501, !1352, !1502, !1087, !1088}
!1502 = !DILocation(line: 719, column: 2, scope: !1144)
!1503 = !DILocation(line: 723, column: 8, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 723, column: 6)
!1505 = !DILocation(line: 723, column: 14, scope: !1504)
!1506 = !DILocation(line: 723, column: 41, scope: !1504)
!1507 = !DILocation(line: 723, column: 45, scope: !1504)
!1508 = !DILocation(line: 723, column: 44, scope: !1504)
!1509 = !DILocation(line: 723, column: 6, scope: !1144)
!1510 = !DILocation(line: 728, column: 27, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 728, column: 7)
!1512 = distinct !DILexicalBlock(scope: !1504, file: !2, line: 723, column: 58)
!1513 = !DILocation(line: 728, column: 7, scope: !1511)
!1514 = !DILocation(line: 728, column: 7, scope: !1512)
!1515 = !DILocation(line: 730, column: 33, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1511, file: !2, line: 728, column: 34)
!1517 = !DILocation(line: 730, column: 44, scope: !1516)
!1518 = !DILocation(line: 731, column: 12, scope: !1516)
!1519 = !DILocation(line: 730, column: 8, scope: !1516)
!1520 = !DILocation(line: 729, column: 11, scope: !1516)
!1521 = !DILocation(line: 732, column: 8, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 732, column: 8)
!1523 = !DILocation(line: 732, column: 8, scope: !1516)
!1524 = !DILocation(line: 733, column: 5, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1522, file: !2, line: 732, column: 30)
!1526 = !DILocation(line: 735, column: 3, scope: !1516)
!1527 = !DILocation(line: 736, column: 2, scope: !1512)
!1528 = !DILocation(line: 743, column: 17, scope: !1144)
!1529 = !DILocation(line: 743, column: 3, scope: !1144)
!1530 = !DILocation(line: 743, column: 15, scope: !1144)
!1531 = !DILocation(line: 744, column: 2, scope: !1144)
!1532 = !DILocation(line: 745, column: 1, scope: !1144)
!1533 = !DISubprogram(name: "acpi_ut_get_descriptor_name", scope: !1101, file: !1101, line: 229, type: !1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!873, !40}
!1536 = !DISubprogram(name: "acpi_ns_opens_scope", scope: !1111, file: !1111, line: 251, type: !1537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!21, !1126}
!1539 = !DISubprogram(name: "acpi_ns_externalize_name", scope: !1111, file: !1111, line: 394, type: !1540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!19, !21, !873, !25, !1542}
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!1543 = distinct !DISubprogram(name: "acpi_os_free", scope: !1544, file: !1544, line: 60, type: !1545, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1547)
!1544 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1545 = !DISubroutineType(types: !1546)
!1546 = !{null, !40}
!1547 = !{!1548}
!1548 = !DILocalVariable(name: "memory", arg: 1, scope: !1543, file: !1544, line: 60, type: !40)
!1549 = !DILocation(line: 60, column: 39, scope: !1543)
!1550 = !DILocation(line: 62, column: 8, scope: !1543)
!1551 = !DILocation(line: 62, column: 2, scope: !1543)
!1552 = !DILocation(line: 63, column: 1, scope: !1543)
!1553 = !DISubprogram(name: "acpi_ns_search_and_enter", scope: !1111, file: !1111, line: 358, type: !1554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!19, !21, !164, !98, !1147, !1126, !21, !1143}
!1556 = !DISubprogram(name: "acpi_os_printf", scope: !1115, file: !1115, line: 334, type: !1557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{null, !873, null}
!1559 = !DISubprogram(name: "acpi_warning", scope: !1120, file: !1120, line: 912, type: !1121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1560 = !DISubprogram(name: "acpi_ut_get_type_name", scope: !1101, file: !1101, line: 225, type: !1561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!873, !1126}
!1563 = !DISubprogram(name: "acpi_ds_scope_stack_push", scope: !1564, file: !1564, line: 277, type: !1565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1564 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!19, !98, !1126, !164}
!1567 = !DISubprogram(name: "kfree", scope: !1568, file: !1568, line: 227, type: !1569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1568 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!1569 = !DISubroutineType(types: !1570)
!1570 = !{null, !1571}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
