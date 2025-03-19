; ModuleID = 'drivers/acpi/acpica/utdelete.c'
source_filename = "drivers/acpi/acpica/utdelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_common_descriptor = type { ptr, i8 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_notify_common = type { ptr, i8, i8, i16, i8, [2 x ptr], ptr }
%struct.acpi_object_notify_handler = type { ptr, i8, i8, i16, i8, ptr, i32, ptr, ptr, [2 x ptr] }
%struct.acpi_object_package = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, i32, i32 }
%struct.acpi_object_buffer_field = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, i8, ptr }
%struct.acpi_object_bank_field = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, ptr, ptr }
%struct.acpi_object_index_field = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, ptr, ptr }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_update_state = type { ptr, i8, i8, i16, i16, ptr }
%struct.acpi_object_string = type { ptr, i8, i8, i16, i8, ptr, i32 }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }
%struct.acpi_object_device = type { ptr, i8, i8, i16, i8, [2 x ptr], ptr, ptr }
%struct.acpi_object_addr_handler = type { ptr, i8, i8, i16, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_object_mutex = type { ptr, i8, i8, i16, i8, i8, i16, ptr, i64, ptr, ptr, ptr, ptr, i8 }
%struct.acpi_object_event = type { ptr, i8, i8, i16, i8, ptr }
%struct.acpi_object_method = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, %union.anon, i32, i16, i8 }
%union.anon = type { ptr }
%struct.acpi_object_region = type { ptr, i8, i8, i16, i8, i8, ptr, ptr, ptr, i64, i32, ptr }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_extra = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_object_region_field = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, i16, ptr, ptr, i16, ptr }

@_acpi_module_name = internal constant [9 x i8] c"utdelete\00", align 1, !dbg !0
@.str = private unnamed_addr constant [40 x i8] c"Could not update object reference count\00", align 1, !dbg !805
@acpi_gbl_reference_count_lock = external dso_local global ptr, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Obj %p, Reference Count was zero before increment\0A\00", align 1, !dbg !810
@.str.2 = private unnamed_addr constant [12 x i8] c"Incremement\00", align 1, !dbg !815
@.str.3 = private unnamed_addr constant [59 x i8] c"Obj %p, Reference Count is already zero, cannot decrement\0A\00", align 1, !dbg !820
@.str.4 = private unnamed_addr constant [10 x i8] c"Decrement\00", align 1, !dbg !825
@.str.5 = private unnamed_addr constant [38 x i8] c"Unknown Reference Count action (0x%X)\00", align 1, !dbg !830
@.str.6 = private unnamed_addr constant [68 x i8] c"Large Reference Count (0x%X) in object %p, Type=0x%.2X Operation=%s\00", align 1, !dbg !835
@acpi_gbl_global_lock_mutex = external dso_local global ptr, align 8
@acpi_gbl_global_lock_semaphore = external dso_local global ptr, align 8
@.str.7 = private unnamed_addr constant [50 x i8] c"Circular region list in address handler object %p\00", align 1, !dbg !840

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_delete_internal_object_list(ptr noundef %obj_list) #0 align 16 !dbg !856 {
entry:
  %obj_list.addr = alloca ptr, align 8
  %internal_obj = alloca ptr, align 8
  store ptr %obj_list, ptr %obj_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_list.addr, metadata !860, metadata !DIExpression()), !dbg !862
  call void @llvm.lifetime.start.p0(i64 8, ptr %internal_obj) #5, !dbg !863
  call void @llvm.dbg.declare(metadata ptr %internal_obj, metadata !861, metadata !DIExpression()), !dbg !864
  %0 = load ptr, ptr %obj_list.addr, align 8, !dbg !865
  store ptr %0, ptr %internal_obj, align 8, !dbg !867
  br label %for.cond, !dbg !868

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %internal_obj, align 8, !dbg !869
  %2 = load ptr, ptr %1, align 8, !dbg !871
  %tobool = icmp ne ptr %2, null, !dbg !872
  br i1 %tobool, label %for.body, label %for.end, !dbg !872

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %internal_obj, align 8, !dbg !873
  %4 = load ptr, ptr %3, align 8, !dbg !875
  call void @acpi_ut_remove_reference(ptr noundef %4) #6, !dbg !876
  br label %for.inc, !dbg !877

for.inc:                                          ; preds = %for.body
  %5 = load ptr, ptr %internal_obj, align 8, !dbg !878
  %incdec.ptr = getelementptr ptr, ptr %5, i32 1, !dbg !878
  store ptr %incdec.ptr, ptr %internal_obj, align 8, !dbg !878
  br label %for.cond, !dbg !879, !llvm.loop !880

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %obj_list.addr, align 8, !dbg !884
  call void @acpi_os_free(ptr noundef %6) #6, !dbg !884
  call void @llvm.lifetime.end.p0(i64 8, ptr %internal_obj) #5, !dbg !885
  ret void, !dbg !885
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_remove_reference(ptr noundef %object) #0 align 16 !dbg !886 {
entry:
  %object.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !890, metadata !DIExpression()), !dbg !891
  %0 = load ptr, ptr %object.addr, align 8, !dbg !892
  %tobool = icmp ne ptr %0, null, !dbg !892
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !894

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %object.addr, align 8, !dbg !895
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %1, i32 0, i32 1, !dbg !895
  %2 = load i8, ptr %descriptor_type, align 8, !dbg !895
  %conv = zext i8 %2 to i32, !dbg !895
  %cmp = icmp eq i32 %conv, 15, !dbg !896
  br i1 %cmp, label %if.then, label %if.end, !dbg !897

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !898

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %object.addr, align 8, !dbg !900
  %call = call zeroext i8 @acpi_ut_valid_internal_object(ptr noundef %3) #6, !dbg !902
  %tobool2 = icmp ne i8 %call, 0, !dbg !902
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !903

if.then3:                                         ; preds = %if.end
  br label %return, !dbg !904

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %object.addr, align 8, !dbg !906
  %call5 = call i32 @acpi_ut_update_object_reference(ptr noundef %4, i16 noundef zeroext 1) #6, !dbg !907
  br label %return, !dbg !908

return:                                           ; preds = %if.end4, %if.then3, %if.then
  ret void, !dbg !909
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #3 align 16 !dbg !910 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !915, metadata !DIExpression()), !dbg !916
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !917
  call void @kfree(ptr noundef %0) #6, !dbg !918
  ret void, !dbg !919
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_update_object_reference(ptr noundef %object, i16 noundef zeroext %action) #0 align 16 !dbg !920 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %action.addr = alloca i16, align 2
  %status = alloca i32, align 4
  %state_list = alloca ptr, align 8
  %next_object = alloca ptr, align 8
  %prev_object = alloca ptr, align 8
  %state = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !924, metadata !DIExpression()), !dbg !933
  store i16 %action, ptr %action.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !925, metadata !DIExpression()), !dbg !934
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !935
  call void @llvm.dbg.declare(metadata ptr %status, metadata !926, metadata !DIExpression()), !dbg !936
  store i32 0, ptr %status, align 4, !dbg !936
  call void @llvm.lifetime.start.p0(i64 8, ptr %state_list) #5, !dbg !937
  call void @llvm.dbg.declare(metadata ptr %state_list, metadata !927, metadata !DIExpression()), !dbg !938
  store ptr null, ptr %state_list, align 8, !dbg !938
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_object) #5, !dbg !939
  call void @llvm.dbg.declare(metadata ptr %next_object, metadata !928, metadata !DIExpression()), !dbg !940
  store ptr null, ptr %next_object, align 8, !dbg !940
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_object) #5, !dbg !941
  call void @llvm.dbg.declare(metadata ptr %prev_object, metadata !929, metadata !DIExpression()), !dbg !942
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #5, !dbg !943
  call void @llvm.dbg.declare(metadata ptr %state, metadata !930, metadata !DIExpression()), !dbg !944
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !945
  call void @llvm.dbg.declare(metadata ptr %i, metadata !931, metadata !DIExpression()), !dbg !946
  br label %while.cond, !dbg !947

while.cond:                                       ; preds = %if.end64, %entry
  %0 = load ptr, ptr %object.addr, align 8, !dbg !948
  %tobool = icmp ne ptr %0, null, !dbg !947
  br i1 %tobool, label %while.body, label %while.end65, !dbg !947

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %object.addr, align 8, !dbg !949
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %1, i32 0, i32 1, !dbg !949
  %2 = load i8, ptr %descriptor_type, align 8, !dbg !949
  %conv = zext i8 %2 to i32, !dbg !949
  %cmp = icmp eq i32 %conv, 15, !dbg !952
  br i1 %cmp, label %if.then, label %if.end, !dbg !953

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4, !dbg !954
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !954

if.end:                                           ; preds = %while.body
  %3 = load ptr, ptr %object.addr, align 8, !dbg !956
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %3, i32 0, i32 2, !dbg !957
  %4 = load i8, ptr %type, align 1, !dbg !957
  %conv2 = zext i8 %4 to i32, !dbg !956
  switch i32 %conv2, label %sw.default54 [
    i32 6, label %sw.bb
    i32 12, label %sw.bb
    i32 11, label %sw.bb
    i32 13, label %sw.bb
    i32 4, label %sw.bb11
    i32 14, label %sw.bb31
    i32 18, label %sw.bb32
    i32 19, label %sw.bb37
    i32 20, label %sw.bb42
    i32 17, label %sw.bb53
    i32 10, label %sw.bb53
  ], !dbg !958

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end
  store i32 0, ptr %i, align 4, !dbg !959
  br label %for.cond, !dbg !962

for.cond:                                         ; preds = %for.inc, %sw.bb
  %5 = load i32, ptr %i, align 4, !dbg !963
  %cmp3 = icmp ult i32 %5, 2, !dbg !965
  br i1 %cmp3, label %for.body, label %for.end, !dbg !966

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %object.addr, align 8, !dbg !967
  %notify_list = getelementptr inbounds %struct.acpi_object_notify_common, ptr %6, i32 0, i32 5, !dbg !969
  %7 = load i32, ptr %i, align 4, !dbg !970
  %idxprom = zext i32 %7 to i64, !dbg !967
  %arrayidx = getelementptr [2 x ptr], ptr %notify_list, i64 0, i64 %idxprom, !dbg !967
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !967
  store ptr %8, ptr %prev_object, align 8, !dbg !971
  br label %while.cond5, !dbg !972

while.cond5:                                      ; preds = %while.body7, %for.body
  %9 = load ptr, ptr %prev_object, align 8, !dbg !973
  %tobool6 = icmp ne ptr %9, null, !dbg !972
  br i1 %tobool6, label %while.body7, label %while.end, !dbg !972

while.body7:                                      ; preds = %while.cond5
  %10 = load ptr, ptr %prev_object, align 8, !dbg !974
  %next = getelementptr inbounds %struct.acpi_object_notify_handler, ptr %10, i32 0, i32 9, !dbg !976
  %11 = load i32, ptr %i, align 4, !dbg !977
  %idxprom8 = zext i32 %11 to i64, !dbg !974
  %arrayidx9 = getelementptr [2 x ptr], ptr %next, i64 0, i64 %idxprom8, !dbg !974
  %12 = load ptr, ptr %arrayidx9, align 8, !dbg !974
  store ptr %12, ptr %next_object, align 8, !dbg !978
  %13 = load ptr, ptr %prev_object, align 8, !dbg !979
  %14 = load i16, ptr %action.addr, align 2, !dbg !980
  %conv10 = zext i16 %14 to i32, !dbg !980
  call void @acpi_ut_update_ref_count(ptr noundef %13, i32 noundef %conv10) #6, !dbg !981
  %15 = load ptr, ptr %next_object, align 8, !dbg !982
  store ptr %15, ptr %prev_object, align 8, !dbg !983
  br label %while.cond5, !dbg !972, !llvm.loop !984

while.end:                                        ; preds = %while.cond5
  br label %for.inc, !dbg !986

for.inc:                                          ; preds = %while.end
  %16 = load i32, ptr %i, align 4, !dbg !987
  %inc = add i32 %16, 1, !dbg !987
  store i32 %inc, ptr %i, align 4, !dbg !987
  br label %for.cond, !dbg !988, !llvm.loop !989

for.end:                                          ; preds = %for.cond
  br label %sw.epilog55, !dbg !991

sw.bb11:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !992
  br label %for.cond12, !dbg !994

for.cond12:                                       ; preds = %for.inc28, %sw.bb11
  %17 = load i32, ptr %i, align 4, !dbg !995
  %18 = load ptr, ptr %object.addr, align 8, !dbg !997
  %count = getelementptr inbounds %struct.acpi_object_package, ptr %18, i32 0, i32 9, !dbg !998
  %19 = load i32, ptr %count, align 4, !dbg !998
  %cmp13 = icmp ult i32 %17, %19, !dbg !999
  br i1 %cmp13, label %for.body15, label %for.end30, !dbg !1000

for.body15:                                       ; preds = %for.cond12
  %20 = load ptr, ptr %object.addr, align 8, !dbg !1001
  %elements = getelementptr inbounds %struct.acpi_object_package, ptr %20, i32 0, i32 6, !dbg !1003
  %21 = load ptr, ptr %elements, align 8, !dbg !1003
  %22 = load i32, ptr %i, align 4, !dbg !1004
  %idxprom16 = zext i32 %22 to i64, !dbg !1001
  %arrayidx17 = getelementptr ptr, ptr %21, i64 %idxprom16, !dbg !1001
  %23 = load ptr, ptr %arrayidx17, align 8, !dbg !1001
  store ptr %23, ptr %next_object, align 8, !dbg !1005
  %24 = load ptr, ptr %next_object, align 8, !dbg !1006
  %tobool18 = icmp ne ptr %24, null, !dbg !1006
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !1008

if.then19:                                        ; preds = %for.body15
  br label %for.inc28, !dbg !1009

if.end20:                                         ; preds = %for.body15
  %25 = load ptr, ptr %next_object, align 8, !dbg !1011
  %type21 = getelementptr inbounds %struct.acpi_object_common, ptr %25, i32 0, i32 2, !dbg !1012
  %26 = load i8, ptr %type21, align 1, !dbg !1012
  %conv22 = zext i8 %26 to i32, !dbg !1011
  switch i32 %conv22, label %sw.default [
    i32 1, label %sw.bb23
    i32 2, label %sw.bb23
    i32 3, label %sw.bb23
  ], !dbg !1013

sw.bb23:                                          ; preds = %if.end20, %if.end20, %if.end20
  %27 = load ptr, ptr %next_object, align 8, !dbg !1014
  %28 = load i16, ptr %action.addr, align 2, !dbg !1016
  %conv24 = zext i16 %28 to i32, !dbg !1016
  call void @acpi_ut_update_ref_count(ptr noundef %27, i32 noundef %conv24) #6, !dbg !1017
  br label %sw.epilog, !dbg !1018

sw.default:                                       ; preds = %if.end20
  %29 = load ptr, ptr %next_object, align 8, !dbg !1019
  %30 = load i16, ptr %action.addr, align 2, !dbg !1020
  %call = call i32 @acpi_ut_create_update_state_and_push(ptr noundef %29, i16 noundef zeroext %30, ptr noundef %state_list) #6, !dbg !1021
  store i32 %call, ptr %status, align 4, !dbg !1022
  %31 = load i32, ptr %status, align 4, !dbg !1023
  %tobool25 = icmp ne i32 %31, 0, !dbg !1023
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !1025

if.then26:                                        ; preds = %sw.default
  br label %error_exit, !dbg !1026

if.end27:                                         ; preds = %sw.default
  br label %sw.epilog, !dbg !1028

sw.epilog:                                        ; preds = %if.end27, %sw.bb23
  br label %for.inc28, !dbg !1029

for.inc28:                                        ; preds = %sw.epilog, %if.then19
  %32 = load i32, ptr %i, align 4, !dbg !1030
  %inc29 = add i32 %32, 1, !dbg !1030
  store i32 %inc29, ptr %i, align 4, !dbg !1030
  br label %for.cond12, !dbg !1031, !llvm.loop !1032

for.end30:                                        ; preds = %for.cond12
  store ptr null, ptr %next_object, align 8, !dbg !1034
  br label %sw.epilog55, !dbg !1035

sw.bb31:                                          ; preds = %if.end
  %33 = load ptr, ptr %object.addr, align 8, !dbg !1036
  %buffer_obj = getelementptr inbounds %struct.acpi_object_buffer_field, ptr %33, i32 0, i32 15, !dbg !1037
  %34 = load ptr, ptr %buffer_obj, align 8, !dbg !1037
  store ptr %34, ptr %next_object, align 8, !dbg !1038
  br label %sw.epilog55, !dbg !1039

sw.bb32:                                          ; preds = %if.end
  %35 = load ptr, ptr %object.addr, align 8, !dbg !1040
  %bank_obj = getelementptr inbounds %struct.acpi_object_bank_field, ptr %35, i32 0, i32 15, !dbg !1041
  %36 = load ptr, ptr %bank_obj, align 8, !dbg !1041
  store ptr %36, ptr %next_object, align 8, !dbg !1042
  %37 = load ptr, ptr %object.addr, align 8, !dbg !1043
  %region_obj = getelementptr inbounds %struct.acpi_object_bank_field, ptr %37, i32 0, i32 14, !dbg !1044
  %38 = load ptr, ptr %region_obj, align 8, !dbg !1044
  %39 = load i16, ptr %action.addr, align 2, !dbg !1045
  %call33 = call i32 @acpi_ut_create_update_state_and_push(ptr noundef %38, i16 noundef zeroext %39, ptr noundef %state_list) #6, !dbg !1046
  store i32 %call33, ptr %status, align 4, !dbg !1047
  %40 = load i32, ptr %status, align 4, !dbg !1048
  %tobool34 = icmp ne i32 %40, 0, !dbg !1048
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !1050

if.then35:                                        ; preds = %sw.bb32
  br label %error_exit, !dbg !1051

if.end36:                                         ; preds = %sw.bb32
  br label %sw.epilog55, !dbg !1053

sw.bb37:                                          ; preds = %if.end
  %41 = load ptr, ptr %object.addr, align 8, !dbg !1054
  %index_obj = getelementptr inbounds %struct.acpi_object_index_field, ptr %41, i32 0, i32 14, !dbg !1055
  %42 = load ptr, ptr %index_obj, align 8, !dbg !1055
  store ptr %42, ptr %next_object, align 8, !dbg !1056
  %43 = load ptr, ptr %object.addr, align 8, !dbg !1057
  %data_obj = getelementptr inbounds %struct.acpi_object_index_field, ptr %43, i32 0, i32 15, !dbg !1058
  %44 = load ptr, ptr %data_obj, align 8, !dbg !1058
  %45 = load i16, ptr %action.addr, align 2, !dbg !1059
  %call38 = call i32 @acpi_ut_create_update_state_and_push(ptr noundef %44, i16 noundef zeroext %45, ptr noundef %state_list) #6, !dbg !1060
  store i32 %call38, ptr %status, align 4, !dbg !1061
  %46 = load i32, ptr %status, align 4, !dbg !1062
  %tobool39 = icmp ne i32 %46, 0, !dbg !1062
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !1064

