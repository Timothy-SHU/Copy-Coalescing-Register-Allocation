; ModuleID = 'drivers/acpi/acpica/nsobject.c'
source_filename = "drivers/acpi/acpica/nsobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_common_descriptor = type { ptr, i8 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_method = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, %union.anon, i32, i16, i8 }
%union.anon = type { ptr }
%struct.acpi_object_region = type { ptr, i8, i8, i16, i8, i8, ptr, ptr, ptr, i64, i32, ptr }
%struct.acpi_object_data = type { ptr, i8, i8, i16, i8, ptr, ptr }

@_acpi_module_name = internal constant [9 x i8] c"nsobject\00", align 1, !dbg !0
@.str = private unnamed_addr constant [21 x i8] c"Null NamedObj handle\00", align 1, !dbg !794
@.str.1 = private unnamed_addr constant [40 x i8] c"Null object, but type not ACPI_TYPE_ANY\00", align 1, !dbg !799
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid handle %p [%s]\00", align 1, !dbg !804
@.str.3 = private unnamed_addr constant [14 x i8] c"Null Node ptr\00", align 1, !dbg !809

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_attach_object(ptr noundef %node, ptr noundef %object, i32 noundef %type) #0 align 16 !dbg !825 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %obj_desc = alloca ptr, align 8
  %last_obj_desc = alloca ptr, align 8
  %object_type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !830, metadata !DIExpression()), !dbg !836
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !831, metadata !DIExpression()), !dbg !837
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !832, metadata !DIExpression()), !dbg !838
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #5, !dbg !839
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !833, metadata !DIExpression()), !dbg !840
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_obj_desc) #5, !dbg !841
  call void @llvm.dbg.declare(metadata ptr %last_obj_desc, metadata !834, metadata !DIExpression()), !dbg !842
  call void @llvm.lifetime.start.p0(i64 4, ptr %object_type) #5, !dbg !843
  call void @llvm.dbg.declare(metadata ptr %object_type, metadata !835, metadata !DIExpression()), !dbg !844
  store i32 0, ptr %object_type, align 4, !dbg !844
  %0 = load ptr, ptr %node.addr, align 8, !dbg !845
  %tobool = icmp ne ptr %0, null, !dbg !845
  br i1 %tobool, label %if.end, label %if.then, !dbg !847

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 53, ptr noundef @.str) #6, !dbg !848
  store i32 4097, ptr %retval, align 4, !dbg !850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !850

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %object.addr, align 8, !dbg !851
  %tobool1 = icmp ne ptr %1, null, !dbg !851
  br i1 %tobool1, label %if.end3, label %land.lhs.true, !dbg !853

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, ptr %type.addr, align 4, !dbg !854
  %cmp = icmp ne i32 0, %2, !dbg !855
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !856

if.then2:                                         ; preds = %land.lhs.true
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 61, ptr noundef @.str.1) #6, !dbg !857
  store i32 4097, ptr %retval, align 4, !dbg !859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !859

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %3 = load ptr, ptr %node.addr, align 8, !dbg !860
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %3, i32 0, i32 1, !dbg !860
  %4 = load i8, ptr %descriptor_type, align 8, !dbg !860
  %conv = zext i8 %4 to i32, !dbg !860
  %cmp4 = icmp ne i32 %conv, 15, !dbg !862
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !863

if.then6:                                         ; preds = %if.end3
  %5 = load ptr, ptr %node.addr, align 8, !dbg !864
  %6 = load ptr, ptr %node.addr, align 8, !dbg !864
  %call = call ptr @acpi_ut_get_descriptor_name(ptr noundef %6) #6, !dbg !864
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 70, ptr noundef @.str.2, ptr noundef %5, ptr noundef %call) #6, !dbg !864
  store i32 4097, ptr %retval, align 4, !dbg !866
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !866

if.end7:                                          ; preds = %if.end3
  %7 = load ptr, ptr %node.addr, align 8, !dbg !867
  %object8 = getelementptr inbounds %struct.acpi_namespace_node, ptr %7, i32 0, i32 0, !dbg !869
  %8 = load ptr, ptr %object8, align 8, !dbg !869
  %9 = load ptr, ptr %object.addr, align 8, !dbg !870
  %cmp9 = icmp eq ptr %8, %9, !dbg !871
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !872

if.then11:                                        ; preds = %if.end7
  store i32 0, ptr %retval, align 4, !dbg !873
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !873

if.end12:                                         ; preds = %if.end7
  %10 = load ptr, ptr %object.addr, align 8, !dbg !875
  %tobool13 = icmp ne ptr %10, null, !dbg !875
  br i1 %tobool13, label %if.else, label %if.then14, !dbg !877

if.then14:                                        ; preds = %if.end12
  store ptr null, ptr %obj_desc, align 8, !dbg !878
  store i32 0, ptr %object_type, align 4, !dbg !880
  br label %if.end28, !dbg !881

if.else:                                          ; preds = %if.end12
  %11 = load ptr, ptr %object.addr, align 8, !dbg !882
  %descriptor_type15 = getelementptr inbounds %struct.acpi_common_descriptor, ptr %11, i32 0, i32 1, !dbg !882
  %12 = load i8, ptr %descriptor_type15, align 8, !dbg !882
  %conv16 = zext i8 %12 to i32, !dbg !882
  %cmp17 = icmp eq i32 %conv16, 15, !dbg !884
  br i1 %cmp17, label %land.lhs.true19, label %if.else26, !dbg !885

land.lhs.true19:                                  ; preds = %if.else
  %13 = load ptr, ptr %object.addr, align 8, !dbg !886
  %object20 = getelementptr inbounds %struct.acpi_namespace_node, ptr %13, i32 0, i32 0, !dbg !887
  %14 = load ptr, ptr %object20, align 8, !dbg !887
  %tobool21 = icmp ne ptr %14, null, !dbg !888
  br i1 %tobool21, label %if.then22, label %if.else26, !dbg !889

if.then22:                                        ; preds = %land.lhs.true19
  %15 = load ptr, ptr %object.addr, align 8, !dbg !890
  %object23 = getelementptr inbounds %struct.acpi_namespace_node, ptr %15, i32 0, i32 0, !dbg !892
  %16 = load ptr, ptr %object23, align 8, !dbg !892
  store ptr %16, ptr %obj_desc, align 8, !dbg !893
  %17 = load ptr, ptr %object.addr, align 8, !dbg !894
  %type24 = getelementptr inbounds %struct.acpi_namespace_node, ptr %17, i32 0, i32 2, !dbg !895
  %18 = load i8, ptr %type24, align 1, !dbg !895
  %conv25 = zext i8 %18 to i32, !dbg !896
  store i32 %conv25, ptr %object_type, align 4, !dbg !897
  br label %if.end27, !dbg !898

if.else26:                                        ; preds = %land.lhs.true19, %if.else
  %19 = load ptr, ptr %object.addr, align 8, !dbg !899
  store ptr %19, ptr %obj_desc, align 8, !dbg !901
  %20 = load i32, ptr %type.addr, align 4, !dbg !902
  store i32 %20, ptr %object_type, align 4, !dbg !903
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %if.then22
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then14
  %21 = load ptr, ptr %node.addr, align 8, !dbg !904
  %object29 = getelementptr inbounds %struct.acpi_namespace_node, ptr %21, i32 0, i32 0, !dbg !906
  %22 = load ptr, ptr %object29, align 8, !dbg !906
  %tobool30 = icmp ne ptr %22, null, !dbg !904
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !907

if.then31:                                        ; preds = %if.end28
  %23 = load ptr, ptr %node.addr, align 8, !dbg !908
  call void @acpi_ns_detach_object(ptr noundef %23) #6, !dbg !910
  br label %if.end32, !dbg !911

if.end32:                                         ; preds = %if.then31, %if.end28
  %24 = load ptr, ptr %obj_desc, align 8, !dbg !912
  %tobool33 = icmp ne ptr %24, null, !dbg !912
  br i1 %tobool33, label %if.then34, label %if.end39, !dbg !914

if.then34:                                        ; preds = %if.end32
  %25 = load ptr, ptr %obj_desc, align 8, !dbg !915
  call void @acpi_ut_add_reference(ptr noundef %25) #6, !dbg !917
  %26 = load ptr, ptr %obj_desc, align 8, !dbg !918
  store ptr %26, ptr %last_obj_desc, align 8, !dbg !919
  br label %while.cond, !dbg !920

while.cond:                                       ; preds = %while.body, %if.then34
  %27 = load ptr, ptr %last_obj_desc, align 8, !dbg !921
  %next_object = getelementptr inbounds %struct.acpi_object_common, ptr %27, i32 0, i32 0, !dbg !922
  %28 = load ptr, ptr %next_object, align 8, !dbg !922
  %tobool35 = icmp ne ptr %28, null, !dbg !920
  br i1 %tobool35, label %while.body, label %while.end, !dbg !920

while.body:                                       ; preds = %while.cond
  %29 = load ptr, ptr %last_obj_desc, align 8, !dbg !923
  %next_object36 = getelementptr inbounds %struct.acpi_object_common, ptr %29, i32 0, i32 0, !dbg !925
  %30 = load ptr, ptr %next_object36, align 8, !dbg !925
  store ptr %30, ptr %last_obj_desc, align 8, !dbg !926
  br label %while.cond, !dbg !920, !llvm.loop !927

while.end:                                        ; preds = %while.cond
  %31 = load ptr, ptr %node.addr, align 8, !dbg !931
  %object37 = getelementptr inbounds %struct.acpi_namespace_node, ptr %31, i32 0, i32 0, !dbg !932
  %32 = load ptr, ptr %object37, align 8, !dbg !932
  %33 = load ptr, ptr %last_obj_desc, align 8, !dbg !933
  %next_object38 = getelementptr inbounds %struct.acpi_object_common, ptr %33, i32 0, i32 0, !dbg !934
  store ptr %32, ptr %next_object38, align 8, !dbg !935
  br label %if.end39, !dbg !936

if.end39:                                         ; preds = %while.end, %if.end32
  %34 = load i32, ptr %object_type, align 4, !dbg !937
  %conv40 = trunc i32 %34 to i8, !dbg !938
  %35 = load ptr, ptr %node.addr, align 8, !dbg !939
  %type41 = getelementptr inbounds %struct.acpi_namespace_node, ptr %35, i32 0, i32 2, !dbg !940
  store i8 %conv40, ptr %type41, align 1, !dbg !941
  %36 = load ptr, ptr %obj_desc, align 8, !dbg !942
  %37 = load ptr, ptr %node.addr, align 8, !dbg !943
  %object42 = getelementptr inbounds %struct.acpi_namespace_node, ptr %37, i32 0, i32 0, !dbg !944
  store ptr %36, ptr %object42, align 8, !dbg !945
  store i32 0, ptr %retval, align 4, !dbg !946
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !946

cleanup:                                          ; preds = %if.end39, %if.then11, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %object_type) #5, !dbg !947
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_obj_desc) #5, !dbg !947
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #5, !dbg !947
  %38 = load i32, ptr %retval, align 4, !dbg !947
  ret i32 %38, !dbg !947
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !948 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !953 dso_local ptr @acpi_ut_get_descriptor_name(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ns_detach_object(ptr noundef %node) #0 align 16 !dbg !957 {
entry:
  %node.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !961, metadata !DIExpression()), !dbg !963
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #5, !dbg !964
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !962, metadata !DIExpression()), !dbg !965
  %0 = load ptr, ptr %node.addr, align 8, !dbg !966
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %0, i32 0, i32 0, !dbg !967
  %1 = load ptr, ptr %object, align 8, !dbg !967
  store ptr %1, ptr %obj_desc, align 8, !dbg !968
  %2 = load ptr, ptr %obj_desc, align 8, !dbg !969
  %tobool = icmp ne ptr %2, null, !dbg !969
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !971

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %obj_desc, align 8, !dbg !972
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %3, i32 0, i32 2, !dbg !973
  %4 = load i8, ptr %type, align 1, !dbg !973
  %conv = zext i8 %4 to i32, !dbg !972
  %cmp = icmp eq i32 %conv, 29, !dbg !974
  br i1 %cmp, label %if.then, label %if.end, !dbg !975

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !976

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %node.addr, align 8, !dbg !978
  %flags = getelementptr inbounds %struct.acpi_namespace_node, ptr %5, i32 0, i32 3, !dbg !980
  %6 = load i16, ptr %flags, align 2, !dbg !980
  %conv2 = zext i16 %6 to i32, !dbg !978
  %and = and i32 %conv2, 64, !dbg !981
  %tobool3 = icmp ne i32 %and, 0, !dbg !981
  br i1 %tobool3, label %if.then4, label %if.end11, !dbg !982

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %obj_desc, align 8, !dbg !983
  %type5 = getelementptr inbounds %struct.acpi_object_common, ptr %7, i32 0, i32 2, !dbg !986
  %8 = load i8, ptr %type5, align 1, !dbg !986
  %conv6 = zext i8 %8 to i32, !dbg !983
  %cmp7 = icmp eq i32 %conv6, 8, !dbg !987
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !988

if.then9:                                         ; preds = %if.then4
  %9 = load ptr, ptr %obj_desc, align 8, !dbg !989
  %aml_start = getelementptr inbounds %struct.acpi_object_method, ptr %9, i32 0, i32 10, !dbg !989
  %10 = load ptr, ptr %aml_start, align 8, !dbg !989
  call void @acpi_os_free(ptr noundef %10) #6, !dbg !989
  br label %if.end10, !dbg !991

if.end10:                                         ; preds = %if.then9, %if.then4
  br label %if.end11, !dbg !992

if.end11:                                         ; preds = %if.end10, %if.end
  %11 = load ptr, ptr %obj_desc, align 8, !dbg !993
  %type12 = getelementptr inbounds %struct.acpi_object_common, ptr %11, i32 0, i32 2, !dbg !995
  %12 = load i8, ptr %type12, align 1, !dbg !995
  %conv13 = zext i8 %12 to i32, !dbg !993
  %cmp14 = icmp eq i32 %conv13, 10, !dbg !996
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !997

if.then16:                                        ; preds = %if.end11
  %13 = load ptr, ptr %obj_desc, align 8, !dbg !998
  %space_id = getelementptr inbounds %struct.acpi_object_region, ptr %13, i32 0, i32 5, !dbg !1000
  %14 = load i8, ptr %space_id, align 1, !dbg !1000
  %15 = load ptr, ptr %node.addr, align 8, !dbg !1001
  call void @acpi_ut_remove_address_range(i8 noundef zeroext %14, ptr noundef %15) #6, !dbg !1002
  br label %if.end17, !dbg !1003