if.then40:                                        ; preds = %sw.bb37
  br label %error_exit, !dbg !1065

if.end41:                                         ; preds = %sw.bb37
  br label %sw.epilog55, !dbg !1067

sw.bb42:                                          ; preds = %if.end
  %47 = load ptr, ptr %object.addr, align 8, !dbg !1068
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %47, i32 0, i32 5, !dbg !1070
  %48 = load i8, ptr %class, align 1, !dbg !1070
  %conv43 = zext i8 %48 to i32, !dbg !1068
  %cmp44 = icmp eq i32 %conv43, 3, !dbg !1071
  br i1 %cmp44, label %if.then50, label %lor.lhs.false, !dbg !1072

lor.lhs.false:                                    ; preds = %sw.bb42
  %49 = load ptr, ptr %object.addr, align 8, !dbg !1073
  %class46 = getelementptr inbounds %struct.acpi_object_reference, ptr %49, i32 0, i32 5, !dbg !1074
  %50 = load i8, ptr %class46, align 1, !dbg !1074
  %conv47 = zext i8 %50 to i32, !dbg !1073
  %cmp48 = icmp eq i32 %conv47, 5, !dbg !1075
  br i1 %cmp48, label %if.then50, label %if.end52, !dbg !1076

if.then50:                                        ; preds = %lor.lhs.false, %sw.bb42
  %51 = load ptr, ptr %object.addr, align 8, !dbg !1077
  %object51 = getelementptr inbounds %struct.acpi_object_reference, ptr %51, i32 0, i32 8, !dbg !1079
  %52 = load ptr, ptr %object51, align 8, !dbg !1079
  store ptr %52, ptr %next_object, align 8, !dbg !1080
  br label %if.end52, !dbg !1081

if.end52:                                         ; preds = %if.then50, %lor.lhs.false
  br label %sw.epilog55, !dbg !1082

sw.bb53:                                          ; preds = %if.end, %if.end
  br label %sw.default54, !dbg !1083

sw.default54:                                     ; preds = %if.end, %sw.bb53
  br label %sw.epilog55, !dbg !1084

sw.epilog55:                                      ; preds = %sw.default54, %if.end52, %if.end41, %if.end36, %sw.bb31, %for.end30, %for.end
  %53 = load ptr, ptr %object.addr, align 8, !dbg !1085
  %54 = load i16, ptr %action.addr, align 2, !dbg !1086
  %conv56 = zext i16 %54 to i32, !dbg !1086
  call void @acpi_ut_update_ref_count(ptr noundef %53, i32 noundef %conv56) #6, !dbg !1087
  store ptr null, ptr %object.addr, align 8, !dbg !1088
  %55 = load ptr, ptr %next_object, align 8, !dbg !1089
  %tobool57 = icmp ne ptr %55, null, !dbg !1089
  br i1 %tobool57, label %if.then58, label %if.else, !dbg !1091

if.then58:                                        ; preds = %sw.epilog55
  %56 = load ptr, ptr %next_object, align 8, !dbg !1092
  store ptr %56, ptr %object.addr, align 8, !dbg !1094
  store ptr null, ptr %next_object, align 8, !dbg !1095
  br label %if.end64, !dbg !1096

if.else:                                          ; preds = %sw.epilog55
  %57 = load ptr, ptr %state_list, align 8, !dbg !1097
  %tobool59 = icmp ne ptr %57, null, !dbg !1097
  br i1 %tobool59, label %if.then60, label %if.end63, !dbg !1099

if.then60:                                        ; preds = %if.else
  %call61 = call ptr @acpi_ut_pop_generic_state(ptr noundef %state_list) #6, !dbg !1100
  store ptr %call61, ptr %state, align 8, !dbg !1102
  %58 = load ptr, ptr %state, align 8, !dbg !1103
  %object62 = getelementptr inbounds %struct.acpi_update_state, ptr %58, i32 0, i32 5, !dbg !1104
  %59 = load ptr, ptr %object62, align 8, !dbg !1104
  store ptr %59, ptr %object.addr, align 8, !dbg !1105
  %60 = load ptr, ptr %state, align 8, !dbg !1106
  call void @acpi_ut_delete_generic_state(ptr noundef %60) #6, !dbg !1107
  br label %if.end63, !dbg !1108

if.end63:                                         ; preds = %if.then60, %if.else
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then58
  br label %while.cond, !dbg !947, !llvm.loop !1109

while.end65:                                      ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !1111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1111

error_exit:                                       ; preds = %if.then40, %if.then35, %if.then26
  call void @llvm.dbg.label(metadata !932), !dbg !1112
  %61 = load i32, ptr %status, align 4, !dbg !1113
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 651, i32 noundef %61, ptr noundef @.str) #6, !dbg !1113
  br label %while.cond66, !dbg !1114

while.cond66:                                     ; preds = %while.body68, %error_exit
  %62 = load ptr, ptr %state_list, align 8, !dbg !1115
  %tobool67 = icmp ne ptr %62, null, !dbg !1114
  br i1 %tobool67, label %while.body68, label %while.end70, !dbg !1114

while.body68:                                     ; preds = %while.cond66
  %call69 = call ptr @acpi_ut_pop_generic_state(ptr noundef %state_list) #6, !dbg !1116
  store ptr %call69, ptr %state, align 8, !dbg !1118
  %63 = load ptr, ptr %state, align 8, !dbg !1119
  call void @acpi_ut_delete_generic_state(ptr noundef %63) #6, !dbg !1120
  br label %while.cond66, !dbg !1114, !llvm.loop !1121

while.end70:                                      ; preds = %while.cond66
  %64 = load i32, ptr %status, align 4, !dbg !1123
  store i32 %64, ptr %retval, align 4, !dbg !1124
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1124

cleanup:                                          ; preds = %while.end70, %while.end65, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !1125
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #5, !dbg !1125
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_object) #5, !dbg !1125
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_object) #5, !dbg !1125
  call void @llvm.lifetime.end.p0(i64 8, ptr %state_list) #5, !dbg !1125
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1125
  %65 = load i32, ptr %retval, align 4, !dbg !1125
  ret i32 %65, !dbg !1125
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_ut_update_ref_count(ptr noundef %object, i32 noundef %action) #0 align 16 !dbg !1126 {
entry:
  %object.addr = alloca ptr, align 8
  %action.addr = alloca i32, align 4
  %original_count = alloca i16, align 2
  %new_count = alloca i16, align 2
  %lock_flags = alloca i64, align 8
  %message = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1130, metadata !DIExpression()), !dbg !1137
  store i32 %action, ptr %action.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !1131, metadata !DIExpression()), !dbg !1138
  call void @llvm.lifetime.start.p0(i64 2, ptr %original_count) #5, !dbg !1139
  call void @llvm.dbg.declare(metadata ptr %original_count, metadata !1132, metadata !DIExpression()), !dbg !1140
  call void @llvm.lifetime.start.p0(i64 2, ptr %new_count) #5, !dbg !1141
  call void @llvm.dbg.declare(metadata ptr %new_count, metadata !1133, metadata !DIExpression()), !dbg !1142
  store i16 0, ptr %new_count, align 2, !dbg !1142
  call void @llvm.lifetime.start.p0(i64 8, ptr %lock_flags) #5, !dbg !1143
  call void @llvm.dbg.declare(metadata ptr %lock_flags, metadata !1134, metadata !DIExpression()), !dbg !1144
  call void @llvm.lifetime.start.p0(i64 8, ptr %message) #5, !dbg !1145
  call void @llvm.dbg.declare(metadata ptr %message, metadata !1136, metadata !DIExpression()), !dbg !1146
  %0 = load ptr, ptr %object.addr, align 8, !dbg !1147
  %tobool = icmp ne ptr %0, null, !dbg !1147
  br i1 %tobool, label %if.end, label %if.then, !dbg !1149

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1150

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @acpi_gbl_reference_count_lock, align 8, !dbg !1152
  %call = call i64 @acpi_os_acquire_lock(ptr noundef %1) #6, !dbg !1153
  store i64 %call, ptr %lock_flags, align 8, !dbg !1154
  %2 = load ptr, ptr %object.addr, align 8, !dbg !1155
  %reference_count = getelementptr inbounds %struct.acpi_object_common, ptr %2, i32 0, i32 3, !dbg !1156
  %3 = load i16, ptr %reference_count, align 2, !dbg !1156
  store i16 %3, ptr %original_count, align 2, !dbg !1157
  %4 = load i32, ptr %action.addr, align 4, !dbg !1158
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ], !dbg !1159

sw.bb:                                            ; preds = %if.end
  %5 = load i16, ptr %original_count, align 2, !dbg !1160
  %conv = zext i16 %5 to i32, !dbg !1160
  %add = add i32 %conv, 1, !dbg !1162
  %conv1 = trunc i32 %add to i16, !dbg !1160
  store i16 %conv1, ptr %new_count, align 2, !dbg !1163
  %6 = load i16, ptr %new_count, align 2, !dbg !1164
  %7 = load ptr, ptr %object.addr, align 8, !dbg !1165
  %reference_count2 = getelementptr inbounds %struct.acpi_object_common, ptr %7, i32 0, i32 3, !dbg !1166
  store i16 %6, ptr %reference_count2, align 2, !dbg !1167
  %8 = load ptr, ptr @acpi_gbl_reference_count_lock, align 8, !dbg !1168
  %9 = load i64, ptr %lock_flags, align 8, !dbg !1169
  call void @acpi_os_release_lock(ptr noundef %8, i64 noundef %9) #6, !dbg !1170
  %10 = load i16, ptr %original_count, align 2, !dbg !1171
  %tobool3 = icmp ne i16 %10, 0, !dbg !1171
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1173

if.then4:                                         ; preds = %sw.bb
  %11 = load ptr, ptr %object.addr, align 8, !dbg !1174
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 397, ptr noundef @.str.1, ptr noundef %11) #6, !dbg !1174
  br label %if.end5, !dbg !1176

if.end5:                                          ; preds = %if.then4, %sw.bb
  store ptr @.str.2, ptr %message, align 8, !dbg !1177
  br label %sw.epilog, !dbg !1178

sw.bb6:                                           ; preds = %if.end
  %12 = load i16, ptr %original_count, align 2, !dbg !1179
  %tobool7 = icmp ne i16 %12, 0, !dbg !1179
  br i1 %tobool7, label %if.then8, label %if.end12, !dbg !1181

if.then8:                                         ; preds = %sw.bb6
  %13 = load i16, ptr %original_count, align 2, !dbg !1182
  %conv9 = zext i16 %13 to i32, !dbg !1182
  %sub = sub i32 %conv9, 1, !dbg !1184
  %conv10 = trunc i32 %sub to i16, !dbg !1182
  store i16 %conv10, ptr %new_count, align 2, !dbg !1185
  %14 = load i16, ptr %new_count, align 2, !dbg !1186
  %15 = load ptr, ptr %object.addr, align 8, !dbg !1187
  %reference_count11 = getelementptr inbounds %struct.acpi_object_common, ptr %15, i32 0, i32 3, !dbg !1188
  store i16 %14, ptr %reference_count11, align 2, !dbg !1189
  br label %if.end12, !dbg !1190

if.end12:                                         ; preds = %if.then8, %sw.bb6
  %16 = load ptr, ptr @acpi_gbl_reference_count_lock, align 8, !dbg !1191
  %17 = load i64, ptr %lock_flags, align 8, !dbg !1192
  call void @acpi_os_release_lock(ptr noundef %16, i64 noundef %17) #6, !dbg !1193
  %18 = load i16, ptr %original_count, align 2, !dbg !1194
  %tobool13 = icmp ne i16 %18, 0, !dbg !1194
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !1196

if.then14:                                        ; preds = %if.end12
  %19 = load ptr, ptr %object.addr, align 8, !dbg !1197
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 422, ptr noundef @.str.3, ptr noundef %19) #6, !dbg !1197
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1199

if.end15:                                         ; preds = %if.end12
  %20 = load i16, ptr %new_count, align 2, !dbg !1200
  %conv16 = zext i16 %20 to i32, !dbg !1200
  %cmp = icmp eq i32 %conv16, 0, !dbg !1202
  br i1 %cmp, label %if.then18, label %if.end19, !dbg !1203

if.then18:                                        ; preds = %if.end15
  %21 = load ptr, ptr %object.addr, align 8, !dbg !1204
  call void @acpi_ut_delete_internal_obj(ptr noundef %21) #6, !dbg !1206
  br label %if.end19, !dbg !1207

if.end19:                                         ; preds = %if.then18, %if.end15
  store ptr @.str.4, ptr %message, align 8, !dbg !1208
  br label %sw.epilog, !dbg !1209

sw.default:                                       ; preds = %if.end
  %22 = load ptr, ptr @acpi_gbl_reference_count_lock, align 8, !dbg !1210
  %23 = load i64, ptr %lock_flags, align 8, !dbg !1211
  call void @acpi_os_release_lock(ptr noundef %22, i64 noundef %23) #6, !dbg !1212
  %24 = load i32, ptr %action.addr, align 4, !dbg !1213
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 444, ptr noundef @.str.5, i32 noundef %24) #6, !dbg !1213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1214

sw.epilog:                                        ; preds = %if.end19, %if.end5
  %25 = load i16, ptr %new_count, align 2, !dbg !1215
  %conv20 = zext i16 %25 to i32, !dbg !1215
  %cmp21 = icmp sgt i32 %conv20, 16384, !dbg !1217
  br i1 %cmp21, label %if.then23, label %if.end26, !dbg !1218

if.then23:                                        ; preds = %sw.epilog
  %26 = load i16, ptr %new_count, align 2, !dbg !1219
  %conv24 = zext i16 %26 to i32, !dbg !1219
  %27 = load ptr, ptr %object.addr, align 8, !dbg !1219
  %28 = load ptr, ptr %object.addr, align 8, !dbg !1219
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %28, i32 0, i32 2, !dbg !1219
  %29 = load i8, ptr %type, align 1, !dbg !1219
  %conv25 = zext i8 %29 to i32, !dbg !1219
  %30 = load ptr, ptr %message, align 8, !dbg !1219
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 454, ptr noundef @.str.6, i32 noundef %conv24, ptr noundef %27, i32 noundef %conv25, ptr noundef %30) #6, !dbg !1219
  br label %if.end26, !dbg !1221

if.end26:                                         ; preds = %if.then23, %sw.epilog
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1222
  br label %cleanup, !dbg !1222

cleanup:                                          ; preds = %if.end26, %sw.default, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %message) #5, !dbg !1222
  call void @llvm.lifetime.end.p0(i64 8, ptr %lock_flags) #5, !dbg !1222
  call void @llvm.lifetime.end.p0(i64 2, ptr %new_count) #5, !dbg !1222
  call void @llvm.lifetime.end.p0(i64 2, ptr %original_count) #5, !dbg !1222
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1222

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1223 dso_local i32 @acpi_ut_create_update_state_and_push(ptr noundef, i16 noundef zeroext, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1228 dso_local ptr @acpi_ut_pop_generic_state(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1231 dso_local void @acpi_ut_delete_generic_state(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1234 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_add_reference(ptr noundef %object) #0 align 16 !dbg !1239 {
entry:
  %object.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1241, metadata !DIExpression()), !dbg !1242
  %0 = load ptr, ptr %object.addr, align 8, !dbg !1243
  %call = call zeroext i8 @acpi_ut_valid_internal_object(ptr noundef %0) #6, !dbg !1245
  %tobool = icmp ne i8 %call, 0, !dbg !1245
  br i1 %tobool, label %if.end, label %if.then, !dbg !1246

if.then:                                          ; preds = %entry
  br label %return, !dbg !1247

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %object.addr, align 8, !dbg !1249
  %call1 = call i32 @acpi_ut_update_object_reference(ptr noundef %1, i16 noundef zeroext 0) #6, !dbg !1250
  br label %return, !dbg !1251

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1252
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1253 dso_local zeroext i8 @acpi_ut_valid_internal_object(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1256 dso_local void @kfree(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1262 dso_local i64 @acpi_os_acquire_lock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1303 dso_local void @acpi_os_release_lock(ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1306 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_ut_delete_internal_obj(ptr noundef %object) #0 align 16 !dbg !1309 {
entry:
  %object.addr = alloca ptr, align 8
  %obj_pointer = alloca ptr, align 8
  %handler_desc = alloca ptr, align 8
  %second_desc = alloca ptr, align 8
  %next_desc = alloca ptr, align 8
  %start_desc = alloca ptr, align 8
  %last_obj_ptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1311, metadata !DIExpression()), !dbg !1318
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_pointer) #5, !dbg !1319
  call void @llvm.dbg.declare(metadata ptr %obj_pointer, metadata !1312, metadata !DIExpression()), !dbg !1320
  store ptr null, ptr %obj_pointer, align 8, !dbg !1320
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler_desc) #5, !dbg !1321
  call void @llvm.dbg.declare(metadata ptr %handler_desc, metadata !1313, metadata !DIExpression()), !dbg !1322
  call void @llvm.lifetime.start.p0(i64 8, ptr %second_desc) #5, !dbg !1323
  call void @llvm.dbg.declare(metadata ptr %second_desc, metadata !1314, metadata !DIExpression()), !dbg !1324
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_desc) #5, !dbg !1325
  call void @llvm.dbg.declare(metadata ptr %next_desc, metadata !1315, metadata !DIExpression()), !dbg !1326
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_desc) #5, !dbg !1327
  call void @llvm.dbg.declare(metadata ptr %start_desc, metadata !1316, metadata !DIExpression()), !dbg !1328
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_obj_ptr) #5, !dbg !1329
  call void @llvm.dbg.declare(metadata ptr %last_obj_ptr, metadata !1317, metadata !DIExpression()), !dbg !1330
  %0 = load ptr, ptr %object.addr, align 8, !dbg !1331
  %tobool = icmp ne ptr %0, null, !dbg !1331
  br i1 %tobool, label %if.end, label %if.then, !dbg !1333

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1334

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %object.addr, align 8, !dbg !1336
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %1, i32 0, i32 2, !dbg !1337
  %2 = load i8, ptr %type, align 1, !dbg !1337
  %conv = zext i8 %2 to i32, !dbg !1336
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb5
    i32 4, label %sw.bb13
    i32 6, label %sw.bb14
    i32 12, label %sw.bb19
    i32 13, label %sw.bb19
    i32 9, label %sw.bb21
    i32 7, label %sw.bb29
    i32 8, label %sw.bb32
    i32 10, label %sw.bb45
    i32 14, label %sw.bb92
    i32 18, label %sw.bb97
    i32 24, label %sw.bb102
  ], !dbg !1338