if.end17:                                         ; preds = %if.then16, %if.end11
  %16 = load ptr, ptr %node.addr, align 8, !dbg !1004
  %object18 = getelementptr inbounds %struct.acpi_namespace_node, ptr %16, i32 0, i32 0, !dbg !1005
  store ptr null, ptr %object18, align 8, !dbg !1006
  %17 = load ptr, ptr %obj_desc, align 8, !dbg !1007
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %17, i32 0, i32 1, !dbg !1007
  %18 = load i8, ptr %descriptor_type, align 8, !dbg !1007
  %conv19 = zext i8 %18 to i32, !dbg !1007
  %cmp20 = icmp eq i32 %conv19, 14, !dbg !1009
  br i1 %cmp20, label %if.then22, label %if.end47, !dbg !1010

if.then22:                                        ; preds = %if.end17
  %19 = load ptr, ptr %obj_desc, align 8, !dbg !1011
  %next_object = getelementptr inbounds %struct.acpi_object_common, ptr %19, i32 0, i32 0, !dbg !1013
  %20 = load ptr, ptr %next_object, align 8, !dbg !1013
  %21 = load ptr, ptr %node.addr, align 8, !dbg !1014
  %object23 = getelementptr inbounds %struct.acpi_namespace_node, ptr %21, i32 0, i32 0, !dbg !1015
  store ptr %20, ptr %object23, align 8, !dbg !1016
  %22 = load ptr, ptr %node.addr, align 8, !dbg !1017
  %object24 = getelementptr inbounds %struct.acpi_namespace_node, ptr %22, i32 0, i32 0, !dbg !1019
  %23 = load ptr, ptr %object24, align 8, !dbg !1019
  %tobool25 = icmp ne ptr %23, null, !dbg !1017
  br i1 %tobool25, label %land.lhs.true, label %if.end35, !dbg !1020

land.lhs.true:                                    ; preds = %if.then22
  %24 = load ptr, ptr %node.addr, align 8, !dbg !1021
  %object26 = getelementptr inbounds %struct.acpi_namespace_node, ptr %24, i32 0, i32 0, !dbg !1022
  %25 = load ptr, ptr %object26, align 8, !dbg !1022
  %type27 = getelementptr inbounds %struct.acpi_object_common, ptr %25, i32 0, i32 2, !dbg !1023
  %26 = load i8, ptr %type27, align 1, !dbg !1023
  %conv28 = zext i8 %26 to i32, !dbg !1021
  %cmp29 = icmp ne i32 %conv28, 29, !dbg !1024
  br i1 %cmp29, label %if.then31, label %if.end35, !dbg !1025

if.then31:                                        ; preds = %land.lhs.true
  %27 = load ptr, ptr %node.addr, align 8, !dbg !1026
  %object32 = getelementptr inbounds %struct.acpi_namespace_node, ptr %27, i32 0, i32 0, !dbg !1028
  %28 = load ptr, ptr %object32, align 8, !dbg !1028
  %next_object33 = getelementptr inbounds %struct.acpi_object_common, ptr %28, i32 0, i32 0, !dbg !1029
  %29 = load ptr, ptr %next_object33, align 8, !dbg !1029
  %30 = load ptr, ptr %node.addr, align 8, !dbg !1030
  %object34 = getelementptr inbounds %struct.acpi_namespace_node, ptr %30, i32 0, i32 0, !dbg !1031
  store ptr %29, ptr %object34, align 8, !dbg !1032
  br label %if.end35, !dbg !1033

if.end35:                                         ; preds = %if.then31, %land.lhs.true, %if.then22
  %31 = load ptr, ptr %obj_desc, align 8, !dbg !1034
  %next_object36 = getelementptr inbounds %struct.acpi_object_common, ptr %31, i32 0, i32 0, !dbg !1036
  %32 = load ptr, ptr %next_object36, align 8, !dbg !1036
  %tobool37 = icmp ne ptr %32, null, !dbg !1034
  br i1 %tobool37, label %land.lhs.true38, label %if.end46, !dbg !1037

land.lhs.true38:                                  ; preds = %if.end35
  %33 = load ptr, ptr %obj_desc, align 8, !dbg !1038
  %next_object39 = getelementptr inbounds %struct.acpi_object_common, ptr %33, i32 0, i32 0, !dbg !1039
  %34 = load ptr, ptr %next_object39, align 8, !dbg !1039
  %type40 = getelementptr inbounds %struct.acpi_object_common, ptr %34, i32 0, i32 2, !dbg !1040
  %35 = load i8, ptr %type40, align 1, !dbg !1040
  %conv41 = zext i8 %35 to i32, !dbg !1041
  %cmp42 = icmp eq i32 %conv41, 29, !dbg !1042
  br i1 %cmp42, label %if.then44, label %if.end46, !dbg !1043

if.then44:                                        ; preds = %land.lhs.true38
  %36 = load ptr, ptr %obj_desc, align 8, !dbg !1044
  %next_object45 = getelementptr inbounds %struct.acpi_object_common, ptr %36, i32 0, i32 0, !dbg !1046
  store ptr null, ptr %next_object45, align 8, !dbg !1047
  br label %if.end46, !dbg !1048

if.end46:                                         ; preds = %if.then44, %land.lhs.true38, %if.end35
  br label %if.end47, !dbg !1049

if.end47:                                         ; preds = %if.end46, %if.end17
  %37 = load ptr, ptr %node.addr, align 8, !dbg !1050
  %type48 = getelementptr inbounds %struct.acpi_namespace_node, ptr %37, i32 0, i32 2, !dbg !1051
  store i8 0, ptr %type48, align 1, !dbg !1052
  %38 = load ptr, ptr %obj_desc, align 8, !dbg !1053
  call void @acpi_ut_remove_reference(ptr noundef %38) #6, !dbg !1054
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1055

cleanup:                                          ; preds = %if.end47, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #5, !dbg !1056
  ret void, !dbg !1056
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1057 dso_local void @acpi_ut_add_reference(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !1060 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1065, metadata !DIExpression()), !dbg !1066
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1067
  call void @kfree(ptr noundef %0) #6, !dbg !1068
  ret void, !dbg !1069
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1070 dso_local void @acpi_ut_remove_address_range(i8 noundef zeroext, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1074 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ns_get_attached_object(ptr noundef %node) #0 align 16 !dbg !1075 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1079, metadata !DIExpression()), !dbg !1080
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1081
  %tobool = icmp ne ptr %0, null, !dbg !1081
  br i1 %tobool, label %if.end, label %if.then, !dbg !1083

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 253, ptr noundef @.str.3) #6, !dbg !1084
  store ptr null, ptr %retval, align 8, !dbg !1086
  br label %return, !dbg !1086

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8, !dbg !1087
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %1, i32 0, i32 0, !dbg !1089
  %2 = load ptr, ptr %object, align 8, !dbg !1089
  %tobool1 = icmp ne ptr %2, null, !dbg !1087
  br i1 %tobool1, label %lor.lhs.false, label %if.then14, !dbg !1090

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %node.addr, align 8, !dbg !1091
  %object2 = getelementptr inbounds %struct.acpi_namespace_node, ptr %3, i32 0, i32 0, !dbg !1091
  %4 = load ptr, ptr %object2, align 8, !dbg !1091
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %4, i32 0, i32 1, !dbg !1091
  %5 = load i8, ptr %descriptor_type, align 8, !dbg !1091
  %conv = zext i8 %5 to i32, !dbg !1091
  %cmp = icmp ne i32 %conv, 14, !dbg !1092
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false9, !dbg !1093

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load ptr, ptr %node.addr, align 8, !dbg !1094
  %object4 = getelementptr inbounds %struct.acpi_namespace_node, ptr %6, i32 0, i32 0, !dbg !1094
  %7 = load ptr, ptr %object4, align 8, !dbg !1094
  %descriptor_type5 = getelementptr inbounds %struct.acpi_common_descriptor, ptr %7, i32 0, i32 1, !dbg !1094
  %8 = load i8, ptr %descriptor_type5, align 8, !dbg !1094
  %conv6 = zext i8 %8 to i32, !dbg !1094
  %cmp7 = icmp ne i32 %conv6, 15, !dbg !1095
  br i1 %cmp7, label %if.then14, label %lor.lhs.false9, !dbg !1096

lor.lhs.false9:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %9 = load ptr, ptr %node.addr, align 8, !dbg !1097
  %object10 = getelementptr inbounds %struct.acpi_namespace_node, ptr %9, i32 0, i32 0, !dbg !1098
  %10 = load ptr, ptr %object10, align 8, !dbg !1098
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %10, i32 0, i32 2, !dbg !1099
  %11 = load i8, ptr %type, align 1, !dbg !1099
  %conv11 = zext i8 %11 to i32, !dbg !1100
  %cmp12 = icmp eq i32 %conv11, 29, !dbg !1101
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !1102

if.then14:                                        ; preds = %lor.lhs.false9, %land.lhs.true, %if.end
  store ptr null, ptr %retval, align 8, !dbg !1103
  br label %return, !dbg !1103

if.end15:                                         ; preds = %lor.lhs.false9
  %12 = load ptr, ptr %node.addr, align 8, !dbg !1105
  %object16 = getelementptr inbounds %struct.acpi_namespace_node, ptr %12, i32 0, i32 0, !dbg !1105
  %13 = load ptr, ptr %object16, align 8, !dbg !1105
  store ptr %13, ptr %retval, align 8, !dbg !1105
  br label %return, !dbg !1105

return:                                           ; preds = %if.end15, %if.then14, %if.then
  %14 = load ptr, ptr %retval, align 8, !dbg !1106
  ret ptr %14, !dbg !1106
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1107 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ns_get_secondary_object(ptr noundef %obj_desc) #0 align 16 !dbg !1108 {
entry:
  %retval = alloca ptr, align 8
  %obj_desc.addr = alloca ptr, align 8
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1112, metadata !DIExpression()), !dbg !1113
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1114
  %tobool = icmp ne ptr %0, null, !dbg !1114
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1116

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1117
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %1, i32 0, i32 2, !dbg !1118
  %2 = load i8, ptr %type, align 1, !dbg !1118
  %conv = zext i8 %2 to i32, !dbg !1117
  %cmp = icmp eq i32 %conv, 29, !dbg !1119
  br i1 %cmp, label %if.then, label %lor.lhs.false2, !dbg !1120

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1121
  %next_object = getelementptr inbounds %struct.acpi_object_common, ptr %3, i32 0, i32 0, !dbg !1122
  %4 = load ptr, ptr %next_object, align 8, !dbg !1122
  %tobool3 = icmp ne ptr %4, null, !dbg !1121
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !1123

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1124
  %next_object5 = getelementptr inbounds %struct.acpi_object_common, ptr %5, i32 0, i32 0, !dbg !1125
  %6 = load ptr, ptr %next_object5, align 8, !dbg !1125
  %type6 = getelementptr inbounds %struct.acpi_object_common, ptr %6, i32 0, i32 2, !dbg !1126
  %7 = load i8, ptr %type6, align 1, !dbg !1126
  %conv7 = zext i8 %7 to i32, !dbg !1127
  %cmp8 = icmp eq i32 %conv7, 29, !dbg !1128
  br i1 %cmp8, label %if.then, label %if.end, !dbg !1129

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !1130
  br label %return, !dbg !1130

if.end:                                           ; preds = %lor.lhs.false4
  %8 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1132
  %next_object10 = getelementptr inbounds %struct.acpi_object_common, ptr %8, i32 0, i32 0, !dbg !1132
  %9 = load ptr, ptr %next_object10, align 8, !dbg !1132
  store ptr %9, ptr %retval, align 8, !dbg !1132
  br label %return, !dbg !1132

return:                                           ; preds = %if.end, %if.then
  %10 = load ptr, ptr %retval, align 8, !dbg !1133
  ret ptr %10, !dbg !1133
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_attach_data(ptr noundef %node, ptr noundef %handler, ptr noundef %data) #0 align 16 !dbg !1134 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %handler.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %prev_obj_desc = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %data_desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1138, metadata !DIExpression()), !dbg !1144
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !1139, metadata !DIExpression()), !dbg !1145
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1140, metadata !DIExpression()), !dbg !1146
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_obj_desc) #5, !dbg !1147
  call void @llvm.dbg.declare(metadata ptr %prev_obj_desc, metadata !1141, metadata !DIExpression()), !dbg !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #5, !dbg !1149
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1142, metadata !DIExpression()), !dbg !1150
  call void @llvm.lifetime.start.p0(i64 8, ptr %data_desc) #5, !dbg !1151
  call void @llvm.dbg.declare(metadata ptr %data_desc, metadata !1143, metadata !DIExpression()), !dbg !1152
  store ptr null, ptr %prev_obj_desc, align 8, !dbg !1153
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1154
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %0, i32 0, i32 0, !dbg !1155
  %1 = load ptr, ptr %object, align 8, !dbg !1155
  store ptr %1, ptr %obj_desc, align 8, !dbg !1156
  br label %while.cond, !dbg !1157

while.cond:                                       ; preds = %if.end, %entry
  %2 = load ptr, ptr %obj_desc, align 8, !dbg !1158
  %tobool = icmp ne ptr %2, null, !dbg !1157
  br i1 %tobool, label %while.body, label %while.end, !dbg !1157

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %obj_desc, align 8, !dbg !1159
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %3, i32 0, i32 2, !dbg !1162
  %4 = load i8, ptr %type, align 1, !dbg !1162
  %conv = zext i8 %4 to i32, !dbg !1159
  %cmp = icmp eq i32 %conv, 29, !dbg !1163
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1164

land.lhs.true:                                    ; preds = %while.body
  %5 = load ptr, ptr %obj_desc, align 8, !dbg !1165
  %handler2 = getelementptr inbounds %struct.acpi_object_data, ptr %5, i32 0, i32 5, !dbg !1166
  %6 = load ptr, ptr %handler2, align 8, !dbg !1166
  %7 = load ptr, ptr %handler.addr, align 8, !dbg !1167
  %cmp3 = icmp eq ptr %6, %7, !dbg !1168
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1169

if.then:                                          ; preds = %land.lhs.true
  store i32 7, ptr %retval, align 4, !dbg !1170
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1170

if.end:                                           ; preds = %land.lhs.true, %while.body
  %8 = load ptr, ptr %obj_desc, align 8, !dbg !1172
  store ptr %8, ptr %prev_obj_desc, align 8, !dbg !1173
  %9 = load ptr, ptr %obj_desc, align 8, !dbg !1174
  %next_object = getelementptr inbounds %struct.acpi_object_common, ptr %9, i32 0, i32 0, !dbg !1175
  %10 = load ptr, ptr %next_object, align 8, !dbg !1175
  store ptr %10, ptr %obj_desc, align 8, !dbg !1176
  br label %while.cond, !dbg !1157, !llvm.loop !1177

while.end:                                        ; preds = %while.cond
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 336, i32 noundef 16, i32 noundef 29) #6, !dbg !1179
  store ptr %call, ptr %data_desc, align 8, !dbg !1180
  %11 = load ptr, ptr %data_desc, align 8, !dbg !1181
  %tobool5 = icmp ne ptr %11, null, !dbg !1181
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !1183

if.then6:                                         ; preds = %while.end
  store i32 4, ptr %retval, align 4, !dbg !1184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1184

if.end7:                                          ; preds = %while.end
  %12 = load ptr, ptr %handler.addr, align 8, !dbg !1186
  %13 = load ptr, ptr %data_desc, align 8, !dbg !1187
  %handler8 = getelementptr inbounds %struct.acpi_object_data, ptr %13, i32 0, i32 5, !dbg !1188
  store ptr %12, ptr %handler8, align 8, !dbg !1189
  %14 = load ptr, ptr %data.addr, align 8, !dbg !1190
  %15 = load ptr, ptr %data_desc, align 8, !dbg !1191
  %pointer = getelementptr inbounds %struct.acpi_object_data, ptr %15, i32 0, i32 6, !dbg !1192
  store ptr %14, ptr %pointer, align 8, !dbg !1193
  %16 = load ptr, ptr %prev_obj_desc, align 8, !dbg !1194
  %tobool9 = icmp ne ptr %16, null, !dbg !1194
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !1196

if.then10:                                        ; preds = %if.end7
  %17 = load ptr, ptr %data_desc, align 8, !dbg !1197
  %18 = load ptr, ptr %prev_obj_desc, align 8, !dbg !1199
  %next_object11 = getelementptr inbounds %struct.acpi_object_common, ptr %18, i32 0, i32 0, !dbg !1200
  store ptr %17, ptr %next_object11, align 8, !dbg !1201
  br label %if.end13, !dbg !1202

if.else:                                          ; preds = %if.end7
  %19 = load ptr, ptr %data_desc, align 8, !dbg !1203
  %20 = load ptr, ptr %node.addr, align 8, !dbg !1205
  %object12 = getelementptr inbounds %struct.acpi_namespace_node, ptr %20, i32 0, i32 0, !dbg !1206
  store ptr %19, ptr %object12, align 8, !dbg !1207
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  store i32 0, ptr %retval, align 4, !dbg !1208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1208

cleanup:                                          ; preds = %if.end13, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %data_desc) #5, !dbg !1209
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #5, !dbg !1209
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_obj_desc) #5, !dbg !1209
  %21 = load i32, ptr %retval, align 4, !dbg !1209
  ret i32 %21, !dbg !1209
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1210 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_detach_data(ptr noundef %node, ptr noundef %handler) #0 align 16 !dbg !1213 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %handler.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %prev_obj_desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1217, metadata !DIExpression()), !dbg !1221
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !1218, metadata !DIExpression()), !dbg !1222
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #5, !dbg !1223
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1219, metadata !DIExpression()), !dbg !1224
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_obj_desc) #5, !dbg !1225
  call void @llvm.dbg.declare(metadata ptr %prev_obj_desc, metadata !1220, metadata !DIExpression()), !dbg !1226
  store ptr null, ptr %prev_obj_desc, align 8, !dbg !1227
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1228
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %0, i32 0, i32 0, !dbg !1229
  %1 = load ptr, ptr %object, align 8, !dbg !1229
  store ptr %1, ptr %obj_desc, align 8, !dbg !1230
  br label %while.cond, !dbg !1231

while.cond:                                       ; preds = %if.end10, %entry
  %2 = load ptr, ptr %obj_desc, align 8, !dbg !1232
  %tobool = icmp ne ptr %2, null, !dbg !1231
  br i1 %tobool, label %while.body, label %while.end, !dbg !1231

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %obj_desc, align 8, !dbg !1233
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %3, i32 0, i32 2, !dbg !1236
  %4 = load i8, ptr %type, align 1, !dbg !1236
  %conv = zext i8 %4 to i32, !dbg !1233
  %cmp = icmp eq i32 %conv, 29, !dbg !1237
  br i1 %cmp, label %land.lhs.true, label %if.end10, !dbg !1238

land.lhs.true:                                    ; preds = %while.body
  %5 = load ptr, ptr %obj_desc, align 8, !dbg !1239
  %handler2 = getelementptr inbounds %struct.acpi_object_data, ptr %5, i32 0, i32 5, !dbg !1240
  %6 = load ptr, ptr %handler2, align 8, !dbg !1240
  %7 = load ptr, ptr %handler.addr, align 8, !dbg !1241
  %cmp3 = icmp eq ptr %6, %7, !dbg !1242
  br i1 %cmp3, label %if.then, label %if.end10, !dbg !1243

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %prev_obj_desc, align 8, !dbg !1244
  %tobool5 = icmp ne ptr %8, null, !dbg !1244
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !1247

if.then6:                                         ; preds = %if.then
  %9 = load ptr, ptr %obj_desc, align 8, !dbg !1248
  %next_object = getelementptr inbounds %struct.acpi_object_common, ptr %9, i32 0, i32 0, !dbg !1250
  %10 = load ptr, ptr %next_object, align 8, !dbg !1250
  %11 = load ptr, ptr %prev_obj_desc, align 8, !dbg !1251
  %next_object7 = getelementptr inbounds %struct.acpi_object_common, ptr %11, i32 0, i32 0, !dbg !1252
  store ptr %10, ptr %next_object7, align 8, !dbg !1253
  br label %if.end, !dbg !1254

if.else:                                          ; preds = %if.then
  %12 = load ptr, ptr %obj_desc, align 8, !dbg !1255
  %next_object8 = getelementptr inbounds %struct.acpi_object_common, ptr %12, i32 0, i32 0, !dbg !1257
  %13 = load ptr, ptr %next_object8, align 8, !dbg !1257
  %14 = load ptr, ptr %node.addr, align 8, !dbg !1258
  %object9 = getelementptr inbounds %struct.acpi_namespace_node, ptr %14, i32 0, i32 0, !dbg !1259
  store ptr %13, ptr %object9, align 8, !dbg !1260
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  %15 = load ptr, ptr %obj_desc, align 8, !dbg !1261
  call void @acpi_ut_remove_reference(ptr noundef %15) #6, !dbg !1262
  store i32 0, ptr %retval, align 4, !dbg !1263
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1263

if.end10:                                         ; preds = %land.lhs.true, %while.body
  %16 = load ptr, ptr %obj_desc, align 8, !dbg !1264
  store ptr %16, ptr %prev_obj_desc, align 8, !dbg !1265
  %17 = load ptr, ptr %obj_desc, align 8, !dbg !1266
  %next_object11 = getelementptr inbounds %struct.acpi_object_common, ptr %17, i32 0, i32 0, !dbg !1267
  %18 = load ptr, ptr %next_object11, align 8, !dbg !1267
  store ptr %18, ptr %obj_desc, align 8, !dbg !1268
  br label %while.cond, !dbg !1231, !llvm.loop !1269

while.end:                                        ; preds = %while.cond
  store i32 5, ptr %retval, align 4, !dbg !1271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1271

cleanup:                                          ; preds = %while.end, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_obj_desc) #5, !dbg !1272
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #5, !dbg !1272
  %19 = load i32, ptr %retval, align 4, !dbg !1272
  ret i32 %19, !dbg !1272
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_get_attached_data(ptr noundef %node, ptr noundef %handler, ptr noundef %data) #0 align 16 !dbg !1273 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %handler.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1277, metadata !DIExpression()), !dbg !1281
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !1278, metadata !DIExpression()), !dbg !1282
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1279, metadata !DIExpression()), !dbg !1283
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #5, !dbg !1284
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1280, metadata !DIExpression()), !dbg !1285
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1286
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %0, i32 0, i32 0, !dbg !1287
  %1 = load ptr, ptr %object, align 8, !dbg !1287
  store ptr %1, ptr %obj_desc, align 8, !dbg !1288
  br label %while.cond, !dbg !1289

while.cond:                                       ; preds = %if.end, %entry
  %2 = load ptr, ptr %obj_desc, align 8, !dbg !1290
  %tobool = icmp ne ptr %2, null, !dbg !1289
  br i1 %tobool, label %while.body, label %while.end, !dbg !1289

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %obj_desc, align 8, !dbg !1291
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %3, i32 0, i32 2, !dbg !1294
  %4 = load i8, ptr %type, align 1, !dbg !1294
  %conv = zext i8 %4 to i32, !dbg !1291
  %cmp = icmp eq i32 %conv, 29, !dbg !1295
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1296

land.lhs.true:                                    ; preds = %while.body
  %5 = load ptr, ptr %obj_desc, align 8, !dbg !1297
  %handler2 = getelementptr inbounds %struct.acpi_object_data, ptr %5, i32 0, i32 5, !dbg !1298
  %6 = load ptr, ptr %handler2, align 8, !dbg !1298
  %7 = load ptr, ptr %handler.addr, align 8, !dbg !1299
  %cmp3 = icmp eq ptr %6, %7, !dbg !1300
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1301

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %obj_desc, align 8, !dbg !1302
  %pointer = getelementptr inbounds %struct.acpi_object_data, ptr %8, i32 0, i32 6, !dbg !1304
  %9 = load ptr, ptr %pointer, align 8, !dbg !1304
  %10 = load ptr, ptr %data.addr, align 8, !dbg !1305
  store ptr %9, ptr %10, align 8, !dbg !1306
  store i32 0, ptr %retval, align 4, !dbg !1307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1307

if.end:                                           ; preds = %land.lhs.true, %while.body
  %11 = load ptr, ptr %obj_desc, align 8, !dbg !1308
  %next_object = getelementptr inbounds %struct.acpi_object_common, ptr %11, i32 0, i32 0, !dbg !1309
  %12 = load ptr, ptr %next_object, align 8, !dbg !1309
  store ptr %12, ptr %obj_desc, align 8, !dbg !1310
  br label %while.cond, !dbg !1289, !llvm.loop !1311