sw.bb:                                            ; preds = %if.end
  %3 = load ptr, ptr %object.addr, align 8, !dbg !1339
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %3, i32 0, i32 4, !dbg !1342
  %4 = load i8, ptr %flags, align 4, !dbg !1342
  %conv1 = zext i8 %4 to i32, !dbg !1339
  %and = and i32 %conv1, 2, !dbg !1343
  %tobool2 = icmp ne i32 %and, 0, !dbg !1343
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1344

if.then3:                                         ; preds = %sw.bb
  %5 = load ptr, ptr %object.addr, align 8, !dbg !1345
  %pointer = getelementptr inbounds %struct.acpi_object_string, ptr %5, i32 0, i32 5, !dbg !1347
  %6 = load ptr, ptr %pointer, align 8, !dbg !1347
  store ptr %6, ptr %obj_pointer, align 8, !dbg !1348
  br label %if.end4, !dbg !1349

if.end4:                                          ; preds = %if.then3, %sw.bb
  br label %sw.epilog, !dbg !1350

sw.bb5:                                           ; preds = %if.end
  %7 = load ptr, ptr %object.addr, align 8, !dbg !1351
  %flags6 = getelementptr inbounds %struct.acpi_object_common, ptr %7, i32 0, i32 4, !dbg !1353
  %8 = load i8, ptr %flags6, align 4, !dbg !1353
  %conv7 = zext i8 %8 to i32, !dbg !1351
  %and8 = and i32 %conv7, 2, !dbg !1354
  %tobool9 = icmp ne i32 %and8, 0, !dbg !1354
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !1355

if.then10:                                        ; preds = %sw.bb5
  %9 = load ptr, ptr %object.addr, align 8, !dbg !1356
  %pointer11 = getelementptr inbounds %struct.acpi_object_buffer, ptr %9, i32 0, i32 5, !dbg !1358
  %10 = load ptr, ptr %pointer11, align 8, !dbg !1358
  store ptr %10, ptr %obj_pointer, align 8, !dbg !1359
  br label %if.end12, !dbg !1360

if.end12:                                         ; preds = %if.then10, %sw.bb5
  br label %sw.epilog, !dbg !1361

sw.bb13:                                          ; preds = %if.end
  %11 = load ptr, ptr %object.addr, align 8, !dbg !1362
  %elements = getelementptr inbounds %struct.acpi_object_package, ptr %11, i32 0, i32 6, !dbg !1363
  %12 = load ptr, ptr %elements, align 8, !dbg !1363
  store ptr %12, ptr %obj_pointer, align 8, !dbg !1364
  br label %sw.epilog, !dbg !1365

sw.bb14:                                          ; preds = %if.end
  %13 = load ptr, ptr %object.addr, align 8, !dbg !1366
  %gpe_block = getelementptr inbounds %struct.acpi_object_device, ptr %13, i32 0, i32 7, !dbg !1368
  %14 = load ptr, ptr %gpe_block, align 8, !dbg !1368
  %tobool15 = icmp ne ptr %14, null, !dbg !1366
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !1369

if.then16:                                        ; preds = %sw.bb14
  %15 = load ptr, ptr %object.addr, align 8, !dbg !1370
  %gpe_block17 = getelementptr inbounds %struct.acpi_object_device, ptr %15, i32 0, i32 7, !dbg !1372
  %16 = load ptr, ptr %gpe_block17, align 8, !dbg !1372
  %call = call i32 @acpi_ev_delete_gpe_block(ptr noundef %16) #6, !dbg !1373
  br label %if.end18, !dbg !1374

if.end18:                                         ; preds = %if.then16, %sw.bb14
  br label %sw.bb19, !dbg !1368

sw.bb19:                                          ; preds = %if.end, %if.end, %if.end18
  %17 = load ptr, ptr %object.addr, align 8, !dbg !1375
  %handler = getelementptr inbounds %struct.acpi_object_notify_common, ptr %17, i32 0, i32 6, !dbg !1376
  %18 = load ptr, ptr %handler, align 8, !dbg !1376
  store ptr %18, ptr %handler_desc, align 8, !dbg !1377
  br label %while.cond, !dbg !1378

while.cond:                                       ; preds = %while.body, %sw.bb19
  %19 = load ptr, ptr %handler_desc, align 8, !dbg !1379
  %tobool20 = icmp ne ptr %19, null, !dbg !1378
  br i1 %tobool20, label %while.body, label %while.end, !dbg !1378

while.body:                                       ; preds = %while.cond
  %20 = load ptr, ptr %handler_desc, align 8, !dbg !1380
  %next = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %20, i32 0, i32 13, !dbg !1382
  %21 = load ptr, ptr %next, align 8, !dbg !1382
  store ptr %21, ptr %next_desc, align 8, !dbg !1383
  %22 = load ptr, ptr %handler_desc, align 8, !dbg !1384
  call void @acpi_ut_remove_reference(ptr noundef %22) #6, !dbg !1385
  %23 = load ptr, ptr %next_desc, align 8, !dbg !1386
  store ptr %23, ptr %handler_desc, align 8, !dbg !1387
  br label %while.cond, !dbg !1378, !llvm.loop !1388

while.end:                                        ; preds = %while.cond
  br label %sw.epilog, !dbg !1390

sw.bb21:                                          ; preds = %if.end
  %24 = load ptr, ptr %object.addr, align 8, !dbg !1391
  %25 = load ptr, ptr @acpi_gbl_global_lock_mutex, align 8, !dbg !1393
  %cmp = icmp eq ptr %24, %25, !dbg !1394
  br i1 %cmp, label %if.then23, label %if.else, !dbg !1395

if.then23:                                        ; preds = %sw.bb21
  %26 = load ptr, ptr @acpi_gbl_global_lock_semaphore, align 8, !dbg !1396
  %call24 = call i32 @acpi_os_delete_semaphore(ptr noundef %26) #6, !dbg !1398
  store ptr null, ptr @acpi_gbl_global_lock_semaphore, align 8, !dbg !1399
  %27 = load ptr, ptr %object.addr, align 8, !dbg !1400
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, ptr %27, i32 0, i32 7, !dbg !1400
  %28 = load ptr, ptr %os_mutex, align 8, !dbg !1400
  %call25 = call i32 @acpi_os_delete_semaphore(ptr noundef %28) #6, !dbg !1400
  store ptr null, ptr @acpi_gbl_global_lock_mutex, align 8, !dbg !1401
  br label %if.end28, !dbg !1402

if.else:                                          ; preds = %sw.bb21
  %29 = load ptr, ptr %object.addr, align 8, !dbg !1403
  call void @acpi_ex_unlink_mutex(ptr noundef %29) #6, !dbg !1405
  %30 = load ptr, ptr %object.addr, align 8, !dbg !1406
  %os_mutex26 = getelementptr inbounds %struct.acpi_object_mutex, ptr %30, i32 0, i32 7, !dbg !1406
  %31 = load ptr, ptr %os_mutex26, align 8, !dbg !1406
  %call27 = call i32 @acpi_os_delete_semaphore(ptr noundef %31) #6, !dbg !1406
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then23
  br label %sw.epilog, !dbg !1407

sw.bb29:                                          ; preds = %if.end
  %32 = load ptr, ptr %object.addr, align 8, !dbg !1408
  %os_semaphore = getelementptr inbounds %struct.acpi_object_event, ptr %32, i32 0, i32 5, !dbg !1409
  %33 = load ptr, ptr %os_semaphore, align 8, !dbg !1409
  %call30 = call i32 @acpi_os_delete_semaphore(ptr noundef %33) #6, !dbg !1410
  %34 = load ptr, ptr %object.addr, align 8, !dbg !1411
  %os_semaphore31 = getelementptr inbounds %struct.acpi_object_event, ptr %34, i32 0, i32 5, !dbg !1412
  store ptr null, ptr %os_semaphore31, align 8, !dbg !1413
  br label %sw.epilog, !dbg !1414

sw.bb32:                                          ; preds = %if.end
  %35 = load ptr, ptr %object.addr, align 8, !dbg !1415
  %mutex = getelementptr inbounds %struct.acpi_object_method, ptr %35, i32 0, i32 8, !dbg !1417
  %36 = load ptr, ptr %mutex, align 8, !dbg !1417
  %tobool33 = icmp ne ptr %36, null, !dbg !1415
  br i1 %tobool33, label %if.then34, label %if.end40, !dbg !1418

if.then34:                                        ; preds = %sw.bb32
  %37 = load ptr, ptr %object.addr, align 8, !dbg !1419
  %mutex35 = getelementptr inbounds %struct.acpi_object_method, ptr %37, i32 0, i32 8, !dbg !1419
  %38 = load ptr, ptr %mutex35, align 8, !dbg !1419
  %os_mutex36 = getelementptr inbounds %struct.acpi_object_mutex, ptr %38, i32 0, i32 7, !dbg !1419
  %39 = load ptr, ptr %os_mutex36, align 8, !dbg !1419
  %call37 = call i32 @acpi_os_delete_semaphore(ptr noundef %39) #6, !dbg !1419
  %40 = load ptr, ptr %object.addr, align 8, !dbg !1421
  %mutex38 = getelementptr inbounds %struct.acpi_object_method, ptr %40, i32 0, i32 8, !dbg !1422
  %41 = load ptr, ptr %mutex38, align 8, !dbg !1422
  call void @acpi_ut_delete_object_desc(ptr noundef %41) #6, !dbg !1423
  %42 = load ptr, ptr %object.addr, align 8, !dbg !1424
  %mutex39 = getelementptr inbounds %struct.acpi_object_method, ptr %42, i32 0, i32 8, !dbg !1425
  store ptr null, ptr %mutex39, align 8, !dbg !1426
  br label %if.end40, !dbg !1427

if.end40:                                         ; preds = %if.then34, %sw.bb32
  %43 = load ptr, ptr %object.addr, align 8, !dbg !1428
  %node = getelementptr inbounds %struct.acpi_object_method, ptr %43, i32 0, i32 9, !dbg !1430
  %44 = load ptr, ptr %node, align 8, !dbg !1430
  %tobool41 = icmp ne ptr %44, null, !dbg !1428
  br i1 %tobool41, label %if.then42, label %if.end44, !dbg !1431

if.then42:                                        ; preds = %if.end40
  %45 = load ptr, ptr %object.addr, align 8, !dbg !1432
  %node43 = getelementptr inbounds %struct.acpi_object_method, ptr %45, i32 0, i32 9, !dbg !1434
  store ptr null, ptr %node43, align 8, !dbg !1435
  br label %if.end44, !dbg !1436

if.end44:                                         ; preds = %if.then42, %if.end40
  br label %sw.epilog, !dbg !1437

sw.bb45:                                          ; preds = %if.end
  %46 = load ptr, ptr %object.addr, align 8, !dbg !1438
  %node46 = getelementptr inbounds %struct.acpi_object_region, ptr %46, i32 0, i32 6, !dbg !1440
  %47 = load ptr, ptr %node46, align 8, !dbg !1440
  %flags47 = getelementptr inbounds %struct.acpi_namespace_node, ptr %47, i32 0, i32 3, !dbg !1441
  %48 = load i16, ptr %flags47, align 2, !dbg !1441
  %conv48 = zext i16 %48 to i32, !dbg !1438
  %and49 = and i32 %conv48, 2, !dbg !1442
  %tobool50 = icmp ne i32 %and49, 0, !dbg !1442
  br i1 %tobool50, label %if.end53, label %if.then51, !dbg !1443

if.then51:                                        ; preds = %sw.bb45
  %49 = load ptr, ptr %object.addr, align 8, !dbg !1444
  %space_id = getelementptr inbounds %struct.acpi_object_region, ptr %49, i32 0, i32 5, !dbg !1446
  %50 = load i8, ptr %space_id, align 1, !dbg !1446
  %51 = load ptr, ptr %object.addr, align 8, !dbg !1447
  %node52 = getelementptr inbounds %struct.acpi_object_region, ptr %51, i32 0, i32 6, !dbg !1448
  %52 = load ptr, ptr %node52, align 8, !dbg !1448
  call void @acpi_ut_remove_address_range(i8 noundef zeroext %50, ptr noundef %52) #6, !dbg !1449
  br label %if.end53, !dbg !1450

if.end53:                                         ; preds = %if.then51, %sw.bb45
  %53 = load ptr, ptr %object.addr, align 8, !dbg !1451
  %call54 = call ptr @acpi_ns_get_secondary_object(ptr noundef %53) #6, !dbg !1452
  store ptr %call54, ptr %second_desc, align 8, !dbg !1453
  %54 = load ptr, ptr %second_desc, align 8, !dbg !1454
  %tobool55 = icmp ne ptr %54, null, !dbg !1454
  br i1 %tobool55, label %if.then56, label %if.end87, !dbg !1456

if.then56:                                        ; preds = %if.end53
  %55 = load ptr, ptr %object.addr, align 8, !dbg !1457
  %handler57 = getelementptr inbounds %struct.acpi_object_region, ptr %55, i32 0, i32 7, !dbg !1459
  %56 = load ptr, ptr %handler57, align 8, !dbg !1459
  store ptr %56, ptr %handler_desc, align 8, !dbg !1460
  %57 = load ptr, ptr %handler_desc, align 8, !dbg !1461
  %tobool58 = icmp ne ptr %57, null, !dbg !1461
  br i1 %tobool58, label %if.then59, label %if.end86, !dbg !1463

if.then59:                                        ; preds = %if.then56
  %58 = load ptr, ptr %handler_desc, align 8, !dbg !1464
  %region_list = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %58, i32 0, i32 12, !dbg !1466
  %59 = load ptr, ptr %region_list, align 8, !dbg !1466
  store ptr %59, ptr %next_desc, align 8, !dbg !1467
  %60 = load ptr, ptr %next_desc, align 8, !dbg !1468
  store ptr %60, ptr %start_desc, align 8, !dbg !1469
  %61 = load ptr, ptr %handler_desc, align 8, !dbg !1470
  %region_list60 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %61, i32 0, i32 12, !dbg !1471
  store ptr %region_list60, ptr %last_obj_ptr, align 8, !dbg !1472
  br label %while.cond61, !dbg !1473

while.cond61:                                     ; preds = %if.end74, %if.then59
  %62 = load ptr, ptr %next_desc, align 8, !dbg !1474
  %tobool62 = icmp ne ptr %62, null, !dbg !1473
  br i1 %tobool62, label %while.body63, label %while.end75, !dbg !1473

while.body63:                                     ; preds = %while.cond61
  %63 = load ptr, ptr %next_desc, align 8, !dbg !1475
  %64 = load ptr, ptr %object.addr, align 8, !dbg !1478
  %cmp64 = icmp eq ptr %63, %64, !dbg !1479
  br i1 %cmp64, label %if.then66, label %if.end68, !dbg !1480

if.then66:                                        ; preds = %while.body63
  %65 = load ptr, ptr %next_desc, align 8, !dbg !1481
  %next67 = getelementptr inbounds %struct.acpi_object_region, ptr %65, i32 0, i32 8, !dbg !1483
  %66 = load ptr, ptr %next67, align 8, !dbg !1483
  %67 = load ptr, ptr %last_obj_ptr, align 8, !dbg !1484
  store ptr %66, ptr %67, align 8, !dbg !1485
  br label %while.end75, !dbg !1486

if.end68:                                         ; preds = %while.body63
  %68 = load ptr, ptr %next_desc, align 8, !dbg !1487
  %next69 = getelementptr inbounds %struct.acpi_object_region, ptr %68, i32 0, i32 8, !dbg !1488
  store ptr %next69, ptr %last_obj_ptr, align 8, !dbg !1489
  %69 = load ptr, ptr %next_desc, align 8, !dbg !1490
  %next70 = getelementptr inbounds %struct.acpi_object_region, ptr %69, i32 0, i32 8, !dbg !1491
  %70 = load ptr, ptr %next70, align 8, !dbg !1491
  store ptr %70, ptr %next_desc, align 8, !dbg !1492
  %71 = load ptr, ptr %next_desc, align 8, !dbg !1493
  %72 = load ptr, ptr %start_desc, align 8, !dbg !1495
  %cmp71 = icmp eq ptr %71, %72, !dbg !1496
  br i1 %cmp71, label %if.then73, label %if.end74, !dbg !1497

if.then73:                                        ; preds = %if.end68
  %73 = load ptr, ptr %handler_desc, align 8, !dbg !1498
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 228, ptr noundef @.str.7, ptr noundef %73) #6, !dbg !1498
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1500

if.end74:                                         ; preds = %if.end68
  br label %while.cond61, !dbg !1473, !llvm.loop !1501

while.end75:                                      ; preds = %if.then66, %while.cond61
  %74 = load ptr, ptr %handler_desc, align 8, !dbg !1503
  %handler_flags = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %74, i32 0, i32 6, !dbg !1505
  %75 = load i8, ptr %handler_flags, align 2, !dbg !1505
  %conv76 = zext i8 %75 to i32, !dbg !1503
  %and77 = and i32 %conv76, 1, !dbg !1506
  %tobool78 = icmp ne i32 %and77, 0, !dbg !1506
  br i1 %tobool78, label %if.then79, label %if.end85, !dbg !1507

if.then79:                                        ; preds = %while.end75
  %76 = load ptr, ptr %handler_desc, align 8, !dbg !1508
  %setup = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %76, i32 0, i32 11, !dbg !1511
  %77 = load ptr, ptr %setup, align 8, !dbg !1511
  %tobool80 = icmp ne ptr %77, null, !dbg !1508
  br i1 %tobool80, label %if.then81, label %if.end84, !dbg !1512

if.then81:                                        ; preds = %if.then79
  %78 = load ptr, ptr %handler_desc, align 8, !dbg !1513
  %setup82 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %78, i32 0, i32 11, !dbg !1515
  %79 = load ptr, ptr %setup82, align 8, !dbg !1515
  %80 = load ptr, ptr %object.addr, align 8, !dbg !1516
  %81 = load ptr, ptr %handler_desc, align 8, !dbg !1517
  %context = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %81, i32 0, i32 9, !dbg !1518
  %82 = load ptr, ptr %context, align 8, !dbg !1518
  %83 = load ptr, ptr %second_desc, align 8, !dbg !1519
  %region_context = getelementptr inbounds %struct.acpi_object_extra, ptr %83, i32 0, i32 7, !dbg !1520
  %call83 = call i32 %79(ptr noundef %80, i32 noundef 1, ptr noundef %82, ptr noundef %region_context) #6, !dbg !1513
  br label %if.end84, !dbg !1521

if.end84:                                         ; preds = %if.then81, %if.then79
  br label %if.end85, !dbg !1522

if.end85:                                         ; preds = %if.end84, %while.end75
  %84 = load ptr, ptr %handler_desc, align 8, !dbg !1523
  call void @acpi_ut_remove_reference(ptr noundef %84) #6, !dbg !1524
  br label %if.end86, !dbg !1525

if.end86:                                         ; preds = %if.end85, %if.then56
  %85 = load ptr, ptr %second_desc, align 8, !dbg !1526
  call void @acpi_ut_delete_object_desc(ptr noundef %85) #6, !dbg !1527
  br label %if.end87, !dbg !1528

if.end87:                                         ; preds = %if.end86, %if.end53
  %86 = load ptr, ptr %object.addr, align 8, !dbg !1529
  %internal_pcc_buffer = getelementptr inbounds %struct.acpi_object_region_field, ptr %86, i32 0, i32 18, !dbg !1531
  %87 = load ptr, ptr %internal_pcc_buffer, align 8, !dbg !1531
  %tobool88 = icmp ne ptr %87, null, !dbg !1529
  br i1 %tobool88, label %if.then89, label %if.end91, !dbg !1532

if.then89:                                        ; preds = %if.end87
  %88 = load ptr, ptr %object.addr, align 8, !dbg !1533
  %internal_pcc_buffer90 = getelementptr inbounds %struct.acpi_object_region_field, ptr %88, i32 0, i32 18, !dbg !1533
  %89 = load ptr, ptr %internal_pcc_buffer90, align 8, !dbg !1533
  call void @acpi_os_free(ptr noundef %89) #6, !dbg !1533
  br label %if.end91, !dbg !1535

if.end91:                                         ; preds = %if.then89, %if.end87
  br label %sw.epilog, !dbg !1536

sw.bb92:                                          ; preds = %if.end
  %90 = load ptr, ptr %object.addr, align 8, !dbg !1537
  %call93 = call ptr @acpi_ns_get_secondary_object(ptr noundef %90) #6, !dbg !1538
  store ptr %call93, ptr %second_desc, align 8, !dbg !1539
  %91 = load ptr, ptr %second_desc, align 8, !dbg !1540
  %tobool94 = icmp ne ptr %91, null, !dbg !1540
  br i1 %tobool94, label %if.then95, label %if.end96, !dbg !1542

if.then95:                                        ; preds = %sw.bb92
  %92 = load ptr, ptr %second_desc, align 8, !dbg !1543
  call void @acpi_ut_delete_object_desc(ptr noundef %92) #6, !dbg !1545
  br label %if.end96, !dbg !1546

if.end96:                                         ; preds = %if.then95, %sw.bb92
  br label %sw.epilog, !dbg !1547

sw.bb97:                                          ; preds = %if.end
  %93 = load ptr, ptr %object.addr, align 8, !dbg !1548
  %call98 = call ptr @acpi_ns_get_secondary_object(ptr noundef %93) #6, !dbg !1549
  store ptr %call98, ptr %second_desc, align 8, !dbg !1550
  %94 = load ptr, ptr %second_desc, align 8, !dbg !1551
  %tobool99 = icmp ne ptr %94, null, !dbg !1551
  br i1 %tobool99, label %if.then100, label %if.end101, !dbg !1553

if.then100:                                       ; preds = %sw.bb97
  %95 = load ptr, ptr %second_desc, align 8, !dbg !1554
  call void @acpi_ut_delete_object_desc(ptr noundef %95) #6, !dbg !1556
  br label %if.end101, !dbg !1557

if.end101:                                        ; preds = %if.then100, %sw.bb97
  br label %sw.epilog, !dbg !1558

sw.bb102:                                         ; preds = %if.end
  %96 = load ptr, ptr %object.addr, align 8, !dbg !1559
  %context_mutex = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %96, i32 0, i32 10, !dbg !1559
  %97 = load ptr, ptr %context_mutex, align 8, !dbg !1559
  %call103 = call i32 @acpi_os_delete_semaphore(ptr noundef %97) #6, !dbg !1559
  br label %sw.epilog, !dbg !1560

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !1561

sw.epilog:                                        ; preds = %sw.default, %sw.bb102, %if.end101, %if.end96, %if.end91, %if.end44, %sw.bb29, %if.end28, %while.end, %sw.bb13, %if.end12, %if.end4
  %98 = load ptr, ptr %obj_pointer, align 8, !dbg !1562
  %tobool104 = icmp ne ptr %98, null, !dbg !1562
  br i1 %tobool104, label %if.then105, label %if.end106, !dbg !1564

if.then105:                                       ; preds = %sw.epilog
  %99 = load ptr, ptr %obj_pointer, align 8, !dbg !1565
  call void @acpi_os_free(ptr noundef %99) #6, !dbg !1565
  br label %if.end106, !dbg !1567

if.end106:                                        ; preds = %if.then105, %sw.epilog
  %100 = load ptr, ptr %object.addr, align 8, !dbg !1568
  call void @acpi_ut_delete_object_desc(ptr noundef %100) #6, !dbg !1569
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1570