while.end:                                        ; preds = %while.cond
  store i32 5, ptr %retval, align 4, !dbg !1313
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1313

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #5, !dbg !1314
  %13 = load i32, ptr %retval, align 4, !dbg !1314
  ret i32 %13, !dbg !1314
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1315 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!816, !817, !818, !819, !820, !821, !822, !823}
!llvm.ident = !{!824}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 14, type: !814, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.nsobject.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22nsobject\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/nsobject.ll drivers/acpi/acpica/nsobject.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !793, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsobject.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "08b8c9536aec8d6843574b328cf357bd")
!4 = !{!5, !12, !20, !82, !32, !22}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !14, line: 434, size: 1600, elements: !15)
!14 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!15 = !{!16, !25, !791, !792}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !13, file: !14, line: 435, baseType: !17, size: 128)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !14, line: 429, size: 128, elements: !18)
!18 = !{!19, !21}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !17, file: !14, line: 430, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !17, file: !14, line: 431, baseType: !22, size: 8, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !24)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !13, file: !14, line: 436, baseType: !26, size: 576)
!26 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !14, line: 369, size: 576, elements: !27)
!27 = !{!28, !40, !56, !68, !104, !118, !127, !440, !457, !473, !486, !564, !576, !590, !600, !618, !640, !659, !678, !697, !710, !737, !754, !767, !781, !790}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !26, file: !14, line: 370, baseType: !29, size: 128)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !14, line: 73, size: 128, elements: !30)
!30 = !{!31, !33, !34, !35, !39}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !29, file: !14, line: 74, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !29, file: !14, line: 74, baseType: !22, size: 8, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !29, file: !14, line: 74, baseType: !22, size: 8, offset: 72)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !29, file: !14, line: 74, baseType: !36, size: 16, offset: 80)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !38)
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !29, file: !14, line: 74, baseType: !22, size: 8, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !26, file: !14, line: 371, baseType: !41, size: 192)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !14, line: 76, size: 192, elements: !42)
!42 = !{!43, !44, !45, !46, !47, !48, !52}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !41, file: !14, line: 77, baseType: !32, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !41, file: !14, line: 77, baseType: !22, size: 8, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !41, file: !14, line: 77, baseType: !22, size: 8, offset: 72)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !41, file: !14, line: 77, baseType: !36, size: 16, offset: 80)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !41, file: !14, line: 77, baseType: !22, size: 8, offset: 96)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !41, file: !14, line: 77, baseType: !49, size: 24, offset: 104)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 24, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 3)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !41, file: !14, line: 78, baseType: !53, size: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !55)
!55 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !26, file: !14, line: 372, baseType: !57, size: 256)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !14, line: 93, size: 256, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !67}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !57, file: !14, line: 94, baseType: !32, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !57, file: !14, line: 94, baseType: !22, size: 8, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !57, file: !14, line: 94, baseType: !22, size: 8, offset: 72)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !57, file: !14, line: 94, baseType: !36, size: 16, offset: 80)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !57, file: !14, line: 94, baseType: !22, size: 8, offset: 96)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !57, file: !14, line: 94, baseType: !65, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !57, file: !14, line: 94, baseType: !7, size: 32, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !26, file: !14, line: 373, baseType: !69, size: 384)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !14, line: 97, size: 384, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !78, !79, !80, !81}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !69, file: !14, line: 98, baseType: !32, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !69, file: !14, line: 98, baseType: !22, size: 8, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !69, file: !14, line: 98, baseType: !22, size: 8, offset: 72)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !69, file: !14, line: 98, baseType: !36, size: 16, offset: 80)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !69, file: !14, line: 98, baseType: !22, size: 8, offset: 96)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !69, file: !14, line: 98, baseType: !77, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !69, file: !14, line: 98, baseType: !7, size: 32, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !69, file: !14, line: 99, baseType: !7, size: 32, offset: 224)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !69, file: !14, line: 100, baseType: !77, size: 64, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !69, file: !14, line: 101, baseType: !82, size: 64, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !84, line: 133, size: 384, elements: !85)
!84 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!85 = !{!86, !87, !88, !89, !90, !99, !100, !101, !102}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !83, file: !84, line: 134, baseType: !32, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !83, file: !84, line: 135, baseType: !22, size: 8, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !84, line: 136, baseType: !22, size: 8, offset: 72)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !83, file: !84, line: 137, baseType: !36, size: 16, offset: 80)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !83, file: !84, line: 138, baseType: !91, size: 32, offset: 96)
!91 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !92, line: 328, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !91, file: !92, line: 329, baseType: !7, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !91, file: !92, line: 330, baseType: !96, size: 32)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 32, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 4)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !83, file: !84, line: 139, baseType: !82, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !83, file: !84, line: 140, baseType: !82, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !83, file: !84, line: 141, baseType: !82, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !83, file: !84, line: 142, baseType: !103, size: 16, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !36)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !26, file: !14, line: 374, baseType: !105, size: 384)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !14, line: 104, size: 384, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !112, !113, !115, !116, !117}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !105, file: !14, line: 105, baseType: !32, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !105, file: !14, line: 105, baseType: !22, size: 8, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !105, file: !14, line: 105, baseType: !22, size: 8, offset: 72)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !105, file: !14, line: 105, baseType: !36, size: 16, offset: 80)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !14, line: 105, baseType: !22, size: 8, offset: 96)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !105, file: !14, line: 105, baseType: !82, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !105, file: !14, line: 106, baseType: !114, size: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !105, file: !14, line: 107, baseType: !77, size: 64, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !105, file: !14, line: 108, baseType: !7, size: 32, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !105, file: !14, line: 109, baseType: !7, size: 32, offset: 352)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !26, file: !14, line: 375, baseType: !119, size: 192)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !14, line: 118, size: 192, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !119, file: !14, line: 119, baseType: !32, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !119, file: !14, line: 119, baseType: !22, size: 8, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !14, line: 119, baseType: !22, size: 8, offset: 72)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !119, file: !14, line: 119, baseType: !36, size: 16, offset: 80)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !14, line: 119, baseType: !22, size: 8, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !119, file: !14, line: 119, baseType: !20, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !26, file: !14, line: 376, baseType: !128, size: 448)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !14, line: 144, size: 448, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !437, !438, !439}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !128, file: !14, line: 145, baseType: !32, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !128, file: !14, line: 145, baseType: !22, size: 8, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !128, file: !14, line: 145, baseType: !22, size: 8, offset: 72)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !128, file: !14, line: 145, baseType: !36, size: 16, offset: 80)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !14, line: 145, baseType: !22, size: 8, offset: 96)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !128, file: !14, line: 145, baseType: !22, size: 8, offset: 104)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !128, file: !14, line: 146, baseType: !22, size: 8, offset: 112)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !128, file: !14, line: 147, baseType: !22, size: 8, offset: 120)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !128, file: !14, line: 148, baseType: !32, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !128, file: !14, line: 149, baseType: !32, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !128, file: !14, line: 150, baseType: !77, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !128, file: !14, line: 154, baseType: !142, size: 64, offset: 320)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !128, file: !14, line: 151, size: 64, elements: !143)
!143 = !{!144, !436}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !142, file: !14, line: 152, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !84, line: 248, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!5, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !151, line: 37, size: 9024, elements: !152)
!151 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !382, !383, !384, !385, !386, !390, !392, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !419, !420, !421, !422, !423, !424, !425, !426, !428, !434}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !150, file: !151, line: 38, baseType: !149, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !150, file: !151, line: 39, baseType: !22, size: 8, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !150, file: !151, line: 40, baseType: !22, size: 8, offset: 72)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !150, file: !151, line: 41, baseType: !36, size: 16, offset: 80)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !150, file: !151, line: 42, baseType: !22, size: 8, offset: 96)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !150, file: !151, line: 43, baseType: !22, size: 8, offset: 104)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !150, file: !151, line: 44, baseType: !22, size: 8, offset: 112)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !150, file: !151, line: 45, baseType: !103, size: 16, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !150, file: !151, line: 46, baseType: !22, size: 8, offset: 144)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !150, file: !151, line: 47, baseType: !22, size: 8, offset: 152)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !150, file: !151, line: 48, baseType: !22, size: 8, offset: 160)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !150, file: !151, line: 49, baseType: !22, size: 8, offset: 168)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !150, file: !151, line: 50, baseType: !22, size: 8, offset: 176)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !150, file: !151, line: 51, baseType: !22, size: 8, offset: 184)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !150, file: !151, line: 52, baseType: !22, size: 8, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !150, file: !151, line: 53, baseType: !22, size: 8, offset: 200)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !150, file: !151, line: 54, baseType: !77, size: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !150, file: !151, line: 55, baseType: !7, size: 32, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !150, file: !151, line: 56, baseType: !7, size: 32, offset: 352)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !150, file: !151, line: 57, baseType: !7, size: 32, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !150, file: !151, line: 58, baseType: !7, size: 32, offset: 416)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !150, file: !151, line: 60, baseType: !175, size: 640, offset: 448)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !84, line: 909, size: 640, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182, !263, !264, !380, !381}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !175, file: !84, line: 910, baseType: !77, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !175, file: !84, line: 911, baseType: !77, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !175, file: !84, line: 912, baseType: !77, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !175, file: !84, line: 913, baseType: !77, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !175, file: !84, line: 914, baseType: !77, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !175, file: !84, line: 915, baseType: !183, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !84, line: 891, size: 1600, elements: !185)
!185 = !{!186, !206, !222}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !184, file: !84, line: 892, baseType: !187, size: 448)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !84, line: 844, size: 448, elements: !188)
!188 = !{!189, !190, !191, !192, !193, !194, !195, !196, !205}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !187, file: !84, line: 845, baseType: !183, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !187, file: !84, line: 845, baseType: !22, size: 8, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !187, file: !84, line: 845, baseType: !22, size: 8, offset: 72)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !187, file: !84, line: 845, baseType: !36, size: 16, offset: 80)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !187, file: !84, line: 845, baseType: !77, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !187, file: !84, line: 845, baseType: !183, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !187, file: !84, line: 845, baseType: !82, size: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !187, file: !84, line: 845, baseType: !197, size: 64, offset: 320)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !84, line: 732, size: 64, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !197, file: !84, line: 733, baseType: !53, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !197, file: !84, line: 734, baseType: !7, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !197, file: !84, line: 735, baseType: !65, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !197, file: !84, line: 736, baseType: !77, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !84, line: 737, baseType: !65, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !197, file: !84, line: 738, baseType: !183, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !187, file: !84, line: 845, baseType: !22, size: 8, offset: 384)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !184, file: !84, line: 893, baseType: !207, size: 640)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !84, line: 851, size: 640, elements: !208)
!208 = !{!209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !207, file: !84, line: 852, baseType: !183, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !207, file: !84, line: 852, baseType: !22, size: 8, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !207, file: !84, line: 852, baseType: !22, size: 8, offset: 72)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !207, file: !84, line: 852, baseType: !36, size: 16, offset: 80)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !207, file: !84, line: 852, baseType: !77, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !207, file: !84, line: 852, baseType: !183, size: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !207, file: !84, line: 852, baseType: !82, size: 64, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !207, file: !84, line: 852, baseType: !197, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !207, file: !84, line: 852, baseType: !22, size: 8, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !207, file: !84, line: 852, baseType: !65, size: 64, offset: 448)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !207, file: !84, line: 853, baseType: !77, size: 64, offset: 512)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !207, file: !84, line: 854, baseType: !7, size: 32, offset: 576)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !207, file: !84, line: 855, baseType: !7, size: 32, offset: 608)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !184, file: !84, line: 894, baseType: !223, size: 1600)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !84, line: 862, size: 1600, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !223, file: !84, line: 863, baseType: !183, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !223, file: !84, line: 863, baseType: !22, size: 8, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !223, file: !84, line: 863, baseType: !22, size: 8, offset: 72)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !223, file: !84, line: 863, baseType: !36, size: 16, offset: 80)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !223, file: !84, line: 863, baseType: !77, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !223, file: !84, line: 863, baseType: !183, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !223, file: !84, line: 863, baseType: !82, size: 64, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !223, file: !84, line: 863, baseType: !197, size: 64, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !223, file: !84, line: 863, baseType: !22, size: 8, offset: 384)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !223, file: !84, line: 863, baseType: !183, size: 64, offset: 448)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !223, file: !84, line: 864, baseType: !183, size: 64, offset: 512)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !223, file: !84, line: 865, baseType: !65, size: 64, offset: 576)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !223, file: !84, line: 866, baseType: !22, size: 8, offset: 640)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !223, file: !84, line: 867, baseType: !65, size: 64, offset: 704)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !223, file: !84, line: 868, baseType: !65, size: 64, offset: 768)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !223, file: !84, line: 869, baseType: !65, size: 64, offset: 832)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !223, file: !84, line: 870, baseType: !96, size: 32, offset: 896)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !223, file: !84, line: 871, baseType: !7, size: 32, offset: 928)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !223, file: !84, line: 872, baseType: !7, size: 32, offset: 960)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !223, file: !84, line: 873, baseType: !7, size: 32, offset: 992)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !223, file: !84, line: 874, baseType: !7, size: 32, offset: 1024)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !223, file: !84, line: 875, baseType: !7, size: 32, offset: 1056)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !223, file: !84, line: 876, baseType: !7, size: 32, offset: 1088)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !223, file: !84, line: 877, baseType: !7, size: 32, offset: 1120)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !223, file: !84, line: 878, baseType: !7, size: 32, offset: 1152)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !223, file: !84, line: 879, baseType: !7, size: 32, offset: 1184)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !223, file: !84, line: 880, baseType: !7, size: 32, offset: 1216)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !223, file: !84, line: 881, baseType: !7, size: 32, offset: 1248)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !223, file: !84, line: 882, baseType: !7, size: 32, offset: 1280)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !223, file: !84, line: 883, baseType: !7, size: 32, offset: 1312)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !223, file: !84, line: 884, baseType: !36, size: 16, offset: 1344)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !223, file: !84, line: 885, baseType: !22, size: 8, offset: 1360)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !223, file: !84, line: 886, baseType: !22, size: 8, offset: 1368)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !223, file: !84, line: 887, baseType: !22, size: 8, offset: 1376)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !223, file: !84, line: 888, baseType: !260, size: 160, offset: 1384)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 160, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 20)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !175, file: !84, line: 916, baseType: !82, size: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !175, file: !84, line: 917, baseType: !265, size: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !84, line: 679, size: 640, elements: !267)
!267 = !{!268, !276, !289, !298, !307, !320, !334, !346, !358}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !266, file: !84, line: 680, baseType: !269, size: 128)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !84, line: 575, size: 128, elements: !270)
!270 = !{!271, !272, !273, !274, !275}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !269, file: !84, line: 576, baseType: !20, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !269, file: !84, line: 576, baseType: !22, size: 8, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !269, file: !84, line: 576, baseType: !22, size: 8, offset: 72)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !269, file: !84, line: 576, baseType: !36, size: 16, offset: 80)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !269, file: !84, line: 576, baseType: !36, size: 16, offset: 96)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !266, file: !84, line: 681, baseType: !277, size: 384)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !84, line: 604, size: 384, elements: !278)
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286, !287, !288}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !277, file: !84, line: 605, baseType: !20, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !277, file: !84, line: 605, baseType: !22, size: 8, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !277, file: !84, line: 605, baseType: !22, size: 8, offset: 72)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !277, file: !84, line: 605, baseType: !36, size: 16, offset: 80)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !277, file: !84, line: 605, baseType: !36, size: 16, offset: 96)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !277, file: !84, line: 606, baseType: !36, size: 16, offset: 112)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !277, file: !84, line: 607, baseType: !183, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !277, file: !84, line: 608, baseType: !77, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !277, file: !84, line: 609, baseType: !77, size: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !277, file: !84, line: 610, baseType: !53, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !266, file: !84, line: 682, baseType: !290, size: 192)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !84, line: 582, size: 192, elements: !291)
!291 = !{!292, !293, !294, !295, !296, !297}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !290, file: !84, line: 583, baseType: !20, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !290, file: !84, line: 583, baseType: !22, size: 8, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !84, line: 583, baseType: !22, size: 8, offset: 72)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !290, file: !84, line: 583, baseType: !36, size: 16, offset: 80)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !290, file: !84, line: 583, baseType: !36, size: 16, offset: 96)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !290, file: !84, line: 584, baseType: !32, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !266, file: !84, line: 683, baseType: !299, size: 192)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !84, line: 616, size: 192, elements: !300)
!300 = !{!301, !302, !303, !304, !305, !306}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !299, file: !84, line: 617, baseType: !20, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !299, file: !84, line: 617, baseType: !22, size: 8, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !299, file: !84, line: 617, baseType: !22, size: 8, offset: 72)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !299, file: !84, line: 617, baseType: !36, size: 16, offset: 80)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !299, file: !84, line: 617, baseType: !36, size: 16, offset: 96)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !299, file: !84, line: 618, baseType: !82, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !266, file: !84, line: 684, baseType: !308, size: 448)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !84, line: 621, size: 448, elements: !309)
!309 = !{!310, !311, !312, !313, !314, !315, !316, !317, !318, !319}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !308, file: !84, line: 622, baseType: !20, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !308, file: !84, line: 622, baseType: !22, size: 8, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !308, file: !84, line: 622, baseType: !22, size: 8, offset: 72)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !308, file: !84, line: 622, baseType: !36, size: 16, offset: 80)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !308, file: !84, line: 622, baseType: !36, size: 16, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !308, file: !84, line: 623, baseType: !7, size: 32, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !308, file: !84, line: 624, baseType: !183, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !308, file: !84, line: 625, baseType: !77, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !308, file: !84, line: 626, baseType: !77, size: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !308, file: !84, line: 627, baseType: !7, size: 32, offset: 384)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !266, file: !84, line: 685, baseType: !321, size: 512)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !84, line: 590, size: 512, elements: !322)
!322 = !{!323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !321, file: !84, line: 591, baseType: !20, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !321, file: !84, line: 591, baseType: !22, size: 8, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !321, file: !84, line: 591, baseType: !22, size: 8, offset: 72)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !321, file: !84, line: 591, baseType: !36, size: 16, offset: 80)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !321, file: !84, line: 591, baseType: !36, size: 16, offset: 96)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !321, file: !84, line: 592, baseType: !7, size: 32, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !321, file: !84, line: 593, baseType: !32, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !321, file: !84, line: 594, baseType: !32, size: 64, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !321, file: !84, line: 595, baseType: !149, size: 64, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !321, file: !84, line: 596, baseType: !20, size: 64, offset: 384)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !321, file: !84, line: 597, baseType: !7, size: 32, offset: 448)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !266, file: !84, line: 686, baseType: !335, size: 320)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !84, line: 634, size: 320, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !345}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !335, file: !84, line: 635, baseType: !20, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !335, file: !84, line: 635, baseType: !22, size: 8, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !84, line: 635, baseType: !22, size: 8, offset: 72)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !335, file: !84, line: 635, baseType: !36, size: 16, offset: 80)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !335, file: !84, line: 635, baseType: !36, size: 16, offset: 96)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !335, file: !84, line: 636, baseType: !22, size: 8, offset: 112)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !335, file: !84, line: 637, baseType: !149, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !335, file: !84, line: 638, baseType: !32, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !335, file: !84, line: 639, baseType: !53, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !266, file: !84, line: 687, baseType: !347, size: 640)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !84, line: 646, size: 640, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !84, line: 647, baseType: !20, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !347, file: !84, line: 647, baseType: !22, size: 8, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !347, file: !84, line: 647, baseType: !22, size: 8, offset: 72)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !347, file: !84, line: 647, baseType: !36, size: 16, offset: 80)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !347, file: !84, line: 647, baseType: !36, size: 16, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !347, file: !84, line: 648, baseType: !355, size: 512, offset: 128)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 512, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 8)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !266, file: !84, line: 688, baseType: !359, size: 320)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !84, line: 669, size: 320, elements: !360)
!360 = !{!361, !362, !363, !364, !365, !366, !367, !368, !369}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !359, file: !84, line: 670, baseType: !20, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !359, file: !84, line: 670, baseType: !22, size: 8, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !359, file: !84, line: 670, baseType: !22, size: 8, offset: 72)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !359, file: !84, line: 670, baseType: !36, size: 16, offset: 80)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !359, file: !84, line: 670, baseType: !36, size: 16, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !359, file: !84, line: 671, baseType: !22, size: 8, offset: 112)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !359, file: !84, line: 672, baseType: !82, size: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !359, file: !84, line: 673, baseType: !32, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !359, file: !84, line: 674, baseType: !370, size: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !84, line: 660, size: 128, elements: !372)
!372 = !{!373, !379}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !371, file: !84, line: 661, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !6, line: 1061, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !378, !7, !20}
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6, line: 424, baseType: !20)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !371, file: !84, line: 662, baseType: !20, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !175, file: !84, line: 918, baseType: !183, size: 64, offset: 512)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !175, file: !84, line: 919, baseType: !7, size: 32, offset: 576)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !150, file: !151, line: 61, baseType: !7, size: 32, offset: 1088)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !150, file: !151, line: 62, baseType: !7, size: 32, offset: 1120)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !150, file: !151, line: 63, baseType: !36, size: 16, offset: 1152)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !150, file: !151, line: 64, baseType: !22, size: 8, offset: 1168)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !150, file: !151, line: 66, baseType: !387, size: 2688, offset: 1216)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 2688, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 7)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !150, file: !151, line: 67, baseType: !391, size: 3072, offset: 3904)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 3072, elements: !356)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !150, file: !151, line: 68, baseType: !393, size: 576, offset: 6976)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 576, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 9)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !150, file: !151, line: 69, baseType: !114, size: 64, offset: 7552)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !150, file: !151, line: 71, baseType: !77, size: 64, offset: 7616)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !150, file: !151, line: 72, baseType: !114, size: 64, offset: 7680)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !150, file: !151, line: 73, baseType: !265, size: 64, offset: 7744)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !150, file: !151, line: 74, baseType: !82, size: 64, offset: 7808)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !150, file: !151, line: 75, baseType: !32, size: 64, offset: 7872)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !150, file: !151, line: 76, baseType: !82, size: 64, offset: 7936)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !150, file: !151, line: 77, baseType: !183, size: 64, offset: 8000)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !150, file: !151, line: 78, baseType: !32, size: 64, offset: 8064)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !150, file: !151, line: 79, baseType: !82, size: 64, offset: 8128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !150, file: !151, line: 80, baseType: !65, size: 64, offset: 8192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !150, file: !151, line: 81, baseType: !183, size: 64, offset: 8256)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !150, file: !151, line: 82, baseType: !409, size: 64, offset: 8320)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !84, line: 718, size: 128, elements: !412)
!412 = !{!413, !414, !415, !416, !417, !418}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !411, file: !84, line: 722, baseType: !7, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !411, file: !84, line: 723, baseType: !7, size: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !411, file: !84, line: 724, baseType: !36, size: 16, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !411, file: !84, line: 725, baseType: !22, size: 8, offset: 80)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !411, file: !84, line: 726, baseType: !22, size: 8, offset: 88)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !411, file: !84, line: 727, baseType: !22, size: 8, offset: 96)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !150, file: !151, line: 83, baseType: !183, size: 64, offset: 8384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !150, file: !151, line: 84, baseType: !32, size: 64, offset: 8448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !150, file: !151, line: 85, baseType: !265, size: 64, offset: 8512)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !150, file: !151, line: 86, baseType: !32, size: 64, offset: 8576)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !150, file: !151, line: 87, baseType: !265, size: 64, offset: 8640)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !150, file: !151, line: 88, baseType: !183, size: 64, offset: 8704)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !150, file: !151, line: 89, baseType: !183, size: 64, offset: 8768)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !150, file: !151, line: 90, baseType: !427, size: 64, offset: 8832)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !150, file: !151, line: 91, baseType: !429, size: 64, offset: 8896)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !84, line: 652, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!5, !149, !433}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !150, file: !151, line: 92, baseType: !435, size: 64, offset: 8960)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !84, line: 656, baseType: !146)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !142, file: !14, line: 153, baseType: !32, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !128, file: !14, line: 156, baseType: !7, size: 32, offset: 384)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !128, file: !14, line: 157, baseType: !103, size: 16, offset: 416)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !128, file: !14, line: 158, baseType: !22, size: 8, offset: 432)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !26, file: !14, line: 377, baseType: !441, size: 576)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !14, line: 122, size: 576, elements: !442)
!442 = !{!443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !441, file: !14, line: 123, baseType: !32, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !441, file: !14, line: 123, baseType: !22, size: 8, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !441, file: !14, line: 123, baseType: !22, size: 8, offset: 72)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !441, file: !14, line: 123, baseType: !36, size: 16, offset: 80)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !441, file: !14, line: 123, baseType: !22, size: 8, offset: 96)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !441, file: !14, line: 123, baseType: !22, size: 8, offset: 104)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !441, file: !14, line: 124, baseType: !36, size: 16, offset: 112)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !441, file: !14, line: 125, baseType: !20, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !441, file: !14, line: 126, baseType: !53, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !441, file: !14, line: 127, baseType: !427, size: 64, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !441, file: !14, line: 128, baseType: !32, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !441, file: !14, line: 129, baseType: !32, size: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !441, file: !14, line: 130, baseType: !82, size: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !441, file: !14, line: 131, baseType: !22, size: 8, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !26, file: !14, line: 378, baseType: !458, size: 512)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !14, line: 134, size: 512, elements: !459)
!459 = !{!460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !471, !472}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !458, file: !14, line: 135, baseType: !32, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !458, file: !14, line: 135, baseType: !22, size: 8, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !458, file: !14, line: 135, baseType: !22, size: 8, offset: 72)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !458, file: !14, line: 135, baseType: !36, size: 16, offset: 80)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !458, file: !14, line: 135, baseType: !22, size: 8, offset: 96)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !458, file: !14, line: 135, baseType: !22, size: 8, offset: 104)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !458, file: !14, line: 136, baseType: !82, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !458, file: !14, line: 137, baseType: !32, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !458, file: !14, line: 138, baseType: !32, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !458, file: !14, line: 139, baseType: !470, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !53)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !458, file: !14, line: 140, baseType: !7, size: 32, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !458, file: !14, line: 141, baseType: !20, size: 64, offset: 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !26, file: !14, line: 379, baseType: !474, size: 320)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !14, line: 185, size: 320, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !485}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !474, file: !14, line: 186, baseType: !32, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !474, file: !14, line: 186, baseType: !22, size: 8, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !474, file: !14, line: 186, baseType: !22, size: 8, offset: 72)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !474, file: !14, line: 186, baseType: !36, size: 16, offset: 80)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !14, line: 186, baseType: !22, size: 8, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !474, file: !14, line: 186, baseType: !482, size: 128, offset: 128)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 128, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 2)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !474, file: !14, line: 186, baseType: !32, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !26, file: !14, line: 380, baseType: !487, size: 384)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !14, line: 188, size: 384, elements: !488)
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !487, file: !14, line: 189, baseType: !32, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !487, file: !14, line: 189, baseType: !22, size: 8, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !487, file: !14, line: 189, baseType: !22, size: 8, offset: 72)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !487, file: !14, line: 189, baseType: !36, size: 16, offset: 80)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !487, file: !14, line: 189, baseType: !22, size: 8, offset: 96)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !487, file: !14, line: 190, baseType: !482, size: 128, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !487, file: !14, line: 190, baseType: !32, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !487, file: !14, line: 190, baseType: !497, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !84, line: 480, size: 576, elements: !499)
!499 = !{!500, !501, !502, !503, !511, !526, !558, !559, !560, !561, !562, !563}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !498, file: !84, line: 481, baseType: !82, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !498, file: !84, line: 482, baseType: !497, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !498, file: !84, line: 483, baseType: !497, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !498, file: !84, line: 484, baseType: !504, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !84, line: 497, size: 256, elements: !506)
!506 = !{!507, !508, !509, !510}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !505, file: !84, line: 498, baseType: !504, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !505, file: !84, line: 499, baseType: !504, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !505, file: !84, line: 500, baseType: !497, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !505, file: !84, line: 501, baseType: !7, size: 32, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !498, file: !84, line: 485, baseType: !512, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !84, line: 466, size: 320, elements: !514)
!514 = !{!515, !520, !521, !522, !523, !524, !525}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !513, file: !84, line: 467, baseType: !516, size: 128)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !84, line: 459, size: 128, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !516, file: !84, line: 460, baseType: !22, size: 8)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !516, file: !84, line: 461, baseType: !53, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !513, file: !84, line: 468, baseType: !516, size: 128, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !513, file: !84, line: 469, baseType: !36, size: 16, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !513, file: !84, line: 470, baseType: !22, size: 8, offset: 272)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !513, file: !84, line: 471, baseType: !22, size: 8, offset: 280)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !513, file: !84, line: 472, baseType: !22, size: 8, offset: 288)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !513, file: !84, line: 473, baseType: !22, size: 8, offset: 296)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !498, file: !84, line: 486, baseType: !527, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !84, line: 448, size: 192, elements: !529)
!529 = !{!530, !553, !554, !555, !556, !557}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !528, file: !84, line: 449, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !84, line: 438, size: 64, elements: !532)
!532 = !{!533, !534, !547}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !531, file: !84, line: 439, baseType: !82, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !531, file: !84, line: 440, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !84, line: 419, size: 256, elements: !537)
!537 = !{!538, !543, !544, !545, !546}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !536, file: !84, line: 420, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !6, line: 1058, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!7, !378, !7, !20}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !536, file: !84, line: 421, baseType: !20, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !536, file: !84, line: 422, baseType: !82, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !536, file: !84, line: 423, baseType: !22, size: 8, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !536, file: !84, line: 424, baseType: !22, size: 8, offset: 200)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !531, file: !84, line: 441, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !84, line: 429, size: 128, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !549, file: !84, line: 430, baseType: !82, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !549, file: !84, line: 431, baseType: !548, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !528, file: !84, line: 450, baseType: !512, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !528, file: !84, line: 451, baseType: !22, size: 8, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !528, file: !84, line: 452, baseType: !22, size: 8, offset: 136)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !528, file: !84, line: 453, baseType: !22, size: 8, offset: 144)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !528, file: !84, line: 454, baseType: !22, size: 8, offset: 152)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !498, file: !84, line: 487, baseType: !53, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !498, file: !84, line: 488, baseType: !7, size: 32, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !498, file: !84, line: 489, baseType: !36, size: 16, offset: 480)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !498, file: !84, line: 490, baseType: !36, size: 16, offset: 496)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !498, file: !84, line: 491, baseType: !22, size: 8, offset: 512)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !498, file: !84, line: 492, baseType: !22, size: 8, offset: 520)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !26, file: !14, line: 381, baseType: !565, size: 384)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !14, line: 193, size: 384, elements: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !565, file: !14, line: 194, baseType: !32, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !565, file: !14, line: 194, baseType: !22, size: 8, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !565, file: !14, line: 194, baseType: !22, size: 8, offset: 72)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !565, file: !14, line: 194, baseType: !36, size: 16, offset: 80)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !565, file: !14, line: 194, baseType: !22, size: 8, offset: 96)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !565, file: !14, line: 194, baseType: !482, size: 128, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !565, file: !14, line: 194, baseType: !32, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !565, file: !14, line: 194, baseType: !7, size: 32, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !565, file: !14, line: 195, baseType: !7, size: 32, offset: 352)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !26, file: !14, line: 382, baseType: !577, size: 384)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !14, line: 198, size: 384, elements: !578)
!578 = !{!579, !580, !581, !582, !583, !584, !585, !586, !587, !588}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !577, file: !14, line: 199, baseType: !32, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !577, file: !14, line: 199, baseType: !22, size: 8, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !577, file: !14, line: 199, baseType: !22, size: 8, offset: 72)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !577, file: !14, line: 199, baseType: !36, size: 16, offset: 80)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !577, file: !14, line: 199, baseType: !22, size: 8, offset: 96)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !577, file: !14, line: 201, baseType: !22, size: 8, offset: 104)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !577, file: !14, line: 202, baseType: !22, size: 8, offset: 112)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !577, file: !14, line: 203, baseType: !482, size: 128, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !577, file: !14, line: 203, baseType: !32, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !577, file: !14, line: 203, baseType: !589, size: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !53)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !26, file: !14, line: 383, baseType: !591, size: 320)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !14, line: 206, size: 320, elements: !592)
!592 = !{!593, !594, !595, !596, !597, !598, !599}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !591, file: !14, line: 207, baseType: !32, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !591, file: !14, line: 207, baseType: !22, size: 8, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !591, file: !14, line: 207, baseType: !22, size: 8, offset: 72)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !591, file: !14, line: 207, baseType: !36, size: 16, offset: 80)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !591, file: !14, line: 207, baseType: !22, size: 8, offset: 96)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !591, file: !14, line: 207, baseType: !482, size: 128, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !591, file: !14, line: 207, baseType: !32, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !26, file: !14, line: 384, baseType: !601, size: 384)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !14, line: 234, size: 384, elements: !602)
!602 = !{!603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !601, file: !14, line: 235, baseType: !32, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !601, file: !14, line: 235, baseType: !22, size: 8, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !601, file: !14, line: 235, baseType: !22, size: 8, offset: 72)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !601, file: !14, line: 235, baseType: !36, size: 16, offset: 80)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !601, file: !14, line: 235, baseType: !22, size: 8, offset: 96)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !601, file: !14, line: 235, baseType: !22, size: 8, offset: 104)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !601, file: !14, line: 235, baseType: !22, size: 8, offset: 112)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !601, file: !14, line: 235, baseType: !22, size: 8, offset: 120)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !601, file: !14, line: 235, baseType: !82, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !601, file: !14, line: 235, baseType: !7, size: 32, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !601, file: !14, line: 235, baseType: !7, size: 32, offset: 224)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !601, file: !14, line: 235, baseType: !7, size: 32, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !601, file: !14, line: 235, baseType: !22, size: 8, offset: 288)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !601, file: !14, line: 235, baseType: !22, size: 8, offset: 296)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !601, file: !14, line: 235, baseType: !32, size: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !26, file: !14, line: 385, baseType: !619, size: 576)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !14, line: 238, size: 576, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !619, file: !14, line: 239, baseType: !32, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !619, file: !14, line: 239, baseType: !22, size: 8, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !14, line: 239, baseType: !22, size: 8, offset: 72)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !619, file: !14, line: 239, baseType: !36, size: 16, offset: 80)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !14, line: 239, baseType: !22, size: 8, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !619, file: !14, line: 239, baseType: !22, size: 8, offset: 104)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !619, file: !14, line: 239, baseType: !22, size: 8, offset: 112)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !619, file: !14, line: 239, baseType: !22, size: 8, offset: 120)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !619, file: !14, line: 239, baseType: !82, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !619, file: !14, line: 239, baseType: !7, size: 32, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !619, file: !14, line: 239, baseType: !7, size: 32, offset: 224)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !619, file: !14, line: 239, baseType: !7, size: 32, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !619, file: !14, line: 239, baseType: !22, size: 8, offset: 288)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !619, file: !14, line: 239, baseType: !22, size: 8, offset: 296)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !619, file: !14, line: 239, baseType: !36, size: 16, offset: 304)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !619, file: !14, line: 240, baseType: !32, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !619, file: !14, line: 241, baseType: !77, size: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !619, file: !14, line: 242, baseType: !36, size: 16, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !619, file: !14, line: 243, baseType: !77, size: 64, offset: 512)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !26, file: !14, line: 386, baseType: !641, size: 384)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !14, line: 263, size: 384, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !641, file: !14, line: 264, baseType: !32, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !641, file: !14, line: 264, baseType: !22, size: 8, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !641, file: !14, line: 264, baseType: !22, size: 8, offset: 72)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !641, file: !14, line: 264, baseType: !36, size: 16, offset: 80)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !641, file: !14, line: 264, baseType: !22, size: 8, offset: 96)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !641, file: !14, line: 264, baseType: !22, size: 8, offset: 104)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !641, file: !14, line: 264, baseType: !22, size: 8, offset: 112)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !641, file: !14, line: 264, baseType: !22, size: 8, offset: 120)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !641, file: !14, line: 264, baseType: !82, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !641, file: !14, line: 264, baseType: !7, size: 32, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !641, file: !14, line: 264, baseType: !7, size: 32, offset: 224)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !641, file: !14, line: 264, baseType: !7, size: 32, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !641, file: !14, line: 264, baseType: !22, size: 8, offset: 288)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !641, file: !14, line: 264, baseType: !22, size: 8, offset: 296)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !641, file: !14, line: 264, baseType: !22, size: 8, offset: 304)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !641, file: !14, line: 265, baseType: !32, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !26, file: !14, line: 387, baseType: !660, size: 448)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !14, line: 246, size: 448, elements: !661)
!661 = !{!662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !660, file: !14, line: 247, baseType: !32, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !660, file: !14, line: 247, baseType: !22, size: 8, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !660, file: !14, line: 247, baseType: !22, size: 8, offset: 72)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !660, file: !14, line: 247, baseType: !36, size: 16, offset: 80)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !660, file: !14, line: 247, baseType: !22, size: 8, offset: 96)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !660, file: !14, line: 247, baseType: !22, size: 8, offset: 104)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !660, file: !14, line: 247, baseType: !22, size: 8, offset: 112)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !660, file: !14, line: 247, baseType: !22, size: 8, offset: 120)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !660, file: !14, line: 247, baseType: !82, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !660, file: !14, line: 247, baseType: !7, size: 32, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !660, file: !14, line: 247, baseType: !7, size: 32, offset: 224)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !660, file: !14, line: 247, baseType: !7, size: 32, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !660, file: !14, line: 247, baseType: !22, size: 8, offset: 288)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !660, file: !14, line: 247, baseType: !22, size: 8, offset: 296)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !660, file: !14, line: 247, baseType: !32, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !660, file: !14, line: 248, baseType: !32, size: 64, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !26, file: !14, line: 388, baseType: !679, size: 448)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !14, line: 251, size: 448, elements: !680)
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !679, file: !14, line: 252, baseType: !32, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !679, file: !14, line: 252, baseType: !22, size: 8, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !679, file: !14, line: 252, baseType: !22, size: 8, offset: 72)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !679, file: !14, line: 252, baseType: !36, size: 16, offset: 80)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !679, file: !14, line: 252, baseType: !22, size: 8, offset: 96)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !679, file: !14, line: 252, baseType: !22, size: 8, offset: 104)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !679, file: !14, line: 252, baseType: !22, size: 8, offset: 112)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !679, file: !14, line: 252, baseType: !22, size: 8, offset: 120)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !679, file: !14, line: 252, baseType: !82, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !679, file: !14, line: 252, baseType: !7, size: 32, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !679, file: !14, line: 252, baseType: !7, size: 32, offset: 224)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !679, file: !14, line: 252, baseType: !7, size: 32, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !679, file: !14, line: 252, baseType: !22, size: 8, offset: 288)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !679, file: !14, line: 252, baseType: !22, size: 8, offset: 296)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !679, file: !14, line: 257, baseType: !32, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !679, file: !14, line: 258, baseType: !32, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !26, file: !14, line: 389, baseType: !698, size: 512)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !14, line: 274, size: 512, elements: !699)
!699 = !{!700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !698, file: !14, line: 275, baseType: !32, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !698, file: !14, line: 275, baseType: !22, size: 8, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !698, file: !14, line: 275, baseType: !22, size: 8, offset: 72)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !698, file: !14, line: 275, baseType: !36, size: 16, offset: 80)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !14, line: 275, baseType: !22, size: 8, offset: 96)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !698, file: !14, line: 275, baseType: !82, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !698, file: !14, line: 276, baseType: !7, size: 32, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !698, file: !14, line: 277, baseType: !374, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !698, file: !14, line: 278, baseType: !20, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !698, file: !14, line: 279, baseType: !482, size: 128, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !26, file: !14, line: 390, baseType: !711, size: 576)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !14, line: 282, size: 576, elements: !712)
!712 = !{!713, !714, !715, !716, !717, !718, !719, !720, !726, !727, !728, !729, !735, !736}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !711, file: !14, line: 283, baseType: !32, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !711, file: !14, line: 283, baseType: !22, size: 8, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !711, file: !14, line: 283, baseType: !22, size: 8, offset: 72)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !711, file: !14, line: 283, baseType: !36, size: 16, offset: 80)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !14, line: 283, baseType: !22, size: 8, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !711, file: !14, line: 283, baseType: !22, size: 8, offset: 104)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !711, file: !14, line: 284, baseType: !22, size: 8, offset: 112)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !711, file: !14, line: 285, baseType: !721, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !6, line: 1093, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!5, !7, !470, !7, !725, !20, !20}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !711, file: !14, line: 286, baseType: !82, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !711, file: !14, line: 287, baseType: !20, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !711, file: !14, line: 288, baseType: !20, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !711, file: !14, line: 289, baseType: !730, size: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !6, line: 1126, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!5, !378, !7, !20, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !711, file: !14, line: 290, baseType: !32, size: 64, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !711, file: !14, line: 291, baseType: !32, size: 64, offset: 512)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !26, file: !14, line: 391, baseType: !738, size: 512)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !14, line: 309, size: 512, elements: !739)
!739 = !{!740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !738, file: !14, line: 310, baseType: !32, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !738, file: !14, line: 310, baseType: !22, size: 8, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !738, file: !14, line: 310, baseType: !22, size: 8, offset: 72)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !738, file: !14, line: 310, baseType: !36, size: 16, offset: 80)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !738, file: !14, line: 310, baseType: !22, size: 8, offset: 96)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !738, file: !14, line: 310, baseType: !22, size: 8, offset: 104)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !738, file: !14, line: 311, baseType: !22, size: 8, offset: 112)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !738, file: !14, line: 312, baseType: !22, size: 8, offset: 120)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !738, file: !14, line: 313, baseType: !20, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !738, file: !14, line: 314, baseType: !82, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !738, file: !14, line: 315, baseType: !114, size: 64, offset: 256)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !738, file: !14, line: 316, baseType: !77, size: 64, offset: 320)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !738, file: !14, line: 317, baseType: !77, size: 64, offset: 384)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !738, file: !14, line: 318, baseType: !7, size: 32, offset: 448)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !26, file: !14, line: 392, baseType: !755, size: 448)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !14, line: 342, size: 448, elements: !756)
!756 = !{!757, !758, !759, !760, !761, !762, !763, !764, !765, !766}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !755, file: !14, line: 343, baseType: !32, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !755, file: !14, line: 343, baseType: !22, size: 8, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !755, file: !14, line: 343, baseType: !22, size: 8, offset: 72)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !755, file: !14, line: 343, baseType: !36, size: 16, offset: 80)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !14, line: 343, baseType: !22, size: 8, offset: 96)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !755, file: !14, line: 343, baseType: !82, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !755, file: !14, line: 344, baseType: !82, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !755, file: !14, line: 345, baseType: !20, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !755, file: !14, line: 346, baseType: !77, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !755, file: !14, line: 347, baseType: !7, size: 32, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !26, file: !14, line: 393, baseType: !768, size: 256)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !14, line: 352, size: 256, elements: !769)
!769 = !{!770, !771, !772, !773, !774, !775, !780}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !768, file: !14, line: 353, baseType: !32, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !768, file: !14, line: 353, baseType: !22, size: 8, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !768, file: !14, line: 353, baseType: !22, size: 8, offset: 72)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !768, file: !14, line: 353, baseType: !36, size: 16, offset: 80)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !768, file: !14, line: 353, baseType: !22, size: 8, offset: 96)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !768, file: !14, line: 353, baseType: !776, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !6, line: 1064, baseType: !777)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !378, !20}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !768, file: !14, line: 354, baseType: !20, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !26, file: !14, line: 394, baseType: !782, size: 192)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !14, line: 359, size: 192, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !782, file: !14, line: 360, baseType: !32, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !782, file: !14, line: 360, baseType: !22, size: 8, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !782, file: !14, line: 360, baseType: !22, size: 8, offset: 72)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !782, file: !14, line: 360, baseType: !36, size: 16, offset: 80)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !14, line: 360, baseType: !22, size: 8, offset: 96)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !782, file: !14, line: 360, baseType: !32, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !26, file: !14, line: 401, baseType: !83, size: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !13, file: !14, line: 437, baseType: !83, size: 384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !13, file: !14, line: 438, baseType: !184, size: 1600)
!793 = !{!794, !799, !804, !809, !0}
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(scope: null, file: !3, line: 53, type: !796, isLocal: true, isDefinition: true)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 168, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 21)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !3, line: 61, type: !801, isLocal: true, isDefinition: true)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 320, elements: !802)
!802 = !{!803}
!803 = !DISubrange(count: 40)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !806, isLocal: true, isDefinition: true)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 184, elements: !807)
!807 = !{!808}
!808 = !DISubrange(count: 23)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !3, line: 253, type: !811, isLocal: true, isDefinition: true)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 112, elements: !812)
!812 = !{!813}
!813 = !DISubrange(count: 14)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 72, elements: !394)
!815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!816 = !{i32 7, !"Dwarf Version", i32 5}
!817 = !{i32 2, !"Debug Info Version", i32 3}
!818 = !{i32 1, !"wchar_size", i32 2}
!819 = !{i32 8, !"cf-protection-branch", i32 1}
!820 = !{i32 4, !"function_return_thunk_extern", i32 1}
!821 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!822 = !{i32 1, !"Code Model", i32 2}
!823 = !{i32 1, !"override-stack-alignment", i32 8}
!824 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!825 = distinct !DISubprogram(name: "acpi_ns_attach_object", scope: !3, file: !3, line: 37, type: !826, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !829)
!826 = !DISubroutineType(types: !827)
!827 = !{!5, !82, !32, !828}
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !6, line: 644, baseType: !7)
!829 = !{!830, !831, !832, !833, !834, !835}
!830 = !DILocalVariable(name: "node", arg: 1, scope: !825, file: !3, line: 37, type: !82)
!831 = !DILocalVariable(name: "object", arg: 2, scope: !825, file: !3, line: 38, type: !32)
!832 = !DILocalVariable(name: "type", arg: 3, scope: !825, file: !3, line: 38, type: !828)
!833 = !DILocalVariable(name: "obj_desc", scope: !825, file: !3, line: 40, type: !32)
!834 = !DILocalVariable(name: "last_obj_desc", scope: !825, file: !3, line: 41, type: !32)
!835 = !DILocalVariable(name: "object_type", scope: !825, file: !3, line: 42, type: !828)
!836 = !DILocation(line: 37, column: 51, scope: !825)
!837 = !DILocation(line: 38, column: 36, scope: !825)
!838 = !DILocation(line: 38, column: 61, scope: !825)
!839 = !DILocation(line: 40, column: 2, scope: !825)
!840 = !DILocation(line: 40, column: 29, scope: !825)
!841 = !DILocation(line: 41, column: 2, scope: !825)
!842 = !DILocation(line: 41, column: 29, scope: !825)
!843 = !DILocation(line: 42, column: 2, scope: !825)
!844 = !DILocation(line: 42, column: 19, scope: !825)
!845 = !DILocation(line: 49, column: 7, scope: !846)
!846 = distinct !DILexicalBlock(scope: !825, file: !3, line: 49, column: 6)
!847 = !DILocation(line: 49, column: 6, scope: !825)
!848 = !DILocation(line: 53, column: 3, scope: !849)
!849 = distinct !DILexicalBlock(scope: !846, file: !3, line: 49, column: 13)
!850 = !DILocation(line: 54, column: 3, scope: !849)
!851 = !DILocation(line: 57, column: 7, scope: !852)
!852 = distinct !DILexicalBlock(scope: !825, file: !3, line: 57, column: 6)
!853 = !DILocation(line: 57, column: 14, scope: !852)
!854 = !DILocation(line: 57, column: 35, scope: !852)
!855 = !DILocation(line: 57, column: 32, scope: !852)
!856 = !DILocation(line: 57, column: 6, scope: !825)
!857 = !DILocation(line: 61, column: 3, scope: !858)
!858 = distinct !DILexicalBlock(scope: !852, file: !3, line: 57, column: 42)
!859 = !DILocation(line: 63, column: 3, scope: !858)
!860 = !DILocation(line: 66, column: 6, scope: !861)
!861 = distinct !DILexicalBlock(scope: !825, file: !3, line: 66, column: 6)
!862 = !DILocation(line: 66, column: 37, scope: !861)
!863 = !DILocation(line: 66, column: 6, scope: !825)
!864 = !DILocation(line: 70, column: 3, scope: !865)
!865 = distinct !DILexicalBlock(scope: !861, file: !3, line: 66, column: 62)
!866 = !DILocation(line: 72, column: 3, scope: !865)
!867 = !DILocation(line: 77, column: 6, scope: !868)
!868 = distinct !DILexicalBlock(scope: !825, file: !3, line: 77, column: 6)
!869 = !DILocation(line: 77, column: 12, scope: !868)
!870 = !DILocation(line: 77, column: 22, scope: !868)
!871 = !DILocation(line: 77, column: 19, scope: !868)
!872 = !DILocation(line: 77, column: 6, scope: !825)
!873 = !DILocation(line: 82, column: 3, scope: !874)
!874 = distinct !DILexicalBlock(scope: !868, file: !3, line: 77, column: 30)
!875 = !DILocation(line: 87, column: 7, scope: !876)
!876 = distinct !DILexicalBlock(scope: !825, file: !3, line: 87, column: 6)
!877 = !DILocation(line: 87, column: 6, scope: !825)
!878 = !DILocation(line: 88, column: 12, scope: !879)
!879 = distinct !DILexicalBlock(scope: !876, file: !3, line: 87, column: 15)
!880 = !DILocation(line: 89, column: 15, scope: !879)
!881 = !DILocation(line: 90, column: 2, scope: !879)
!882 = !DILocation(line: 96, column: 12, scope: !883)
!883 = distinct !DILexicalBlock(scope: !876, file: !3, line: 96, column: 11)
!884 = !DILocation(line: 96, column: 45, scope: !883)
!885 = !DILocation(line: 96, column: 70, scope: !883)
!886 = !DILocation(line: 97, column: 35, scope: !883)
!887 = !DILocation(line: 97, column: 44, scope: !883)
!888 = !DILocation(line: 97, column: 4, scope: !883)
!889 = !DILocation(line: 96, column: 11, scope: !876)
!890 = !DILocation(line: 102, column: 45, scope: !891)
!891 = distinct !DILexicalBlock(scope: !883, file: !3, line: 97, column: 52)
!892 = !DILocation(line: 102, column: 54, scope: !891)
!893 = !DILocation(line: 102, column: 12, scope: !891)
!894 = !DILocation(line: 103, column: 48, scope: !891)
!895 = !DILocation(line: 103, column: 57, scope: !891)
!896 = !DILocation(line: 103, column: 17, scope: !891)
!897 = !DILocation(line: 103, column: 15, scope: !891)
!898 = !DILocation(line: 104, column: 2, scope: !891)
!899 = !DILocation(line: 111, column: 43, scope: !900)
!900 = distinct !DILexicalBlock(scope: !883, file: !3, line: 110, column: 7)
!901 = !DILocation(line: 111, column: 12, scope: !900)
!902 = !DILocation(line: 115, column: 17, scope: !900)
!903 = !DILocation(line: 115, column: 15, scope: !900)
!904 = !DILocation(line: 123, column: 6, scope: !905)
!905 = distinct !DILexicalBlock(scope: !825, file: !3, line: 123, column: 6)
!906 = !DILocation(line: 123, column: 12, scope: !905)
!907 = !DILocation(line: 123, column: 6, scope: !825)
!908 = !DILocation(line: 124, column: 25, scope: !909)
!909 = distinct !DILexicalBlock(scope: !905, file: !3, line: 123, column: 20)
!910 = !DILocation(line: 124, column: 3, scope: !909)
!911 = !DILocation(line: 125, column: 2, scope: !909)
!912 = !DILocation(line: 127, column: 6, scope: !913)
!913 = distinct !DILexicalBlock(scope: !825, file: !3, line: 127, column: 6)
!914 = !DILocation(line: 127, column: 6, scope: !825)
!915 = !DILocation(line: 132, column: 25, scope: !916)
!916 = distinct !DILexicalBlock(scope: !913, file: !3, line: 127, column: 16)
!917 = !DILocation(line: 132, column: 3, scope: !916)
!918 = !DILocation(line: 138, column: 19, scope: !916)
!919 = !DILocation(line: 138, column: 17, scope: !916)
!920 = !DILocation(line: 139, column: 3, scope: !916)
!921 = !DILocation(line: 139, column: 10, scope: !916)
!922 = !DILocation(line: 139, column: 32, scope: !916)
!923 = !DILocation(line: 140, column: 20, scope: !924)
!924 = distinct !DILexicalBlock(scope: !916, file: !3, line: 139, column: 45)
!925 = !DILocation(line: 140, column: 42, scope: !924)
!926 = !DILocation(line: 140, column: 18, scope: !924)
!927 = distinct !{!927, !920, !928, !929, !930}
!928 = !DILocation(line: 141, column: 3, scope: !916)
!929 = !{!"llvm.loop.mustprogress"}
!930 = !{!"llvm.loop.unroll.disable"}
!931 = !DILocation(line: 145, column: 39, scope: !916)
!932 = !DILocation(line: 145, column: 45, scope: !916)
!933 = !DILocation(line: 145, column: 3, scope: !916)
!934 = !DILocation(line: 145, column: 25, scope: !916)
!935 = !DILocation(line: 145, column: 37, scope: !916)
!936 = !DILocation(line: 146, column: 2, scope: !916)
!937 = !DILocation(line: 148, column: 20, scope: !825)
!938 = !DILocation(line: 148, column: 15, scope: !825)
!939 = !DILocation(line: 148, column: 2, scope: !825)
!940 = !DILocation(line: 148, column: 8, scope: !825)
!941 = !DILocation(line: 148, column: 13, scope: !825)
!942 = !DILocation(line: 149, column: 17, scope: !825)
!943 = !DILocation(line: 149, column: 2, scope: !825)
!944 = !DILocation(line: 149, column: 8, scope: !825)
!945 = !DILocation(line: 149, column: 15, scope: !825)
!946 = !DILocation(line: 151, column: 2, scope: !825)
!947 = !DILocation(line: 152, column: 1, scope: !825)
!948 = !DISubprogram(name: "acpi_error", scope: !949, file: !949, line: 901, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!949 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!950 = !DISubroutineType(types: !951)
!951 = !{null, !952, !7, !952, null}
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!953 = !DISubprogram(name: "acpi_ut_get_descriptor_name", scope: !954, file: !954, line: 229, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!954 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!955 = !DISubroutineType(types: !956)
!956 = !{!952, !20}
!957 = distinct !DISubprogram(name: "acpi_ns_detach_object", scope: !3, file: !3, line: 168, type: !958, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !960)
!958 = !DISubroutineType(types: !959)
!959 = !{null, !82}
!960 = !{!961, !962}
!961 = !DILocalVariable(name: "node", arg: 1, scope: !957, file: !3, line: 168, type: !82)
!962 = !DILocalVariable(name: "obj_desc", scope: !957, file: !3, line: 170, type: !32)
!963 = !DILocation(line: 168, column: 56, scope: !957)
!964 = !DILocation(line: 170, column: 2, scope: !957)
!965 = !DILocation(line: 170, column: 29, scope: !957)
!966 = !DILocation(line: 174, column: 13, scope: !957)
!967 = !DILocation(line: 174, column: 19, scope: !957)
!968 = !DILocation(line: 174, column: 11, scope: !957)
!969 = !DILocation(line: 176, column: 7, scope: !970)
!970 = distinct !DILexicalBlock(scope: !957, file: !3, line: 176, column: 6)
!971 = !DILocation(line: 176, column: 16, scope: !970)
!972 = !DILocation(line: 176, column: 20, scope: !970)
!973 = !DILocation(line: 176, column: 37, scope: !970)
!974 = !DILocation(line: 176, column: 42, scope: !970)
!975 = !DILocation(line: 176, column: 6, scope: !957)
!976 = !DILocation(line: 177, column: 3, scope: !977)
!977 = distinct !DILexicalBlock(scope: !970, file: !3, line: 176, column: 68)
!978 = !DILocation(line: 180, column: 6, scope: !979)
!979 = distinct !DILexicalBlock(scope: !957, file: !3, line: 180, column: 6)
!980 = !DILocation(line: 180, column: 12, scope: !979)
!981 = !DILocation(line: 180, column: 18, scope: !979)
!982 = !DILocation(line: 180, column: 6, scope: !957)
!983 = !DILocation(line: 184, column: 7, scope: !984)
!984 = distinct !DILexicalBlock(scope: !985, file: !3, line: 184, column: 7)
!985 = distinct !DILexicalBlock(scope: !979, file: !3, line: 180, column: 44)
!986 = !DILocation(line: 184, column: 24, scope: !984)
!987 = !DILocation(line: 184, column: 29, scope: !984)
!988 = !DILocation(line: 184, column: 7, scope: !985)
!989 = !DILocation(line: 185, column: 4, scope: !990)
!990 = distinct !DILexicalBlock(scope: !984, file: !3, line: 184, column: 50)
!991 = !DILocation(line: 186, column: 3, scope: !990)
!992 = !DILocation(line: 187, column: 2, scope: !985)
!993 = !DILocation(line: 189, column: 6, scope: !994)
!994 = distinct !DILexicalBlock(scope: !957, file: !3, line: 189, column: 6)
!995 = !DILocation(line: 189, column: 23, scope: !994)
!996 = !DILocation(line: 189, column: 28, scope: !994)
!997 = !DILocation(line: 189, column: 6, scope: !957)
!998 = !DILocation(line: 190, column: 32, scope: !999)
!999 = distinct !DILexicalBlock(scope: !994, file: !3, line: 189, column: 49)
!1000 = !DILocation(line: 190, column: 49, scope: !999)
!1001 = !DILocation(line: 190, column: 59, scope: !999)
!1002 = !DILocation(line: 190, column: 3, scope: !999)
!1003 = !DILocation(line: 191, column: 2, scope: !999)
!1004 = !DILocation(line: 195, column: 2, scope: !957)
!1005 = !DILocation(line: 195, column: 8, scope: !957)
!1006 = !DILocation(line: 195, column: 15, scope: !957)
!1007 = !DILocation(line: 196, column: 6, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !957, file: !3, line: 196, column: 6)
!1009 = !DILocation(line: 196, column: 41, scope: !1008)
!1010 = !DILocation(line: 196, column: 6, scope: !957)
!1011 = !DILocation(line: 200, column: 18, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 196, column: 68)
!1013 = !DILocation(line: 200, column: 35, scope: !1012)
!1014 = !DILocation(line: 200, column: 3, scope: !1012)
!1015 = !DILocation(line: 200, column: 9, scope: !1012)
!1016 = !DILocation(line: 200, column: 16, scope: !1012)
!1017 = !DILocation(line: 204, column: 7, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 204, column: 7)
!1019 = !DILocation(line: 204, column: 13, scope: !1018)
!1020 = !DILocation(line: 204, column: 20, scope: !1018)
!1021 = !DILocation(line: 205, column: 8, scope: !1018)
!1022 = !DILocation(line: 205, column: 14, scope: !1018)
!1023 = !DILocation(line: 205, column: 29, scope: !1018)
!1024 = !DILocation(line: 205, column: 34, scope: !1018)
!1025 = !DILocation(line: 204, column: 7, scope: !1012)
!1026 = !DILocation(line: 206, column: 19, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 205, column: 60)
!1028 = !DILocation(line: 206, column: 25, scope: !1027)
!1029 = !DILocation(line: 206, column: 40, scope: !1027)
!1030 = !DILocation(line: 206, column: 4, scope: !1027)
!1031 = !DILocation(line: 206, column: 10, scope: !1027)
!1032 = !DILocation(line: 206, column: 17, scope: !1027)
!1033 = !DILocation(line: 207, column: 3, scope: !1027)
!1034 = !DILocation(line: 213, column: 7, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 213, column: 7)
!1036 = !DILocation(line: 213, column: 24, scope: !1035)
!1037 = !DILocation(line: 213, column: 36, scope: !1035)
!1038 = !DILocation(line: 214, column: 9, scope: !1035)
!1039 = !DILocation(line: 214, column: 26, scope: !1035)
!1040 = !DILocation(line: 214, column: 47, scope: !1035)
!1041 = !DILocation(line: 214, column: 8, scope: !1035)
!1042 = !DILocation(line: 214, column: 52, scope: !1035)
!1043 = !DILocation(line: 213, column: 7, scope: !1012)
!1044 = !DILocation(line: 216, column: 4, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 215, column: 31)
!1046 = !DILocation(line: 216, column: 21, scope: !1045)
!1047 = !DILocation(line: 216, column: 33, scope: !1045)
!1048 = !DILocation(line: 217, column: 3, scope: !1045)
!1049 = !DILocation(line: 218, column: 2, scope: !1012)
!1050 = !DILocation(line: 222, column: 2, scope: !957)
!1051 = !DILocation(line: 222, column: 8, scope: !957)
!1052 = !DILocation(line: 222, column: 13, scope: !957)
!1053 = !DILocation(line: 229, column: 27, scope: !957)
!1054 = !DILocation(line: 229, column: 2, scope: !957)
!1055 = !DILocation(line: 230, column: 2, scope: !957)
!1056 = !DILocation(line: 231, column: 1, scope: !957)
!1057 = !DISubprogram(name: "acpi_ut_add_reference", scope: !954, file: !954, line: 367, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{null, !32}
!1060 = distinct !DISubprogram(name: "acpi_os_free", scope: !1061, file: !1061, line: 60, type: !1062, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1064)
!1061 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1062 = !DISubroutineType(types: !1063)
!1063 = !{null, !20}
!1064 = !{!1065}
!1065 = !DILocalVariable(name: "memory", arg: 1, scope: !1060, file: !1061, line: 60, type: !20)
!1066 = !DILocation(line: 60, column: 39, scope: !1060)
!1067 = !DILocation(line: 62, column: 8, scope: !1060)
!1068 = !DILocation(line: 62, column: 2, scope: !1060)
!1069 = !DILocation(line: 63, column: 1, scope: !1060)
!1070 = !DISubprogram(name: "acpi_ut_remove_address_range", scope: !954, file: !954, line: 694, type: !1071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !1073, !82}
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !6, line: 814, baseType: !22)
!1074 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !954, file: !954, line: 369, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1075 = distinct !DISubprogram(name: "acpi_ns_get_attached_object", scope: !3, file: !3, line: 246, type: !1076, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1078)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!32, !82}
!1078 = !{!1079}
!1079 = !DILocalVariable(name: "node", arg: 1, scope: !1075, file: !3, line: 248, type: !82)
!1080 = !DILocation(line: 248, column: 15, scope: !1075)
!1081 = !DILocation(line: 252, column: 7, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 252, column: 6)
!1083 = !DILocation(line: 252, column: 6, scope: !1075)
!1084 = !DILocation(line: 253, column: 3, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 252, column: 13)
!1086 = !DILocation(line: 254, column: 3, scope: !1085)
!1087 = !DILocation(line: 257, column: 7, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 257, column: 6)
!1089 = !DILocation(line: 257, column: 13, scope: !1088)
!1090 = !DILocation(line: 257, column: 20, scope: !1088)
!1091 = !DILocation(line: 258, column: 8, scope: !1088)
!1092 = !DILocation(line: 258, column: 47, scope: !1088)
!1093 = !DILocation(line: 259, column: 7, scope: !1088)
!1094 = !DILocation(line: 259, column: 11, scope: !1088)
!1095 = !DILocation(line: 259, column: 50, scope: !1088)
!1096 = !DILocation(line: 261, column: 6, scope: !1088)
!1097 = !DILocation(line: 261, column: 11, scope: !1088)
!1098 = !DILocation(line: 261, column: 17, scope: !1088)
!1099 = !DILocation(line: 261, column: 33, scope: !1088)
!1100 = !DILocation(line: 261, column: 10, scope: !1088)
!1101 = !DILocation(line: 261, column: 38, scope: !1088)
!1102 = !DILocation(line: 257, column: 6, scope: !1075)
!1103 = !DILocation(line: 262, column: 3, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 261, column: 64)
!1105 = !DILocation(line: 265, column: 2, scope: !1075)
!1106 = !DILocation(line: 266, column: 1, scope: !1075)
!1107 = !DISubprogram(name: "acpi_warning", scope: !949, file: !949, line: 912, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1108 = distinct !DISubprogram(name: "acpi_ns_get_secondary_object", scope: !3, file: !3, line: 281, type: !1109, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1111)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!32, !32}
!1111 = !{!1112}
!1112 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1108, file: !3, line: 283, type: !32)
!1113 = !DILocation(line: 283, column: 9, scope: !1108)
!1114 = !DILocation(line: 287, column: 8, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 287, column: 6)
!1116 = !DILocation(line: 287, column: 18, scope: !1115)
!1117 = !DILocation(line: 288, column: 7, scope: !1115)
!1118 = !DILocation(line: 288, column: 24, scope: !1115)
!1119 = !DILocation(line: 288, column: 29, scope: !1115)
!1120 = !DILocation(line: 288, column: 54, scope: !1115)
!1121 = !DILocation(line: 289, column: 8, scope: !1115)
!1122 = !DILocation(line: 289, column: 25, scope: !1115)
!1123 = !DILocation(line: 289, column: 38, scope: !1115)
!1124 = !DILocation(line: 290, column: 8, scope: !1115)
!1125 = !DILocation(line: 290, column: 25, scope: !1115)
!1126 = !DILocation(line: 290, column: 46, scope: !1115)
!1127 = !DILocation(line: 290, column: 7, scope: !1115)
!1128 = !DILocation(line: 290, column: 51, scope: !1115)
!1129 = !DILocation(line: 287, column: 6, scope: !1108)
!1130 = !DILocation(line: 292, column: 3, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 291, column: 30)
!1132 = !DILocation(line: 295, column: 2, scope: !1108)
!1133 = !DILocation(line: 296, column: 1, scope: !1108)
!1134 = distinct !DISubprogram(name: "acpi_ns_attach_data", scope: !3, file: !3, line: 313, type: !1135, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1137)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!5, !82, !776, !20}
!1137 = !{!1138, !1139, !1140, !1141, !1142, !1143}
!1138 = !DILocalVariable(name: "node", arg: 1, scope: !1134, file: !3, line: 313, type: !82)
!1139 = !DILocalVariable(name: "handler", arg: 2, scope: !1134, file: !3, line: 314, type: !776)
!1140 = !DILocalVariable(name: "data", arg: 3, scope: !1134, file: !3, line: 314, type: !20)
!1141 = !DILocalVariable(name: "prev_obj_desc", scope: !1134, file: !3, line: 316, type: !32)
!1142 = !DILocalVariable(name: "obj_desc", scope: !1134, file: !3, line: 317, type: !32)
!1143 = !DILocalVariable(name: "data_desc", scope: !1134, file: !3, line: 318, type: !32)
!1144 = !DILocation(line: 313, column: 49, scope: !1134)
!1145 = !DILocation(line: 314, column: 27, scope: !1134)
!1146 = !DILocation(line: 314, column: 42, scope: !1134)
!1147 = !DILocation(line: 316, column: 2, scope: !1134)
!1148 = !DILocation(line: 316, column: 29, scope: !1134)
!1149 = !DILocation(line: 317, column: 2, scope: !1134)
!1150 = !DILocation(line: 317, column: 29, scope: !1134)
!1151 = !DILocation(line: 318, column: 2, scope: !1134)
!1152 = !DILocation(line: 318, column: 29, scope: !1134)
!1153 = !DILocation(line: 322, column: 16, scope: !1134)
!1154 = !DILocation(line: 323, column: 13, scope: !1134)
!1155 = !DILocation(line: 323, column: 19, scope: !1134)
!1156 = !DILocation(line: 323, column: 11, scope: !1134)
!1157 = !DILocation(line: 324, column: 2, scope: !1134)
!1158 = !DILocation(line: 324, column: 9, scope: !1134)
!1159 = !DILocation(line: 325, column: 8, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 325, column: 7)
!1161 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 324, column: 19)
!1162 = !DILocation(line: 325, column: 25, scope: !1160)
!1163 = !DILocation(line: 325, column: 30, scope: !1160)
!1164 = !DILocation(line: 325, column: 55, scope: !1160)
!1165 = !DILocation(line: 326, column: 8, scope: !1160)
!1166 = !DILocation(line: 326, column: 23, scope: !1160)
!1167 = !DILocation(line: 326, column: 34, scope: !1160)
!1168 = !DILocation(line: 326, column: 31, scope: !1160)
!1169 = !DILocation(line: 325, column: 7, scope: !1161)
!1170 = !DILocation(line: 327, column: 4, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 326, column: 44)
!1172 = !DILocation(line: 330, column: 19, scope: !1161)
!1173 = !DILocation(line: 330, column: 17, scope: !1161)
!1174 = !DILocation(line: 331, column: 14, scope: !1161)
!1175 = !DILocation(line: 331, column: 31, scope: !1161)
!1176 = !DILocation(line: 331, column: 12, scope: !1161)
!1177 = distinct !{!1177, !1157, !1178, !929, !930}
!1178 = !DILocation(line: 332, column: 2, scope: !1134)
!1179 = !DILocation(line: 336, column: 14, scope: !1134)
!1180 = !DILocation(line: 336, column: 12, scope: !1134)
!1181 = !DILocation(line: 337, column: 7, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 337, column: 6)
!1183 = !DILocation(line: 337, column: 6, scope: !1134)
!1184 = !DILocation(line: 338, column: 3, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 337, column: 18)
!1186 = !DILocation(line: 341, column: 28, scope: !1134)
!1187 = !DILocation(line: 341, column: 2, scope: !1134)
!1188 = !DILocation(line: 341, column: 18, scope: !1134)
!1189 = !DILocation(line: 341, column: 26, scope: !1134)
!1190 = !DILocation(line: 342, column: 28, scope: !1134)
!1191 = !DILocation(line: 342, column: 2, scope: !1134)
!1192 = !DILocation(line: 342, column: 18, scope: !1134)
!1193 = !DILocation(line: 342, column: 26, scope: !1134)
!1194 = !DILocation(line: 346, column: 6, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 346, column: 6)
!1196 = !DILocation(line: 346, column: 6, scope: !1134)
!1197 = !DILocation(line: 347, column: 39, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 346, column: 21)
!1199 = !DILocation(line: 347, column: 3, scope: !1198)
!1200 = !DILocation(line: 347, column: 25, scope: !1198)
!1201 = !DILocation(line: 347, column: 37, scope: !1198)
!1202 = !DILocation(line: 348, column: 2, scope: !1198)
!1203 = !DILocation(line: 349, column: 18, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 348, column: 9)
!1205 = !DILocation(line: 349, column: 3, scope: !1204)
!1206 = !DILocation(line: 349, column: 9, scope: !1204)
!1207 = !DILocation(line: 349, column: 16, scope: !1204)
!1208 = !DILocation(line: 352, column: 2, scope: !1134)
!1209 = !DILocation(line: 353, column: 1, scope: !1134)
!1210 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !954, file: !954, line: 436, type: !1211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!32, !952, !7, !7, !828}
!1213 = distinct !DISubprogram(name: "acpi_ns_detach_data", scope: !3, file: !3, line: 370, type: !1214, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1216)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!5, !82, !776}
!1216 = !{!1217, !1218, !1219, !1220}
!1217 = !DILocalVariable(name: "node", arg: 1, scope: !1213, file: !3, line: 370, type: !82)
!1218 = !DILocalVariable(name: "handler", arg: 2, scope: !1213, file: !3, line: 371, type: !776)
!1219 = !DILocalVariable(name: "obj_desc", scope: !1213, file: !3, line: 373, type: !32)
!1220 = !DILocalVariable(name: "prev_obj_desc", scope: !1213, file: !3, line: 374, type: !32)
!1221 = !DILocation(line: 370, column: 49, scope: !1213)
!1222 = !DILocation(line: 371, column: 27, scope: !1213)
!1223 = !DILocation(line: 373, column: 2, scope: !1213)
!1224 = !DILocation(line: 373, column: 29, scope: !1213)
!1225 = !DILocation(line: 374, column: 2, scope: !1213)
!1226 = !DILocation(line: 374, column: 29, scope: !1213)
!1227 = !DILocation(line: 376, column: 16, scope: !1213)
!1228 = !DILocation(line: 377, column: 13, scope: !1213)
!1229 = !DILocation(line: 377, column: 19, scope: !1213)
!1230 = !DILocation(line: 377, column: 11, scope: !1213)
!1231 = !DILocation(line: 378, column: 2, scope: !1213)
!1232 = !DILocation(line: 378, column: 9, scope: !1213)
!1233 = !DILocation(line: 379, column: 8, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 379, column: 7)
!1235 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 378, column: 19)
!1236 = !DILocation(line: 379, column: 25, scope: !1234)
!1237 = !DILocation(line: 379, column: 30, scope: !1234)
!1238 = !DILocation(line: 379, column: 55, scope: !1234)
!1239 = !DILocation(line: 380, column: 8, scope: !1234)
!1240 = !DILocation(line: 380, column: 23, scope: !1234)
!1241 = !DILocation(line: 380, column: 34, scope: !1234)
!1242 = !DILocation(line: 380, column: 31, scope: !1234)
!1243 = !DILocation(line: 379, column: 7, scope: !1235)
!1244 = !DILocation(line: 381, column: 8, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 381, column: 8)
!1246 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 380, column: 44)
!1247 = !DILocation(line: 381, column: 8, scope: !1246)
!1248 = !DILocation(line: 383, column: 9, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 381, column: 23)
!1250 = !DILocation(line: 383, column: 26, scope: !1249)
!1251 = !DILocation(line: 382, column: 5, scope: !1249)
!1252 = !DILocation(line: 382, column: 27, scope: !1249)
!1253 = !DILocation(line: 382, column: 39, scope: !1249)
!1254 = !DILocation(line: 384, column: 4, scope: !1249)
!1255 = !DILocation(line: 385, column: 20, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 384, column: 11)
!1257 = !DILocation(line: 385, column: 37, scope: !1256)
!1258 = !DILocation(line: 385, column: 5, scope: !1256)
!1259 = !DILocation(line: 385, column: 11, scope: !1256)
!1260 = !DILocation(line: 385, column: 18, scope: !1256)
!1261 = !DILocation(line: 388, column: 29, scope: !1246)
!1262 = !DILocation(line: 388, column: 4, scope: !1246)
!1263 = !DILocation(line: 389, column: 4, scope: !1246)
!1264 = !DILocation(line: 392, column: 19, scope: !1235)
!1265 = !DILocation(line: 392, column: 17, scope: !1235)
!1266 = !DILocation(line: 393, column: 14, scope: !1235)
!1267 = !DILocation(line: 393, column: 31, scope: !1235)
!1268 = !DILocation(line: 393, column: 12, scope: !1235)
!1269 = distinct !{!1269, !1231, !1270, !929, !930}
!1270 = !DILocation(line: 394, column: 2, scope: !1213)
!1271 = !DILocation(line: 396, column: 2, scope: !1213)
!1272 = !DILocation(line: 397, column: 1, scope: !1213)
!1273 = distinct !DISubprogram(name: "acpi_ns_get_attached_data", scope: !3, file: !3, line: 415, type: !1274, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1276)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!5, !82, !776, !734}
!1276 = !{!1277, !1278, !1279, !1280}
!1277 = !DILocalVariable(name: "node", arg: 1, scope: !1273, file: !3, line: 415, type: !82)
!1278 = !DILocalVariable(name: "handler", arg: 2, scope: !1273, file: !3, line: 416, type: !776)
!1279 = !DILocalVariable(name: "data", arg: 3, scope: !1273, file: !3, line: 416, type: !734)
!1280 = !DILocalVariable(name: "obj_desc", scope: !1273, file: !3, line: 418, type: !32)
!1281 = !DILocation(line: 415, column: 55, scope: !1273)
!1282 = !DILocation(line: 416, column: 26, scope: !1273)
!1283 = !DILocation(line: 416, column: 42, scope: !1273)
!1284 = !DILocation(line: 418, column: 2, scope: !1273)
!1285 = !DILocation(line: 418, column: 29, scope: !1273)
!1286 = !DILocation(line: 420, column: 13, scope: !1273)
!1287 = !DILocation(line: 420, column: 19, scope: !1273)
!1288 = !DILocation(line: 420, column: 11, scope: !1273)
!1289 = !DILocation(line: 421, column: 2, scope: !1273)
!1290 = !DILocation(line: 421, column: 9, scope: !1273)
!1291 = !DILocation(line: 422, column: 8, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 422, column: 7)
!1293 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 421, column: 19)
!1294 = !DILocation(line: 422, column: 25, scope: !1292)
!1295 = !DILocation(line: 422, column: 30, scope: !1292)
!1296 = !DILocation(line: 422, column: 55, scope: !1292)
!1297 = !DILocation(line: 423, column: 8, scope: !1292)
!1298 = !DILocation(line: 423, column: 23, scope: !1292)
!1299 = !DILocation(line: 423, column: 34, scope: !1292)
!1300 = !DILocation(line: 423, column: 31, scope: !1292)
!1301 = !DILocation(line: 422, column: 7, scope: !1293)
!1302 = !DILocation(line: 424, column: 12, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 423, column: 44)
!1304 = !DILocation(line: 424, column: 27, scope: !1303)
!1305 = !DILocation(line: 424, column: 5, scope: !1303)
!1306 = !DILocation(line: 424, column: 10, scope: !1303)
!1307 = !DILocation(line: 425, column: 4, scope: !1303)
!1308 = !DILocation(line: 428, column: 14, scope: !1293)
!1309 = !DILocation(line: 428, column: 31, scope: !1293)
!1310 = !DILocation(line: 428, column: 12, scope: !1293)
!1311 = distinct !{!1311, !1289, !1312, !929, !930}
!1312 = !DILocation(line: 429, column: 2, scope: !1273)
!1313 = !DILocation(line: 431, column: 2, scope: !1273)
!1314 = !DILocation(line: 432, column: 1, scope: !1273)
!1315 = !DISubprogram(name: "kfree", scope: !1316, file: !1316, line: 227, type: !1317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1316 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !1319}
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