cleanup:                                          ; preds = %if.end106, %if.then73, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_obj_ptr) #5, !dbg !1571
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_desc) #5, !dbg !1571
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_desc) #5, !dbg !1571
  call void @llvm.lifetime.end.p0(i64 8, ptr %second_desc) #5, !dbg !1571
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler_desc) #5, !dbg !1571
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_pointer) #5, !dbg !1571
  ret void, !dbg !1571
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1572 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1573 dso_local i32 @acpi_ev_delete_gpe_block(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1577 dso_local i32 @acpi_os_delete_semaphore(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1580 dso_local void @acpi_ex_unlink_mutex(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1582 dso_local void @acpi_ut_delete_object_desc(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1583 dso_local void @acpi_ut_remove_address_range(i8 noundef zeroext, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1587 dso_local ptr @acpi_ns_get_secondary_object(ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!847, !848, !849, !850, !851, !852, !853, !854}
!llvm.ident = !{!855}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !845, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utdelete.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utdelete\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utdelete.ll drivers/acpi/acpica/utdelete.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !804, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utdelete.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e961556c5a5d109785c8f0256b5fd34c")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 323, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "ACPI_REFCLASS_LOCAL", value: 0)
!10 = !DIEnumerator(name: "ACPI_REFCLASS_ARG", value: 1)
!11 = !DIEnumerator(name: "ACPI_REFCLASS_REFOF", value: 2)
!12 = !DIEnumerator(name: "ACPI_REFCLASS_INDEX", value: 3)
!13 = !DIEnumerator(name: "ACPI_REFCLASS_TABLE", value: 4)
!14 = !DIEnumerator(name: "ACPI_REFCLASS_NAME", value: 5)
!15 = !DIEnumerator(name: "ACPI_REFCLASS_DEBUG", value: 6)
!16 = !DIEnumerator(name: "ACPI_REFCLASS_MAX", value: 6)
!17 = !{!18, !24, !31, !47}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !19, line: 421, baseType: !20)
!19 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !7)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !6, line: 434, size: 1600, elements: !26)
!26 = !{!27, !36, !802, !803}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !25, file: !6, line: 435, baseType: !28, size: 128)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !6, line: 429, size: 128, elements: !29)
!29 = !{!30, !32}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !28, file: !6, line: 430, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !28, file: !6, line: 431, baseType: !33, size: 8, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !35)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !25, file: !6, line: 436, baseType: !37, size: 576)
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 369, size: 576, elements: !38)
!38 = !{!39, !51, !67, !79, !115, !129, !138, !451, !468, !484, !497, !575, !587, !601, !611, !629, !651, !670, !689, !708, !721, !748, !765, !778, !792, !801}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !37, file: !6, line: 370, baseType: !40, size: 128)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !41)
!41 = !{!42, !44, !45, !46, !50}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !40, file: !6, line: 74, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !40, file: !6, line: 74, baseType: !33, size: 8, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !6, line: 74, baseType: !33, size: 8, offset: 72)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !40, file: !6, line: 74, baseType: !47, size: 16, offset: 80)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !21, line: 19, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !49)
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !40, file: !6, line: 74, baseType: !33, size: 8, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !37, file: !6, line: 371, baseType: !52, size: 192)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !53)
!53 = !{!54, !55, !56, !57, !58, !59, !63}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !52, file: !6, line: 77, baseType: !43, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !52, file: !6, line: 77, baseType: !33, size: 8, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !6, line: 77, baseType: !33, size: 8, offset: 72)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !52, file: !6, line: 77, baseType: !47, size: 16, offset: 80)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !6, line: 77, baseType: !33, size: 8, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !52, file: !6, line: 77, baseType: !60, size: 24, offset: 104)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 24, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 3)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !52, file: !6, line: 78, baseType: !64, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !66)
!66 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !37, file: !6, line: 372, baseType: !68, size: 256)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !78}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !68, file: !6, line: 94, baseType: !43, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !68, file: !6, line: 94, baseType: !33, size: 8, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !6, line: 94, baseType: !33, size: 8, offset: 72)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !68, file: !6, line: 94, baseType: !47, size: 16, offset: 80)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !68, file: !6, line: 94, baseType: !33, size: 8, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !68, file: !6, line: 94, baseType: !76, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !68, file: !6, line: 94, baseType: !20, size: 32, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !37, file: !6, line: 373, baseType: !80, size: 384)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !89, !90, !91, !92}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !80, file: !6, line: 98, baseType: !43, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !80, file: !6, line: 98, baseType: !33, size: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !6, line: 98, baseType: !33, size: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !80, file: !6, line: 98, baseType: !47, size: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !6, line: 98, baseType: !33, size: 8, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !80, file: !6, line: 98, baseType: !88, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !80, file: !6, line: 98, baseType: !20, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !80, file: !6, line: 99, baseType: !20, size: 32, offset: 224)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !80, file: !6, line: 100, baseType: !88, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !80, file: !6, line: 101, baseType: !93, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !95, line: 133, size: 384, elements: !96)
!95 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!96 = !{!97, !98, !99, !100, !101, !110, !111, !112, !113}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !94, file: !95, line: 134, baseType: !43, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !95, line: 135, baseType: !33, size: 8, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !95, line: 136, baseType: !33, size: 8, offset: 72)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !95, line: 137, baseType: !47, size: 16, offset: 80)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !94, file: !95, line: 138, baseType: !102, size: 32, offset: 96)
!102 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !103, line: 328, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !102, file: !103, line: 329, baseType: !20, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !102, file: !103, line: 330, baseType: !107, size: 32)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 32, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 4)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !94, file: !95, line: 139, baseType: !93, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !94, file: !95, line: 140, baseType: !93, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !94, file: !95, line: 141, baseType: !93, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !94, file: !95, line: 142, baseType: !114, size: 16, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !19, line: 445, baseType: !47)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !37, file: !6, line: 374, baseType: !116, size: 384)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !126, !127, !128}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !116, file: !6, line: 105, baseType: !43, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !116, file: !6, line: 105, baseType: !33, size: 8, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !6, line: 105, baseType: !33, size: 8, offset: 72)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !116, file: !6, line: 105, baseType: !47, size: 16, offset: 80)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !6, line: 105, baseType: !33, size: 8, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !116, file: !6, line: 105, baseType: !93, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !116, file: !6, line: 106, baseType: !125, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !116, file: !6, line: 107, baseType: !88, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !116, file: !6, line: 108, baseType: !20, size: 32, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !116, file: !6, line: 109, baseType: !20, size: 32, offset: 352)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !37, file: !6, line: 375, baseType: !130, size: 192)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !130, file: !6, line: 119, baseType: !43, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !130, file: !6, line: 119, baseType: !33, size: 8, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !6, line: 119, baseType: !33, size: 8, offset: 72)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !130, file: !6, line: 119, baseType: !47, size: 16, offset: 80)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !6, line: 119, baseType: !33, size: 8, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !130, file: !6, line: 119, baseType: !31, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !37, file: !6, line: 376, baseType: !139, size: 448)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 144, size: 448, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !448, !449, !450}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !139, file: !6, line: 145, baseType: !43, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !139, file: !6, line: 145, baseType: !33, size: 8, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !6, line: 145, baseType: !33, size: 8, offset: 72)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !139, file: !6, line: 145, baseType: !47, size: 16, offset: 80)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !6, line: 145, baseType: !33, size: 8, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !139, file: !6, line: 145, baseType: !33, size: 8, offset: 104)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !139, file: !6, line: 146, baseType: !33, size: 8, offset: 112)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !139, file: !6, line: 147, baseType: !33, size: 8, offset: 120)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !139, file: !6, line: 148, baseType: !43, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !139, file: !6, line: 149, baseType: !43, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !139, file: !6, line: 150, baseType: !88, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !139, file: !6, line: 154, baseType: !153, size: 64, offset: 320)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !6, line: 151, size: 64, elements: !154)
!154 = !{!155, !447}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !153, file: !6, line: 152, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !95, line: 248, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!18, !160}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !162, line: 37, size: 9024, elements: !163)
!162 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !393, !394, !395, !396, !397, !401, !403, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !430, !431, !432, !433, !434, !435, !436, !437, !439, !445}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !162, line: 38, baseType: !160, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !161, file: !162, line: 39, baseType: !33, size: 8, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !161, file: !162, line: 40, baseType: !33, size: 8, offset: 72)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !161, file: !162, line: 41, baseType: !47, size: 16, offset: 80)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !161, file: !162, line: 42, baseType: !33, size: 8, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !161, file: !162, line: 43, baseType: !33, size: 8, offset: 104)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !161, file: !162, line: 44, baseType: !33, size: 8, offset: 112)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !161, file: !162, line: 45, baseType: !114, size: 16, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !161, file: !162, line: 46, baseType: !33, size: 8, offset: 144)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !161, file: !162, line: 47, baseType: !33, size: 8, offset: 152)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !161, file: !162, line: 48, baseType: !33, size: 8, offset: 160)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !161, file: !162, line: 49, baseType: !33, size: 8, offset: 168)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !161, file: !162, line: 50, baseType: !33, size: 8, offset: 176)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !161, file: !162, line: 51, baseType: !33, size: 8, offset: 184)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !161, file: !162, line: 52, baseType: !33, size: 8, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !161, file: !162, line: 53, baseType: !33, size: 8, offset: 200)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !161, file: !162, line: 54, baseType: !88, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !161, file: !162, line: 55, baseType: !20, size: 32, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !161, file: !162, line: 56, baseType: !20, size: 32, offset: 352)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !161, file: !162, line: 57, baseType: !20, size: 32, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !161, file: !162, line: 58, baseType: !20, size: 32, offset: 416)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !161, file: !162, line: 60, baseType: !186, size: 640, offset: 448)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !95, line: 909, size: 640, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !274, !275, !391, !392}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !186, file: !95, line: 910, baseType: !88, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !186, file: !95, line: 911, baseType: !88, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !186, file: !95, line: 912, baseType: !88, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !186, file: !95, line: 913, baseType: !88, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !186, file: !95, line: 914, baseType: !88, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !186, file: !95, line: 915, baseType: !194, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !95, line: 891, size: 1600, elements: !196)
!196 = !{!197, !217, !233}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !195, file: !95, line: 892, baseType: !198, size: 448)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !95, line: 844, size: 448, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !216}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !198, file: !95, line: 845, baseType: !194, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !198, file: !95, line: 845, baseType: !33, size: 8, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !95, line: 845, baseType: !33, size: 8, offset: 72)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !198, file: !95, line: 845, baseType: !47, size: 16, offset: 80)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !198, file: !95, line: 845, baseType: !88, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !95, line: 845, baseType: !194, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !198, file: !95, line: 845, baseType: !93, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !198, file: !95, line: 845, baseType: !208, size: 64, offset: 320)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !95, line: 732, size: 64, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !208, file: !95, line: 733, baseType: !64, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !208, file: !95, line: 734, baseType: !20, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !208, file: !95, line: 735, baseType: !76, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !208, file: !95, line: 736, baseType: !88, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !95, line: 737, baseType: !76, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !208, file: !95, line: 738, baseType: !194, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !198, file: !95, line: 845, baseType: !33, size: 8, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !195, file: !95, line: 893, baseType: !218, size: 640)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !95, line: 851, size: 640, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !218, file: !95, line: 852, baseType: !194, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !218, file: !95, line: 852, baseType: !33, size: 8, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !218, file: !95, line: 852, baseType: !33, size: 8, offset: 72)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !218, file: !95, line: 852, baseType: !47, size: 16, offset: 80)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !218, file: !95, line: 852, baseType: !88, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !218, file: !95, line: 852, baseType: !194, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !218, file: !95, line: 852, baseType: !93, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !218, file: !95, line: 852, baseType: !208, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !218, file: !95, line: 852, baseType: !33, size: 8, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !218, file: !95, line: 852, baseType: !76, size: 64, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !218, file: !95, line: 853, baseType: !88, size: 64, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !218, file: !95, line: 854, baseType: !20, size: 32, offset: 576)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !218, file: !95, line: 855, baseType: !20, size: 32, offset: 608)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !195, file: !95, line: 894, baseType: !234, size: 1600)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !95, line: 862, size: 1600, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !234, file: !95, line: 863, baseType: !194, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !234, file: !95, line: 863, baseType: !33, size: 8, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !234, file: !95, line: 863, baseType: !33, size: 8, offset: 72)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !234, file: !95, line: 863, baseType: !47, size: 16, offset: 80)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !234, file: !95, line: 863, baseType: !88, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !234, file: !95, line: 863, baseType: !194, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !234, file: !95, line: 863, baseType: !93, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !234, file: !95, line: 863, baseType: !208, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !234, file: !95, line: 863, baseType: !33, size: 8, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !234, file: !95, line: 863, baseType: !194, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !234, file: !95, line: 864, baseType: !194, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !234, file: !95, line: 865, baseType: !76, size: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !234, file: !95, line: 866, baseType: !33, size: 8, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !234, file: !95, line: 867, baseType: !76, size: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !234, file: !95, line: 868, baseType: !76, size: 64, offset: 768)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !234, file: !95, line: 869, baseType: !76, size: 64, offset: 832)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !234, file: !95, line: 870, baseType: !107, size: 32, offset: 896)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !234, file: !95, line: 871, baseType: !20, size: 32, offset: 928)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !234, file: !95, line: 872, baseType: !20, size: 32, offset: 960)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !234, file: !95, line: 873, baseType: !20, size: 32, offset: 992)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !234, file: !95, line: 874, baseType: !20, size: 32, offset: 1024)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !234, file: !95, line: 875, baseType: !20, size: 32, offset: 1056)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !234, file: !95, line: 876, baseType: !20, size: 32, offset: 1088)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !234, file: !95, line: 877, baseType: !20, size: 32, offset: 1120)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !234, file: !95, line: 878, baseType: !20, size: 32, offset: 1152)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !234, file: !95, line: 879, baseType: !20, size: 32, offset: 1184)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !234, file: !95, line: 880, baseType: !20, size: 32, offset: 1216)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !234, file: !95, line: 881, baseType: !20, size: 32, offset: 1248)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !234, file: !95, line: 882, baseType: !20, size: 32, offset: 1280)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !234, file: !95, line: 883, baseType: !20, size: 32, offset: 1312)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !234, file: !95, line: 884, baseType: !47, size: 16, offset: 1344)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !234, file: !95, line: 885, baseType: !33, size: 8, offset: 1360)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !234, file: !95, line: 886, baseType: !33, size: 8, offset: 1368)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !234, file: !95, line: 887, baseType: !33, size: 8, offset: 1376)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !234, file: !95, line: 888, baseType: !271, size: 160, offset: 1384)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 160, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 20)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !186, file: !95, line: 916, baseType: !93, size: 64, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !186, file: !95, line: 917, baseType: !276, size: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !95, line: 679, size: 640, elements: !278)
!278 = !{!279, !287, !300, !309, !318, !331, !345, !357, !369}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !277, file: !95, line: 680, baseType: !280, size: 128)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !95, line: 575, size: 128, elements: !281)
!281 = !{!282, !283, !284, !285, !286}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !280, file: !95, line: 576, baseType: !31, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !280, file: !95, line: 576, baseType: !33, size: 8, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !280, file: !95, line: 576, baseType: !33, size: 8, offset: 72)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !280, file: !95, line: 576, baseType: !47, size: 16, offset: 80)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !280, file: !95, line: 576, baseType: !47, size: 16, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !277, file: !95, line: 681, baseType: !288, size: 384)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !95, line: 604, size: 384, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !95, line: 605, baseType: !31, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !288, file: !95, line: 605, baseType: !33, size: 8, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !95, line: 605, baseType: !33, size: 8, offset: 72)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !95, line: 605, baseType: !47, size: 16, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !288, file: !95, line: 605, baseType: !47, size: 16, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !288, file: !95, line: 606, baseType: !47, size: 16, offset: 112)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !288, file: !95, line: 607, baseType: !194, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !288, file: !95, line: 608, baseType: !88, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !288, file: !95, line: 609, baseType: !88, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !288, file: !95, line: 610, baseType: !64, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !277, file: !95, line: 682, baseType: !301, size: 192)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !95, line: 582, size: 192, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !95, line: 583, baseType: !31, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !301, file: !95, line: 583, baseType: !33, size: 8, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !95, line: 583, baseType: !33, size: 8, offset: 72)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !301, file: !95, line: 583, baseType: !47, size: 16, offset: 80)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !301, file: !95, line: 583, baseType: !47, size: 16, offset: 96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !301, file: !95, line: 584, baseType: !43, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !277, file: !95, line: 683, baseType: !310, size: 192)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !95, line: 616, size: 192, elements: !311)
!311 = !{!312, !313, !314, !315, !316, !317}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !95, line: 617, baseType: !31, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !310, file: !95, line: 617, baseType: !33, size: 8, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !95, line: 617, baseType: !33, size: 8, offset: 72)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !310, file: !95, line: 617, baseType: !47, size: 16, offset: 80)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !310, file: !95, line: 617, baseType: !47, size: 16, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !310, file: !95, line: 618, baseType: !93, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !277, file: !95, line: 684, baseType: !319, size: 448)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !95, line: 621, size: 448, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !95, line: 622, baseType: !31, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !319, file: !95, line: 622, baseType: !33, size: 8, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !95, line: 622, baseType: !33, size: 8, offset: 72)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !319, file: !95, line: 622, baseType: !47, size: 16, offset: 80)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !319, file: !95, line: 622, baseType: !47, size: 16, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !319, file: !95, line: 623, baseType: !20, size: 32, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !319, file: !95, line: 624, baseType: !194, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !319, file: !95, line: 625, baseType: !88, size: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !319, file: !95, line: 626, baseType: !88, size: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !319, file: !95, line: 627, baseType: !20, size: 32, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !277, file: !95, line: 685, baseType: !332, size: 512)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !95, line: 590, size: 512, elements: !333)
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !95, line: 591, baseType: !31, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !332, file: !95, line: 591, baseType: !33, size: 8, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !95, line: 591, baseType: !33, size: 8, offset: 72)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !332, file: !95, line: 591, baseType: !47, size: 16, offset: 80)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !332, file: !95, line: 591, baseType: !47, size: 16, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !332, file: !95, line: 592, baseType: !20, size: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !332, file: !95, line: 593, baseType: !43, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !332, file: !95, line: 594, baseType: !43, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !332, file: !95, line: 595, baseType: !160, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !332, file: !95, line: 596, baseType: !31, size: 64, offset: 384)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !332, file: !95, line: 597, baseType: !20, size: 32, offset: 448)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !277, file: !95, line: 686, baseType: !346, size: 320)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !95, line: 634, size: 320, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355, !356}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !95, line: 635, baseType: !31, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !346, file: !95, line: 635, baseType: !33, size: 8, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !95, line: 635, baseType: !33, size: 8, offset: 72)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !346, file: !95, line: 635, baseType: !47, size: 16, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !95, line: 635, baseType: !47, size: 16, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !346, file: !95, line: 636, baseType: !33, size: 8, offset: 112)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !346, file: !95, line: 637, baseType: !160, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !346, file: !95, line: 638, baseType: !43, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !346, file: !95, line: 639, baseType: !64, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !277, file: !95, line: 687, baseType: !358, size: 640)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !95, line: 646, size: 640, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !95, line: 647, baseType: !31, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !358, file: !95, line: 647, baseType: !33, size: 8, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !358, file: !95, line: 647, baseType: !33, size: 8, offset: 72)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !358, file: !95, line: 647, baseType: !47, size: 16, offset: 80)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !358, file: !95, line: 647, baseType: !47, size: 16, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !358, file: !95, line: 648, baseType: !366, size: 512, offset: 128)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 512, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 8)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !277, file: !95, line: 688, baseType: !370, size: 320)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !95, line: 669, size: 320, elements: !371)
!371 = !{!372, !373, !374, !375, !376, !377, !378, !379, !380}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !370, file: !95, line: 670, baseType: !31, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !370, file: !95, line: 670, baseType: !33, size: 8, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !370, file: !95, line: 670, baseType: !33, size: 8, offset: 72)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !370, file: !95, line: 670, baseType: !47, size: 16, offset: 80)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !370, file: !95, line: 670, baseType: !47, size: 16, offset: 96)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !370, file: !95, line: 671, baseType: !33, size: 8, offset: 112)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !370, file: !95, line: 672, baseType: !93, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !370, file: !95, line: 673, baseType: !43, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !370, file: !95, line: 674, baseType: !381, size: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !95, line: 660, size: 128, elements: !383)
!383 = !{!384, !390}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !382, file: !95, line: 661, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !19, line: 1061, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !389, !20, !31}
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !19, line: 424, baseType: !31)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !382, file: !95, line: 662, baseType: !31, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !186, file: !95, line: 918, baseType: !194, size: 64, offset: 512)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !186, file: !95, line: 919, baseType: !20, size: 32, offset: 576)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !161, file: !162, line: 61, baseType: !20, size: 32, offset: 1088)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !161, file: !162, line: 62, baseType: !20, size: 32, offset: 1120)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !161, file: !162, line: 63, baseType: !47, size: 16, offset: 1152)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !161, file: !162, line: 64, baseType: !33, size: 8, offset: 1168)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !161, file: !162, line: 66, baseType: !398, size: 2688, offset: 1216)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2688, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 7)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !161, file: !162, line: 67, baseType: !402, size: 3072, offset: 3904)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 3072, elements: !367)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !161, file: !162, line: 68, baseType: !404, size: 576, offset: 6976)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 576, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 9)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !161, file: !162, line: 69, baseType: !125, size: 64, offset: 7552)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !161, file: !162, line: 71, baseType: !88, size: 64, offset: 7616)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !161, file: !162, line: 72, baseType: !125, size: 64, offset: 7680)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !161, file: !162, line: 73, baseType: !276, size: 64, offset: 7744)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !161, file: !162, line: 74, baseType: !93, size: 64, offset: 7808)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !161, file: !162, line: 75, baseType: !43, size: 64, offset: 7872)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !161, file: !162, line: 76, baseType: !93, size: 64, offset: 7936)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !161, file: !162, line: 77, baseType: !194, size: 64, offset: 8000)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !161, file: !162, line: 78, baseType: !43, size: 64, offset: 8064)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !161, file: !162, line: 79, baseType: !93, size: 64, offset: 8128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !161, file: !162, line: 80, baseType: !76, size: 64, offset: 8192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !161, file: !162, line: 81, baseType: !194, size: 64, offset: 8256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !161, file: !162, line: 82, baseType: !420, size: 64, offset: 8320)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !95, line: 718, size: 128, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !429}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !422, file: !95, line: 722, baseType: !20, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !422, file: !95, line: 723, baseType: !20, size: 32, offset: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !422, file: !95, line: 724, baseType: !47, size: 16, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !422, file: !95, line: 725, baseType: !33, size: 8, offset: 80)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !422, file: !95, line: 726, baseType: !33, size: 8, offset: 88)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !422, file: !95, line: 727, baseType: !33, size: 8, offset: 96)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !161, file: !162, line: 83, baseType: !194, size: 64, offset: 8384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !161, file: !162, line: 84, baseType: !43, size: 64, offset: 8448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !161, file: !162, line: 85, baseType: !276, size: 64, offset: 8512)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !161, file: !162, line: 86, baseType: !43, size: 64, offset: 8576)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !161, file: !162, line: 87, baseType: !276, size: 64, offset: 8640)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !161, file: !162, line: 88, baseType: !194, size: 64, offset: 8704)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !161, file: !162, line: 89, baseType: !194, size: 64, offset: 8768)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !161, file: !162, line: 90, baseType: !438, size: 64, offset: 8832)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !161, file: !162, line: 91, baseType: !440, size: 64, offset: 8896)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !95, line: 652, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!18, !160, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !161, file: !162, line: 92, baseType: !446, size: 64, offset: 8960)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !95, line: 656, baseType: !157)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !153, file: !6, line: 153, baseType: !43, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !139, file: !6, line: 156, baseType: !20, size: 32, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !139, file: !6, line: 157, baseType: !114, size: 16, offset: 416)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !139, file: !6, line: 158, baseType: !33, size: 8, offset: 432)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !37, file: !6, line: 377, baseType: !452, size: 576)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !452, file: !6, line: 123, baseType: !43, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 72)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !452, file: !6, line: 123, baseType: !47, size: 16, offset: 80)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 104)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !452, file: !6, line: 124, baseType: !47, size: 16, offset: 112)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !452, file: !6, line: 125, baseType: !31, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !452, file: !6, line: 126, baseType: !64, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !452, file: !6, line: 127, baseType: !438, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !452, file: !6, line: 128, baseType: !43, size: 64, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !452, file: !6, line: 129, baseType: !43, size: 64, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !452, file: !6, line: 130, baseType: !93, size: 64, offset: 448)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !452, file: !6, line: 131, baseType: !33, size: 8, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !37, file: !6, line: 378, baseType: !469, size: 512)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 512, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !482, !483}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !469, file: !6, line: 135, baseType: !43, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 72)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !469, file: !6, line: 135, baseType: !47, size: 16, offset: 80)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 104)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !469, file: !6, line: 136, baseType: !93, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !469, file: !6, line: 137, baseType: !43, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !469, file: !6, line: 138, baseType: !43, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !469, file: !6, line: 139, baseType: !481, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !19, line: 129, baseType: !64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !469, file: !6, line: 140, baseType: !20, size: 32, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !469, file: !6, line: 141, baseType: !31, size: 64, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !37, file: !6, line: 379, baseType: !485, size: 320)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 185, size: 320, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !496}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !485, file: !6, line: 186, baseType: !43, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !6, line: 186, baseType: !33, size: 8, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !6, line: 186, baseType: !33, size: 8, offset: 72)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !485, file: !6, line: 186, baseType: !47, size: 16, offset: 80)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !6, line: 186, baseType: !33, size: 8, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !485, file: !6, line: 186, baseType: !493, size: 128, offset: 128)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 128, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 2)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !485, file: !6, line: 186, baseType: !43, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !37, file: !6, line: 380, baseType: !498, size: 384)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 188, size: 384, elements: !499)
!499 = !{!500, !501, !502, !503, !504, !505, !506, !507}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !498, file: !6, line: 189, baseType: !43, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !498, file: !6, line: 189, baseType: !33, size: 8, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !498, file: !6, line: 189, baseType: !33, size: 8, offset: 72)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !498, file: !6, line: 189, baseType: !47, size: 16, offset: 80)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !498, file: !6, line: 189, baseType: !33, size: 8, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !498, file: !6, line: 190, baseType: !493, size: 128, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !498, file: !6, line: 190, baseType: !43, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !498, file: !6, line: 190, baseType: !508, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !95, line: 480, size: 576, elements: !510)
!510 = !{!511, !512, !513, !514, !522, !537, !569, !570, !571, !572, !573, !574}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !509, file: !95, line: 481, baseType: !93, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !509, file: !95, line: 482, baseType: !508, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !95, line: 483, baseType: !508, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !509, file: !95, line: 484, baseType: !515, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !95, line: 497, size: 256, elements: !517)
!517 = !{!518, !519, !520, !521}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !516, file: !95, line: 498, baseType: !515, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !516, file: !95, line: 499, baseType: !515, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !516, file: !95, line: 500, baseType: !508, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !516, file: !95, line: 501, baseType: !20, size: 32, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !509, file: !95, line: 485, baseType: !523, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !95, line: 466, size: 320, elements: !525)
!525 = !{!526, !531, !532, !533, !534, !535, !536}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !524, file: !95, line: 467, baseType: !527, size: 128)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !95, line: 459, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !527, file: !95, line: 460, baseType: !33, size: 8)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !527, file: !95, line: 461, baseType: !64, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !524, file: !95, line: 468, baseType: !527, size: 128, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !524, file: !95, line: 469, baseType: !47, size: 16, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !524, file: !95, line: 470, baseType: !33, size: 8, offset: 272)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !524, file: !95, line: 471, baseType: !33, size: 8, offset: 280)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !524, file: !95, line: 472, baseType: !33, size: 8, offset: 288)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !524, file: !95, line: 473, baseType: !33, size: 8, offset: 296)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !509, file: !95, line: 486, baseType: !538, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !95, line: 448, size: 192, elements: !540)
!540 = !{!541, !564, !565, !566, !567, !568}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !539, file: !95, line: 449, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !95, line: 438, size: 64, elements: !543)
!543 = !{!544, !545, !558}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !542, file: !95, line: 439, baseType: !93, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !542, file: !95, line: 440, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !95, line: 419, size: 256, elements: !548)
!548 = !{!549, !554, !555, !556, !557}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !547, file: !95, line: 420, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !19, line: 1058, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!20, !389, !20, !31}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !547, file: !95, line: 421, baseType: !31, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !547, file: !95, line: 422, baseType: !93, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !547, file: !95, line: 423, baseType: !33, size: 8, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !547, file: !95, line: 424, baseType: !33, size: 8, offset: 200)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !542, file: !95, line: 441, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !95, line: 429, size: 128, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !560, file: !95, line: 430, baseType: !93, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !560, file: !95, line: 431, baseType: !559, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !539, file: !95, line: 450, baseType: !523, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !539, file: !95, line: 451, baseType: !33, size: 8, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !539, file: !95, line: 452, baseType: !33, size: 8, offset: 136)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !539, file: !95, line: 453, baseType: !33, size: 8, offset: 144)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !539, file: !95, line: 454, baseType: !33, size: 8, offset: 152)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !509, file: !95, line: 487, baseType: !64, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !509, file: !95, line: 488, baseType: !20, size: 32, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !509, file: !95, line: 489, baseType: !47, size: 16, offset: 480)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !509, file: !95, line: 490, baseType: !47, size: 16, offset: 496)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !509, file: !95, line: 491, baseType: !33, size: 8, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !509, file: !95, line: 492, baseType: !33, size: 8, offset: 520)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !37, file: !6, line: 381, baseType: !576, size: 384)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 193, size: 384, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !584, !585, !586}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !576, file: !6, line: 194, baseType: !43, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !576, file: !6, line: 194, baseType: !33, size: 8, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !576, file: !6, line: 194, baseType: !33, size: 8, offset: 72)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !576, file: !6, line: 194, baseType: !47, size: 16, offset: 80)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !576, file: !6, line: 194, baseType: !33, size: 8, offset: 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !576, file: !6, line: 194, baseType: !493, size: 128, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !576, file: !6, line: 194, baseType: !43, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !576, file: !6, line: 194, baseType: !20, size: 32, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !576, file: !6, line: 195, baseType: !20, size: 32, offset: 352)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !37, file: !6, line: 382, baseType: !588, size: 384)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 198, size: 384, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !588, file: !6, line: 199, baseType: !43, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !588, file: !6, line: 199, baseType: !33, size: 8, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !588, file: !6, line: 199, baseType: !33, size: 8, offset: 72)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !588, file: !6, line: 199, baseType: !47, size: 16, offset: 80)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !588, file: !6, line: 199, baseType: !33, size: 8, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !588, file: !6, line: 201, baseType: !33, size: 8, offset: 104)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !588, file: !6, line: 202, baseType: !33, size: 8, offset: 112)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !588, file: !6, line: 203, baseType: !493, size: 128, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !588, file: !6, line: 203, baseType: !43, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !588, file: !6, line: 203, baseType: !600, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !19, line: 128, baseType: !64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !37, file: !6, line: 383, baseType: !602, size: 320)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 206, size: 320, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !602, file: !6, line: 207, baseType: !43, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !602, file: !6, line: 207, baseType: !33, size: 8, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !602, file: !6, line: 207, baseType: !33, size: 8, offset: 72)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !602, file: !6, line: 207, baseType: !47, size: 16, offset: 80)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !602, file: !6, line: 207, baseType: !33, size: 8, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !602, file: !6, line: 207, baseType: !493, size: 128, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !602, file: !6, line: 207, baseType: !43, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !37, file: !6, line: 384, baseType: !612, size: 384)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 234, size: 384, elements: !613)
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !612, file: !6, line: 235, baseType: !43, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 72)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !612, file: !6, line: 235, baseType: !47, size: 16, offset: 80)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 104)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 112)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 120)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !612, file: !6, line: 235, baseType: !93, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !612, file: !6, line: 235, baseType: !20, size: 32, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !612, file: !6, line: 235, baseType: !20, size: 32, offset: 224)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !612, file: !6, line: 235, baseType: !20, size: 32, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 288)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 296)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !612, file: !6, line: 235, baseType: !43, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !37, file: !6, line: 385, baseType: !630, size: 576)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 238, size: 576, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !630, file: !6, line: 239, baseType: !43, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 72)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !630, file: !6, line: 239, baseType: !47, size: 16, offset: 80)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 96)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 104)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 112)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 120)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !630, file: !6, line: 239, baseType: !93, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !630, file: !6, line: 239, baseType: !20, size: 32, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !630, file: !6, line: 239, baseType: !20, size: 32, offset: 224)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !630, file: !6, line: 239, baseType: !20, size: 32, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 288)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 296)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !630, file: !6, line: 239, baseType: !47, size: 16, offset: 304)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !630, file: !6, line: 240, baseType: !43, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !630, file: !6, line: 241, baseType: !88, size: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !630, file: !6, line: 242, baseType: !47, size: 16, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !630, file: !6, line: 243, baseType: !88, size: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !37, file: !6, line: 386, baseType: !652, size: 384)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 263, size: 384, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !652, file: !6, line: 264, baseType: !43, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 72)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !652, file: !6, line: 264, baseType: !47, size: 16, offset: 80)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 104)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 112)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 120)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !652, file: !6, line: 264, baseType: !93, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !652, file: !6, line: 264, baseType: !20, size: 32, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !652, file: !6, line: 264, baseType: !20, size: 32, offset: 224)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !652, file: !6, line: 264, baseType: !20, size: 32, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 288)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 296)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 304)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !652, file: !6, line: 265, baseType: !43, size: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !37, file: !6, line: 387, baseType: !671, size: 448)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 246, size: 448, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !671, file: !6, line: 247, baseType: !43, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 72)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !671, file: !6, line: 247, baseType: !47, size: 16, offset: 80)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 104)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 120)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !671, file: !6, line: 247, baseType: !93, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !671, file: !6, line: 247, baseType: !20, size: 32, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !671, file: !6, line: 247, baseType: !20, size: 32, offset: 224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !671, file: !6, line: 247, baseType: !20, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 288)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 296)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !671, file: !6, line: 247, baseType: !43, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !671, file: !6, line: 248, baseType: !43, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !37, file: !6, line: 388, baseType: !690, size: 448)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 251, size: 448, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !690, file: !6, line: 252, baseType: !43, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 72)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !690, file: !6, line: 252, baseType: !47, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 104)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 112)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 120)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !690, file: !6, line: 252, baseType: !93, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !690, file: !6, line: 252, baseType: !20, size: 32, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !690, file: !6, line: 252, baseType: !20, size: 32, offset: 224)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !690, file: !6, line: 252, baseType: !20, size: 32, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 288)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 296)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !690, file: !6, line: 257, baseType: !43, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !690, file: !6, line: 258, baseType: !43, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !37, file: !6, line: 389, baseType: !709, size: 512)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 274, size: 512, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719, !720}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !709, file: !6, line: 275, baseType: !43, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !6, line: 275, baseType: !33, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !6, line: 275, baseType: !33, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !709, file: !6, line: 275, baseType: !47, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !6, line: 275, baseType: !33, size: 8, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !6, line: 275, baseType: !93, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !709, file: !6, line: 276, baseType: !20, size: 32, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !709, file: !6, line: 277, baseType: !385, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !709, file: !6, line: 278, baseType: !31, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !6, line: 279, baseType: !493, size: 128, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !37, file: !6, line: 390, baseType: !722, size: 576)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 282, size: 576, elements: !723)
!723 = !{!724, !725, !726, !727, !728, !729, !730, !731, !737, !738, !739, !740, !746, !747}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !722, file: !6, line: 283, baseType: !43, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !722, file: !6, line: 283, baseType: !33, size: 8, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !722, file: !6, line: 283, baseType: !33, size: 8, offset: 72)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !722, file: !6, line: 283, baseType: !47, size: 16, offset: 80)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !722, file: !6, line: 283, baseType: !33, size: 8, offset: 96)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !722, file: !6, line: 283, baseType: !33, size: 8, offset: 104)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !722, file: !6, line: 284, baseType: !33, size: 8, offset: 112)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !722, file: !6, line: 285, baseType: !732, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !19, line: 1093, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!18, !20, !481, !20, !736, !31, !31}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !722, file: !6, line: 286, baseType: !93, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !722, file: !6, line: 287, baseType: !31, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !722, file: !6, line: 288, baseType: !31, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !722, file: !6, line: 289, baseType: !741, size: 64, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !19, line: 1126, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!18, !389, !20, !31, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !722, file: !6, line: 290, baseType: !43, size: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !722, file: !6, line: 291, baseType: !43, size: 64, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !37, file: !6, line: 391, baseType: !749, size: 512)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 309, size: 512, elements: !750)
!750 = !{!751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !749, file: !6, line: 310, baseType: !43, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !749, file: !6, line: 310, baseType: !33, size: 8, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !749, file: !6, line: 310, baseType: !33, size: 8, offset: 72)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !749, file: !6, line: 310, baseType: !47, size: 16, offset: 80)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !749, file: !6, line: 310, baseType: !33, size: 8, offset: 96)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !749, file: !6, line: 310, baseType: !33, size: 8, offset: 104)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !749, file: !6, line: 311, baseType: !33, size: 8, offset: 112)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !749, file: !6, line: 312, baseType: !33, size: 8, offset: 120)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !749, file: !6, line: 313, baseType: !31, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !749, file: !6, line: 314, baseType: !93, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !749, file: !6, line: 315, baseType: !125, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !749, file: !6, line: 316, baseType: !88, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !749, file: !6, line: 317, baseType: !88, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !749, file: !6, line: 318, baseType: !20, size: 32, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !37, file: !6, line: 392, baseType: !766, size: 448)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 342, size: 448, elements: !767)
!767 = !{!768, !769, !770, !771, !772, !773, !774, !775, !776, !777}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !766, file: !6, line: 343, baseType: !43, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !766, file: !6, line: 343, baseType: !33, size: 8, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !766, file: !6, line: 343, baseType: !33, size: 8, offset: 72)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !766, file: !6, line: 343, baseType: !47, size: 16, offset: 80)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !766, file: !6, line: 343, baseType: !33, size: 8, offset: 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !766, file: !6, line: 343, baseType: !93, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !766, file: !6, line: 344, baseType: !93, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !766, file: !6, line: 345, baseType: !31, size: 64, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !766, file: !6, line: 346, baseType: !88, size: 64, offset: 320)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !766, file: !6, line: 347, baseType: !20, size: 32, offset: 384)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !37, file: !6, line: 393, baseType: !779, size: 256)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 352, size: 256, elements: !780)
!780 = !{!781, !782, !783, !784, !785, !786, !791}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !779, file: !6, line: 353, baseType: !43, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !779, file: !6, line: 353, baseType: !33, size: 8, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !779, file: !6, line: 353, baseType: !33, size: 8, offset: 72)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !779, file: !6, line: 353, baseType: !47, size: 16, offset: 80)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !779, file: !6, line: 353, baseType: !33, size: 8, offset: 96)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !779, file: !6, line: 353, baseType: !787, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !19, line: 1064, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{null, !389, !31}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !779, file: !6, line: 354, baseType: !31, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !37, file: !6, line: 394, baseType: !793, size: 192)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 359, size: 192, elements: !794)
!794 = !{!795, !796, !797, !798, !799, !800}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !793, file: !6, line: 360, baseType: !43, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !793, file: !6, line: 360, baseType: !33, size: 8, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !793, file: !6, line: 360, baseType: !33, size: 8, offset: 72)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !793, file: !6, line: 360, baseType: !47, size: 16, offset: 80)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !793, file: !6, line: 360, baseType: !33, size: 8, offset: 96)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !793, file: !6, line: 360, baseType: !43, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !37, file: !6, line: 401, baseType: !94, size: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !25, file: !6, line: 437, baseType: !94, size: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !25, file: !6, line: 438, baseType: !195, size: 1600)
!804 = !{!805, !810, !815, !820, !825, !830, !835, !840, !0}
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(scope: null, file: !3, line: 651, type: !807, isLocal: true, isDefinition: true)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 320, elements: !808)
!808 = !{!809}
!809 = !DISubrange(count: 40)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !3, line: 397, type: !812, isLocal: true, isDefinition: true)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 408, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 51)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !3, line: 407, type: !817, isLocal: true, isDefinition: true)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 96, elements: !818)
!818 = !{!819}
!819 = !DISubrange(count: 12)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(scope: null, file: !3, line: 422, type: !822, isLocal: true, isDefinition: true)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 472, elements: !823)
!823 = !{!824}
!824 = !DISubrange(count: 59)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(scope: null, file: !3, line: 438, type: !827, isLocal: true, isDefinition: true)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 80, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 10)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(scope: null, file: !3, line: 444, type: !832, isLocal: true, isDefinition: true)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 304, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 38)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(scope: null, file: !3, line: 454, type: !837, isLocal: true, isDefinition: true)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 544, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 68)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(scope: null, file: !3, line: 228, type: !842, isLocal: true, isDefinition: true)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 400, elements: !843)
!843 = !{!844}
!844 = !DISubrange(count: 50)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !846, size: 72, elements: !405)
!846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!847 = !{i32 7, !"Dwarf Version", i32 5}
!848 = !{i32 2, !"Debug Info Version", i32 3}
!849 = !{i32 1, !"wchar_size", i32 2}
!850 = !{i32 8, !"cf-protection-branch", i32 1}
!851 = !{i32 4, !"function_return_thunk_extern", i32 1}
!852 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!853 = !{i32 1, !"Code Model", i32 2}
!854 = !{i32 1, !"override-stack-alignment", i32 8}
!855 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!856 = distinct !DISubprogram(name: "acpi_ut_delete_internal_object_list", scope: !3, file: !3, line: 333, type: !857, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !859)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !125}
!859 = !{!860, !861}
!860 = !DILocalVariable(name: "obj_list", arg: 1, scope: !856, file: !3, line: 333, type: !125)
!861 = !DILocalVariable(name: "internal_obj", scope: !856, file: !3, line: 335, type: !125)
!862 = !DILocation(line: 333, column: 70, scope: !856)
!863 = !DILocation(line: 335, column: 2, scope: !856)
!864 = !DILocation(line: 335, column: 30, scope: !856)
!865 = !DILocation(line: 341, column: 22, scope: !866)
!866 = distinct !DILexicalBlock(scope: !856, file: !3, line: 341, column: 2)
!867 = !DILocation(line: 341, column: 20, scope: !866)
!868 = !DILocation(line: 341, column: 7, scope: !866)
!869 = !DILocation(line: 341, column: 33, scope: !870)
!870 = distinct !DILexicalBlock(scope: !866, file: !3, line: 341, column: 2)
!871 = !DILocation(line: 341, column: 32, scope: !870)
!872 = !DILocation(line: 341, column: 2, scope: !866)
!873 = !DILocation(line: 342, column: 29, scope: !874)
!874 = distinct !DILexicalBlock(scope: !870, file: !3, line: 341, column: 63)
!875 = !DILocation(line: 342, column: 28, scope: !874)
!876 = !DILocation(line: 342, column: 3, scope: !874)
!877 = !DILocation(line: 343, column: 2, scope: !874)
!878 = !DILocation(line: 341, column: 59, scope: !870)
!879 = !DILocation(line: 341, column: 2, scope: !870)
!880 = distinct !{!880, !872, !881, !882, !883}
!881 = !DILocation(line: 343, column: 2, scope: !866)
!882 = !{!"llvm.loop.mustprogress"}
!883 = !{!"llvm.loop.unroll.disable"}
!884 = !DILocation(line: 347, column: 2, scope: !856)
!885 = !DILocation(line: 349, column: 1, scope: !856)
!886 = distinct !DISubprogram(name: "acpi_ut_remove_reference", scope: !3, file: !3, line: 710, type: !887, scopeLine: 711, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !889)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !43}
!889 = !{!890}
!890 = !DILocalVariable(name: "object", arg: 1, scope: !886, file: !3, line: 710, type: !43)
!891 = !DILocation(line: 710, column: 58, scope: !886)
!892 = !DILocation(line: 719, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !886, file: !3, line: 719, column: 6)
!894 = !DILocation(line: 719, column: 14, scope: !893)
!895 = !DILocation(line: 720, column: 7, scope: !893)
!896 = !DILocation(line: 720, column: 40, scope: !893)
!897 = !DILocation(line: 719, column: 6, scope: !886)
!898 = !DILocation(line: 721, column: 3, scope: !899)
!899 = distinct !DILexicalBlock(scope: !893, file: !3, line: 720, column: 66)
!900 = !DILocation(line: 726, column: 37, scope: !901)
!901 = distinct !DILexicalBlock(scope: !886, file: !3, line: 726, column: 6)
!902 = !DILocation(line: 726, column: 7, scope: !901)
!903 = !DILocation(line: 726, column: 6, scope: !886)
!904 = !DILocation(line: 727, column: 3, scope: !905)
!905 = distinct !DILexicalBlock(scope: !901, file: !3, line: 726, column: 46)
!906 = !DILocation(line: 740, column: 40, scope: !886)
!907 = !DILocation(line: 740, column: 8, scope: !886)
!908 = !DILocation(line: 741, column: 2, scope: !886)
!909 = !DILocation(line: 742, column: 1, scope: !886)
!910 = distinct !DISubprogram(name: "acpi_os_free", scope: !911, file: !911, line: 60, type: !912, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !914)
!911 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!912 = !DISubroutineType(types: !913)
!913 = !{null, !31}
!914 = !{!915}
!915 = !DILocalVariable(name: "memory", arg: 1, scope: !910, file: !911, line: 60, type: !31)
!916 = !DILocation(line: 60, column: 39, scope: !910)
!917 = !DILocation(line: 62, column: 8, scope: !910)
!918 = !DILocation(line: 62, column: 2, scope: !910)
!919 = !DILocation(line: 63, column: 1, scope: !910)
!920 = distinct !DISubprogram(name: "acpi_ut_update_object_reference", scope: !3, file: !3, line: 482, type: !921, scopeLine: 483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !923)
!921 = !DISubroutineType(types: !922)
!922 = !{!18, !43, !47}
!923 = !{!924, !925, !926, !927, !928, !929, !930, !931, !932}
!924 = !DILocalVariable(name: "object", arg: 1, scope: !920, file: !3, line: 482, type: !43)
!925 = !DILocalVariable(name: "action", arg: 2, scope: !920, file: !3, line: 482, type: !47)
!926 = !DILocalVariable(name: "status", scope: !920, file: !3, line: 484, type: !18)
!927 = !DILocalVariable(name: "state_list", scope: !920, file: !3, line: 485, type: !276)
!928 = !DILocalVariable(name: "next_object", scope: !920, file: !3, line: 486, type: !43)
!929 = !DILocalVariable(name: "prev_object", scope: !920, file: !3, line: 487, type: !43)
!930 = !DILocalVariable(name: "state", scope: !920, file: !3, line: 488, type: !276)
!931 = !DILocalVariable(name: "i", scope: !920, file: !3, line: 489, type: !20)
!932 = !DILabel(scope: !920, name: "error_exit", file: !3, line: 649)
!933 = !DILocation(line: 482, column: 60, scope: !920)
!934 = !DILocation(line: 482, column: 72, scope: !920)
!935 = !DILocation(line: 484, column: 2, scope: !920)
!936 = !DILocation(line: 484, column: 14, scope: !920)
!937 = !DILocation(line: 485, column: 2, scope: !920)
!938 = !DILocation(line: 485, column: 28, scope: !920)
!939 = !DILocation(line: 486, column: 2, scope: !920)
!940 = !DILocation(line: 486, column: 29, scope: !920)
!941 = !DILocation(line: 487, column: 2, scope: !920)
!942 = !DILocation(line: 487, column: 29, scope: !920)
!943 = !DILocation(line: 488, column: 2, scope: !920)
!944 = !DILocation(line: 488, column: 28, scope: !920)
!945 = !DILocation(line: 489, column: 2, scope: !920)
!946 = !DILocation(line: 489, column: 6, scope: !920)
!947 = !DILocation(line: 493, column: 2, scope: !920)
!948 = !DILocation(line: 493, column: 9, scope: !920)
!949 = !DILocation(line: 497, column: 7, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !3, line: 497, column: 7)
!951 = distinct !DILexicalBlock(scope: !920, file: !3, line: 493, column: 17)
!952 = !DILocation(line: 497, column: 40, scope: !950)
!953 = !DILocation(line: 497, column: 7, scope: !951)
!954 = !DILocation(line: 500, column: 4, scope: !955)
!955 = distinct !DILexicalBlock(scope: !950, file: !3, line: 497, column: 65)
!956 = !DILocation(line: 507, column: 11, scope: !951)
!957 = !DILocation(line: 507, column: 26, scope: !951)
!958 = !DILocation(line: 507, column: 3, scope: !951)
!959 = !DILocation(line: 516, column: 11, scope: !960)
!960 = distinct !DILexicalBlock(scope: !961, file: !3, line: 516, column: 4)
!961 = distinct !DILexicalBlock(scope: !951, file: !3, line: 507, column: 32)
!962 = !DILocation(line: 516, column: 9, scope: !960)
!963 = !DILocation(line: 516, column: 16, scope: !964)
!964 = distinct !DILexicalBlock(scope: !960, file: !3, line: 516, column: 4)
!965 = !DILocation(line: 516, column: 18, scope: !964)
!966 = !DILocation(line: 516, column: 4, scope: !960)
!967 = !DILocation(line: 518, column: 9, scope: !968)
!968 = distinct !DILexicalBlock(scope: !964, file: !3, line: 516, column: 48)
!969 = !DILocation(line: 518, column: 31, scope: !968)
!970 = !DILocation(line: 518, column: 43, scope: !968)
!971 = !DILocation(line: 517, column: 17, scope: !968)
!972 = !DILocation(line: 519, column: 5, scope: !968)
!973 = !DILocation(line: 519, column: 12, scope: !968)
!974 = !DILocation(line: 521, column: 10, scope: !975)
!975 = distinct !DILexicalBlock(scope: !968, file: !3, line: 519, column: 25)
!976 = !DILocation(line: 521, column: 30, scope: !975)
!977 = !DILocation(line: 521, column: 35, scope: !975)
!978 = !DILocation(line: 520, column: 18, scope: !975)
!979 = !DILocation(line: 522, column: 31, scope: !975)
!980 = !DILocation(line: 523, column: 10, scope: !975)
!981 = !DILocation(line: 522, column: 6, scope: !975)
!982 = !DILocation(line: 524, column: 20, scope: !975)
!983 = !DILocation(line: 524, column: 18, scope: !975)
!984 = distinct !{!984, !972, !985, !882, !883}
!985 = !DILocation(line: 525, column: 5, scope: !968)
!986 = !DILocation(line: 526, column: 4, scope: !968)
!987 = !DILocation(line: 516, column: 44, scope: !964)
!988 = !DILocation(line: 516, column: 4, scope: !964)
!989 = distinct !{!989, !966, !990, !882, !883}
!990 = !DILocation(line: 526, column: 4, scope: !960)
!991 = !DILocation(line: 527, column: 4, scope: !961)
!992 = !DILocation(line: 534, column: 11, scope: !993)
!993 = distinct !DILexicalBlock(scope: !961, file: !3, line: 534, column: 4)
!994 = !DILocation(line: 534, column: 9, scope: !993)
!995 = !DILocation(line: 534, column: 16, scope: !996)
!996 = distinct !DILexicalBlock(scope: !993, file: !3, line: 534, column: 4)
!997 = !DILocation(line: 534, column: 20, scope: !996)
!998 = !DILocation(line: 534, column: 36, scope: !996)
!999 = !DILocation(line: 534, column: 18, scope: !996)
!1000 = !DILocation(line: 534, column: 4, scope: !993)
!1001 = !DILocation(line: 539, column: 19, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !996, file: !3, line: 534, column: 48)
!1003 = !DILocation(line: 539, column: 35, scope: !1002)
!1004 = !DILocation(line: 539, column: 44, scope: !1002)
!1005 = !DILocation(line: 539, column: 17, scope: !1002)
!1006 = !DILocation(line: 540, column: 10, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 540, column: 9)
!1008 = !DILocation(line: 540, column: 9, scope: !1002)
!1009 = !DILocation(line: 541, column: 6, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 540, column: 23)
!1011 = !DILocation(line: 544, column: 13, scope: !1002)
!1012 = !DILocation(line: 544, column: 33, scope: !1002)
!1013 = !DILocation(line: 544, column: 5, scope: !1002)
!1014 = !DILocation(line: 553, column: 31, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 544, column: 39)
!1016 = !DILocation(line: 554, column: 10, scope: !1015)
!1017 = !DILocation(line: 553, column: 6, scope: !1015)
!1018 = !DILocation(line: 555, column: 6, scope: !1015)
!1019 = !DILocation(line: 564, column: 11, scope: !1015)
!1020 = !DILocation(line: 564, column: 24, scope: !1015)
!1021 = !DILocation(line: 563, column: 10, scope: !1015)
!1022 = !DILocation(line: 562, column: 13, scope: !1015)
!1023 = !DILocation(line: 565, column: 10, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 565, column: 10)
!1025 = !DILocation(line: 565, column: 10, scope: !1015)
!1026 = !DILocation(line: 566, column: 7, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 565, column: 32)
!1028 = !DILocation(line: 568, column: 6, scope: !1015)
!1029 = !DILocation(line: 570, column: 4, scope: !1002)
!1030 = !DILocation(line: 534, column: 44, scope: !996)
!1031 = !DILocation(line: 534, column: 4, scope: !996)
!1032 = distinct !{!1032, !1000, !1033, !882, !883}
!1033 = !DILocation(line: 570, column: 4, scope: !993)
!1034 = !DILocation(line: 572, column: 16, scope: !961)
!1035 = !DILocation(line: 573, column: 4, scope: !961)
!1036 = !DILocation(line: 577, column: 18, scope: !961)
!1037 = !DILocation(line: 577, column: 39, scope: !961)
!1038 = !DILocation(line: 577, column: 16, scope: !961)
!1039 = !DILocation(line: 578, column: 4, scope: !961)
!1040 = !DILocation(line: 582, column: 18, scope: !961)
!1041 = !DILocation(line: 582, column: 37, scope: !961)
!1042 = !DILocation(line: 582, column: 16, scope: !961)
!1043 = !DILocation(line: 584, column: 45, scope: !961)
!1044 = !DILocation(line: 586, column: 10, scope: !961)
!1045 = !DILocation(line: 587, column: 10, scope: !961)
!1046 = !DILocation(line: 584, column: 8, scope: !961)
!1047 = !DILocation(line: 583, column: 11, scope: !961)
!1048 = !DILocation(line: 589, column: 8, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !961, file: !3, line: 589, column: 8)
!1050 = !DILocation(line: 589, column: 8, scope: !961)
!1051 = !DILocation(line: 590, column: 5, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 589, column: 30)
!1053 = !DILocation(line: 592, column: 4, scope: !961)
!1054 = !DILocation(line: 596, column: 18, scope: !961)
!1055 = !DILocation(line: 596, column: 38, scope: !961)
!1056 = !DILocation(line: 596, column: 16, scope: !961)
!1057 = !DILocation(line: 598, column: 45, scope: !961)
!1058 = !DILocation(line: 600, column: 10, scope: !961)
!1059 = !DILocation(line: 601, column: 10, scope: !961)
!1060 = !DILocation(line: 598, column: 8, scope: !961)
!1061 = !DILocation(line: 597, column: 11, scope: !961)
!1062 = !DILocation(line: 603, column: 8, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !961, file: !3, line: 603, column: 8)
!1064 = !DILocation(line: 603, column: 8, scope: !961)
!1065 = !DILocation(line: 604, column: 5, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 603, column: 30)
!1067 = !DILocation(line: 606, column: 4, scope: !961)
!1068 = !DILocation(line: 614, column: 9, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !961, file: !3, line: 614, column: 8)
!1070 = !DILocation(line: 614, column: 27, scope: !1069)
!1071 = !DILocation(line: 614, column: 33, scope: !1069)
!1072 = !DILocation(line: 614, column: 57, scope: !1069)
!1073 = !DILocation(line: 615, column: 9, scope: !1069)
!1074 = !DILocation(line: 615, column: 27, scope: !1069)
!1075 = !DILocation(line: 615, column: 33, scope: !1069)
!1076 = !DILocation(line: 614, column: 8, scope: !961)
!1077 = !DILocation(line: 616, column: 19, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 615, column: 57)
!1079 = !DILocation(line: 616, column: 37, scope: !1078)
!1080 = !DILocation(line: 616, column: 17, scope: !1078)
!1081 = !DILocation(line: 617, column: 4, scope: !1078)
!1082 = !DILocation(line: 618, column: 4, scope: !961)
!1083 = !DILocation(line: 621, column: 3, scope: !961)
!1084 = !DILocation(line: 624, column: 4, scope: !961)
!1085 = !DILocation(line: 632, column: 28, scope: !951)
!1086 = !DILocation(line: 632, column: 36, scope: !951)
!1087 = !DILocation(line: 632, column: 3, scope: !951)
!1088 = !DILocation(line: 633, column: 10, scope: !951)
!1089 = !DILocation(line: 637, column: 7, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !951, file: !3, line: 637, column: 7)
!1091 = !DILocation(line: 637, column: 7, scope: !951)
!1092 = !DILocation(line: 638, column: 13, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 637, column: 20)
!1094 = !DILocation(line: 638, column: 11, scope: !1093)
!1095 = !DILocation(line: 639, column: 16, scope: !1093)
!1096 = !DILocation(line: 640, column: 3, scope: !1093)
!1097 = !DILocation(line: 640, column: 14, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 640, column: 14)
!1099 = !DILocation(line: 640, column: 14, scope: !1090)
!1100 = !DILocation(line: 641, column: 12, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 640, column: 26)
!1102 = !DILocation(line: 641, column: 10, scope: !1101)
!1103 = !DILocation(line: 642, column: 13, scope: !1101)
!1104 = !DILocation(line: 642, column: 27, scope: !1101)
!1105 = !DILocation(line: 642, column: 11, scope: !1101)
!1106 = !DILocation(line: 643, column: 33, scope: !1101)
!1107 = !DILocation(line: 643, column: 4, scope: !1101)
!1108 = !DILocation(line: 644, column: 3, scope: !1101)
!1109 = distinct !{!1109, !947, !1110, !882, !883}
!1110 = !DILocation(line: 645, column: 2, scope: !920)
!1111 = !DILocation(line: 647, column: 2, scope: !920)
!1112 = !DILocation(line: 649, column: 1, scope: !920)
!1113 = !DILocation(line: 651, column: 2, scope: !920)
!1114 = !DILocation(line: 656, column: 2, scope: !920)
!1115 = !DILocation(line: 656, column: 9, scope: !920)
!1116 = !DILocation(line: 657, column: 11, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !920, file: !3, line: 656, column: 21)
!1118 = !DILocation(line: 657, column: 9, scope: !1117)
!1119 = !DILocation(line: 658, column: 32, scope: !1117)
!1120 = !DILocation(line: 658, column: 3, scope: !1117)
!1121 = distinct !{!1121, !1114, !1122, !882, !883}
!1122 = !DILocation(line: 659, column: 2, scope: !920)
!1123 = !DILocation(line: 661, column: 10, scope: !920)
!1124 = !DILocation(line: 661, column: 2, scope: !920)
!1125 = !DILocation(line: 662, column: 1, scope: !920)
!1126 = distinct !DISubprogram(name: "acpi_ut_update_ref_count", scope: !3, file: !3, line: 365, type: !1127, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1129)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !43, !20}
!1129 = !{!1130, !1131, !1132, !1133, !1134, !1136}
!1130 = !DILocalVariable(name: "object", arg: 1, scope: !1126, file: !3, line: 365, type: !43)
!1131 = !DILocalVariable(name: "action", arg: 2, scope: !1126, file: !3, line: 365, type: !20)
!1132 = !DILocalVariable(name: "original_count", scope: !1126, file: !3, line: 367, type: !47)
!1133 = !DILocalVariable(name: "new_count", scope: !1126, file: !3, line: 368, type: !47)
!1134 = !DILocalVariable(name: "lock_flags", scope: !1126, file: !3, line: 369, type: !1135)
!1135 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1136 = !DILocalVariable(name: "message", scope: !1126, file: !3, line: 370, type: !76)
!1137 = !DILocation(line: 365, column: 53, scope: !1126)
!1138 = !DILocation(line: 365, column: 65, scope: !1126)
!1139 = !DILocation(line: 367, column: 2, scope: !1126)
!1140 = !DILocation(line: 367, column: 6, scope: !1126)
!1141 = !DILocation(line: 368, column: 2, scope: !1126)
!1142 = !DILocation(line: 368, column: 6, scope: !1126)
!1143 = !DILocation(line: 369, column: 2, scope: !1126)
!1144 = !DILocation(line: 369, column: 17, scope: !1126)
!1145 = !DILocation(line: 370, column: 2, scope: !1126)
!1146 = !DILocation(line: 370, column: 8, scope: !1126)
!1147 = !DILocation(line: 374, column: 7, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 374, column: 6)
!1149 = !DILocation(line: 374, column: 6, scope: !1126)
!1150 = !DILocation(line: 375, column: 3, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 374, column: 15)
!1152 = !DILocation(line: 382, column: 36, scope: !1126)
!1153 = !DILocation(line: 382, column: 15, scope: !1126)
!1154 = !DILocation(line: 382, column: 13, scope: !1126)
!1155 = !DILocation(line: 383, column: 19, scope: !1126)
!1156 = !DILocation(line: 383, column: 34, scope: !1126)
!1157 = !DILocation(line: 383, column: 17, scope: !1126)
!1158 = !DILocation(line: 387, column: 10, scope: !1126)
!1159 = !DILocation(line: 387, column: 2, scope: !1126)
!1160 = !DILocation(line: 390, column: 15, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 387, column: 18)
!1162 = !DILocation(line: 390, column: 30, scope: !1161)
!1163 = !DILocation(line: 390, column: 13, scope: !1161)
!1164 = !DILocation(line: 391, column: 36, scope: !1161)
!1165 = !DILocation(line: 391, column: 3, scope: !1161)
!1166 = !DILocation(line: 391, column: 18, scope: !1161)
!1167 = !DILocation(line: 391, column: 34, scope: !1161)
!1168 = !DILocation(line: 392, column: 24, scope: !1161)
!1169 = !DILocation(line: 392, column: 55, scope: !1161)
!1170 = !DILocation(line: 392, column: 3, scope: !1161)
!1171 = !DILocation(line: 396, column: 8, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 396, column: 7)
!1173 = !DILocation(line: 396, column: 7, scope: !1161)
!1174 = !DILocation(line: 397, column: 4, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 396, column: 24)
!1176 = !DILocation(line: 400, column: 3, scope: !1175)
!1177 = !DILocation(line: 407, column: 11, scope: !1161)
!1178 = !DILocation(line: 408, column: 3, scope: !1161)
!1179 = !DILocation(line: 414, column: 7, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 414, column: 7)
!1181 = !DILocation(line: 414, column: 7, scope: !1161)
!1182 = !DILocation(line: 415, column: 16, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 414, column: 23)
!1184 = !DILocation(line: 415, column: 31, scope: !1183)
!1185 = !DILocation(line: 415, column: 14, scope: !1183)
!1186 = !DILocation(line: 416, column: 37, scope: !1183)
!1187 = !DILocation(line: 416, column: 4, scope: !1183)
!1188 = !DILocation(line: 416, column: 19, scope: !1183)
!1189 = !DILocation(line: 416, column: 35, scope: !1183)
!1190 = !DILocation(line: 417, column: 3, scope: !1183)
!1191 = !DILocation(line: 419, column: 24, scope: !1161)
!1192 = !DILocation(line: 419, column: 55, scope: !1161)
!1193 = !DILocation(line: 419, column: 3, scope: !1161)
!1194 = !DILocation(line: 421, column: 8, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 421, column: 7)
!1196 = !DILocation(line: 421, column: 7, scope: !1161)
!1197 = !DILocation(line: 422, column: 4, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 421, column: 24)
!1199 = !DILocation(line: 425, column: 4, scope: !1198)
!1200 = !DILocation(line: 435, column: 7, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 435, column: 7)
!1202 = !DILocation(line: 435, column: 17, scope: !1201)
!1203 = !DILocation(line: 435, column: 7, scope: !1161)
!1204 = !DILocation(line: 436, column: 32, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 435, column: 23)
!1206 = !DILocation(line: 436, column: 4, scope: !1205)
!1207 = !DILocation(line: 437, column: 3, scope: !1205)
!1208 = !DILocation(line: 438, column: 11, scope: !1161)
!1209 = !DILocation(line: 439, column: 3, scope: !1161)
!1210 = !DILocation(line: 443, column: 24, scope: !1161)
!1211 = !DILocation(line: 443, column: 55, scope: !1161)
!1212 = !DILocation(line: 443, column: 3, scope: !1161)
!1213 = !DILocation(line: 444, column: 3, scope: !1161)
!1214 = !DILocation(line: 446, column: 3, scope: !1161)
!1215 = !DILocation(line: 453, column: 6, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 453, column: 6)
!1217 = !DILocation(line: 453, column: 16, scope: !1216)
!1218 = !DILocation(line: 453, column: 6, scope: !1126)
!1219 = !DILocation(line: 454, column: 3, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 453, column: 44)
!1221 = !DILocation(line: 457, column: 2, scope: !1220)
!1222 = !DILocation(line: 458, column: 1, scope: !1126)
!1223 = !DISubprogram(name: "acpi_ut_create_update_state_and_push", scope: !1224, file: !1224, line: 525, type: !1225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1224 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!18, !43, !47, !1227}
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1228 = !DISubprogram(name: "acpi_ut_pop_generic_state", scope: !1224, file: !1224, line: 510, type: !1229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!276, !1227}
!1231 = !DISubprogram(name: "acpi_ut_delete_generic_state", scope: !1224, file: !1224, line: 531, type: !1232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{null, !276}
!1234 = !DISubprogram(name: "acpi_exception", scope: !1235, file: !1235, line: 906, type: !1236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1235 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !1238, !20, !18, !1238, null}
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!1239 = distinct !DISubprogram(name: "acpi_ut_add_reference", scope: !3, file: !3, line: 677, type: !887, scopeLine: 678, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1240)
!1240 = !{!1241}
!1241 = !DILocalVariable(name: "object", arg: 1, scope: !1239, file: !3, line: 677, type: !43)
!1242 = !DILocation(line: 677, column: 55, scope: !1239)
!1243 = !DILocation(line: 684, column: 37, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 684, column: 6)
!1245 = !DILocation(line: 684, column: 7, scope: !1244)
!1246 = !DILocation(line: 684, column: 6, scope: !1239)
!1247 = !DILocation(line: 685, column: 3, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 684, column: 46)
!1249 = !DILocation(line: 694, column: 40, scope: !1239)
!1250 = !DILocation(line: 694, column: 8, scope: !1239)
!1251 = !DILocation(line: 695, column: 2, scope: !1239)
!1252 = !DILocation(line: 696, column: 1, scope: !1239)
!1253 = !DISubprogram(name: "acpi_ut_valid_internal_object", scope: !1224, file: !1224, line: 451, type: !1254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!33, !31}
!1256 = !DISubprogram(name: "kfree", scope: !1257, file: !1257, line: 227, type: !1258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1257 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!1258 = !DISubroutineType(types: !1259)
!1259 = !{null, !1260}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1262 = !DISubprogram(name: "acpi_os_acquire_lock", scope: !1263, file: !1263, line: 93, type: !1264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1263 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!1135, !1266}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !1268, line: 29, baseType: !1269)
!1268 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !1268, line: 17, size: 32, elements: !1270)
!1270 = !{!1271}
!1271 = !DIDerivedType(tag: DW_TAG_member, scope: !1269, file: !1268, line: 18, baseType: !1272, size: 32)
!1272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1269, file: !1268, line: 18, size: 32, elements: !1273)
!1273 = !{!1274}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1272, file: !1268, line: 19, baseType: !1275, size: 32)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !1276, line: 14, size: 32, elements: !1277)
!1276 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!1277 = !{!1278}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1275, file: !1276, line: 15, baseType: !1279, size: 32)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !1280, line: 44, baseType: !1281)
!1280 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !1280, line: 14, size: 32, elements: !1282)
!1282 = !{!1283}
!1283 = !DIDerivedType(tag: DW_TAG_member, scope: !1281, file: !1280, line: 15, baseType: !1284, size: 32)
!1284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1281, file: !1280, line: 15, size: 32, elements: !1285)
!1285 = !{!1286, !1293, !1298}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1284, file: !1280, line: 16, baseType: !1287, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !1288, line: 174, baseType: !1289)
!1288 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1288, line: 172, size: 32, elements: !1290)
!1290 = !{!1291}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1289, file: !1288, line: 173, baseType: !1292, size: 32)
!1292 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1293 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !1280, line: 24, baseType: !1294, size: 16)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1284, file: !1280, line: 24, size: 16, elements: !1295)
!1295 = !{!1296, !1297}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !1294, file: !1280, line: 25, baseType: !33, size: 8)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1294, file: !1280, line: 26, baseType: !33, size: 8, offset: 8)
!1298 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !1280, line: 28, baseType: !1299, size: 32)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1284, file: !1280, line: 28, size: 32, elements: !1300)
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !1299, file: !1280, line: 29, baseType: !47, size: 16)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1299, file: !1280, line: 30, baseType: !47, size: 16, offset: 16)
!1303 = !DISubprogram(name: "acpi_os_release_lock", scope: !1263, file: !1263, line: 97, type: !1304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{null, !1266, !1135}
!1306 = !DISubprogram(name: "acpi_warning", scope: !1235, file: !1235, line: 912, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !1238, !20, !1238, null}
!1309 = distinct !DISubprogram(name: "acpi_ut_delete_internal_obj", scope: !3, file: !3, line: 36, type: !887, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1310)
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1316, !1317}
!1311 = !DILocalVariable(name: "object", arg: 1, scope: !1309, file: !3, line: 36, type: !43)
!1312 = !DILocalVariable(name: "obj_pointer", scope: !1309, file: !3, line: 38, type: !31)
!1313 = !DILocalVariable(name: "handler_desc", scope: !1309, file: !3, line: 39, type: !43)
!1314 = !DILocalVariable(name: "second_desc", scope: !1309, file: !3, line: 40, type: !43)
!1315 = !DILocalVariable(name: "next_desc", scope: !1309, file: !3, line: 41, type: !43)
!1316 = !DILocalVariable(name: "start_desc", scope: !1309, file: !3, line: 42, type: !43)
!1317 = !DILocalVariable(name: "last_obj_ptr", scope: !1309, file: !3, line: 43, type: !125)
!1318 = !DILocation(line: 36, column: 68, scope: !1309)
!1319 = !DILocation(line: 38, column: 2, scope: !1309)
!1320 = !DILocation(line: 38, column: 8, scope: !1309)
!1321 = !DILocation(line: 39, column: 2, scope: !1309)
!1322 = !DILocation(line: 39, column: 29, scope: !1309)
!1323 = !DILocation(line: 40, column: 2, scope: !1309)
!1324 = !DILocation(line: 40, column: 29, scope: !1309)
!1325 = !DILocation(line: 41, column: 2, scope: !1309)
!1326 = !DILocation(line: 41, column: 29, scope: !1309)
!1327 = !DILocation(line: 42, column: 2, scope: !1309)
!1328 = !DILocation(line: 42, column: 29, scope: !1309)
!1329 = !DILocation(line: 43, column: 2, scope: !1309)
!1330 = !DILocation(line: 43, column: 30, scope: !1309)
!1331 = !DILocation(line: 47, column: 7, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 47, column: 6)
!1333 = !DILocation(line: 47, column: 6, scope: !1309)
!1334 = !DILocation(line: 48, column: 3, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 47, column: 15)
!1336 = !DILocation(line: 55, column: 10, scope: !1309)
!1337 = !DILocation(line: 55, column: 25, scope: !1309)
!1338 = !DILocation(line: 55, column: 2, scope: !1309)
!1339 = !DILocation(line: 64, column: 9, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 64, column: 7)
!1341 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 55, column: 31)
!1342 = !DILocation(line: 64, column: 24, scope: !1340)
!1343 = !DILocation(line: 64, column: 30, scope: !1340)
!1344 = !DILocation(line: 64, column: 7, scope: !1341)
!1345 = !DILocation(line: 68, column: 18, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 64, column: 56)
!1347 = !DILocation(line: 68, column: 33, scope: !1346)
!1348 = !DILocation(line: 68, column: 16, scope: !1346)
!1349 = !DILocation(line: 69, column: 3, scope: !1346)
!1350 = !DILocation(line: 70, column: 3, scope: !1341)
!1351 = !DILocation(line: 80, column: 9, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 80, column: 7)
!1353 = !DILocation(line: 80, column: 24, scope: !1352)
!1354 = !DILocation(line: 80, column: 30, scope: !1352)
!1355 = !DILocation(line: 80, column: 7, scope: !1341)
!1356 = !DILocation(line: 84, column: 18, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 80, column: 56)
!1358 = !DILocation(line: 84, column: 33, scope: !1357)
!1359 = !DILocation(line: 84, column: 16, scope: !1357)
!1360 = !DILocation(line: 85, column: 3, scope: !1357)
!1361 = !DILocation(line: 86, column: 3, scope: !1341)
!1362 = !DILocation(line: 101, column: 17, scope: !1341)
!1363 = !DILocation(line: 101, column: 33, scope: !1341)
!1364 = !DILocation(line: 101, column: 15, scope: !1341)
!1365 = !DILocation(line: 102, column: 3, scope: !1341)
!1366 = !DILocation(line: 110, column: 7, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 110, column: 7)
!1368 = !DILocation(line: 110, column: 22, scope: !1367)
!1369 = !DILocation(line: 110, column: 7, scope: !1341)
!1370 = !DILocation(line: 111, column: 35, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 110, column: 33)
!1372 = !DILocation(line: 112, column: 14, scope: !1371)
!1373 = !DILocation(line: 111, column: 10, scope: !1371)
!1374 = !DILocation(line: 113, column: 3, scope: !1371)
!1375 = !DILocation(line: 122, column: 18, scope: !1341)
!1376 = !DILocation(line: 122, column: 40, scope: !1341)
!1377 = !DILocation(line: 122, column: 16, scope: !1341)
!1378 = !DILocation(line: 123, column: 3, scope: !1341)
!1379 = !DILocation(line: 123, column: 10, scope: !1341)
!1380 = !DILocation(line: 124, column: 16, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 123, column: 24)
!1382 = !DILocation(line: 124, column: 44, scope: !1381)
!1383 = !DILocation(line: 124, column: 14, scope: !1381)
!1384 = !DILocation(line: 125, column: 29, scope: !1381)
!1385 = !DILocation(line: 125, column: 4, scope: !1381)
!1386 = !DILocation(line: 126, column: 19, scope: !1381)
!1387 = !DILocation(line: 126, column: 17, scope: !1381)
!1388 = distinct !{!1388, !1378, !1389, !882, !883}
!1389 = !DILocation(line: 127, column: 3, scope: !1341)
!1390 = !DILocation(line: 128, column: 3, scope: !1341)
!1391 = !DILocation(line: 136, column: 7, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 136, column: 7)
!1393 = !DILocation(line: 136, column: 17, scope: !1392)
!1394 = !DILocation(line: 136, column: 14, scope: !1392)
!1395 = !DILocation(line: 136, column: 7, scope: !1341)
!1396 = !DILocation(line: 142, column: 9, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 136, column: 45)
!1398 = !DILocation(line: 141, column: 8, scope: !1397)
!1399 = !DILocation(line: 143, column: 35, scope: !1397)
!1400 = !DILocation(line: 145, column: 4, scope: !1397)
!1401 = !DILocation(line: 146, column: 31, scope: !1397)
!1402 = !DILocation(line: 147, column: 3, scope: !1397)
!1403 = !DILocation(line: 148, column: 25, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 147, column: 10)
!1405 = !DILocation(line: 148, column: 4, scope: !1404)
!1406 = !DILocation(line: 149, column: 4, scope: !1404)
!1407 = !DILocation(line: 151, column: 3, scope: !1341)
!1408 = !DILocation(line: 159, column: 34, scope: !1341)
!1409 = !DILocation(line: 159, column: 48, scope: !1341)
!1410 = !DILocation(line: 159, column: 9, scope: !1341)
!1411 = !DILocation(line: 160, column: 3, scope: !1341)
!1412 = !DILocation(line: 160, column: 17, scope: !1341)
!1413 = !DILocation(line: 160, column: 30, scope: !1341)
!1414 = !DILocation(line: 161, column: 3, scope: !1341)
!1415 = !DILocation(line: 170, column: 7, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 170, column: 7)
!1417 = !DILocation(line: 170, column: 22, scope: !1416)
!1418 = !DILocation(line: 170, column: 7, scope: !1341)
!1419 = !DILocation(line: 171, column: 4, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 170, column: 29)
!1421 = !DILocation(line: 173, column: 31, scope: !1420)
!1422 = !DILocation(line: 173, column: 46, scope: !1420)
!1423 = !DILocation(line: 173, column: 4, scope: !1420)
!1424 = !DILocation(line: 174, column: 4, scope: !1420)
!1425 = !DILocation(line: 174, column: 19, scope: !1420)
!1426 = !DILocation(line: 174, column: 25, scope: !1420)
!1427 = !DILocation(line: 175, column: 3, scope: !1420)
!1428 = !DILocation(line: 177, column: 7, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 177, column: 7)
!1430 = !DILocation(line: 177, column: 22, scope: !1429)
!1431 = !DILocation(line: 177, column: 7, scope: !1341)
!1432 = !DILocation(line: 178, column: 4, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 177, column: 28)
!1434 = !DILocation(line: 178, column: 19, scope: !1433)
!1435 = !DILocation(line: 178, column: 24, scope: !1433)
!1436 = !DILocation(line: 179, column: 3, scope: !1433)
!1437 = !DILocation(line: 180, column: 3, scope: !1341)
!1438 = !DILocation(line: 191, column: 9, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 191, column: 7)
!1440 = !DILocation(line: 191, column: 24, scope: !1439)
!1441 = !DILocation(line: 191, column: 30, scope: !1439)
!1442 = !DILocation(line: 191, column: 36, scope: !1439)
!1443 = !DILocation(line: 191, column: 7, scope: !1341)
!1444 = !DILocation(line: 192, column: 33, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 191, column: 56)
!1446 = !DILocation(line: 192, column: 48, scope: !1445)
!1447 = !DILocation(line: 193, column: 12, scope: !1445)
!1448 = !DILocation(line: 193, column: 27, scope: !1445)
!1449 = !DILocation(line: 192, column: 4, scope: !1445)
!1450 = !DILocation(line: 194, column: 3, scope: !1445)
!1451 = !DILocation(line: 196, column: 46, scope: !1341)
!1452 = !DILocation(line: 196, column: 17, scope: !1341)
!1453 = !DILocation(line: 196, column: 15, scope: !1341)
!1454 = !DILocation(line: 197, column: 7, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 197, column: 7)
!1456 = !DILocation(line: 197, column: 7, scope: !1341)
!1457 = !DILocation(line: 203, column: 19, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 197, column: 20)
!1459 = !DILocation(line: 203, column: 34, scope: !1458)
!1460 = !DILocation(line: 203, column: 17, scope: !1458)
!1461 = !DILocation(line: 204, column: 8, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 204, column: 8)
!1463 = !DILocation(line: 204, column: 8, scope: !1458)
!1464 = !DILocation(line: 206, column: 9, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 204, column: 22)
!1466 = !DILocation(line: 206, column: 37, scope: !1465)
!1467 = !DILocation(line: 205, column: 15, scope: !1465)
!1468 = !DILocation(line: 207, column: 18, scope: !1465)
!1469 = !DILocation(line: 207, column: 16, scope: !1465)
!1470 = !DILocation(line: 209, column: 10, scope: !1465)
!1471 = !DILocation(line: 209, column: 38, scope: !1465)
!1472 = !DILocation(line: 208, column: 18, scope: !1465)
!1473 = !DILocation(line: 213, column: 5, scope: !1465)
!1474 = !DILocation(line: 213, column: 12, scope: !1465)
!1475 = !DILocation(line: 214, column: 10, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 214, column: 10)
!1477 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 213, column: 23)
!1478 = !DILocation(line: 214, column: 23, scope: !1476)
!1479 = !DILocation(line: 214, column: 20, scope: !1476)
!1480 = !DILocation(line: 214, column: 10, scope: !1477)
!1481 = !DILocation(line: 216, column: 11, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 214, column: 31)
!1483 = !DILocation(line: 216, column: 29, scope: !1482)
!1484 = !DILocation(line: 215, column: 8, scope: !1482)
!1485 = !DILocation(line: 215, column: 21, scope: !1482)
!1486 = !DILocation(line: 217, column: 7, scope: !1482)
!1487 = !DILocation(line: 222, column: 22, scope: !1477)
!1488 = !DILocation(line: 222, column: 40, scope: !1477)
!1489 = !DILocation(line: 222, column: 19, scope: !1477)
!1490 = !DILocation(line: 223, column: 18, scope: !1477)
!1491 = !DILocation(line: 223, column: 36, scope: !1477)
!1492 = !DILocation(line: 223, column: 16, scope: !1477)
!1493 = !DILocation(line: 227, column: 10, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 227, column: 10)
!1495 = !DILocation(line: 227, column: 23, scope: !1494)
!1496 = !DILocation(line: 227, column: 20, scope: !1494)
!1497 = !DILocation(line: 227, column: 10, scope: !1477)
!1498 = !DILocation(line: 228, column: 7, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 227, column: 35)
!1500 = !DILocation(line: 231, column: 7, scope: !1499)
!1501 = distinct !{!1501, !1473, !1502, !882, !883}
!1502 = !DILocation(line: 233, column: 5, scope: !1465)
!1503 = !DILocation(line: 235, column: 9, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 235, column: 9)
!1505 = !DILocation(line: 235, column: 37, scope: !1504)
!1506 = !DILocation(line: 235, column: 51, scope: !1504)
!1507 = !DILocation(line: 235, column: 9, scope: !1465)
!1508 = !DILocation(line: 240, column: 10, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 240, column: 10)
!1510 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 236, column: 46)
!1511 = !DILocation(line: 240, column: 38, scope: !1509)
!1512 = !DILocation(line: 240, column: 10, scope: !1510)
!1513 = !DILocation(line: 241, column: 13, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 240, column: 45)
!1515 = !DILocation(line: 242, column: 25, scope: !1514)
!1516 = !DILocation(line: 242, column: 31, scope: !1514)
!1517 = !DILocation(line: 244, column: 10, scope: !1514)
!1518 = !DILocation(line: 246, column: 10, scope: !1514)
!1519 = !DILocation(line: 247, column: 11, scope: !1514)
!1520 = !DILocation(line: 249, column: 10, scope: !1514)
!1521 = !DILocation(line: 250, column: 6, scope: !1514)
!1522 = !DILocation(line: 251, column: 5, scope: !1510)
!1523 = !DILocation(line: 253, column: 30, scope: !1465)
!1524 = !DILocation(line: 253, column: 5, scope: !1465)
!1525 = !DILocation(line: 254, column: 4, scope: !1465)
!1526 = !DILocation(line: 258, column: 31, scope: !1458)
!1527 = !DILocation(line: 258, column: 4, scope: !1458)
!1528 = !DILocation(line: 259, column: 3, scope: !1458)
!1529 = !DILocation(line: 260, column: 7, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 260, column: 7)
!1531 = !DILocation(line: 260, column: 21, scope: !1530)
!1532 = !DILocation(line: 260, column: 7, scope: !1341)
!1533 = !DILocation(line: 261, column: 4, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 260, column: 42)
!1535 = !DILocation(line: 262, column: 3, scope: !1534)
!1536 = !DILocation(line: 264, column: 3, scope: !1341)
!1537 = !DILocation(line: 271, column: 46, scope: !1341)
!1538 = !DILocation(line: 271, column: 17, scope: !1341)
!1539 = !DILocation(line: 271, column: 15, scope: !1341)
!1540 = !DILocation(line: 272, column: 7, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 272, column: 7)
!1542 = !DILocation(line: 272, column: 7, scope: !1341)
!1543 = !DILocation(line: 273, column: 31, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 272, column: 20)
!1545 = !DILocation(line: 273, column: 4, scope: !1544)
!1546 = !DILocation(line: 274, column: 3, scope: !1544)
!1547 = !DILocation(line: 275, column: 3, scope: !1341)
!1548 = !DILocation(line: 282, column: 46, scope: !1341)
!1549 = !DILocation(line: 282, column: 17, scope: !1341)
!1550 = !DILocation(line: 282, column: 15, scope: !1341)
!1551 = !DILocation(line: 283, column: 7, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 283, column: 7)
!1553 = !DILocation(line: 283, column: 7, scope: !1341)
!1554 = !DILocation(line: 284, column: 31, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 283, column: 20)
!1556 = !DILocation(line: 284, column: 4, scope: !1555)
!1557 = !DILocation(line: 285, column: 3, scope: !1555)
!1558 = !DILocation(line: 286, column: 3, scope: !1341)
!1559 = !DILocation(line: 293, column: 3, scope: !1341)
!1560 = !DILocation(line: 294, column: 3, scope: !1341)
!1561 = !DILocation(line: 298, column: 3, scope: !1341)
!1562 = !DILocation(line: 303, column: 6, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 303, column: 6)
!1564 = !DILocation(line: 303, column: 6, scope: !1309)
!1565 = !DILocation(line: 306, column: 3, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 303, column: 19)
!1567 = !DILocation(line: 307, column: 2, scope: !1566)
!1568 = !DILocation(line: 316, column: 29, scope: !1309)
!1569 = !DILocation(line: 316, column: 2, scope: !1309)
!1570 = !DILocation(line: 317, column: 2, scope: !1309)
!1571 = !DILocation(line: 318, column: 1, scope: !1309)
!1572 = !DISubprogram(name: "acpi_error", scope: !1235, file: !1235, line: 901, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1573 = !DISubprogram(name: "acpi_ev_delete_gpe_block", scope: !1574, file: !1574, line: 108, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1574 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!18, !508}
!1577 = !DISubprogram(name: "acpi_os_delete_semaphore", scope: !1263, file: !1263, line: 131, type: !1578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!18, !31}
!1580 = !DISubprogram(name: "acpi_ex_unlink_mutex", scope: !1581, file: !1581, line: 260, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1581 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1582 = !DISubprogram(name: "acpi_ut_delete_object_desc", scope: !1224, file: !1224, line: 449, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1583 = !DISubprogram(name: "acpi_ut_remove_address_range", scope: !1224, file: !1224, line: 694, type: !1584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{null, !1586, !93}
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !19, line: 814, baseType: !33)
!1587 = !DISubprogram(name: "acpi_ns_get_secondary_object", scope: !1588, file: !1588, line: 302, type: !1589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1588 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!43, !43}
