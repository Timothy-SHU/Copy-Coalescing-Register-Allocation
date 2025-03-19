; ModuleID = 'drivers/acpi/acpica/utids.c'
source_filename = "drivers/acpi/acpica/utids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_string = type { ptr, i8, i8, i16, i8, ptr, i32 }
%struct.acpi_pnp_device_id = type { i32, ptr }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_package = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, i32, i32 }
%struct.acpi_pnp_device_id_list = type { i32, i32, [0 x %struct.acpi_pnp_device_id] }

@.str = private unnamed_addr constant [5 x i8] c"_HID\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"_UID\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [5 x i8] c"_CID\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [5 x i8] c"_CLS\00", align 1, !dbg !11
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !13

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_execute_HID(ptr noundef %device_node, ptr noundef %return_id) #0 align 16 !dbg !66 {
entry:
  %retval = alloca i32, align 4
  %device_node.addr = alloca ptr, align 8
  %return_id.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %hid = alloca ptr, align 8
  %length = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device_node, ptr %device_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_node.addr, metadata !837, metadata !DIExpression()), !dbg !844
  store ptr %return_id, ptr %return_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_id.addr, metadata !838, metadata !DIExpression()), !dbg !845
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #14, !dbg !846
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !839, metadata !DIExpression()), !dbg !847
  call void @llvm.lifetime.start.p0(i64 8, ptr %hid) #14, !dbg !848
  call void @llvm.dbg.declare(metadata ptr %hid, metadata !840, metadata !DIExpression()), !dbg !849
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #14, !dbg !850
  call void @llvm.dbg.declare(metadata ptr %length, metadata !841, metadata !DIExpression()), !dbg !851
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !852
  call void @llvm.dbg.declare(metadata ptr %status, metadata !842, metadata !DIExpression()), !dbg !853
  %0 = load ptr, ptr %device_node.addr, align 8, !dbg !854
  %call = call i32 @acpi_ut_evaluate_object(ptr noundef %0, ptr noundef @.str, i32 noundef 3, ptr noundef %obj_desc) #15, !dbg !855
  store i32 %call, ptr %status, align 4, !dbg !856
  %1 = load i32, ptr %status, align 4, !dbg !857
  %tobool = icmp ne i32 %1, 0, !dbg !857
  br i1 %tobool, label %if.then, label %if.end, !dbg !859

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !860
  store i32 %2, ptr %retval, align 4, !dbg !860
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup22, !dbg !860

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %obj_desc, align 8, !dbg !862
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %3, i32 0, i32 2, !dbg !864
  %4 = load i8, ptr %type, align 1, !dbg !864
  %conv = zext i8 %4 to i32, !dbg !862
  %cmp = icmp eq i32 %conv, 1, !dbg !865
  br i1 %cmp, label %if.then2, label %if.else, !dbg !866

if.then2:                                         ; preds = %if.end
  store i32 8, ptr %length, align 4, !dbg !867
  br label %if.end4, !dbg !869

if.else:                                          ; preds = %if.end
  %5 = load ptr, ptr %obj_desc, align 8, !dbg !870
  %length3 = getelementptr inbounds %struct.acpi_object_string, ptr %5, i32 0, i32 6, !dbg !872
  %6 = load i32, ptr %length3, align 8, !dbg !872
  %add = add i32 %6, 1, !dbg !873
  store i32 %add, ptr %length, align 4, !dbg !874
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %7 = load i32, ptr %length, align 4, !dbg !875
  %conv5 = zext i32 %7 to i64, !dbg !875
  %add6 = add i64 16, %conv5, !dbg !875
  %call7 = call ptr @acpi_os_allocate_zeroed(i64 noundef %add6) #15, !dbg !875
  store ptr %call7, ptr %hid, align 8, !dbg !876
  %8 = load ptr, ptr %hid, align 8, !dbg !877
  %tobool8 = icmp ne ptr %8, null, !dbg !877
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !879

if.then9:                                         ; preds = %if.end4
  store i32 4, ptr %status, align 4, !dbg !880
  br label %cleanup, !dbg !882

if.end10:                                         ; preds = %if.end4
  %9 = load ptr, ptr %hid, align 8, !dbg !883
  %10 = ptrtoint ptr %9 to i64, !dbg !883
  %11 = inttoptr i64 %10 to ptr, !dbg !883
  %add.ptr = getelementptr i8, ptr %11, i64 16, !dbg !883
  %12 = ptrtoint ptr %add.ptr to i64, !dbg !883
  %13 = inttoptr i64 %12 to ptr, !dbg !883
  %14 = load ptr, ptr %hid, align 8, !dbg !884
  %string = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %14, i32 0, i32 1, !dbg !885
  store ptr %13, ptr %string, align 8, !dbg !886
  %15 = load ptr, ptr %obj_desc, align 8, !dbg !887
  %type11 = getelementptr inbounds %struct.acpi_object_common, ptr %15, i32 0, i32 2, !dbg !889
  %16 = load i8, ptr %type11, align 1, !dbg !889
  %conv12 = zext i8 %16 to i32, !dbg !887
  %cmp13 = icmp eq i32 %conv12, 1, !dbg !890
  br i1 %cmp13, label %if.then15, label %if.else17, !dbg !891

if.then15:                                        ; preds = %if.end10
  %17 = load ptr, ptr %hid, align 8, !dbg !892
  %string16 = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %17, i32 0, i32 1, !dbg !894
  %18 = load ptr, ptr %string16, align 8, !dbg !894
  %19 = load ptr, ptr %obj_desc, align 8, !dbg !895
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %19, i32 0, i32 6, !dbg !896
  %20 = load i64, ptr %value, align 8, !dbg !896
  call void @acpi_ex_eisa_id_to_string(ptr noundef %18, i64 noundef %20) #15, !dbg !897
  br label %if.end20, !dbg !898

if.else17:                                        ; preds = %if.end10
  %21 = load ptr, ptr %hid, align 8, !dbg !899
  %string18 = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %21, i32 0, i32 1, !dbg !901
  %22 = load ptr, ptr %string18, align 8, !dbg !901
  %23 = load ptr, ptr %obj_desc, align 8, !dbg !902
  %pointer = getelementptr inbounds %struct.acpi_object_string, ptr %23, i32 0, i32 5, !dbg !903
  %24 = load ptr, ptr %pointer, align 8, !dbg !903
  %call19 = call ptr @strcpy(ptr noundef %22, ptr noundef %24) #15, !dbg !904
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.then15
  %25 = load i32, ptr %length, align 4, !dbg !905
  %26 = load ptr, ptr %hid, align 8, !dbg !906
  %length21 = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %26, i32 0, i32 0, !dbg !907
  store i32 %25, ptr %length21, align 8, !dbg !908
  %27 = load ptr, ptr %hid, align 8, !dbg !909
  %28 = load ptr, ptr %return_id.addr, align 8, !dbg !910
  store ptr %27, ptr %28, align 8, !dbg !911
  br label %cleanup, !dbg !912

cleanup:                                          ; preds = %if.end20, %if.then9
  call void @llvm.dbg.label(metadata !843), !dbg !913
  %29 = load ptr, ptr %obj_desc, align 8, !dbg !914
  call void @acpi_ut_remove_reference(ptr noundef %29) #15, !dbg !915
  %30 = load i32, ptr %status, align 4, !dbg !916
  store i32 %30, ptr %retval, align 4, !dbg !916
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup22, !dbg !916

cleanup22:                                        ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !917
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #14, !dbg !917
  call void @llvm.lifetime.end.p0(i64 8, ptr %hid) #14, !dbg !917
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #14, !dbg !917
  %31 = load i32, ptr %retval, align 4, !dbg !917
  ret i32 %31, !dbg !917
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !918 dso_local i32 @acpi_ut_evaluate_object(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #4 align 16 !dbg !924 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !929, metadata !DIExpression()), !dbg !940
  %0 = load i64, ptr %size.addr, align 8, !dbg !941
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #14, !dbg !942
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !930, metadata !DIExpression()), !dbg !942
  br label %do.body, !dbg !942

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !943
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !932, metadata !DIExpression()), !dbg !943
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !943
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !935, metadata !DIExpression()), !dbg !943
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !943
  %conv = zext i1 %cmp to i32, !dbg !943
  store i32 1, ptr %tmp, align 4, !dbg !943
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !944
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !944
  %1 = load i32, ptr %tmp, align 4, !dbg !943
  %call = call i64 @arch_local_save_flags() #15, !dbg !944
  store i64 %call, ptr %_flags, align 8, !dbg !944
  br label %do.cond, !dbg !944

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !944

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #14, !dbg !945
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !936, metadata !DIExpression()), !dbg !945
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #14, !dbg !945
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !939, metadata !DIExpression()), !dbg !945
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !945
  %conv6 = zext i1 %cmp5 to i32, !dbg !945
  store i32 1, ptr %tmp7, align 4, !dbg !945
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #14, !dbg !946
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #14, !dbg !946
  %2 = load i32, ptr %tmp7, align 4, !dbg !945
  %3 = load i64, ptr %_flags, align 8, !dbg !946
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #15, !dbg !946
  store i32 %call9, ptr %tmp8, align 4, !dbg !946
  %4 = load i32, ptr %tmp8, align 4, !dbg !946
  store i32 %4, ptr %tmp1, align 4, !dbg !944
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #14, !dbg !947
  %5 = load i32, ptr %tmp1, align 4, !dbg !942
  %tobool = icmp ne i32 %5, 0, !dbg !947
  %6 = zext i1 %tobool to i64, !dbg !947
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !947
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #16, !dbg !948
  ret ptr %call10, !dbg !949
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !950 dso_local void @acpi_ex_eisa_id_to_string(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !954 dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !958 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_execute_UID(ptr noundef %device_node, ptr noundef %return_id) #0 align 16 !dbg !961 {
entry:
  %retval = alloca i32, align 4
  %device_node.addr = alloca ptr, align 8
  %return_id.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %uid = alloca ptr, align 8
  %length = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device_node, ptr %device_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_node.addr, metadata !963, metadata !DIExpression()), !dbg !970
  store ptr %return_id, ptr %return_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_id.addr, metadata !964, metadata !DIExpression()), !dbg !971
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #14, !dbg !972
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !965, metadata !DIExpression()), !dbg !973
  call void @llvm.lifetime.start.p0(i64 8, ptr %uid) #14, !dbg !974
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !966, metadata !DIExpression()), !dbg !975
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #14, !dbg !976
  call void @llvm.dbg.declare(metadata ptr %length, metadata !967, metadata !DIExpression()), !dbg !977
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !978
  call void @llvm.dbg.declare(metadata ptr %status, metadata !968, metadata !DIExpression()), !dbg !979
  %0 = load ptr, ptr %device_node.addr, align 8, !dbg !980
  %call = call i32 @acpi_ut_evaluate_object(ptr noundef %0, ptr noundef @.str.1, i32 noundef 3, ptr noundef %obj_desc) #15, !dbg !981
  store i32 %call, ptr %status, align 4, !dbg !982
  %1 = load i32, ptr %status, align 4, !dbg !983
  %tobool = icmp ne i32 %1, 0, !dbg !983
  br i1 %tobool, label %if.then, label %if.end, !dbg !985

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !986
  store i32 %2, ptr %retval, align 4, !dbg !986
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup22, !dbg !986

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %obj_desc, align 8, !dbg !988
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %3, i32 0, i32 2, !dbg !990
  %4 = load i8, ptr %type, align 1, !dbg !990
  %conv = zext i8 %4 to i32, !dbg !988
  %cmp = icmp eq i32 %conv, 1, !dbg !991
  br i1 %cmp, label %if.then2, label %if.else, !dbg !992

if.then2:                                         ; preds = %if.end
  store i32 21, ptr %length, align 4, !dbg !993
  br label %if.end4, !dbg !995

if.else:                                          ; preds = %if.end
  %5 = load ptr, ptr %obj_desc, align 8, !dbg !996
  %length3 = getelementptr inbounds %struct.acpi_object_string, ptr %5, i32 0, i32 6, !dbg !998
  %6 = load i32, ptr %length3, align 8, !dbg !998
  %add = add i32 %6, 1, !dbg !999
  store i32 %add, ptr %length, align 4, !dbg !1000
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %7 = load i32, ptr %length, align 4, !dbg !1001
  %conv5 = zext i32 %7 to i64, !dbg !1001
  %add6 = add i64 16, %conv5, !dbg !1001
  %call7 = call ptr @acpi_os_allocate_zeroed(i64 noundef %add6) #15, !dbg !1001
  store ptr %call7, ptr %uid, align 8, !dbg !1002
  %8 = load ptr, ptr %uid, align 8, !dbg !1003
  %tobool8 = icmp ne ptr %8, null, !dbg !1003
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1005

if.then9:                                         ; preds = %if.end4
  store i32 4, ptr %status, align 4, !dbg !1006
  br label %cleanup, !dbg !1008

if.end10:                                         ; preds = %if.end4
  %9 = load ptr, ptr %uid, align 8, !dbg !1009
  %10 = ptrtoint ptr %9 to i64, !dbg !1009
  %11 = inttoptr i64 %10 to ptr, !dbg !1009
  %add.ptr = getelementptr i8, ptr %11, i64 16, !dbg !1009
  %12 = ptrtoint ptr %add.ptr to i64, !dbg !1009
  %13 = inttoptr i64 %12 to ptr, !dbg !1009
  %14 = load ptr, ptr %uid, align 8, !dbg !1010
  %string = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %14, i32 0, i32 1, !dbg !1011
  store ptr %13, ptr %string, align 8, !dbg !1012
  %15 = load ptr, ptr %obj_desc, align 8, !dbg !1013
  %type11 = getelementptr inbounds %struct.acpi_object_common, ptr %15, i32 0, i32 2, !dbg !1015
  %16 = load i8, ptr %type11, align 1, !dbg !1015
  %conv12 = zext i8 %16 to i32, !dbg !1013
  %cmp13 = icmp eq i32 %conv12, 1, !dbg !1016
  br i1 %cmp13, label %if.then15, label %if.else17, !dbg !1017

if.then15:                                        ; preds = %if.end10
  %17 = load ptr, ptr %uid, align 8, !dbg !1018
  %string16 = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %17, i32 0, i32 1, !dbg !1020
  %18 = load ptr, ptr %string16, align 8, !dbg !1020
  %19 = load ptr, ptr %obj_desc, align 8, !dbg !1021
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %19, i32 0, i32 6, !dbg !1022
  %20 = load i64, ptr %value, align 8, !dbg !1022
  call void @acpi_ex_integer_to_string(ptr noundef %18, i64 noundef %20) #15, !dbg !1023
  br label %if.end20, !dbg !1024

if.else17:                                        ; preds = %if.end10
  %21 = load ptr, ptr %uid, align 8, !dbg !1025
  %string18 = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %21, i32 0, i32 1, !dbg !1027
  %22 = load ptr, ptr %string18, align 8, !dbg !1027
  %23 = load ptr, ptr %obj_desc, align 8, !dbg !1028
  %pointer = getelementptr inbounds %struct.acpi_object_string, ptr %23, i32 0, i32 5, !dbg !1029
  %24 = load ptr, ptr %pointer, align 8, !dbg !1029
  %call19 = call ptr @strcpy(ptr noundef %22, ptr noundef %24) #15, !dbg !1030
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.then15
  %25 = load i32, ptr %length, align 4, !dbg !1031
  %26 = load ptr, ptr %uid, align 8, !dbg !1032
  %length21 = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %26, i32 0, i32 0, !dbg !1033
  store i32 %25, ptr %length21, align 8, !dbg !1034
  %27 = load ptr, ptr %uid, align 8, !dbg !1035
  %28 = load ptr, ptr %return_id.addr, align 8, !dbg !1036
  store ptr %27, ptr %28, align 8, !dbg !1037
  br label %cleanup, !dbg !1038

cleanup:                                          ; preds = %if.end20, %if.then9
  call void @llvm.dbg.label(metadata !969), !dbg !1039
  %29 = load ptr, ptr %obj_desc, align 8, !dbg !1040
  call void @acpi_ut_remove_reference(ptr noundef %29) #15, !dbg !1041
  %30 = load i32, ptr %status, align 4, !dbg !1042
  store i32 %30, ptr %retval, align 4, !dbg !1042
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup22, !dbg !1042

cleanup22:                                        ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !1043
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #14, !dbg !1043
  call void @llvm.lifetime.end.p0(i64 8, ptr %uid) #14, !dbg !1043
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #14, !dbg !1043
  %31 = load i32, ptr %retval, align 4, !dbg !1043
  ret i32 %31, !dbg !1043
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1044 dso_local void @acpi_ex_integer_to_string(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_execute_CID(ptr noundef %device_node, ptr noundef %return_cid_list) #0 align 16 !dbg !1045 {
entry:
  %retval = alloca i32, align 4
  %device_node.addr = alloca ptr, align 8
  %return_cid_list.addr = alloca ptr, align 8
  %cid_objects = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %cid_list = alloca ptr, align 8
  %next_id_string = alloca ptr, align 8
  %string_area_size = alloca i32, align 4
  %length = alloca i32, align 4
  %cid_list_size = alloca i32, align 4
  %status = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device_node, ptr %device_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_node.addr, metadata !1059, metadata !DIExpression()), !dbg !1072
  store ptr %return_cid_list, ptr %return_cid_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_cid_list.addr, metadata !1060, metadata !DIExpression()), !dbg !1073
  call void @llvm.lifetime.start.p0(i64 8, ptr %cid_objects) #14, !dbg !1074
  call void @llvm.dbg.declare(metadata ptr %cid_objects, metadata !1061, metadata !DIExpression()), !dbg !1075
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #14, !dbg !1076
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1062, metadata !DIExpression()), !dbg !1077
  call void @llvm.lifetime.start.p0(i64 8, ptr %cid_list) #14, !dbg !1078
  call void @llvm.dbg.declare(metadata ptr %cid_list, metadata !1063, metadata !DIExpression()), !dbg !1079
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_id_string) #14, !dbg !1080
  call void @llvm.dbg.declare(metadata ptr %next_id_string, metadata !1064, metadata !DIExpression()), !dbg !1081
  call void @llvm.lifetime.start.p0(i64 4, ptr %string_area_size) #14, !dbg !1082
  call void @llvm.dbg.declare(metadata ptr %string_area_size, metadata !1065, metadata !DIExpression()), !dbg !1083
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #14, !dbg !1084
  call void @llvm.dbg.declare(metadata ptr %length, metadata !1066, metadata !DIExpression()), !dbg !1085
  call void @llvm.lifetime.start.p0(i64 4, ptr %cid_list_size) #14, !dbg !1086
  call void @llvm.dbg.declare(metadata ptr %cid_list_size, metadata !1067, metadata !DIExpression()), !dbg !1087
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !1088
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1068, metadata !DIExpression()), !dbg !1089
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #14, !dbg !1090
  call void @llvm.dbg.declare(metadata ptr %count, metadata !1069, metadata !DIExpression()), !dbg !1091
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !1092
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1070, metadata !DIExpression()), !dbg !1093
  %0 = load ptr, ptr %device_node.addr, align 8, !dbg !1094
  %call = call i32 @acpi_ut_evaluate_object(ptr noundef %0, ptr noundef @.str.2, i32 noundef 11, ptr noundef %obj_desc) #15, !dbg !1095
  store i32 %call, ptr %status, align 4, !dbg !1096
  %1 = load i32, ptr %status, align 4, !dbg !1097
  %tobool = icmp ne i32 %1, 0, !dbg !1097
  br i1 %tobool, label %if.then, label %if.end, !dbg !1099

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !1100
  store i32 %2, ptr %retval, align 4, !dbg !1100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup61, !dbg !1100

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %obj_desc, align 8, !dbg !1102
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %3, i32 0, i32 2, !dbg !1104
  %4 = load i8, ptr %type, align 1, !dbg !1104
  %conv = zext i8 %4 to i32, !dbg !1102
  %cmp = icmp eq i32 %conv, 4, !dbg !1105
  br i1 %cmp, label %if.then2, label %if.else, !dbg !1106

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %obj_desc, align 8, !dbg !1107
  %count3 = getelementptr inbounds %struct.acpi_object_package, ptr %5, i32 0, i32 9, !dbg !1109
  %6 = load i32, ptr %count3, align 4, !dbg !1109
  store i32 %6, ptr %count, align 4, !dbg !1110
  %7 = load ptr, ptr %obj_desc, align 8, !dbg !1111
  %elements = getelementptr inbounds %struct.acpi_object_package, ptr %7, i32 0, i32 6, !dbg !1112
  %8 = load ptr, ptr %elements, align 8, !dbg !1112
  store ptr %8, ptr %cid_objects, align 8, !dbg !1113
  br label %if.end4, !dbg !1114

if.else:                                          ; preds = %if.end
  store i32 1, ptr %count, align 4, !dbg !1115
  store ptr %obj_desc, ptr %cid_objects, align 8, !dbg !1117
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  store i32 0, ptr %string_area_size, align 4, !dbg !1118
  store i32 0, ptr %i, align 4, !dbg !1119
  br label %for.cond, !dbg !1121

for.cond:                                         ; preds = %for.inc, %if.end4
  %9 = load i32, ptr %i, align 4, !dbg !1122
  %10 = load i32, ptr %count, align 4, !dbg !1124
  %cmp5 = icmp ult i32 %9, %10, !dbg !1125
  br i1 %cmp5, label %for.body, label %for.end, !dbg !1126

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %cid_objects, align 8, !dbg !1127
  %12 = load i32, ptr %i, align 4, !dbg !1129
  %idxprom = zext i32 %12 to i64, !dbg !1127
  %arrayidx = getelementptr ptr, ptr %11, i64 %idxprom, !dbg !1127
  %13 = load ptr, ptr %arrayidx, align 8, !dbg !1127
  %type7 = getelementptr inbounds %struct.acpi_object_common, ptr %13, i32 0, i32 2, !dbg !1130
  %14 = load i8, ptr %type7, align 1, !dbg !1130
  %conv8 = zext i8 %14 to i32, !dbg !1127
  switch i32 %conv8, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
  ], !dbg !1131

sw.bb:                                            ; preds = %for.body
  %15 = load i32, ptr %string_area_size, align 4, !dbg !1132
  %add = add i32 %15, 8, !dbg !1132
  store i32 %add, ptr %string_area_size, align 4, !dbg !1132
  br label %sw.epilog, !dbg !1134

sw.bb9:                                           ; preds = %for.body
  %16 = load ptr, ptr %cid_objects, align 8, !dbg !1135
  %17 = load i32, ptr %i, align 4, !dbg !1136
  %idxprom10 = zext i32 %17 to i64, !dbg !1135
  %arrayidx11 = getelementptr ptr, ptr %16, i64 %idxprom10, !dbg !1135
  %18 = load ptr, ptr %arrayidx11, align 8, !dbg !1135
  %length12 = getelementptr inbounds %struct.acpi_object_string, ptr %18, i32 0, i32 6, !dbg !1137
  %19 = load i32, ptr %length12, align 8, !dbg !1137
  %add13 = add i32 %19, 1, !dbg !1138
  %20 = load i32, ptr %string_area_size, align 4, !dbg !1139
  %add14 = add i32 %20, %add13, !dbg !1139
  store i32 %add14, ptr %string_area_size, align 4, !dbg !1139
  br label %sw.epilog, !dbg !1140

sw.default:                                       ; preds = %for.body
  store i32 8, ptr %status, align 4, !dbg !1141
  br label %cleanup, !dbg !1142

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb
  br label %for.inc, !dbg !1143

for.inc:                                          ; preds = %sw.epilog
  %21 = load i32, ptr %i, align 4, !dbg !1144
  %inc = add i32 %21, 1, !dbg !1144
  store i32 %inc, ptr %i, align 4, !dbg !1144
  br label %for.cond, !dbg !1145, !llvm.loop !1146

for.end:                                          ; preds = %for.cond
  %22 = load i32, ptr %count, align 4, !dbg !1150
  %conv15 = zext i32 %22 to i64, !dbg !1150
  %mul = mul i64 %conv15, 16, !dbg !1151
  %add16 = add i64 8, %mul, !dbg !1152
  %23 = load i32, ptr %string_area_size, align 4, !dbg !1153
  %conv17 = zext i32 %23 to i64, !dbg !1153
  %add18 = add i64 %add16, %conv17, !dbg !1154
  %conv19 = trunc i64 %add18 to i32, !dbg !1155
  store i32 %conv19, ptr %cid_list_size, align 4, !dbg !1156
  %24 = load i32, ptr %cid_list_size, align 4, !dbg !1157
  %conv20 = zext i32 %24 to i64, !dbg !1157
  %call21 = call ptr @acpi_os_allocate_zeroed(i64 noundef %conv20) #15, !dbg !1157
  store ptr %call21, ptr %cid_list, align 8, !dbg !1158
  %25 = load ptr, ptr %cid_list, align 8, !dbg !1159
  %tobool22 = icmp ne ptr %25, null, !dbg !1159
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !1161

if.then23:                                        ; preds = %for.end
  store i32 4, ptr %status, align 4, !dbg !1162
  br label %cleanup, !dbg !1164

if.end24:                                         ; preds = %for.end
  %26 = load ptr, ptr %cid_list, align 8, !dbg !1165
  %ids = getelementptr inbounds %struct.acpi_pnp_device_id_list, ptr %26, i32 0, i32 2, !dbg !1165
  %arraydecay = getelementptr inbounds [0 x %struct.acpi_pnp_device_id], ptr %ids, i64 0, i64 0, !dbg !1165
  %27 = ptrtoint ptr %arraydecay to i64, !dbg !1165
  %28 = inttoptr i64 %27 to ptr, !dbg !1165
  %29 = load i32, ptr %count, align 4, !dbg !1166
  %conv25 = zext i32 %29 to i64, !dbg !1167
  %mul26 = mul i64 %conv25, 16, !dbg !1168
  %add.ptr = getelementptr i8, ptr %28, i64 %mul26, !dbg !1169
  store ptr %add.ptr, ptr %next_id_string, align 8, !dbg !1170
  store i32 0, ptr %i, align 4, !dbg !1171
  br label %for.cond27, !dbg !1173

for.cond27:                                       ; preds = %for.inc57, %if.end24
  %30 = load i32, ptr %i, align 4, !dbg !1174
  %31 = load i32, ptr %count, align 4, !dbg !1176
  %cmp28 = icmp ult i32 %30, %31, !dbg !1177
  br i1 %cmp28, label %for.body30, label %for.end59, !dbg !1178

for.body30:                                       ; preds = %for.cond27
  %32 = load ptr, ptr %cid_objects, align 8, !dbg !1179
  %33 = load i32, ptr %i, align 4, !dbg !1182
  %idxprom31 = zext i32 %33 to i64, !dbg !1179
  %arrayidx32 = getelementptr ptr, ptr %32, i64 %idxprom31, !dbg !1179
  %34 = load ptr, ptr %arrayidx32, align 8, !dbg !1179
  %type33 = getelementptr inbounds %struct.acpi_object_common, ptr %34, i32 0, i32 2, !dbg !1183
  %35 = load i8, ptr %type33, align 1, !dbg !1183
  %conv34 = zext i8 %35 to i32, !dbg !1179
  %cmp35 = icmp eq i32 %conv34, 1, !dbg !1184
  br i1 %cmp35, label %if.then37, label %if.else40, !dbg !1185

if.then37:                                        ; preds = %for.body30
  %36 = load ptr, ptr %next_id_string, align 8, !dbg !1186
  %37 = load ptr, ptr %cid_objects, align 8, !dbg !1188
  %38 = load i32, ptr %i, align 4, !dbg !1189
  %idxprom38 = zext i32 %38 to i64, !dbg !1188
  %arrayidx39 = getelementptr ptr, ptr %37, i64 %idxprom38, !dbg !1188
  %39 = load ptr, ptr %arrayidx39, align 8, !dbg !1188
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %39, i32 0, i32 6, !dbg !1190
  %40 = load i64, ptr %value, align 8, !dbg !1190
  call void @acpi_ex_eisa_id_to_string(ptr noundef %36, i64 noundef %40) #15, !dbg !1191
  store i32 8, ptr %length, align 4, !dbg !1192
  br label %if.end48, !dbg !1193

if.else40:                                        ; preds = %for.body30
  %41 = load ptr, ptr %next_id_string, align 8, !dbg !1194
  %42 = load ptr, ptr %cid_objects, align 8, !dbg !1196
  %43 = load i32, ptr %i, align 4, !dbg !1197
  %idxprom41 = zext i32 %43 to i64, !dbg !1196
  %arrayidx42 = getelementptr ptr, ptr %42, i64 %idxprom41, !dbg !1196
  %44 = load ptr, ptr %arrayidx42, align 8, !dbg !1196
  %pointer = getelementptr inbounds %struct.acpi_object_string, ptr %44, i32 0, i32 5, !dbg !1198
  %45 = load ptr, ptr %pointer, align 8, !dbg !1198
  %call43 = call ptr @strcpy(ptr noundef %41, ptr noundef %45) #15, !dbg !1199
  %46 = load ptr, ptr %cid_objects, align 8, !dbg !1200
  %47 = load i32, ptr %i, align 4, !dbg !1201
  %idxprom44 = zext i32 %47 to i64, !dbg !1200
  %arrayidx45 = getelementptr ptr, ptr %46, i64 %idxprom44, !dbg !1200
  %48 = load ptr, ptr %arrayidx45, align 8, !dbg !1200
  %length46 = getelementptr inbounds %struct.acpi_object_string, ptr %48, i32 0, i32 6, !dbg !1202
  %49 = load i32, ptr %length46, align 8, !dbg !1202
  %add47 = add i32 %49, 1, !dbg !1203
  store i32 %add47, ptr %length, align 4, !dbg !1204
  br label %if.end48

if.end48:                                         ; preds = %if.else40, %if.then37
  %50 = load ptr, ptr %next_id_string, align 8, !dbg !1205
  %51 = load ptr, ptr %cid_list, align 8, !dbg !1206
  %ids49 = getelementptr inbounds %struct.acpi_pnp_device_id_list, ptr %51, i32 0, i32 2, !dbg !1207
  %52 = load i32, ptr %i, align 4, !dbg !1208
  %idxprom50 = zext i32 %52 to i64, !dbg !1206
  %arrayidx51 = getelementptr [0 x %struct.acpi_pnp_device_id], ptr %ids49, i64 0, i64 %idxprom50, !dbg !1206
  %string = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %arrayidx51, i32 0, i32 1, !dbg !1209
  store ptr %50, ptr %string, align 8, !dbg !1210
  %53 = load i32, ptr %length, align 4, !dbg !1211
  %54 = load ptr, ptr %cid_list, align 8, !dbg !1212
  %ids52 = getelementptr inbounds %struct.acpi_pnp_device_id_list, ptr %54, i32 0, i32 2, !dbg !1213
  %55 = load i32, ptr %i, align 4, !dbg !1214
  %idxprom53 = zext i32 %55 to i64, !dbg !1212
  %arrayidx54 = getelementptr [0 x %struct.acpi_pnp_device_id], ptr %ids52, i64 0, i64 %idxprom53, !dbg !1212
  %length55 = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %arrayidx54, i32 0, i32 0, !dbg !1215
  store i32 %53, ptr %length55, align 8, !dbg !1216
  %56 = load i32, ptr %length, align 4, !dbg !1217
  %57 = load ptr, ptr %next_id_string, align 8, !dbg !1218
  %idx.ext = zext i32 %56 to i64, !dbg !1218
  %add.ptr56 = getelementptr i8, ptr %57, i64 %idx.ext, !dbg !1218
  store ptr %add.ptr56, ptr %next_id_string, align 8, !dbg !1218
  br label %for.inc57, !dbg !1219

for.inc57:                                        ; preds = %if.end48
  %58 = load i32, ptr %i, align 4, !dbg !1220
  %inc58 = add i32 %58, 1, !dbg !1220
  store i32 %inc58, ptr %i, align 4, !dbg !1220
  br label %for.cond27, !dbg !1221, !llvm.loop !1222

for.end59:                                        ; preds = %for.cond27
  %59 = load i32, ptr %count, align 4, !dbg !1224
  %60 = load ptr, ptr %cid_list, align 8, !dbg !1225
  %count60 = getelementptr inbounds %struct.acpi_pnp_device_id_list, ptr %60, i32 0, i32 0, !dbg !1226
  store i32 %59, ptr %count60, align 8, !dbg !1227
  %61 = load i32, ptr %cid_list_size, align 4, !dbg !1228
  %62 = load ptr, ptr %cid_list, align 8, !dbg !1229
  %list_size = getelementptr inbounds %struct.acpi_pnp_device_id_list, ptr %62, i32 0, i32 1, !dbg !1230
  store i32 %61, ptr %list_size, align 4, !dbg !1231
  %63 = load ptr, ptr %cid_list, align 8, !dbg !1232
  %64 = load ptr, ptr %return_cid_list.addr, align 8, !dbg !1233
  store ptr %63, ptr %64, align 8, !dbg !1234
  br label %cleanup, !dbg !1235

cleanup:                                          ; preds = %for.end59, %if.then23, %sw.default
  call void @llvm.dbg.label(metadata !1071), !dbg !1236
  %65 = load ptr, ptr %obj_desc, align 8, !dbg !1237
  call void @acpi_ut_remove_reference(ptr noundef %65) #15, !dbg !1238
  %66 = load i32, ptr %status, align 4, !dbg !1239
  store i32 %66, ptr %retval, align 4, !dbg !1239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup61, !dbg !1239

cleanup61:                                        ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !1240
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #14, !dbg !1240
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !1240
  call void @llvm.lifetime.end.p0(i64 4, ptr %cid_list_size) #14, !dbg !1240
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #14, !dbg !1240
  call void @llvm.lifetime.end.p0(i64 4, ptr %string_area_size) #14, !dbg !1240
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_id_string) #14, !dbg !1240
  call void @llvm.lifetime.end.p0(i64 8, ptr %cid_list) #14, !dbg !1240
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #14, !dbg !1240
  call void @llvm.lifetime.end.p0(i64 8, ptr %cid_objects) #14, !dbg !1240
  %67 = load i32, ptr %retval, align 4, !dbg !1240
  ret i32 %67, !dbg !1240
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_execute_CLS(ptr noundef %device_node, ptr noundef %return_id) #0 align 16 !dbg !1241 {
entry:
  %retval = alloca i32, align 4
  %device_node.addr = alloca ptr, align 8
  %return_id.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %cls_objects = alloca ptr, align 8
  %count = alloca i32, align 4
  %cls = alloca ptr, align 8
  %length = alloca i32, align 4
  %status = alloca i32, align 4
  %class_code = alloca [3 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device_node, ptr %device_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_node.addr, metadata !1243, metadata !DIExpression()), !dbg !1253
  store ptr %return_id, ptr %return_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_id.addr, metadata !1244, metadata !DIExpression()), !dbg !1254
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #14, !dbg !1255
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1245, metadata !DIExpression()), !dbg !1256
  call void @llvm.lifetime.start.p0(i64 8, ptr %cls_objects) #14, !dbg !1257
  call void @llvm.dbg.declare(metadata ptr %cls_objects, metadata !1246, metadata !DIExpression()), !dbg !1258
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #14, !dbg !1259
  call void @llvm.dbg.declare(metadata ptr %count, metadata !1247, metadata !DIExpression()), !dbg !1260
  call void @llvm.lifetime.start.p0(i64 8, ptr %cls) #14, !dbg !1261
  call void @llvm.dbg.declare(metadata ptr %cls, metadata !1248, metadata !DIExpression()), !dbg !1262
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #14, !dbg !1263
  call void @llvm.dbg.declare(metadata ptr %length, metadata !1249, metadata !DIExpression()), !dbg !1264
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !1265
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1250, metadata !DIExpression()), !dbg !1266
  call void @llvm.lifetime.start.p0(i64 3, ptr %class_code) #14, !dbg !1267
  call void @llvm.dbg.declare(metadata ptr %class_code, metadata !1251, metadata !DIExpression()), !dbg !1268
  call void @llvm.memset.p0.i64(ptr align 1 %class_code, i8 0, i64 3, i1 false), !dbg !1268
  %0 = load ptr, ptr %device_node.addr, align 8, !dbg !1269
  %call = call i32 @acpi_ut_evaluate_object(ptr noundef %0, ptr noundef @.str.3, i32 noundef 8, ptr noundef %obj_desc) #15, !dbg !1270
  store i32 %call, ptr %status, align 4, !dbg !1271
  %1 = load i32, ptr %status, align 4, !dbg !1272
  %tobool = icmp ne i32 %1, 0, !dbg !1272
  br i1 %tobool, label %if.then, label %if.end, !dbg !1274

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !1275
  store i32 %2, ptr %retval, align 4, !dbg !1275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !1275

if.end:                                           ; preds = %entry
  store i32 7, ptr %length, align 4, !dbg !1277
  %3 = load ptr, ptr %obj_desc, align 8, !dbg !1278
  %elements = getelementptr inbounds %struct.acpi_object_package, ptr %3, i32 0, i32 6, !dbg !1279
  %4 = load ptr, ptr %elements, align 8, !dbg !1279
  store ptr %4, ptr %cls_objects, align 8, !dbg !1280
  %5 = load ptr, ptr %obj_desc, align 8, !dbg !1281
  %count1 = getelementptr inbounds %struct.acpi_object_package, ptr %5, i32 0, i32 9, !dbg !1282
  %6 = load i32, ptr %count1, align 4, !dbg !1282
  store i32 %6, ptr %count, align 4, !dbg !1283
  %7 = load ptr, ptr %obj_desc, align 8, !dbg !1284
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %7, i32 0, i32 2, !dbg !1286
  %8 = load i8, ptr %type, align 1, !dbg !1286
  %conv = zext i8 %8 to i32, !dbg !1284
  %cmp = icmp eq i32 %conv, 4, !dbg !1287
  br i1 %cmp, label %if.then3, label %if.end43, !dbg !1288

if.then3:                                         ; preds = %if.end
  %9 = load i32, ptr %count, align 4, !dbg !1289
  %cmp4 = icmp ugt i32 %9, 0, !dbg !1292
  br i1 %cmp4, label %land.lhs.true, label %if.end14, !dbg !1293

land.lhs.true:                                    ; preds = %if.then3
  %10 = load ptr, ptr %cls_objects, align 8, !dbg !1294
  %arrayidx = getelementptr ptr, ptr %10, i64 0, !dbg !1294
  %11 = load ptr, ptr %arrayidx, align 8, !dbg !1294
  %type6 = getelementptr inbounds %struct.acpi_object_common, ptr %11, i32 0, i32 2, !dbg !1295
  %12 = load i8, ptr %type6, align 1, !dbg !1295
  %conv7 = zext i8 %12 to i32, !dbg !1294
  %cmp8 = icmp eq i32 %conv7, 1, !dbg !1296
  br i1 %cmp8, label %if.then10, label %if.end14, !dbg !1297

if.then10:                                        ; preds = %land.lhs.true
  %13 = load ptr, ptr %cls_objects, align 8, !dbg !1298
  %arrayidx11 = getelementptr ptr, ptr %13, i64 0, !dbg !1298
  %14 = load ptr, ptr %arrayidx11, align 8, !dbg !1298
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %14, i32 0, i32 6, !dbg !1300
  %15 = load i64, ptr %value, align 8, !dbg !1300
  %conv12 = trunc i64 %15 to i8, !dbg !1301
  %arrayidx13 = getelementptr [3 x i8], ptr %class_code, i64 0, i64 0, !dbg !1302
  store i8 %conv12, ptr %arrayidx13, align 1, !dbg !1303
  br label %if.end14, !dbg !1304

if.end14:                                         ; preds = %if.then10, %land.lhs.true, %if.then3
  %16 = load i32, ptr %count, align 4, !dbg !1305
  %cmp15 = icmp ugt i32 %16, 1, !dbg !1307
  br i1 %cmp15, label %land.lhs.true17, label %if.end28, !dbg !1308

land.lhs.true17:                                  ; preds = %if.end14
  %17 = load ptr, ptr %cls_objects, align 8, !dbg !1309
  %arrayidx18 = getelementptr ptr, ptr %17, i64 1, !dbg !1309
  %18 = load ptr, ptr %arrayidx18, align 8, !dbg !1309
  %type19 = getelementptr inbounds %struct.acpi_object_common, ptr %18, i32 0, i32 2, !dbg !1310
  %19 = load i8, ptr %type19, align 1, !dbg !1310
  %conv20 = zext i8 %19 to i32, !dbg !1309
  %cmp21 = icmp eq i32 %conv20, 1, !dbg !1311
  br i1 %cmp21, label %if.then23, label %if.end28, !dbg !1312

if.then23:                                        ; preds = %land.lhs.true17
  %20 = load ptr, ptr %cls_objects, align 8, !dbg !1313
  %arrayidx24 = getelementptr ptr, ptr %20, i64 1, !dbg !1313
  %21 = load ptr, ptr %arrayidx24, align 8, !dbg !1313
  %value25 = getelementptr inbounds %struct.acpi_object_integer, ptr %21, i32 0, i32 6, !dbg !1315
  %22 = load i64, ptr %value25, align 8, !dbg !1315
  %conv26 = trunc i64 %22 to i8, !dbg !1316
  %arrayidx27 = getelementptr [3 x i8], ptr %class_code, i64 0, i64 1, !dbg !1317
  store i8 %conv26, ptr %arrayidx27, align 1, !dbg !1318
  br label %if.end28, !dbg !1319

if.end28:                                         ; preds = %if.then23, %land.lhs.true17, %if.end14
  %23 = load i32, ptr %count, align 4, !dbg !1320
  %cmp29 = icmp ugt i32 %23, 2, !dbg !1322
  br i1 %cmp29, label %land.lhs.true31, label %if.end42, !dbg !1323

land.lhs.true31:                                  ; preds = %if.end28
  %24 = load ptr, ptr %cls_objects, align 8, !dbg !1324
  %arrayidx32 = getelementptr ptr, ptr %24, i64 2, !dbg !1324
  %25 = load ptr, ptr %arrayidx32, align 8, !dbg !1324
  %type33 = getelementptr inbounds %struct.acpi_object_common, ptr %25, i32 0, i32 2, !dbg !1325
  %26 = load i8, ptr %type33, align 1, !dbg !1325
  %conv34 = zext i8 %26 to i32, !dbg !1324
  %cmp35 = icmp eq i32 %conv34, 1, !dbg !1326
  br i1 %cmp35, label %if.then37, label %if.end42, !dbg !1327

if.then37:                                        ; preds = %land.lhs.true31
  %27 = load ptr, ptr %cls_objects, align 8, !dbg !1328
  %arrayidx38 = getelementptr ptr, ptr %27, i64 2, !dbg !1328
  %28 = load ptr, ptr %arrayidx38, align 8, !dbg !1328
  %value39 = getelementptr inbounds %struct.acpi_object_integer, ptr %28, i32 0, i32 6, !dbg !1330
  %29 = load i64, ptr %value39, align 8, !dbg !1330
  %conv40 = trunc i64 %29 to i8, !dbg !1331
  %arrayidx41 = getelementptr [3 x i8], ptr %class_code, i64 0, i64 2, !dbg !1332
  store i8 %conv40, ptr %arrayidx41, align 1, !dbg !1333
  br label %if.end42, !dbg !1334

if.end42:                                         ; preds = %if.then37, %land.lhs.true31, %if.end28
  br label %if.end43, !dbg !1335

if.end43:                                         ; preds = %if.end42, %if.end
  %30 = load i32, ptr %length, align 4, !dbg !1336
  %conv44 = zext i32 %30 to i64, !dbg !1336
  %add = add i64 16, %conv44, !dbg !1336
  %call45 = call ptr @acpi_os_allocate_zeroed(i64 noundef %add) #15, !dbg !1336
  store ptr %call45, ptr %cls, align 8, !dbg !1337
  %31 = load ptr, ptr %cls, align 8, !dbg !1338
  %tobool46 = icmp ne ptr %31, null, !dbg !1338
  br i1 %tobool46, label %if.end48, label %if.then47, !dbg !1340

if.then47:                                        ; preds = %if.end43
  store i32 4, ptr %status, align 4, !dbg !1341
  br label %cleanup, !dbg !1343

if.end48:                                         ; preds = %if.end43
  %32 = load ptr, ptr %cls, align 8, !dbg !1344
  %33 = ptrtoint ptr %32 to i64, !dbg !1344
  %34 = inttoptr i64 %33 to ptr, !dbg !1344
  %add.ptr = getelementptr i8, ptr %34, i64 16, !dbg !1344
  %35 = ptrtoint ptr %add.ptr to i64, !dbg !1344
  %36 = inttoptr i64 %35 to ptr, !dbg !1344
  %37 = load ptr, ptr %cls, align 8, !dbg !1345
  %string = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %37, i32 0, i32 1, !dbg !1346
  store ptr %36, ptr %string, align 8, !dbg !1347
  %38 = load ptr, ptr %cls, align 8, !dbg !1348
  %string49 = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %38, i32 0, i32 1, !dbg !1349
  %39 = load ptr, ptr %string49, align 8, !dbg !1349
  %arraydecay = getelementptr inbounds [3 x i8], ptr %class_code, i64 0, i64 0, !dbg !1350
  call void @acpi_ex_pci_cls_to_string(ptr noundef %39, ptr noundef %arraydecay) #15, !dbg !1351
  %40 = load i32, ptr %length, align 4, !dbg !1352
  %41 = load ptr, ptr %cls, align 8, !dbg !1353
  %length50 = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %41, i32 0, i32 0, !dbg !1354
  store i32 %40, ptr %length50, align 8, !dbg !1355
  %42 = load ptr, ptr %cls, align 8, !dbg !1356
  %43 = load ptr, ptr %return_id.addr, align 8, !dbg !1357
  store ptr %42, ptr %43, align 8, !dbg !1358
  br label %cleanup, !dbg !1359

cleanup:                                          ; preds = %if.end48, %if.then47
  call void @llvm.dbg.label(metadata !1252), !dbg !1360
  %44 = load ptr, ptr %obj_desc, align 8, !dbg !1361
  call void @acpi_ut_remove_reference(ptr noundef %44) #15, !dbg !1362
  %45 = load i32, ptr %status, align 4, !dbg !1363
  store i32 %45, ptr %retval, align 4, !dbg !1363
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !1363

cleanup51:                                        ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 3, ptr %class_code) #14, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #14, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 8, ptr %cls) #14, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #14, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 8, ptr %cls_objects) #14, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #14, !dbg !1364
  %46 = load i32, ptr %retval, align 4, !dbg !1364
  ret i32 %46, !dbg !1364
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1365 dso_local void @acpi_ex_pci_cls_to_string(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !1368 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1376, metadata !DIExpression()), !dbg !1378
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1377, metadata !DIExpression()), !dbg !1379
  %0 = load i64, ptr %size.addr, align 8, !dbg !1380
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1381
  %or = or i32 %1, 256, !dbg !1382
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !1383
  ret ptr %call, !dbg !1384
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #7 align 16 !dbg !1385 {
entry:
  %call = call i64 @native_save_fl() #15, !dbg !1389
  ret i64 %call, !dbg !1390
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #7 align 16 !dbg !1391 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1396, metadata !DIExpression()), !dbg !1397
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1398
  %and = and i64 %0, 512, !dbg !1399
  %tobool = icmp ne i64 %and, 0, !dbg !1400
  %lnot = xor i1 %tobool, true, !dbg !1400
  %lnot.ext = zext i1 %lnot to i32, !dbg !1400
  ret i32 %lnot.ext, !dbg !1401
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !1402 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1404, metadata !DIExpression()), !dbg !1409
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1405, metadata !DIExpression()), !dbg !1410
  %0 = load i64, ptr %size.addr, align 8, !dbg !1411
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1412
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1413

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1414
  %tobool = icmp ne i64 %2, 0, !dbg !1414
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1415

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !1416
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1406, metadata !DIExpression()), !dbg !1417
  %3 = load i64, ptr %size.addr, align 8, !dbg !1418
  %cmp = icmp ugt i64 %3, 8192, !dbg !1420
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1421

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1422
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1423
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !1424
  store ptr %call, ptr %retval, align 8, !dbg !1425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1425

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1426
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !1426
  store i32 %call2, ptr %index, align 4, !dbg !1427
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1428
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1429
  %9 = ptrtoint ptr %8 to i64, !dbg !1429
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !1430
  %idxprom = zext i32 %call3 to i64, !dbg !1431
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1431
  %10 = load i32, ptr %index, align 4, !dbg !1432
  %idxprom4 = zext i32 %10 to i64, !dbg !1431
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1431
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1431
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1433
  %13 = load i64, ptr %size.addr, align 8, !dbg !1434
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !1435
  store ptr %call6, ptr %retval, align 8, !dbg !1436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1436

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !1437
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1438
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1439
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !1440
  store ptr %call8, ptr %retval, align 8, !dbg !1441
  br label %return, !dbg !1441

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1442
  ret ptr %16, !dbg !1442
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1443 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !1444 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1450, metadata !DIExpression()), !dbg !1452
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1451, metadata !DIExpression()), !dbg !1453
  %0 = load i64, ptr %size.addr, align 8, !dbg !1454
  %tobool = icmp ne i64 %0, 0, !dbg !1454
  br i1 %tobool, label %if.end, label %if.then, !dbg !1456

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1457
  br label %return, !dbg !1457

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1458
  %cmp = icmp ule i64 %1, 8, !dbg !1460
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1461

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1462
  br label %return, !dbg !1462

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1463
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1465
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1466

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1467
  %cmp4 = icmp ule i64 %3, 96, !dbg !1468
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1469

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1470
  br label %return, !dbg !1470

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1471
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1473
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1474

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1475
  %cmp9 = icmp ule i64 %5, 192, !dbg !1476
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1477

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1478
  br label %return, !dbg !1478

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1479
  %cmp12 = icmp ule i64 %6, 8, !dbg !1481
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1482

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1483
  br label %return, !dbg !1483

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1484
  %cmp15 = icmp ule i64 %7, 16, !dbg !1486
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1487

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1488
  br label %return, !dbg !1488

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1489
  %cmp18 = icmp ule i64 %8, 32, !dbg !1491
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1492

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1493
  br label %return, !dbg !1493

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1494
  %cmp21 = icmp ule i64 %9, 64, !dbg !1496
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1497

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1498
  br label %return, !dbg !1498

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1499
  %cmp24 = icmp ule i64 %10, 128, !dbg !1501
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1502

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1503
  br label %return, !dbg !1503

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1504
  %cmp27 = icmp ule i64 %11, 256, !dbg !1506
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1507

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1508
  br label %return, !dbg !1508

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1509
  %cmp30 = icmp ule i64 %12, 512, !dbg !1511
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1512

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1513
  br label %return, !dbg !1513

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1514
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1516
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1517

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1518
  br label %return, !dbg !1518

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1519
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1521
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1522

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1523
  br label %return, !dbg !1523

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1524
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1526
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1527

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1528
  br label %return, !dbg !1528

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1529
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1531
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1532

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1533
  br label %return, !dbg !1533

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1534
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1536
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1537

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1538
  br label %return, !dbg !1538

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1539
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1541
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1542

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1543
  br label %return, !dbg !1543

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1544
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1546
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1547

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1548
  br label %return, !dbg !1548

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1549
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1551
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1552

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1553
  br label %return, !dbg !1553

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1554
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1556
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1557

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1558
  br label %return, !dbg !1558

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1559
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1561
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1562

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1563
  br label %return, !dbg !1563

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1564
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1566
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1567

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1568
  br label %return, !dbg !1568

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1569
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1571
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1572

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1573
  br label %return, !dbg !1573

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1574, !range !1576, !noundef !1577
  %tobool69 = trunc i8 %25 to i1, !dbg !1574
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1578

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1579

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #18, !dbg !1580, !srcloc !1583
  unreachable, !dbg !1580

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1584

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1585

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1586

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1588

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1586

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #14, !dbg !1590, !srcloc !1592
  br label %do.end75, !dbg !1590

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1586

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1593
  br label %return, !dbg !1593

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1594
  ret i32 %26, !dbg !1594
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1595 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !1601 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1605, metadata !DIExpression()), !dbg !1607
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1606, metadata !DIExpression()), !dbg !1608
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1609
  %and = and i32 %0, 17, !dbg !1609
  %cmp = icmp eq i32 %and, 0, !dbg !1609
  %lnot = xor i1 %cmp, true, !dbg !1609
  %lnot1 = xor i1 %lnot, true, !dbg !1609
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1609
  %conv = sext i32 %lnot.ext to i64, !dbg !1609
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1609
  %tobool = icmp ne i64 %expval, 0, !dbg !1609
  br i1 %tobool, label %if.then, label %if.end, !dbg !1611

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1612
  br label %return, !dbg !1612

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1613
  %and2 = and i32 %1, 1, !dbg !1615
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1615
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1616

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1617
  br label %return, !dbg !1617

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1618
  br label %return, !dbg !1618

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1620
  ret i32 %2, !dbg !1620
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1621 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1622 dso_local void @__compiletime_assert_173() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #7 align 16 !dbg !1625 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !1628
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1627, metadata !DIExpression()), !dbg !1629
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #14, !dbg !1630, !srcloc !1631
  %0 = load i64, ptr %flags, align 8, !dbg !1632
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !1633
  ret i64 %0, !dbg !1634
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/utids.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "762f9afad8d3c278019ecd0facd46ac5")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 214, type: !3, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(scope: null, file: !2, line: 348, type: !3, isLocal: true, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !15, line: 480, type: !16, isLocal: true, isDefinition: true)
!15 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 21)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utids.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utids\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utids.ll drivers/acpi/acpica/utids.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !20, retainedTypes: !36, globals: !56, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21, !27}
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 10, baseType: !23, size: 32, elements: !24)
!22 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !{!25, !26}
!25 = !DIEnumerator(name: "false", value: 0)
!26 = !DIEnumerator(name: "true", value: 1)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !15, line: 364, baseType: !23, size: 32, elements: !28)
!28 = !{!29, !30, !31, !32, !33, !34, !35}
!29 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!30 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!31 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!32 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!33 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!34 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!35 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!36 = !{!37, !44, !47, !48, !51, !52, !55, !50}
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !38, line: 127, baseType: !39)
!38 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !40, line: 23, baseType: !41)
!40 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !42, line: 31, baseType: !43)
!42 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!43 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !38, line: 421, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !40, line: 21, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !42, line: 27, baseType: !23)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !49, line: 42, baseType: !50)
!49 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!50 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !40, line: 17, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !42, line: 21, baseType: !54)
!54 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !49, line: 154, baseType: !23)
!56 = !{!0, !7, !9, !11, !13}
!57 = !{i32 7, !"Dwarf Version", i32 5}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 8, !"cf-protection-branch", i32 1}
!61 = !{i32 4, !"function_return_thunk_extern", i32 1}
!62 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!63 = !{i32 1, !"Code Model", i32 2}
!64 = !{i32 1, !"override-stack-alignment", i32 8}
!65 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!66 = distinct !DISubprogram(name: "acpi_ut_execute_HID", scope: !2, file: !2, line: 35, type: !67, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !836)
!67 = !DISubroutineType(types: !68)
!68 = !{!44, !69, !830}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !71, line: 133, size: 384, elements: !72)
!71 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!72 = !{!73, !817, !818, !819, !820, !826, !827, !828, !829}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !70, file: !71, line: 134, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !76, line: 369, size: 576, elements: !77)
!76 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!77 = !{!78, !89, !102, !112, !125, !139, !149, !466, !483, !499, !512, !590, !602, !616, !626, !644, !666, !685, !704, !723, !736, !763, !780, !793, !807, !816}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !75, file: !76, line: 370, baseType: !79, size: 128)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !76, line: 73, size: 128, elements: !80)
!80 = !{!81, !82, !83, !84, !88}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !79, file: !76, line: 74, baseType: !74, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !79, file: !76, line: 74, baseType: !52, size: 8, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !79, file: !76, line: 74, baseType: !52, size: 8, offset: 72)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !79, file: !76, line: 74, baseType: !85, size: 16, offset: 80)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !40, line: 19, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !42, line: 24, baseType: !87)
!87 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !79, file: !76, line: 74, baseType: !52, size: 8, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !75, file: !76, line: 371, baseType: !90, size: 192)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !76, line: 76, size: 192, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97, !101}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !90, file: !76, line: 77, baseType: !74, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !90, file: !76, line: 77, baseType: !52, size: 8, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !90, file: !76, line: 77, baseType: !52, size: 8, offset: 72)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !90, file: !76, line: 77, baseType: !85, size: 16, offset: 80)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !90, file: !76, line: 77, baseType: !52, size: 8, offset: 96)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !90, file: !76, line: 77, baseType: !98, size: 24, offset: 104)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 24, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 3)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !90, file: !76, line: 78, baseType: !39, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !75, file: !76, line: 372, baseType: !103, size: 256)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !76, line: 93, size: 256, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !103, file: !76, line: 94, baseType: !74, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !103, file: !76, line: 94, baseType: !52, size: 8, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !76, line: 94, baseType: !52, size: 8, offset: 72)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !103, file: !76, line: 94, baseType: !85, size: 16, offset: 80)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !76, line: 94, baseType: !52, size: 8, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !103, file: !76, line: 94, baseType: !47, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !103, file: !76, line: 94, baseType: !45, size: 32, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !75, file: !76, line: 373, baseType: !113, size: 384)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !76, line: 97, size: 384, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !113, file: !76, line: 98, baseType: !74, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !113, file: !76, line: 98, baseType: !52, size: 8, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !113, file: !76, line: 98, baseType: !52, size: 8, offset: 72)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !113, file: !76, line: 98, baseType: !85, size: 16, offset: 80)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !76, line: 98, baseType: !52, size: 8, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !113, file: !76, line: 98, baseType: !51, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !113, file: !76, line: 98, baseType: !45, size: 32, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !113, file: !76, line: 99, baseType: !45, size: 32, offset: 224)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !113, file: !76, line: 100, baseType: !51, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !113, file: !76, line: 101, baseType: !69, size: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !75, file: !76, line: 374, baseType: !126, size: 384)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !76, line: 104, size: 384, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !134, !136, !137, !138}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !126, file: !76, line: 105, baseType: !74, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !126, file: !76, line: 105, baseType: !52, size: 8, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !126, file: !76, line: 105, baseType: !52, size: 8, offset: 72)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !126, file: !76, line: 105, baseType: !85, size: 16, offset: 80)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !126, file: !76, line: 105, baseType: !52, size: 8, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !126, file: !76, line: 105, baseType: !69, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !126, file: !76, line: 106, baseType: !135, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !126, file: !76, line: 107, baseType: !51, size: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !126, file: !76, line: 108, baseType: !45, size: 32, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !126, file: !76, line: 109, baseType: !45, size: 32, offset: 352)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !75, file: !76, line: 375, baseType: !140, size: 192)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !76, line: 118, size: 192, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !140, file: !76, line: 119, baseType: !74, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !140, file: !76, line: 119, baseType: !52, size: 8, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !76, line: 119, baseType: !52, size: 8, offset: 72)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !140, file: !76, line: 119, baseType: !85, size: 16, offset: 80)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !76, line: 119, baseType: !52, size: 8, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !140, file: !76, line: 119, baseType: !148, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !75, file: !76, line: 376, baseType: !150, size: 448)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !76, line: 144, size: 448, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !463, !464, !465}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !150, file: !76, line: 145, baseType: !74, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !150, file: !76, line: 145, baseType: !52, size: 8, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !150, file: !76, line: 145, baseType: !52, size: 8, offset: 72)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !150, file: !76, line: 145, baseType: !85, size: 16, offset: 80)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !150, file: !76, line: 145, baseType: !52, size: 8, offset: 96)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !150, file: !76, line: 145, baseType: !52, size: 8, offset: 104)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !150, file: !76, line: 146, baseType: !52, size: 8, offset: 112)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !150, file: !76, line: 147, baseType: !52, size: 8, offset: 120)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !150, file: !76, line: 148, baseType: !74, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !150, file: !76, line: 149, baseType: !74, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !150, file: !76, line: 150, baseType: !51, size: 64, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !150, file: !76, line: 154, baseType: !164, size: 64, offset: 320)
!164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !150, file: !76, line: 151, size: 64, elements: !165)
!165 = !{!166, !462}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !164, file: !76, line: 152, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !71, line: 248, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!44, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !173, line: 37, size: 9024, elements: !174)
!173 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!174 = !{!175, !176, !177, !178, !179, !180, !181, !182, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !408, !409, !410, !411, !412, !416, !418, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !445, !446, !447, !448, !449, !450, !451, !452, !454, !460}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !173, line: 38, baseType: !171, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !172, file: !173, line: 39, baseType: !52, size: 8, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !172, file: !173, line: 40, baseType: !52, size: 8, offset: 72)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !172, file: !173, line: 41, baseType: !85, size: 16, offset: 80)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !172, file: !173, line: 42, baseType: !52, size: 8, offset: 96)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !172, file: !173, line: 43, baseType: !52, size: 8, offset: 104)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !172, file: !173, line: 44, baseType: !52, size: 8, offset: 112)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !172, file: !173, line: 45, baseType: !183, size: 16, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !38, line: 445, baseType: !85)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !172, file: !173, line: 46, baseType: !52, size: 8, offset: 144)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !172, file: !173, line: 47, baseType: !52, size: 8, offset: 152)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !172, file: !173, line: 48, baseType: !52, size: 8, offset: 160)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !172, file: !173, line: 49, baseType: !52, size: 8, offset: 168)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !172, file: !173, line: 50, baseType: !52, size: 8, offset: 176)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !172, file: !173, line: 51, baseType: !52, size: 8, offset: 184)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !172, file: !173, line: 52, baseType: !52, size: 8, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !172, file: !173, line: 53, baseType: !52, size: 8, offset: 200)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !172, file: !173, line: 54, baseType: !51, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !172, file: !173, line: 55, baseType: !45, size: 32, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !172, file: !173, line: 56, baseType: !45, size: 32, offset: 352)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !172, file: !173, line: 57, baseType: !45, size: 32, offset: 384)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !172, file: !173, line: 58, baseType: !45, size: 32, offset: 416)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !172, file: !173, line: 60, baseType: !198, size: 640, offset: 448)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !71, line: 909, size: 640, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !289, !290, !406, !407}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !198, file: !71, line: 910, baseType: !51, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !198, file: !71, line: 911, baseType: !51, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !198, file: !71, line: 912, baseType: !51, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !198, file: !71, line: 913, baseType: !51, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !198, file: !71, line: 914, baseType: !51, size: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !198, file: !71, line: 915, baseType: !206, size: 64, offset: 320)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !71, line: 891, size: 1600, elements: !208)
!208 = !{!209, !229, !245}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !207, file: !71, line: 892, baseType: !210, size: 448)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !71, line: 844, size: 448, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !228}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !210, file: !71, line: 845, baseType: !206, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !210, file: !71, line: 845, baseType: !52, size: 8, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !210, file: !71, line: 845, baseType: !52, size: 8, offset: 72)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !210, file: !71, line: 845, baseType: !85, size: 16, offset: 80)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !210, file: !71, line: 845, baseType: !51, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !71, line: 845, baseType: !206, size: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !210, file: !71, line: 845, baseType: !69, size: 64, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !210, file: !71, line: 845, baseType: !220, size: 64, offset: 320)
!220 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !71, line: 732, size: 64, elements: !221)
!221 = !{!222, !223, !224, !225, !226, !227}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !220, file: !71, line: 733, baseType: !39, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !220, file: !71, line: 734, baseType: !45, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !220, file: !71, line: 735, baseType: !47, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !220, file: !71, line: 736, baseType: !51, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !220, file: !71, line: 737, baseType: !47, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !220, file: !71, line: 738, baseType: !206, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !210, file: !71, line: 845, baseType: !52, size: 8, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !207, file: !71, line: 893, baseType: !230, size: 640)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !71, line: 851, size: 640, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !230, file: !71, line: 852, baseType: !206, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !230, file: !71, line: 852, baseType: !52, size: 8, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !230, file: !71, line: 852, baseType: !52, size: 8, offset: 72)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !230, file: !71, line: 852, baseType: !85, size: 16, offset: 80)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !230, file: !71, line: 852, baseType: !51, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !230, file: !71, line: 852, baseType: !206, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !230, file: !71, line: 852, baseType: !69, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !230, file: !71, line: 852, baseType: !220, size: 64, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !230, file: !71, line: 852, baseType: !52, size: 8, offset: 384)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !230, file: !71, line: 852, baseType: !47, size: 64, offset: 448)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !230, file: !71, line: 853, baseType: !51, size: 64, offset: 512)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !230, file: !71, line: 854, baseType: !45, size: 32, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !230, file: !71, line: 855, baseType: !45, size: 32, offset: 608)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !207, file: !71, line: 894, baseType: !246, size: 1600)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !71, line: 862, size: 1600, elements: !247)
!247 = !{!248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !246, file: !71, line: 863, baseType: !206, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !246, file: !71, line: 863, baseType: !52, size: 8, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !246, file: !71, line: 863, baseType: !52, size: 8, offset: 72)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !246, file: !71, line: 863, baseType: !85, size: 16, offset: 80)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !246, file: !71, line: 863, baseType: !51, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !246, file: !71, line: 863, baseType: !206, size: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !246, file: !71, line: 863, baseType: !69, size: 64, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !246, file: !71, line: 863, baseType: !220, size: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !246, file: !71, line: 863, baseType: !52, size: 8, offset: 384)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !246, file: !71, line: 863, baseType: !206, size: 64, offset: 448)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !246, file: !71, line: 864, baseType: !206, size: 64, offset: 512)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !246, file: !71, line: 865, baseType: !47, size: 64, offset: 576)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !246, file: !71, line: 866, baseType: !52, size: 8, offset: 640)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !246, file: !71, line: 867, baseType: !47, size: 64, offset: 704)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !246, file: !71, line: 868, baseType: !47, size: 64, offset: 768)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !246, file: !71, line: 869, baseType: !47, size: 64, offset: 832)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !246, file: !71, line: 870, baseType: !265, size: 32, offset: 896)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 4)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !246, file: !71, line: 871, baseType: !45, size: 32, offset: 928)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !246, file: !71, line: 872, baseType: !45, size: 32, offset: 960)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !246, file: !71, line: 873, baseType: !45, size: 32, offset: 992)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !246, file: !71, line: 874, baseType: !45, size: 32, offset: 1024)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !246, file: !71, line: 875, baseType: !45, size: 32, offset: 1056)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !246, file: !71, line: 876, baseType: !45, size: 32, offset: 1088)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !246, file: !71, line: 877, baseType: !45, size: 32, offset: 1120)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !246, file: !71, line: 878, baseType: !45, size: 32, offset: 1152)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !246, file: !71, line: 879, baseType: !45, size: 32, offset: 1184)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !246, file: !71, line: 880, baseType: !45, size: 32, offset: 1216)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !246, file: !71, line: 881, baseType: !45, size: 32, offset: 1248)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !246, file: !71, line: 882, baseType: !45, size: 32, offset: 1280)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !246, file: !71, line: 883, baseType: !45, size: 32, offset: 1312)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !246, file: !71, line: 884, baseType: !85, size: 16, offset: 1344)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !246, file: !71, line: 885, baseType: !52, size: 8, offset: 1360)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !246, file: !71, line: 886, baseType: !52, size: 8, offset: 1368)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !246, file: !71, line: 887, baseType: !52, size: 8, offset: 1376)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !246, file: !71, line: 888, baseType: !286, size: 160, offset: 1384)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 20)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !198, file: !71, line: 916, baseType: !69, size: 64, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !198, file: !71, line: 917, baseType: !291, size: 64, offset: 448)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !71, line: 679, size: 640, elements: !293)
!293 = !{!294, !302, !315, !324, !333, !346, !360, !372, !384}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !292, file: !71, line: 680, baseType: !295, size: 128)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !71, line: 575, size: 128, elements: !296)
!296 = !{!297, !298, !299, !300, !301}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !71, line: 576, baseType: !148, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !295, file: !71, line: 576, baseType: !52, size: 8, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !71, line: 576, baseType: !52, size: 8, offset: 72)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !295, file: !71, line: 576, baseType: !85, size: 16, offset: 80)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !295, file: !71, line: 576, baseType: !85, size: 16, offset: 96)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !292, file: !71, line: 681, baseType: !303, size: 384)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !71, line: 604, size: 384, elements: !304)
!304 = !{!305, !306, !307, !308, !309, !310, !311, !312, !313, !314}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !303, file: !71, line: 605, baseType: !148, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !303, file: !71, line: 605, baseType: !52, size: 8, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !71, line: 605, baseType: !52, size: 8, offset: 72)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !303, file: !71, line: 605, baseType: !85, size: 16, offset: 80)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !303, file: !71, line: 605, baseType: !85, size: 16, offset: 96)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !303, file: !71, line: 606, baseType: !85, size: 16, offset: 112)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !303, file: !71, line: 607, baseType: !206, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !303, file: !71, line: 608, baseType: !51, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !303, file: !71, line: 609, baseType: !51, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !303, file: !71, line: 610, baseType: !39, size: 64, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !292, file: !71, line: 682, baseType: !316, size: 192)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !71, line: 582, size: 192, elements: !317)
!317 = !{!318, !319, !320, !321, !322, !323}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !316, file: !71, line: 583, baseType: !148, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !316, file: !71, line: 583, baseType: !52, size: 8, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !316, file: !71, line: 583, baseType: !52, size: 8, offset: 72)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !316, file: !71, line: 583, baseType: !85, size: 16, offset: 80)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !316, file: !71, line: 583, baseType: !85, size: 16, offset: 96)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !316, file: !71, line: 584, baseType: !74, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !292, file: !71, line: 683, baseType: !325, size: 192)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !71, line: 616, size: 192, elements: !326)
!326 = !{!327, !328, !329, !330, !331, !332}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !325, file: !71, line: 617, baseType: !148, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !325, file: !71, line: 617, baseType: !52, size: 8, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !325, file: !71, line: 617, baseType: !52, size: 8, offset: 72)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !325, file: !71, line: 617, baseType: !85, size: 16, offset: 80)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !325, file: !71, line: 617, baseType: !85, size: 16, offset: 96)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !325, file: !71, line: 618, baseType: !69, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !292, file: !71, line: 684, baseType: !334, size: 448)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !71, line: 621, size: 448, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !71, line: 622, baseType: !148, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !334, file: !71, line: 622, baseType: !52, size: 8, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !71, line: 622, baseType: !52, size: 8, offset: 72)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !334, file: !71, line: 622, baseType: !85, size: 16, offset: 80)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !334, file: !71, line: 622, baseType: !85, size: 16, offset: 96)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !334, file: !71, line: 623, baseType: !45, size: 32, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !334, file: !71, line: 624, baseType: !206, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !334, file: !71, line: 625, baseType: !51, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !334, file: !71, line: 626, baseType: !51, size: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !334, file: !71, line: 627, baseType: !45, size: 32, offset: 384)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !292, file: !71, line: 685, baseType: !347, size: 512)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !71, line: 590, size: 512, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !71, line: 591, baseType: !148, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !347, file: !71, line: 591, baseType: !52, size: 8, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !347, file: !71, line: 591, baseType: !52, size: 8, offset: 72)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !347, file: !71, line: 591, baseType: !85, size: 16, offset: 80)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !347, file: !71, line: 591, baseType: !85, size: 16, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !347, file: !71, line: 592, baseType: !45, size: 32, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !347, file: !71, line: 593, baseType: !74, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !347, file: !71, line: 594, baseType: !74, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !347, file: !71, line: 595, baseType: !171, size: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !347, file: !71, line: 596, baseType: !148, size: 64, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !347, file: !71, line: 597, baseType: !45, size: 32, offset: 448)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !292, file: !71, line: 686, baseType: !361, size: 320)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !71, line: 634, size: 320, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !368, !369, !370, !371}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !361, file: !71, line: 635, baseType: !148, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !361, file: !71, line: 635, baseType: !52, size: 8, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !361, file: !71, line: 635, baseType: !52, size: 8, offset: 72)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !361, file: !71, line: 635, baseType: !85, size: 16, offset: 80)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !361, file: !71, line: 635, baseType: !85, size: 16, offset: 96)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !361, file: !71, line: 636, baseType: !52, size: 8, offset: 112)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !361, file: !71, line: 637, baseType: !171, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !361, file: !71, line: 638, baseType: !74, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !361, file: !71, line: 639, baseType: !39, size: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !292, file: !71, line: 687, baseType: !373, size: 640)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !71, line: 646, size: 640, elements: !374)
!374 = !{!375, !376, !377, !378, !379, !380}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !373, file: !71, line: 647, baseType: !148, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !373, file: !71, line: 647, baseType: !52, size: 8, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !373, file: !71, line: 647, baseType: !52, size: 8, offset: 72)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !373, file: !71, line: 647, baseType: !85, size: 16, offset: 80)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !373, file: !71, line: 647, baseType: !85, size: 16, offset: 96)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !373, file: !71, line: 648, baseType: !381, size: 512, offset: 128)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 512, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 8)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !292, file: !71, line: 688, baseType: !385, size: 320)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !71, line: 669, size: 320, elements: !386)
!386 = !{!387, !388, !389, !390, !391, !392, !393, !394, !395}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !385, file: !71, line: 670, baseType: !148, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !385, file: !71, line: 670, baseType: !52, size: 8, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !385, file: !71, line: 670, baseType: !52, size: 8, offset: 72)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !385, file: !71, line: 670, baseType: !85, size: 16, offset: 80)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !385, file: !71, line: 670, baseType: !85, size: 16, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !385, file: !71, line: 671, baseType: !52, size: 8, offset: 112)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !385, file: !71, line: 672, baseType: !69, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !385, file: !71, line: 673, baseType: !74, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !385, file: !71, line: 674, baseType: !396, size: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !71, line: 660, size: 128, elements: !398)
!398 = !{!399, !405}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !397, file: !71, line: 661, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !38, line: 1061, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !404, !45, !148}
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !38, line: 424, baseType: !148)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !397, file: !71, line: 662, baseType: !148, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !198, file: !71, line: 918, baseType: !206, size: 64, offset: 512)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !198, file: !71, line: 919, baseType: !45, size: 32, offset: 576)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !172, file: !173, line: 61, baseType: !45, size: 32, offset: 1088)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !172, file: !173, line: 62, baseType: !45, size: 32, offset: 1120)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !172, file: !173, line: 63, baseType: !85, size: 16, offset: 1152)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !172, file: !173, line: 64, baseType: !52, size: 8, offset: 1168)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !172, file: !173, line: 66, baseType: !413, size: 2688, offset: 1216)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 2688, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 7)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !172, file: !173, line: 67, baseType: !417, size: 3072, offset: 3904)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 3072, elements: !382)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !172, file: !173, line: 68, baseType: !419, size: 576, offset: 6976)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 576, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 9)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !172, file: !173, line: 69, baseType: !135, size: 64, offset: 7552)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !172, file: !173, line: 71, baseType: !51, size: 64, offset: 7616)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !172, file: !173, line: 72, baseType: !135, size: 64, offset: 7680)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !172, file: !173, line: 73, baseType: !291, size: 64, offset: 7744)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !172, file: !173, line: 74, baseType: !69, size: 64, offset: 7808)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !172, file: !173, line: 75, baseType: !74, size: 64, offset: 7872)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !172, file: !173, line: 76, baseType: !69, size: 64, offset: 7936)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !172, file: !173, line: 77, baseType: !206, size: 64, offset: 8000)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !172, file: !173, line: 78, baseType: !74, size: 64, offset: 8064)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !172, file: !173, line: 79, baseType: !69, size: 64, offset: 8128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !172, file: !173, line: 80, baseType: !47, size: 64, offset: 8192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !172, file: !173, line: 81, baseType: !206, size: 64, offset: 8256)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !172, file: !173, line: 82, baseType: !435, size: 64, offset: 8320)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !71, line: 718, size: 128, elements: !438)
!438 = !{!439, !440, !441, !442, !443, !444}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !437, file: !71, line: 722, baseType: !45, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !437, file: !71, line: 723, baseType: !45, size: 32, offset: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !437, file: !71, line: 724, baseType: !85, size: 16, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !437, file: !71, line: 725, baseType: !52, size: 8, offset: 80)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !437, file: !71, line: 726, baseType: !52, size: 8, offset: 88)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !437, file: !71, line: 727, baseType: !52, size: 8, offset: 96)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !172, file: !173, line: 83, baseType: !206, size: 64, offset: 8384)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !172, file: !173, line: 84, baseType: !74, size: 64, offset: 8448)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !172, file: !173, line: 85, baseType: !291, size: 64, offset: 8512)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !172, file: !173, line: 86, baseType: !74, size: 64, offset: 8576)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !172, file: !173, line: 87, baseType: !291, size: 64, offset: 8640)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !172, file: !173, line: 88, baseType: !206, size: 64, offset: 8704)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !172, file: !173, line: 89, baseType: !206, size: 64, offset: 8768)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !172, file: !173, line: 90, baseType: !453, size: 64, offset: 8832)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !172, file: !173, line: 91, baseType: !455, size: 64, offset: 8896)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !71, line: 652, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!44, !171, !459}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !172, file: !173, line: 92, baseType: !461, size: 64, offset: 8960)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !71, line: 656, baseType: !168)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !164, file: !76, line: 153, baseType: !74, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !150, file: !76, line: 156, baseType: !45, size: 32, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !150, file: !76, line: 157, baseType: !183, size: 16, offset: 416)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !150, file: !76, line: 158, baseType: !52, size: 8, offset: 432)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !75, file: !76, line: 377, baseType: !467, size: 576)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !76, line: 122, size: 576, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !467, file: !76, line: 123, baseType: !74, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !467, file: !76, line: 123, baseType: !52, size: 8, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !467, file: !76, line: 123, baseType: !52, size: 8, offset: 72)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !467, file: !76, line: 123, baseType: !85, size: 16, offset: 80)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !467, file: !76, line: 123, baseType: !52, size: 8, offset: 96)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !467, file: !76, line: 123, baseType: !52, size: 8, offset: 104)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !467, file: !76, line: 124, baseType: !85, size: 16, offset: 112)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !467, file: !76, line: 125, baseType: !148, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !467, file: !76, line: 126, baseType: !39, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !467, file: !76, line: 127, baseType: !453, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !467, file: !76, line: 128, baseType: !74, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !467, file: !76, line: 129, baseType: !74, size: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !467, file: !76, line: 130, baseType: !69, size: 64, offset: 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !467, file: !76, line: 131, baseType: !52, size: 8, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !75, file: !76, line: 378, baseType: !484, size: 512)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !76, line: 134, size: 512, elements: !485)
!485 = !{!486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !497, !498}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !484, file: !76, line: 135, baseType: !74, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !484, file: !76, line: 135, baseType: !52, size: 8, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !484, file: !76, line: 135, baseType: !52, size: 8, offset: 72)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !484, file: !76, line: 135, baseType: !85, size: 16, offset: 80)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !484, file: !76, line: 135, baseType: !52, size: 8, offset: 96)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !484, file: !76, line: 135, baseType: !52, size: 8, offset: 104)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !484, file: !76, line: 136, baseType: !69, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !484, file: !76, line: 137, baseType: !74, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !484, file: !76, line: 138, baseType: !74, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !484, file: !76, line: 139, baseType: !496, size: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !38, line: 129, baseType: !39)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !484, file: !76, line: 140, baseType: !45, size: 32, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !484, file: !76, line: 141, baseType: !148, size: 64, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !75, file: !76, line: 379, baseType: !500, size: 320)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !76, line: 185, size: 320, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507, !511}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !500, file: !76, line: 186, baseType: !74, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !500, file: !76, line: 186, baseType: !52, size: 8, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !500, file: !76, line: 186, baseType: !52, size: 8, offset: 72)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !500, file: !76, line: 186, baseType: !85, size: 16, offset: 80)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !76, line: 186, baseType: !52, size: 8, offset: 96)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !500, file: !76, line: 186, baseType: !508, size: 128, offset: 128)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 128, elements: !509)
!509 = !{!510}
!510 = !DISubrange(count: 2)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !500, file: !76, line: 186, baseType: !74, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !75, file: !76, line: 380, baseType: !513, size: 384)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !76, line: 188, size: 384, elements: !514)
!514 = !{!515, !516, !517, !518, !519, !520, !521, !522}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !513, file: !76, line: 189, baseType: !74, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !513, file: !76, line: 189, baseType: !52, size: 8, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !513, file: !76, line: 189, baseType: !52, size: 8, offset: 72)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !513, file: !76, line: 189, baseType: !85, size: 16, offset: 80)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !513, file: !76, line: 189, baseType: !52, size: 8, offset: 96)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !513, file: !76, line: 190, baseType: !508, size: 128, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !513, file: !76, line: 190, baseType: !74, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !513, file: !76, line: 190, baseType: !523, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !71, line: 480, size: 576, elements: !525)
!525 = !{!526, !527, !528, !529, !537, !552, !584, !585, !586, !587, !588, !589}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !524, file: !71, line: 481, baseType: !69, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !524, file: !71, line: 482, baseType: !523, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !524, file: !71, line: 483, baseType: !523, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !524, file: !71, line: 484, baseType: !530, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !71, line: 497, size: 256, elements: !532)
!532 = !{!533, !534, !535, !536}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !531, file: !71, line: 498, baseType: !530, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !531, file: !71, line: 499, baseType: !530, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !531, file: !71, line: 500, baseType: !523, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !531, file: !71, line: 501, baseType: !45, size: 32, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !524, file: !71, line: 485, baseType: !538, size: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !71, line: 466, size: 320, elements: !540)
!540 = !{!541, !546, !547, !548, !549, !550, !551}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !539, file: !71, line: 467, baseType: !542, size: 128)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !71, line: 459, size: 128, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !542, file: !71, line: 460, baseType: !52, size: 8)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !542, file: !71, line: 461, baseType: !39, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !539, file: !71, line: 468, baseType: !542, size: 128, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !539, file: !71, line: 469, baseType: !85, size: 16, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !539, file: !71, line: 470, baseType: !52, size: 8, offset: 272)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !539, file: !71, line: 471, baseType: !52, size: 8, offset: 280)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !539, file: !71, line: 472, baseType: !52, size: 8, offset: 288)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !539, file: !71, line: 473, baseType: !52, size: 8, offset: 296)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !524, file: !71, line: 486, baseType: !553, size: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !71, line: 448, size: 192, elements: !555)
!555 = !{!556, !579, !580, !581, !582, !583}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !554, file: !71, line: 449, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !71, line: 438, size: 64, elements: !558)
!558 = !{!559, !560, !573}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !557, file: !71, line: 439, baseType: !69, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !557, file: !71, line: 440, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !71, line: 419, size: 256, elements: !563)
!563 = !{!564, !569, !570, !571, !572}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !562, file: !71, line: 420, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !38, line: 1058, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!45, !404, !45, !148}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !562, file: !71, line: 421, baseType: !148, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !562, file: !71, line: 422, baseType: !69, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !562, file: !71, line: 423, baseType: !52, size: 8, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !562, file: !71, line: 424, baseType: !52, size: 8, offset: 200)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !557, file: !71, line: 441, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !71, line: 429, size: 128, elements: !576)
!576 = !{!577, !578}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !575, file: !71, line: 430, baseType: !69, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !575, file: !71, line: 431, baseType: !574, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !554, file: !71, line: 450, baseType: !538, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !554, file: !71, line: 451, baseType: !52, size: 8, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !554, file: !71, line: 452, baseType: !52, size: 8, offset: 136)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !554, file: !71, line: 453, baseType: !52, size: 8, offset: 144)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !554, file: !71, line: 454, baseType: !52, size: 8, offset: 152)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !524, file: !71, line: 487, baseType: !39, size: 64, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !524, file: !71, line: 488, baseType: !45, size: 32, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !524, file: !71, line: 489, baseType: !85, size: 16, offset: 480)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !524, file: !71, line: 490, baseType: !85, size: 16, offset: 496)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !524, file: !71, line: 491, baseType: !52, size: 8, offset: 512)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !524, file: !71, line: 492, baseType: !52, size: 8, offset: 520)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !75, file: !76, line: 381, baseType: !591, size: 384)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !76, line: 193, size: 384, elements: !592)
!592 = !{!593, !594, !595, !596, !597, !598, !599, !600, !601}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !591, file: !76, line: 194, baseType: !74, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !591, file: !76, line: 194, baseType: !52, size: 8, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !591, file: !76, line: 194, baseType: !52, size: 8, offset: 72)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !591, file: !76, line: 194, baseType: !85, size: 16, offset: 80)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !591, file: !76, line: 194, baseType: !52, size: 8, offset: 96)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !591, file: !76, line: 194, baseType: !508, size: 128, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !591, file: !76, line: 194, baseType: !74, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !591, file: !76, line: 194, baseType: !45, size: 32, offset: 320)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !591, file: !76, line: 195, baseType: !45, size: 32, offset: 352)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !75, file: !76, line: 382, baseType: !603, size: 384)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !76, line: 198, size: 384, elements: !604)
!604 = !{!605, !606, !607, !608, !609, !610, !611, !612, !613, !614}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !603, file: !76, line: 199, baseType: !74, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !603, file: !76, line: 199, baseType: !52, size: 8, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !603, file: !76, line: 199, baseType: !52, size: 8, offset: 72)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !603, file: !76, line: 199, baseType: !85, size: 16, offset: 80)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !603, file: !76, line: 199, baseType: !52, size: 8, offset: 96)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !603, file: !76, line: 201, baseType: !52, size: 8, offset: 104)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !603, file: !76, line: 202, baseType: !52, size: 8, offset: 112)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !603, file: !76, line: 203, baseType: !508, size: 128, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !603, file: !76, line: 203, baseType: !74, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !603, file: !76, line: 203, baseType: !615, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !38, line: 128, baseType: !39)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !75, file: !76, line: 383, baseType: !617, size: 320)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !76, line: 206, size: 320, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !617, file: !76, line: 207, baseType: !74, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !617, file: !76, line: 207, baseType: !52, size: 8, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !617, file: !76, line: 207, baseType: !52, size: 8, offset: 72)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !617, file: !76, line: 207, baseType: !85, size: 16, offset: 80)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !617, file: !76, line: 207, baseType: !52, size: 8, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !617, file: !76, line: 207, baseType: !508, size: 128, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !617, file: !76, line: 207, baseType: !74, size: 64, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !75, file: !76, line: 384, baseType: !627, size: 384)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !76, line: 234, size: 384, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !627, file: !76, line: 235, baseType: !74, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !627, file: !76, line: 235, baseType: !52, size: 8, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !627, file: !76, line: 235, baseType: !52, size: 8, offset: 72)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !627, file: !76, line: 235, baseType: !85, size: 16, offset: 80)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !627, file: !76, line: 235, baseType: !52, size: 8, offset: 96)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !627, file: !76, line: 235, baseType: !52, size: 8, offset: 104)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !627, file: !76, line: 235, baseType: !52, size: 8, offset: 112)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !627, file: !76, line: 235, baseType: !52, size: 8, offset: 120)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !627, file: !76, line: 235, baseType: !69, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !627, file: !76, line: 235, baseType: !45, size: 32, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !627, file: !76, line: 235, baseType: !45, size: 32, offset: 224)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !627, file: !76, line: 235, baseType: !45, size: 32, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !627, file: !76, line: 235, baseType: !52, size: 8, offset: 288)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !627, file: !76, line: 235, baseType: !52, size: 8, offset: 296)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !627, file: !76, line: 235, baseType: !74, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !75, file: !76, line: 385, baseType: !645, size: 576)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !76, line: 238, size: 576, elements: !646)
!646 = !{!647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !645, file: !76, line: 239, baseType: !74, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !645, file: !76, line: 239, baseType: !52, size: 8, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !645, file: !76, line: 239, baseType: !52, size: 8, offset: 72)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !645, file: !76, line: 239, baseType: !85, size: 16, offset: 80)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !645, file: !76, line: 239, baseType: !52, size: 8, offset: 96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !645, file: !76, line: 239, baseType: !52, size: 8, offset: 104)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !645, file: !76, line: 239, baseType: !52, size: 8, offset: 112)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !645, file: !76, line: 239, baseType: !52, size: 8, offset: 120)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !645, file: !76, line: 239, baseType: !69, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !645, file: !76, line: 239, baseType: !45, size: 32, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !645, file: !76, line: 239, baseType: !45, size: 32, offset: 224)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !645, file: !76, line: 239, baseType: !45, size: 32, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !645, file: !76, line: 239, baseType: !52, size: 8, offset: 288)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !645, file: !76, line: 239, baseType: !52, size: 8, offset: 296)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !645, file: !76, line: 239, baseType: !85, size: 16, offset: 304)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !645, file: !76, line: 240, baseType: !74, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !645, file: !76, line: 241, baseType: !51, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !645, file: !76, line: 242, baseType: !85, size: 16, offset: 448)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !645, file: !76, line: 243, baseType: !51, size: 64, offset: 512)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !75, file: !76, line: 386, baseType: !667, size: 384)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !76, line: 263, size: 384, elements: !668)
!668 = !{!669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !667, file: !76, line: 264, baseType: !74, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !667, file: !76, line: 264, baseType: !52, size: 8, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !667, file: !76, line: 264, baseType: !52, size: 8, offset: 72)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !667, file: !76, line: 264, baseType: !85, size: 16, offset: 80)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !667, file: !76, line: 264, baseType: !52, size: 8, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !667, file: !76, line: 264, baseType: !52, size: 8, offset: 104)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !667, file: !76, line: 264, baseType: !52, size: 8, offset: 112)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !667, file: !76, line: 264, baseType: !52, size: 8, offset: 120)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !667, file: !76, line: 264, baseType: !69, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !667, file: !76, line: 264, baseType: !45, size: 32, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !667, file: !76, line: 264, baseType: !45, size: 32, offset: 224)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !667, file: !76, line: 264, baseType: !45, size: 32, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !667, file: !76, line: 264, baseType: !52, size: 8, offset: 288)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !667, file: !76, line: 264, baseType: !52, size: 8, offset: 296)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !667, file: !76, line: 264, baseType: !52, size: 8, offset: 304)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !667, file: !76, line: 265, baseType: !74, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !75, file: !76, line: 387, baseType: !686, size: 448)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !76, line: 246, size: 448, elements: !687)
!687 = !{!688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !686, file: !76, line: 247, baseType: !74, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !686, file: !76, line: 247, baseType: !52, size: 8, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !686, file: !76, line: 247, baseType: !52, size: 8, offset: 72)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !686, file: !76, line: 247, baseType: !85, size: 16, offset: 80)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !76, line: 247, baseType: !52, size: 8, offset: 96)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !686, file: !76, line: 247, baseType: !52, size: 8, offset: 104)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !686, file: !76, line: 247, baseType: !52, size: 8, offset: 112)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !686, file: !76, line: 247, baseType: !52, size: 8, offset: 120)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !686, file: !76, line: 247, baseType: !69, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !686, file: !76, line: 247, baseType: !45, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !686, file: !76, line: 247, baseType: !45, size: 32, offset: 224)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !686, file: !76, line: 247, baseType: !45, size: 32, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !686, file: !76, line: 247, baseType: !52, size: 8, offset: 288)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !686, file: !76, line: 247, baseType: !52, size: 8, offset: 296)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !686, file: !76, line: 247, baseType: !74, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !686, file: !76, line: 248, baseType: !74, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !75, file: !76, line: 388, baseType: !705, size: 448)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !76, line: 251, size: 448, elements: !706)
!706 = !{!707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !705, file: !76, line: 252, baseType: !74, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !705, file: !76, line: 252, baseType: !52, size: 8, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !705, file: !76, line: 252, baseType: !52, size: 8, offset: 72)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !705, file: !76, line: 252, baseType: !85, size: 16, offset: 80)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !705, file: !76, line: 252, baseType: !52, size: 8, offset: 96)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !705, file: !76, line: 252, baseType: !52, size: 8, offset: 104)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !705, file: !76, line: 252, baseType: !52, size: 8, offset: 112)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !705, file: !76, line: 252, baseType: !52, size: 8, offset: 120)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !705, file: !76, line: 252, baseType: !69, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !705, file: !76, line: 252, baseType: !45, size: 32, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !705, file: !76, line: 252, baseType: !45, size: 32, offset: 224)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !705, file: !76, line: 252, baseType: !45, size: 32, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !705, file: !76, line: 252, baseType: !52, size: 8, offset: 288)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !705, file: !76, line: 252, baseType: !52, size: 8, offset: 296)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !705, file: !76, line: 257, baseType: !74, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !705, file: !76, line: 258, baseType: !74, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !75, file: !76, line: 389, baseType: !724, size: 512)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !76, line: 274, size: 512, elements: !725)
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734, !735}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !724, file: !76, line: 275, baseType: !74, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !724, file: !76, line: 275, baseType: !52, size: 8, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !724, file: !76, line: 275, baseType: !52, size: 8, offset: 72)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !724, file: !76, line: 275, baseType: !85, size: 16, offset: 80)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !724, file: !76, line: 275, baseType: !52, size: 8, offset: 96)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !724, file: !76, line: 275, baseType: !69, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !724, file: !76, line: 276, baseType: !45, size: 32, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !724, file: !76, line: 277, baseType: !400, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !724, file: !76, line: 278, baseType: !148, size: 64, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !724, file: !76, line: 279, baseType: !508, size: 128, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !75, file: !76, line: 390, baseType: !737, size: 576)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !76, line: 282, size: 576, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !752, !753, !754, !755, !761, !762}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !737, file: !76, line: 283, baseType: !74, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !737, file: !76, line: 283, baseType: !52, size: 8, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !737, file: !76, line: 283, baseType: !52, size: 8, offset: 72)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !737, file: !76, line: 283, baseType: !85, size: 16, offset: 80)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !737, file: !76, line: 283, baseType: !52, size: 8, offset: 96)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !737, file: !76, line: 283, baseType: !52, size: 8, offset: 104)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !737, file: !76, line: 284, baseType: !52, size: 8, offset: 112)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !737, file: !76, line: 285, baseType: !747, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !38, line: 1093, baseType: !748)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!44, !45, !496, !45, !751, !148, !148}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !737, file: !76, line: 286, baseType: !69, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !737, file: !76, line: 287, baseType: !148, size: 64, offset: 256)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !737, file: !76, line: 288, baseType: !148, size: 64, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !737, file: !76, line: 289, baseType: !756, size: 64, offset: 384)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !38, line: 1126, baseType: !757)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!44, !404, !45, !148, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !737, file: !76, line: 290, baseType: !74, size: 64, offset: 448)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !737, file: !76, line: 291, baseType: !74, size: 64, offset: 512)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !75, file: !76, line: 391, baseType: !764, size: 512)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !76, line: 309, size: 512, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !764, file: !76, line: 310, baseType: !74, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !764, file: !76, line: 310, baseType: !52, size: 8, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !76, line: 310, baseType: !52, size: 8, offset: 72)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !764, file: !76, line: 310, baseType: !85, size: 16, offset: 80)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !76, line: 310, baseType: !52, size: 8, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !764, file: !76, line: 310, baseType: !52, size: 8, offset: 104)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !764, file: !76, line: 311, baseType: !52, size: 8, offset: 112)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !764, file: !76, line: 312, baseType: !52, size: 8, offset: 120)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !764, file: !76, line: 313, baseType: !148, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !764, file: !76, line: 314, baseType: !69, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !764, file: !76, line: 315, baseType: !135, size: 64, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !764, file: !76, line: 316, baseType: !51, size: 64, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !764, file: !76, line: 317, baseType: !51, size: 64, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !764, file: !76, line: 318, baseType: !45, size: 32, offset: 448)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !75, file: !76, line: 392, baseType: !781, size: 448)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !76, line: 342, size: 448, elements: !782)
!782 = !{!783, !784, !785, !786, !787, !788, !789, !790, !791, !792}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !781, file: !76, line: 343, baseType: !74, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !781, file: !76, line: 343, baseType: !52, size: 8, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !781, file: !76, line: 343, baseType: !52, size: 8, offset: 72)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !781, file: !76, line: 343, baseType: !85, size: 16, offset: 80)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !76, line: 343, baseType: !52, size: 8, offset: 96)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !781, file: !76, line: 343, baseType: !69, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !781, file: !76, line: 344, baseType: !69, size: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !781, file: !76, line: 345, baseType: !148, size: 64, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !781, file: !76, line: 346, baseType: !51, size: 64, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !781, file: !76, line: 347, baseType: !45, size: 32, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !75, file: !76, line: 393, baseType: !794, size: 256)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !76, line: 352, size: 256, elements: !795)
!795 = !{!796, !797, !798, !799, !800, !801, !806}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !794, file: !76, line: 353, baseType: !74, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !794, file: !76, line: 353, baseType: !52, size: 8, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !794, file: !76, line: 353, baseType: !52, size: 8, offset: 72)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !794, file: !76, line: 353, baseType: !85, size: 16, offset: 80)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !794, file: !76, line: 353, baseType: !52, size: 8, offset: 96)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !794, file: !76, line: 353, baseType: !802, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !38, line: 1064, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !404, !148}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !794, file: !76, line: 354, baseType: !148, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !75, file: !76, line: 394, baseType: !808, size: 192)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !76, line: 359, size: 192, elements: !809)
!809 = !{!810, !811, !812, !813, !814, !815}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !808, file: !76, line: 360, baseType: !74, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !808, file: !76, line: 360, baseType: !52, size: 8, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !808, file: !76, line: 360, baseType: !52, size: 8, offset: 72)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !808, file: !76, line: 360, baseType: !85, size: 16, offset: 80)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !808, file: !76, line: 360, baseType: !52, size: 8, offset: 96)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !808, file: !76, line: 360, baseType: !74, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !75, file: !76, line: 401, baseType: !70, size: 384)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !70, file: !71, line: 135, baseType: !52, size: 8, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !71, line: 136, baseType: !52, size: 8, offset: 72)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !70, file: !71, line: 137, baseType: !85, size: 16, offset: 80)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !70, file: !71, line: 138, baseType: !821, size: 32, offset: 96)
!821 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !822, line: 328, size: 32, elements: !823)
!822 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !821, file: !822, line: 329, baseType: !45, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !821, file: !822, line: 330, baseType: !265, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !70, file: !71, line: 139, baseType: !69, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !70, file: !71, line: 140, baseType: !69, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !70, file: !71, line: 141, baseType: !69, size: 64, offset: 256)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !70, file: !71, line: 142, baseType: !183, size: 16, offset: 320)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_device_id", file: !38, line: 1165, size: 128, elements: !833)
!833 = !{!834, !835}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !832, file: !38, line: 1166, baseType: !45, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !832, file: !38, line: 1167, baseType: !47, size: 64, offset: 64)
!836 = !{!837, !838, !839, !840, !841, !842, !843}
!837 = !DILocalVariable(name: "device_node", arg: 1, scope: !66, file: !2, line: 35, type: !69)
!838 = !DILocalVariable(name: "return_id", arg: 2, scope: !66, file: !2, line: 36, type: !830)
!839 = !DILocalVariable(name: "obj_desc", scope: !66, file: !2, line: 38, type: !74)
!840 = !DILocalVariable(name: "hid", scope: !66, file: !2, line: 39, type: !831)
!841 = !DILocalVariable(name: "length", scope: !66, file: !2, line: 40, type: !45)
!842 = !DILocalVariable(name: "status", scope: !66, file: !2, line: 41, type: !44)
!843 = !DILabel(scope: !66, name: "cleanup", file: !2, line: 86)
!844 = !DILocation(line: 35, column: 49, scope: !66)
!845 = !DILocation(line: 36, column: 35, scope: !66)
!846 = !DILocation(line: 38, column: 2, scope: !66)
!847 = !DILocation(line: 38, column: 29, scope: !66)
!848 = !DILocation(line: 39, column: 2, scope: !66)
!849 = !DILocation(line: 39, column: 29, scope: !66)
!850 = !DILocation(line: 40, column: 2, scope: !66)
!851 = !DILocation(line: 40, column: 6, scope: !66)
!852 = !DILocation(line: 41, column: 2, scope: !66)
!853 = !DILocation(line: 41, column: 14, scope: !66)
!854 = !DILocation(line: 45, column: 35, scope: !66)
!855 = !DILocation(line: 45, column: 11, scope: !66)
!856 = !DILocation(line: 45, column: 9, scope: !66)
!857 = !DILocation(line: 48, column: 6, scope: !858)
!858 = distinct !DILexicalBlock(scope: !66, file: !2, line: 48, column: 6)
!859 = !DILocation(line: 48, column: 6, scope: !66)
!860 = !DILocation(line: 49, column: 3, scope: !861)
!861 = distinct !DILexicalBlock(scope: !858, file: !2, line: 48, column: 28)
!862 = !DILocation(line: 54, column: 6, scope: !863)
!863 = distinct !DILexicalBlock(scope: !66, file: !2, line: 54, column: 6)
!864 = !DILocation(line: 54, column: 23, scope: !863)
!865 = !DILocation(line: 54, column: 28, scope: !863)
!866 = !DILocation(line: 54, column: 6, scope: !66)
!867 = !DILocation(line: 55, column: 10, scope: !868)
!868 = distinct !DILexicalBlock(scope: !863, file: !2, line: 54, column: 50)
!869 = !DILocation(line: 56, column: 2, scope: !868)
!870 = !DILocation(line: 57, column: 12, scope: !871)
!871 = distinct !DILexicalBlock(scope: !863, file: !2, line: 56, column: 9)
!872 = !DILocation(line: 57, column: 29, scope: !871)
!873 = !DILocation(line: 57, column: 36, scope: !871)
!874 = !DILocation(line: 57, column: 10, scope: !871)
!875 = !DILocation(line: 63, column: 6, scope: !66)
!876 = !DILocation(line: 62, column: 6, scope: !66)
!877 = !DILocation(line: 65, column: 7, scope: !878)
!878 = distinct !DILexicalBlock(scope: !66, file: !2, line: 65, column: 6)
!879 = !DILocation(line: 65, column: 6, scope: !66)
!880 = !DILocation(line: 66, column: 10, scope: !881)
!881 = distinct !DILexicalBlock(scope: !878, file: !2, line: 65, column: 12)
!882 = !DILocation(line: 67, column: 3, scope: !881)
!883 = !DILocation(line: 73, column: 6, scope: !66)
!884 = !DILocation(line: 72, column: 2, scope: !66)
!885 = !DILocation(line: 72, column: 7, scope: !66)
!886 = !DILocation(line: 72, column: 14, scope: !66)
!887 = !DILocation(line: 77, column: 6, scope: !888)
!888 = distinct !DILexicalBlock(scope: !66, file: !2, line: 77, column: 6)
!889 = !DILocation(line: 77, column: 23, scope: !888)
!890 = !DILocation(line: 77, column: 28, scope: !888)
!891 = !DILocation(line: 77, column: 6, scope: !66)
!892 = !DILocation(line: 78, column: 29, scope: !893)
!893 = distinct !DILexicalBlock(scope: !888, file: !2, line: 77, column: 50)
!894 = !DILocation(line: 78, column: 34, scope: !893)
!895 = !DILocation(line: 78, column: 42, scope: !893)
!896 = !DILocation(line: 78, column: 60, scope: !893)
!897 = !DILocation(line: 78, column: 3, scope: !893)
!898 = !DILocation(line: 79, column: 2, scope: !893)
!899 = !DILocation(line: 80, column: 10, scope: !900)
!900 = distinct !DILexicalBlock(scope: !888, file: !2, line: 79, column: 9)
!901 = !DILocation(line: 80, column: 15, scope: !900)
!902 = !DILocation(line: 80, column: 23, scope: !900)
!903 = !DILocation(line: 80, column: 40, scope: !900)
!904 = !DILocation(line: 80, column: 3, scope: !900)
!905 = !DILocation(line: 83, column: 16, scope: !66)
!906 = !DILocation(line: 83, column: 2, scope: !66)
!907 = !DILocation(line: 83, column: 7, scope: !66)
!908 = !DILocation(line: 83, column: 14, scope: !66)
!909 = !DILocation(line: 84, column: 15, scope: !66)
!910 = !DILocation(line: 84, column: 3, scope: !66)
!911 = !DILocation(line: 84, column: 13, scope: !66)
!912 = !DILocation(line: 84, column: 2, scope: !66)
!913 = !DILocation(line: 86, column: 1, scope: !66)
!914 = !DILocation(line: 90, column: 27, scope: !66)
!915 = !DILocation(line: 90, column: 2, scope: !66)
!916 = !DILocation(line: 91, column: 2, scope: !66)
!917 = !DILocation(line: 92, column: 1, scope: !66)
!918 = !DISubprogram(name: "acpi_ut_evaluate_object", scope: !919, file: !919, line: 381, type: !920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!919 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!920 = !DISubroutineType(types: !921)
!921 = !{!44, !69, !922, !45, !135}
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!924 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !925, file: !925, line: 55, type: !926, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !928)
!925 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!926 = !DISubroutineType(types: !927)
!927 = !{!148, !37}
!928 = !{!929, !930, !932, !935, !936, !939}
!929 = !DILocalVariable(name: "size", arg: 1, scope: !924, file: !925, line: 55, type: !37)
!930 = !DILocalVariable(name: "_flags", scope: !931, file: !925, line: 57, type: !50)
!931 = distinct !DILexicalBlock(scope: !924, file: !925, line: 57, column: 23)
!932 = !DILocalVariable(name: "__dummy", scope: !933, file: !925, line: 57, type: !50)
!933 = distinct !DILexicalBlock(scope: !934, file: !925, line: 57, column: 23)
!934 = distinct !DILexicalBlock(scope: !931, file: !925, line: 57, column: 23)
!935 = !DILocalVariable(name: "__dummy2", scope: !933, file: !925, line: 57, type: !50)
!936 = !DILocalVariable(name: "__dummy", scope: !937, file: !925, line: 57, type: !50)
!937 = distinct !DILexicalBlock(scope: !938, file: !925, line: 57, column: 23)
!938 = distinct !DILexicalBlock(scope: !931, file: !925, line: 57, column: 23)
!939 = !DILocalVariable(name: "__dummy2", scope: !937, file: !925, line: 57, type: !50)
!940 = !DILocation(line: 55, column: 55, scope: !924)
!941 = !DILocation(line: 57, column: 17, scope: !924)
!942 = !DILocation(line: 57, column: 23, scope: !931)
!943 = !DILocation(line: 57, column: 23, scope: !933)
!944 = !DILocation(line: 57, column: 23, scope: !934)
!945 = !DILocation(line: 57, column: 23, scope: !937)
!946 = !DILocation(line: 57, column: 23, scope: !938)
!947 = !DILocation(line: 57, column: 23, scope: !924)
!948 = !DILocation(line: 57, column: 9, scope: !924)
!949 = !DILocation(line: 57, column: 2, scope: !924)
!950 = !DISubprogram(name: "acpi_ex_eisa_id_to_string", scope: !951, file: !951, line: 474, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!951 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!952 = !DISubroutineType(types: !953)
!953 = !{null, !47, !39}
!954 = !DISubprogram(name: "strcpy", scope: !955, file: !955, line: 63, type: !956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!955 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!956 = !DISubroutineType(types: !957)
!957 = !{!47, !47, !922}
!958 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !919, file: !919, line: 369, type: !959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !74}
!961 = distinct !DISubprogram(name: "acpi_ut_execute_UID", scope: !2, file: !2, line: 113, type: !67, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !962)
!962 = !{!963, !964, !965, !966, !967, !968, !969}
!963 = !DILocalVariable(name: "device_node", arg: 1, scope: !961, file: !2, line: 113, type: !69)
!964 = !DILocalVariable(name: "return_id", arg: 2, scope: !961, file: !2, line: 114, type: !830)
!965 = !DILocalVariable(name: "obj_desc", scope: !961, file: !2, line: 116, type: !74)
!966 = !DILocalVariable(name: "uid", scope: !961, file: !2, line: 117, type: !831)
!967 = !DILocalVariable(name: "length", scope: !961, file: !2, line: 118, type: !45)
!968 = !DILocalVariable(name: "status", scope: !961, file: !2, line: 119, type: !44)
!969 = !DILabel(scope: !961, name: "cleanup", file: !2, line: 164)
!970 = !DILocation(line: 113, column: 49, scope: !961)
!971 = !DILocation(line: 114, column: 35, scope: !961)
!972 = !DILocation(line: 116, column: 2, scope: !961)
!973 = !DILocation(line: 116, column: 29, scope: !961)
!974 = !DILocation(line: 117, column: 2, scope: !961)
!975 = !DILocation(line: 117, column: 29, scope: !961)
!976 = !DILocation(line: 118, column: 2, scope: !961)
!977 = !DILocation(line: 118, column: 6, scope: !961)
!978 = !DILocation(line: 119, column: 2, scope: !961)
!979 = !DILocation(line: 119, column: 14, scope: !961)
!980 = !DILocation(line: 123, column: 35, scope: !961)
!981 = !DILocation(line: 123, column: 11, scope: !961)
!982 = !DILocation(line: 123, column: 9, scope: !961)
!983 = !DILocation(line: 126, column: 6, scope: !984)
!984 = distinct !DILexicalBlock(scope: !961, file: !2, line: 126, column: 6)
!985 = !DILocation(line: 126, column: 6, scope: !961)
!986 = !DILocation(line: 127, column: 3, scope: !987)
!987 = distinct !DILexicalBlock(scope: !984, file: !2, line: 126, column: 28)
!988 = !DILocation(line: 132, column: 6, scope: !989)
!989 = distinct !DILexicalBlock(scope: !961, file: !2, line: 132, column: 6)
!990 = !DILocation(line: 132, column: 23, scope: !989)
!991 = !DILocation(line: 132, column: 28, scope: !989)
!992 = !DILocation(line: 132, column: 6, scope: !961)
!993 = !DILocation(line: 133, column: 10, scope: !994)
!994 = distinct !DILexicalBlock(scope: !989, file: !2, line: 132, column: 50)
!995 = !DILocation(line: 134, column: 2, scope: !994)
!996 = !DILocation(line: 135, column: 12, scope: !997)
!997 = distinct !DILexicalBlock(scope: !989, file: !2, line: 134, column: 9)
!998 = !DILocation(line: 135, column: 29, scope: !997)
!999 = !DILocation(line: 135, column: 36, scope: !997)
!1000 = !DILocation(line: 135, column: 10, scope: !997)
!1001 = !DILocation(line: 141, column: 6, scope: !961)
!1002 = !DILocation(line: 140, column: 6, scope: !961)
!1003 = !DILocation(line: 143, column: 7, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !961, file: !2, line: 143, column: 6)
!1005 = !DILocation(line: 143, column: 6, scope: !961)
!1006 = !DILocation(line: 144, column: 10, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1004, file: !2, line: 143, column: 12)
!1008 = !DILocation(line: 145, column: 3, scope: !1007)
!1009 = !DILocation(line: 151, column: 6, scope: !961)
!1010 = !DILocation(line: 150, column: 2, scope: !961)
!1011 = !DILocation(line: 150, column: 7, scope: !961)
!1012 = !DILocation(line: 150, column: 14, scope: !961)
!1013 = !DILocation(line: 155, column: 6, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !961, file: !2, line: 155, column: 6)
!1015 = !DILocation(line: 155, column: 23, scope: !1014)
!1016 = !DILocation(line: 155, column: 28, scope: !1014)
!1017 = !DILocation(line: 155, column: 6, scope: !961)
!1018 = !DILocation(line: 156, column: 29, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 155, column: 50)
!1020 = !DILocation(line: 156, column: 34, scope: !1019)
!1021 = !DILocation(line: 156, column: 42, scope: !1019)
!1022 = !DILocation(line: 156, column: 60, scope: !1019)
!1023 = !DILocation(line: 156, column: 3, scope: !1019)
!1024 = !DILocation(line: 157, column: 2, scope: !1019)
!1025 = !DILocation(line: 158, column: 10, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 157, column: 9)
!1027 = !DILocation(line: 158, column: 15, scope: !1026)
!1028 = !DILocation(line: 158, column: 23, scope: !1026)
!1029 = !DILocation(line: 158, column: 40, scope: !1026)
!1030 = !DILocation(line: 158, column: 3, scope: !1026)
!1031 = !DILocation(line: 161, column: 16, scope: !961)
!1032 = !DILocation(line: 161, column: 2, scope: !961)
!1033 = !DILocation(line: 161, column: 7, scope: !961)
!1034 = !DILocation(line: 161, column: 14, scope: !961)
!1035 = !DILocation(line: 162, column: 15, scope: !961)
!1036 = !DILocation(line: 162, column: 3, scope: !961)
!1037 = !DILocation(line: 162, column: 13, scope: !961)
!1038 = !DILocation(line: 162, column: 2, scope: !961)
!1039 = !DILocation(line: 164, column: 1, scope: !961)
!1040 = !DILocation(line: 168, column: 27, scope: !961)
!1041 = !DILocation(line: 168, column: 2, scope: !961)
!1042 = !DILocation(line: 169, column: 2, scope: !961)
!1043 = !DILocation(line: 170, column: 1, scope: !961)
!1044 = !DISubprogram(name: "acpi_ex_integer_to_string", scope: !951, file: !951, line: 476, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1045 = distinct !DISubprogram(name: "acpi_ut_execute_CID", scope: !2, file: !2, line: 196, type: !1046, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1058)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!44, !69, !1048}
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_device_id_list", file: !38, line: 1170, size: 64, elements: !1051)
!1051 = !{!1052, !1053, !1054}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1050, file: !38, line: 1171, baseType: !45, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "list_size", scope: !1050, file: !38, line: 1172, baseType: !45, size: 32, offset: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1050, file: !38, line: 1173, baseType: !1055, offset: 64)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !832, elements: !1056)
!1056 = !{!1057}
!1057 = !DISubrange(count: -1)
!1058 = !{!1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071}
!1059 = !DILocalVariable(name: "device_node", arg: 1, scope: !1045, file: !2, line: 196, type: !69)
!1060 = !DILocalVariable(name: "return_cid_list", arg: 2, scope: !1045, file: !2, line: 197, type: !1048)
!1061 = !DILocalVariable(name: "cid_objects", scope: !1045, file: !2, line: 199, type: !135)
!1062 = !DILocalVariable(name: "obj_desc", scope: !1045, file: !2, line: 200, type: !74)
!1063 = !DILocalVariable(name: "cid_list", scope: !1045, file: !2, line: 201, type: !1049)
!1064 = !DILocalVariable(name: "next_id_string", scope: !1045, file: !2, line: 202, type: !47)
!1065 = !DILocalVariable(name: "string_area_size", scope: !1045, file: !2, line: 203, type: !45)
!1066 = !DILocalVariable(name: "length", scope: !1045, file: !2, line: 204, type: !45)
!1067 = !DILocalVariable(name: "cid_list_size", scope: !1045, file: !2, line: 205, type: !45)
!1068 = !DILocalVariable(name: "status", scope: !1045, file: !2, line: 206, type: !44)
!1069 = !DILocalVariable(name: "count", scope: !1045, file: !2, line: 207, type: !45)
!1070 = !DILocalVariable(name: "i", scope: !1045, file: !2, line: 208, type: !45)
!1071 = !DILabel(scope: !1045, name: "cleanup", file: !2, line: 307)
!1072 = !DILocation(line: 196, column: 49, scope: !1045)
!1073 = !DILocation(line: 197, column: 40, scope: !1045)
!1074 = !DILocation(line: 199, column: 2, scope: !1045)
!1075 = !DILocation(line: 199, column: 30, scope: !1045)
!1076 = !DILocation(line: 200, column: 2, scope: !1045)
!1077 = !DILocation(line: 200, column: 29, scope: !1045)
!1078 = !DILocation(line: 201, column: 2, scope: !1045)
!1079 = !DILocation(line: 201, column: 34, scope: !1045)
!1080 = !DILocation(line: 202, column: 2, scope: !1045)
!1081 = !DILocation(line: 202, column: 8, scope: !1045)
!1082 = !DILocation(line: 203, column: 2, scope: !1045)
!1083 = !DILocation(line: 203, column: 6, scope: !1045)
!1084 = !DILocation(line: 204, column: 2, scope: !1045)
!1085 = !DILocation(line: 204, column: 6, scope: !1045)
!1086 = !DILocation(line: 205, column: 2, scope: !1045)
!1087 = !DILocation(line: 205, column: 6, scope: !1045)
!1088 = !DILocation(line: 206, column: 2, scope: !1045)
!1089 = !DILocation(line: 206, column: 14, scope: !1045)
!1090 = !DILocation(line: 207, column: 2, scope: !1045)
!1091 = !DILocation(line: 207, column: 6, scope: !1045)
!1092 = !DILocation(line: 208, column: 2, scope: !1045)
!1093 = !DILocation(line: 208, column: 6, scope: !1045)
!1094 = !DILocation(line: 214, column: 35, scope: !1045)
!1095 = !DILocation(line: 214, column: 11, scope: !1045)
!1096 = !DILocation(line: 214, column: 9, scope: !1045)
!1097 = !DILocation(line: 217, column: 6, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 217, column: 6)
!1099 = !DILocation(line: 217, column: 6, scope: !1045)
!1100 = !DILocation(line: 218, column: 3, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 217, column: 28)
!1102 = !DILocation(line: 227, column: 6, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 227, column: 6)
!1104 = !DILocation(line: 227, column: 23, scope: !1103)
!1105 = !DILocation(line: 227, column: 28, scope: !1103)
!1106 = !DILocation(line: 227, column: 6, scope: !1045)
!1107 = !DILocation(line: 228, column: 11, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 227, column: 50)
!1109 = !DILocation(line: 228, column: 29, scope: !1108)
!1110 = !DILocation(line: 228, column: 9, scope: !1108)
!1111 = !DILocation(line: 229, column: 17, scope: !1108)
!1112 = !DILocation(line: 229, column: 35, scope: !1108)
!1113 = !DILocation(line: 229, column: 15, scope: !1108)
!1114 = !DILocation(line: 230, column: 2, scope: !1108)
!1115 = !DILocation(line: 232, column: 9, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 230, column: 9)
!1117 = !DILocation(line: 233, column: 15, scope: !1116)
!1118 = !DILocation(line: 236, column: 19, scope: !1045)
!1119 = !DILocation(line: 237, column: 9, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 237, column: 2)
!1121 = !DILocation(line: 237, column: 7, scope: !1120)
!1122 = !DILocation(line: 237, column: 14, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 237, column: 2)
!1124 = !DILocation(line: 237, column: 18, scope: !1123)
!1125 = !DILocation(line: 237, column: 16, scope: !1123)
!1126 = !DILocation(line: 237, column: 2, scope: !1120)
!1127 = !DILocation(line: 241, column: 11, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 237, column: 30)
!1129 = !DILocation(line: 241, column: 23, scope: !1128)
!1130 = !DILocation(line: 241, column: 34, scope: !1128)
!1131 = !DILocation(line: 241, column: 3, scope: !1128)
!1132 = !DILocation(line: 244, column: 21, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 241, column: 40)
!1134 = !DILocation(line: 245, column: 4, scope: !1133)
!1135 = !DILocation(line: 249, column: 24, scope: !1133)
!1136 = !DILocation(line: 249, column: 36, scope: !1133)
!1137 = !DILocation(line: 249, column: 47, scope: !1133)
!1138 = !DILocation(line: 249, column: 54, scope: !1133)
!1139 = !DILocation(line: 249, column: 21, scope: !1133)
!1140 = !DILocation(line: 250, column: 4, scope: !1133)
!1141 = !DILocation(line: 254, column: 11, scope: !1133)
!1142 = !DILocation(line: 255, column: 4, scope: !1133)
!1143 = !DILocation(line: 257, column: 2, scope: !1128)
!1144 = !DILocation(line: 237, column: 26, scope: !1123)
!1145 = !DILocation(line: 237, column: 2, scope: !1123)
!1146 = distinct !{!1146, !1126, !1147, !1148, !1149}
!1147 = !DILocation(line: 257, column: 2, scope: !1120)
!1148 = !{!"llvm.loop.mustprogress"}
!1149 = !{!"llvm.loop.unroll.disable"}
!1150 = !DILocation(line: 266, column: 7, scope: !1045)
!1151 = !DILocation(line: 266, column: 13, scope: !1045)
!1152 = !DILocation(line: 265, column: 57, scope: !1045)
!1153 = !DILocation(line: 266, column: 52, scope: !1045)
!1154 = !DILocation(line: 266, column: 50, scope: !1045)
!1155 = !DILocation(line: 265, column: 18, scope: !1045)
!1156 = !DILocation(line: 265, column: 16, scope: !1045)
!1157 = !DILocation(line: 268, column: 13, scope: !1045)
!1158 = !DILocation(line: 268, column: 11, scope: !1045)
!1159 = !DILocation(line: 269, column: 7, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 269, column: 6)
!1161 = !DILocation(line: 269, column: 6, scope: !1045)
!1162 = !DILocation(line: 270, column: 10, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 269, column: 17)
!1164 = !DILocation(line: 271, column: 3, scope: !1163)
!1165 = !DILocation(line: 276, column: 19, scope: !1045)
!1166 = !DILocation(line: 277, column: 18, scope: !1045)
!1167 = !DILocation(line: 277, column: 7, scope: !1045)
!1168 = !DILocation(line: 277, column: 24, scope: !1045)
!1169 = !DILocation(line: 276, column: 54, scope: !1045)
!1170 = !DILocation(line: 276, column: 17, scope: !1045)
!1171 = !DILocation(line: 281, column: 9, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 281, column: 2)
!1173 = !DILocation(line: 281, column: 7, scope: !1172)
!1174 = !DILocation(line: 281, column: 14, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 281, column: 2)
!1176 = !DILocation(line: 281, column: 18, scope: !1175)
!1177 = !DILocation(line: 281, column: 16, scope: !1175)
!1178 = !DILocation(line: 281, column: 2, scope: !1172)
!1179 = !DILocation(line: 282, column: 7, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 282, column: 7)
!1181 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 281, column: 30)
!1182 = !DILocation(line: 282, column: 19, scope: !1180)
!1183 = !DILocation(line: 282, column: 30, scope: !1180)
!1184 = !DILocation(line: 282, column: 35, scope: !1180)
!1185 = !DILocation(line: 282, column: 7, scope: !1181)
!1186 = !DILocation(line: 286, column: 30, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1180, file: !2, line: 282, column: 57)
!1188 = !DILocation(line: 287, column: 9, scope: !1187)
!1189 = !DILocation(line: 287, column: 21, scope: !1187)
!1190 = !DILocation(line: 288, column: 9, scope: !1187)
!1191 = !DILocation(line: 286, column: 4, scope: !1187)
!1192 = !DILocation(line: 289, column: 11, scope: !1187)
!1193 = !DILocation(line: 290, column: 3, scope: !1187)
!1194 = !DILocation(line: 292, column: 11, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1180, file: !2, line: 290, column: 10)
!1196 = !DILocation(line: 292, column: 27, scope: !1195)
!1197 = !DILocation(line: 292, column: 39, scope: !1195)
!1198 = !DILocation(line: 292, column: 50, scope: !1195)
!1199 = !DILocation(line: 292, column: 4, scope: !1195)
!1200 = !DILocation(line: 293, column: 13, scope: !1195)
!1201 = !DILocation(line: 293, column: 25, scope: !1195)
!1202 = !DILocation(line: 293, column: 36, scope: !1195)
!1203 = !DILocation(line: 293, column: 43, scope: !1195)
!1204 = !DILocation(line: 293, column: 11, scope: !1195)
!1205 = !DILocation(line: 296, column: 29, scope: !1181)
!1206 = !DILocation(line: 296, column: 3, scope: !1181)
!1207 = !DILocation(line: 296, column: 13, scope: !1181)
!1208 = !DILocation(line: 296, column: 17, scope: !1181)
!1209 = !DILocation(line: 296, column: 20, scope: !1181)
!1210 = !DILocation(line: 296, column: 27, scope: !1181)
!1211 = !DILocation(line: 297, column: 29, scope: !1181)
!1212 = !DILocation(line: 297, column: 3, scope: !1181)
!1213 = !DILocation(line: 297, column: 13, scope: !1181)
!1214 = !DILocation(line: 297, column: 17, scope: !1181)
!1215 = !DILocation(line: 297, column: 20, scope: !1181)
!1216 = !DILocation(line: 297, column: 27, scope: !1181)
!1217 = !DILocation(line: 298, column: 21, scope: !1181)
!1218 = !DILocation(line: 298, column: 18, scope: !1181)
!1219 = !DILocation(line: 299, column: 2, scope: !1181)
!1220 = !DILocation(line: 281, column: 26, scope: !1175)
!1221 = !DILocation(line: 281, column: 2, scope: !1175)
!1222 = distinct !{!1222, !1178, !1223, !1148, !1149}
!1223 = !DILocation(line: 299, column: 2, scope: !1172)
!1224 = !DILocation(line: 303, column: 20, scope: !1045)
!1225 = !DILocation(line: 303, column: 2, scope: !1045)
!1226 = !DILocation(line: 303, column: 12, scope: !1045)
!1227 = !DILocation(line: 303, column: 18, scope: !1045)
!1228 = !DILocation(line: 304, column: 24, scope: !1045)
!1229 = !DILocation(line: 304, column: 2, scope: !1045)
!1230 = !DILocation(line: 304, column: 12, scope: !1045)
!1231 = !DILocation(line: 304, column: 22, scope: !1045)
!1232 = !DILocation(line: 305, column: 21, scope: !1045)
!1233 = !DILocation(line: 305, column: 3, scope: !1045)
!1234 = !DILocation(line: 305, column: 19, scope: !1045)
!1235 = !DILocation(line: 305, column: 2, scope: !1045)
!1236 = !DILocation(line: 307, column: 1, scope: !1045)
!1237 = !DILocation(line: 311, column: 27, scope: !1045)
!1238 = !DILocation(line: 311, column: 2, scope: !1045)
!1239 = !DILocation(line: 312, column: 2, scope: !1045)
!1240 = !DILocation(line: 313, column: 1, scope: !1045)
!1241 = distinct !DISubprogram(name: "acpi_ut_execute_CLS", scope: !2, file: !2, line: 335, type: !67, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1242)
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252}
!1243 = !DILocalVariable(name: "device_node", arg: 1, scope: !1241, file: !2, line: 335, type: !69)
!1244 = !DILocalVariable(name: "return_id", arg: 2, scope: !1241, file: !2, line: 336, type: !830)
!1245 = !DILocalVariable(name: "obj_desc", scope: !1241, file: !2, line: 338, type: !74)
!1246 = !DILocalVariable(name: "cls_objects", scope: !1241, file: !2, line: 339, type: !135)
!1247 = !DILocalVariable(name: "count", scope: !1241, file: !2, line: 340, type: !45)
!1248 = !DILocalVariable(name: "cls", scope: !1241, file: !2, line: 341, type: !831)
!1249 = !DILocalVariable(name: "length", scope: !1241, file: !2, line: 342, type: !45)
!1250 = !DILocalVariable(name: "status", scope: !1241, file: !2, line: 343, type: !44)
!1251 = !DILocalVariable(name: "class_code", scope: !1241, file: !2, line: 344, type: !98)
!1252 = !DILabel(scope: !1241, name: "cleanup", file: !2, line: 396)
!1253 = !DILocation(line: 335, column: 49, scope: !1241)
!1254 = !DILocation(line: 336, column: 35, scope: !1241)
!1255 = !DILocation(line: 338, column: 2, scope: !1241)
!1256 = !DILocation(line: 338, column: 29, scope: !1241)
!1257 = !DILocation(line: 339, column: 2, scope: !1241)
!1258 = !DILocation(line: 339, column: 30, scope: !1241)
!1259 = !DILocation(line: 340, column: 2, scope: !1241)
!1260 = !DILocation(line: 340, column: 6, scope: !1241)
!1261 = !DILocation(line: 341, column: 2, scope: !1241)
!1262 = !DILocation(line: 341, column: 29, scope: !1241)
!1263 = !DILocation(line: 342, column: 2, scope: !1241)
!1264 = !DILocation(line: 342, column: 6, scope: !1241)
!1265 = !DILocation(line: 343, column: 2, scope: !1241)
!1266 = !DILocation(line: 343, column: 14, scope: !1241)
!1267 = !DILocation(line: 344, column: 2, scope: !1241)
!1268 = !DILocation(line: 344, column: 5, scope: !1241)
!1269 = !DILocation(line: 348, column: 35, scope: !1241)
!1270 = !DILocation(line: 348, column: 11, scope: !1241)
!1271 = !DILocation(line: 348, column: 9, scope: !1241)
!1272 = !DILocation(line: 350, column: 6, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 350, column: 6)
!1274 = !DILocation(line: 350, column: 6, scope: !1241)
!1275 = !DILocation(line: 351, column: 3, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 350, column: 28)
!1277 = !DILocation(line: 356, column: 9, scope: !1241)
!1278 = !DILocation(line: 357, column: 16, scope: !1241)
!1279 = !DILocation(line: 357, column: 34, scope: !1241)
!1280 = !DILocation(line: 357, column: 14, scope: !1241)
!1281 = !DILocation(line: 358, column: 10, scope: !1241)
!1282 = !DILocation(line: 358, column: 28, scope: !1241)
!1283 = !DILocation(line: 358, column: 8, scope: !1241)
!1284 = !DILocation(line: 360, column: 6, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 360, column: 6)
!1286 = !DILocation(line: 360, column: 23, scope: !1285)
!1287 = !DILocation(line: 360, column: 28, scope: !1285)
!1288 = !DILocation(line: 360, column: 6, scope: !1241)
!1289 = !DILocation(line: 361, column: 7, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 361, column: 7)
!1291 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 360, column: 50)
!1292 = !DILocation(line: 361, column: 13, scope: !1290)
!1293 = !DILocation(line: 362, column: 7, scope: !1290)
!1294 = !DILocation(line: 362, column: 10, scope: !1290)
!1295 = !DILocation(line: 362, column: 33, scope: !1290)
!1296 = !DILocation(line: 362, column: 38, scope: !1290)
!1297 = !DILocation(line: 361, column: 7, scope: !1291)
!1298 = !DILocation(line: 363, column: 24, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 362, column: 60)
!1300 = !DILocation(line: 363, column: 48, scope: !1299)
!1301 = !DILocation(line: 363, column: 20, scope: !1299)
!1302 = !DILocation(line: 363, column: 4, scope: !1299)
!1303 = !DILocation(line: 363, column: 18, scope: !1299)
!1304 = !DILocation(line: 364, column: 3, scope: !1299)
!1305 = !DILocation(line: 365, column: 7, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 365, column: 7)
!1307 = !DILocation(line: 365, column: 13, scope: !1306)
!1308 = !DILocation(line: 366, column: 7, scope: !1306)
!1309 = !DILocation(line: 366, column: 10, scope: !1306)
!1310 = !DILocation(line: 366, column: 33, scope: !1306)
!1311 = !DILocation(line: 366, column: 38, scope: !1306)
!1312 = !DILocation(line: 365, column: 7, scope: !1291)
!1313 = !DILocation(line: 367, column: 24, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1306, file: !2, line: 366, column: 60)
!1315 = !DILocation(line: 367, column: 48, scope: !1314)
!1316 = !DILocation(line: 367, column: 20, scope: !1314)
!1317 = !DILocation(line: 367, column: 4, scope: !1314)
!1318 = !DILocation(line: 367, column: 18, scope: !1314)
!1319 = !DILocation(line: 368, column: 3, scope: !1314)
!1320 = !DILocation(line: 369, column: 7, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 369, column: 7)
!1322 = !DILocation(line: 369, column: 13, scope: !1321)
!1323 = !DILocation(line: 370, column: 7, scope: !1321)
!1324 = !DILocation(line: 370, column: 10, scope: !1321)
!1325 = !DILocation(line: 370, column: 33, scope: !1321)
!1326 = !DILocation(line: 370, column: 38, scope: !1321)
!1327 = !DILocation(line: 369, column: 7, scope: !1291)
!1328 = !DILocation(line: 371, column: 24, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 370, column: 60)
!1330 = !DILocation(line: 371, column: 48, scope: !1329)
!1331 = !DILocation(line: 371, column: 20, scope: !1329)
!1332 = !DILocation(line: 371, column: 4, scope: !1329)
!1333 = !DILocation(line: 371, column: 18, scope: !1329)
!1334 = !DILocation(line: 372, column: 3, scope: !1329)
!1335 = !DILocation(line: 373, column: 2, scope: !1291)
!1336 = !DILocation(line: 378, column: 6, scope: !1241)
!1337 = !DILocation(line: 377, column: 6, scope: !1241)
!1338 = !DILocation(line: 380, column: 7, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 380, column: 6)
!1340 = !DILocation(line: 380, column: 6, scope: !1241)
!1341 = !DILocation(line: 381, column: 10, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 380, column: 12)
!1343 = !DILocation(line: 382, column: 3, scope: !1342)
!1344 = !DILocation(line: 388, column: 6, scope: !1241)
!1345 = !DILocation(line: 387, column: 2, scope: !1241)
!1346 = !DILocation(line: 387, column: 7, scope: !1241)
!1347 = !DILocation(line: 387, column: 14, scope: !1241)
!1348 = !DILocation(line: 392, column: 28, scope: !1241)
!1349 = !DILocation(line: 392, column: 33, scope: !1241)
!1350 = !DILocation(line: 392, column: 41, scope: !1241)
!1351 = !DILocation(line: 392, column: 2, scope: !1241)
!1352 = !DILocation(line: 393, column: 16, scope: !1241)
!1353 = !DILocation(line: 393, column: 2, scope: !1241)
!1354 = !DILocation(line: 393, column: 7, scope: !1241)
!1355 = !DILocation(line: 393, column: 14, scope: !1241)
!1356 = !DILocation(line: 394, column: 15, scope: !1241)
!1357 = !DILocation(line: 394, column: 3, scope: !1241)
!1358 = !DILocation(line: 394, column: 13, scope: !1241)
!1359 = !DILocation(line: 394, column: 2, scope: !1241)
!1360 = !DILocation(line: 396, column: 1, scope: !1241)
!1361 = !DILocation(line: 400, column: 27, scope: !1241)
!1362 = !DILocation(line: 400, column: 2, scope: !1241)
!1363 = !DILocation(line: 401, column: 2, scope: !1241)
!1364 = !DILocation(line: 402, column: 1, scope: !1241)
!1365 = !DISubprogram(name: "acpi_ex_pci_cls_to_string", scope: !951, file: !951, line: 478, type: !1366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{null, !47, !51}
!1368 = distinct !DISubprogram(name: "kzalloc", scope: !15, file: !15, line: 719, type: !1369, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1375)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!148, !1371, !55}
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 61, baseType: !1372)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1373, line: 72, baseType: !1374)
!1373 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1373, line: 16, baseType: !50)
!1375 = !{!1376, !1377}
!1376 = !DILocalVariable(name: "size", arg: 1, scope: !1368, file: !15, line: 719, type: !1371)
!1377 = !DILocalVariable(name: "flags", arg: 2, scope: !1368, file: !15, line: 719, type: !55)
!1378 = !DILocation(line: 719, column: 52, scope: !1368)
!1379 = !DILocation(line: 719, column: 64, scope: !1368)
!1380 = !DILocation(line: 721, column: 17, scope: !1368)
!1381 = !DILocation(line: 721, column: 23, scope: !1368)
!1382 = !DILocation(line: 721, column: 29, scope: !1368)
!1383 = !DILocation(line: 721, column: 9, scope: !1368)
!1384 = !DILocation(line: 721, column: 2, scope: !1368)
!1385 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1386, file: !1386, line: 65, type: !1387, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19)
!1386 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!50}
!1389 = !DILocation(line: 67, column: 9, scope: !1385)
!1390 = !DILocation(line: 67, column: 2, scope: !1385)
!1391 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1386, file: !1386, line: 120, type: !1392, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1395)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!1394, !50}
!1394 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1395 = !{!1396}
!1396 = !DILocalVariable(name: "flags", arg: 1, scope: !1391, file: !1386, line: 120, type: !50)
!1397 = !DILocation(line: 120, column: 67, scope: !1391)
!1398 = !DILocation(line: 122, column: 11, scope: !1391)
!1399 = !DILocation(line: 122, column: 17, scope: !1391)
!1400 = !DILocation(line: 122, column: 9, scope: !1391)
!1401 = !DILocation(line: 122, column: 2, scope: !1391)
!1402 = distinct !DISubprogram(name: "kmalloc", scope: !15, file: !15, line: 591, type: !1369, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1403)
!1403 = !{!1404, !1405, !1406}
!1404 = !DILocalVariable(name: "size", arg: 1, scope: !1402, file: !15, line: 591, type: !1371)
!1405 = !DILocalVariable(name: "flags", arg: 2, scope: !1402, file: !15, line: 591, type: !55)
!1406 = !DILocalVariable(name: "index", scope: !1407, file: !15, line: 594, type: !23)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !15, line: 593, column: 42)
!1408 = distinct !DILexicalBlock(scope: !1402, file: !15, line: 593, column: 6)
!1409 = !DILocation(line: 591, column: 61, scope: !1402)
!1410 = !DILocation(line: 591, column: 73, scope: !1402)
!1411 = !DILocation(line: 593, column: 27, scope: !1408)
!1412 = !DILocation(line: 593, column: 6, scope: !1408)
!1413 = !DILocation(line: 593, column: 33, scope: !1408)
!1414 = !DILocation(line: 593, column: 36, scope: !1408)
!1415 = !DILocation(line: 593, column: 6, scope: !1402)
!1416 = !DILocation(line: 594, column: 3, scope: !1407)
!1417 = !DILocation(line: 594, column: 16, scope: !1407)
!1418 = !DILocation(line: 596, column: 7, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1407, file: !15, line: 596, column: 7)
!1420 = !DILocation(line: 596, column: 12, scope: !1419)
!1421 = !DILocation(line: 596, column: 7, scope: !1407)
!1422 = !DILocation(line: 597, column: 25, scope: !1419)
!1423 = !DILocation(line: 597, column: 31, scope: !1419)
!1424 = !DILocation(line: 597, column: 11, scope: !1419)
!1425 = !DILocation(line: 597, column: 4, scope: !1419)
!1426 = !DILocation(line: 599, column: 11, scope: !1407)
!1427 = !DILocation(line: 599, column: 9, scope: !1407)
!1428 = !DILocation(line: 601, column: 33, scope: !1407)
!1429 = !DILocation(line: 601, column: 40, scope: !1407)
!1430 = !DILocation(line: 601, column: 20, scope: !1407)
!1431 = !DILocation(line: 601, column: 5, scope: !1407)
!1432 = !DILocation(line: 601, column: 51, scope: !1407)
!1433 = !DILocation(line: 602, column: 5, scope: !1407)
!1434 = !DILocation(line: 602, column: 12, scope: !1407)
!1435 = !DILocation(line: 600, column: 10, scope: !1407)
!1436 = !DILocation(line: 600, column: 3, scope: !1407)
!1437 = !DILocation(line: 603, column: 2, scope: !1408)
!1438 = !DILocation(line: 604, column: 19, scope: !1402)
!1439 = !DILocation(line: 604, column: 25, scope: !1402)
!1440 = !DILocation(line: 604, column: 9, scope: !1402)
!1441 = !DILocation(line: 604, column: 2, scope: !1402)
!1442 = !DILocation(line: 605, column: 1, scope: !1402)
!1443 = !DISubprogram(name: "kmalloc_large", scope: !15, file: !15, line: 531, type: !1369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1444 = distinct !DISubprogram(name: "__kmalloc_index", scope: !15, file: !15, line: 444, type: !1445, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1449)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!23, !1371, !1447}
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !49, line: 35, baseType: !1448)
!1448 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1449 = !{!1450, !1451}
!1450 = !DILocalVariable(name: "size", arg: 1, scope: !1444, file: !15, line: 444, type: !1371)
!1451 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1444, file: !15, line: 445, type: !1447)
!1452 = !DILocation(line: 444, column: 60, scope: !1444)
!1453 = !DILocation(line: 445, column: 16, scope: !1444)
!1454 = !DILocation(line: 447, column: 7, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 447, column: 6)
!1456 = !DILocation(line: 447, column: 6, scope: !1444)
!1457 = !DILocation(line: 448, column: 3, scope: !1455)
!1458 = !DILocation(line: 450, column: 6, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 450, column: 6)
!1460 = !DILocation(line: 450, column: 11, scope: !1459)
!1461 = !DILocation(line: 450, column: 6, scope: !1444)
!1462 = !DILocation(line: 451, column: 3, scope: !1459)
!1463 = !DILocation(line: 453, column: 32, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 453, column: 6)
!1465 = !DILocation(line: 453, column: 37, scope: !1464)
!1466 = !DILocation(line: 453, column: 42, scope: !1464)
!1467 = !DILocation(line: 453, column: 45, scope: !1464)
!1468 = !DILocation(line: 453, column: 50, scope: !1464)
!1469 = !DILocation(line: 453, column: 6, scope: !1444)
!1470 = !DILocation(line: 454, column: 3, scope: !1464)
!1471 = !DILocation(line: 455, column: 32, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 455, column: 6)
!1473 = !DILocation(line: 455, column: 37, scope: !1472)
!1474 = !DILocation(line: 455, column: 43, scope: !1472)
!1475 = !DILocation(line: 455, column: 46, scope: !1472)
!1476 = !DILocation(line: 455, column: 51, scope: !1472)
!1477 = !DILocation(line: 455, column: 6, scope: !1444)
!1478 = !DILocation(line: 456, column: 3, scope: !1472)
!1479 = !DILocation(line: 457, column: 6, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 457, column: 6)
!1481 = !DILocation(line: 457, column: 11, scope: !1480)
!1482 = !DILocation(line: 457, column: 6, scope: !1444)
!1483 = !DILocation(line: 457, column: 26, scope: !1480)
!1484 = !DILocation(line: 458, column: 6, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 458, column: 6)
!1486 = !DILocation(line: 458, column: 11, scope: !1485)
!1487 = !DILocation(line: 458, column: 6, scope: !1444)
!1488 = !DILocation(line: 458, column: 26, scope: !1485)
!1489 = !DILocation(line: 459, column: 6, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 459, column: 6)
!1491 = !DILocation(line: 459, column: 11, scope: !1490)
!1492 = !DILocation(line: 459, column: 6, scope: !1444)
!1493 = !DILocation(line: 459, column: 26, scope: !1490)
!1494 = !DILocation(line: 460, column: 6, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 460, column: 6)
!1496 = !DILocation(line: 460, column: 11, scope: !1495)
!1497 = !DILocation(line: 460, column: 6, scope: !1444)
!1498 = !DILocation(line: 460, column: 26, scope: !1495)
!1499 = !DILocation(line: 461, column: 6, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 461, column: 6)
!1501 = !DILocation(line: 461, column: 11, scope: !1500)
!1502 = !DILocation(line: 461, column: 6, scope: !1444)
!1503 = !DILocation(line: 461, column: 26, scope: !1500)
!1504 = !DILocation(line: 462, column: 6, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 462, column: 6)
!1506 = !DILocation(line: 462, column: 11, scope: !1505)
!1507 = !DILocation(line: 462, column: 6, scope: !1444)
!1508 = !DILocation(line: 462, column: 26, scope: !1505)
!1509 = !DILocation(line: 463, column: 6, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 463, column: 6)
!1511 = !DILocation(line: 463, column: 11, scope: !1510)
!1512 = !DILocation(line: 463, column: 6, scope: !1444)
!1513 = !DILocation(line: 463, column: 26, scope: !1510)
!1514 = !DILocation(line: 464, column: 6, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 464, column: 6)
!1516 = !DILocation(line: 464, column: 11, scope: !1515)
!1517 = !DILocation(line: 464, column: 6, scope: !1444)
!1518 = !DILocation(line: 464, column: 26, scope: !1515)
!1519 = !DILocation(line: 465, column: 6, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 465, column: 6)
!1521 = !DILocation(line: 465, column: 11, scope: !1520)
!1522 = !DILocation(line: 465, column: 6, scope: !1444)
!1523 = !DILocation(line: 465, column: 26, scope: !1520)
!1524 = !DILocation(line: 466, column: 6, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 466, column: 6)
!1526 = !DILocation(line: 466, column: 11, scope: !1525)
!1527 = !DILocation(line: 466, column: 6, scope: !1444)
!1528 = !DILocation(line: 466, column: 26, scope: !1525)
!1529 = !DILocation(line: 467, column: 6, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 467, column: 6)
!1531 = !DILocation(line: 467, column: 11, scope: !1530)
!1532 = !DILocation(line: 467, column: 6, scope: !1444)
!1533 = !DILocation(line: 467, column: 26, scope: !1530)
!1534 = !DILocation(line: 468, column: 6, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 468, column: 6)
!1536 = !DILocation(line: 468, column: 11, scope: !1535)
!1537 = !DILocation(line: 468, column: 6, scope: !1444)
!1538 = !DILocation(line: 468, column: 26, scope: !1535)
!1539 = !DILocation(line: 469, column: 6, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 469, column: 6)
!1541 = !DILocation(line: 469, column: 11, scope: !1540)
!1542 = !DILocation(line: 469, column: 6, scope: !1444)
!1543 = !DILocation(line: 469, column: 26, scope: !1540)
!1544 = !DILocation(line: 470, column: 6, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 470, column: 6)
!1546 = !DILocation(line: 470, column: 11, scope: !1545)
!1547 = !DILocation(line: 470, column: 6, scope: !1444)
!1548 = !DILocation(line: 470, column: 26, scope: !1545)
!1549 = !DILocation(line: 471, column: 6, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 471, column: 6)
!1551 = !DILocation(line: 471, column: 11, scope: !1550)
!1552 = !DILocation(line: 471, column: 6, scope: !1444)
!1553 = !DILocation(line: 471, column: 26, scope: !1550)
!1554 = !DILocation(line: 472, column: 6, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 472, column: 6)
!1556 = !DILocation(line: 472, column: 11, scope: !1555)
!1557 = !DILocation(line: 472, column: 6, scope: !1444)
!1558 = !DILocation(line: 472, column: 26, scope: !1555)
!1559 = !DILocation(line: 473, column: 6, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 473, column: 6)
!1561 = !DILocation(line: 473, column: 11, scope: !1560)
!1562 = !DILocation(line: 473, column: 6, scope: !1444)
!1563 = !DILocation(line: 473, column: 26, scope: !1560)
!1564 = !DILocation(line: 474, column: 6, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 474, column: 6)
!1566 = !DILocation(line: 474, column: 11, scope: !1565)
!1567 = !DILocation(line: 474, column: 6, scope: !1444)
!1568 = !DILocation(line: 474, column: 27, scope: !1565)
!1569 = !DILocation(line: 475, column: 6, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 475, column: 6)
!1571 = !DILocation(line: 475, column: 11, scope: !1570)
!1572 = !DILocation(line: 475, column: 6, scope: !1444)
!1573 = !DILocation(line: 475, column: 32, scope: !1570)
!1574 = !DILocation(line: 477, column: 50, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1444, file: !15, line: 477, column: 6)
!1576 = !{i8 0, i8 2}
!1577 = !{}
!1578 = !DILocation(line: 477, column: 6, scope: !1444)
!1579 = !DILocation(line: 478, column: 3, scope: !1575)
!1580 = !DILocation(line: 478, column: 3, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !15, line: 478, column: 3)
!1582 = distinct !DILexicalBlock(scope: !1575, file: !15, line: 478, column: 3)
!1583 = !{i32 -2143038425}
!1584 = !DILocation(line: 478, column: 3, scope: !1582)
!1585 = !DILocation(line: 480, column: 3, scope: !1575)
!1586 = !DILocation(line: 480, column: 3, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1575, file: !15, line: 480, column: 3)
!1588 = !DILocation(line: 480, column: 3, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1587, file: !15, line: 480, column: 3)
!1590 = !DILocation(line: 480, column: 3, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1587, file: !15, line: 480, column: 3)
!1592 = !{i64 2151929074, i64 2151929103, i64 2151929149, i64 2151929207, i64 2151929261, i64 2151929315, i64 2151929370, i64 2151929401}
!1593 = !DILocation(line: 483, column: 2, scope: !1444)
!1594 = !DILocation(line: 484, column: 1, scope: !1444)
!1595 = !DISubprogram(name: "kmalloc_trace", scope: !15, file: !15, line: 525, type: !1596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!148, !1598, !55, !1371}
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1600, line: 11, flags: DIFlagFwdDecl)
!1600 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1601 = distinct !DISubprogram(name: "kmalloc_type", scope: !15, file: !15, line: 401, type: !1602, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1604)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!27, !55, !50}
!1604 = !{!1605, !1606}
!1605 = !DILocalVariable(name: "flags", arg: 1, scope: !1601, file: !15, line: 401, type: !55)
!1606 = !DILocalVariable(name: "caller", arg: 2, scope: !1601, file: !15, line: 401, type: !50)
!1607 = !DILocation(line: 401, column: 67, scope: !1601)
!1608 = !DILocation(line: 401, column: 88, scope: !1601)
!1609 = !DILocation(line: 407, column: 6, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1601, file: !15, line: 407, column: 6)
!1611 = !DILocation(line: 407, column: 6, scope: !1601)
!1612 = !DILocation(line: 413, column: 3, scope: !1610)
!1613 = !DILocation(line: 423, column: 38, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1601, file: !15, line: 423, column: 6)
!1615 = !DILocation(line: 423, column: 44, scope: !1614)
!1616 = !DILocation(line: 423, column: 6, scope: !1601)
!1617 = !DILocation(line: 424, column: 3, scope: !1614)
!1618 = !DILocation(line: 426, column: 3, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1601, file: !15, line: 425, column: 6)
!1620 = !DILocation(line: 429, column: 1, scope: !1601)
!1621 = !DISubprogram(name: "__kmalloc", scope: !15, file: !15, line: 488, type: !1369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1622 = !DISubprogram(name: "__compiletime_assert_173", scope: !15, file: !15, line: 478, type: !1623, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null}
!1625 = distinct !DISubprogram(name: "native_save_fl", scope: !1386, file: !1386, line: 17, type: !1387, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1626)
!1626 = !{!1627}
!1627 = !DILocalVariable(name: "flags", scope: !1625, file: !1386, line: 19, type: !50)
!1628 = !DILocation(line: 19, column: 2, scope: !1625)
!1629 = !DILocation(line: 19, column: 16, scope: !1625)
!1630 = !DILocation(line: 26, column: 2, scope: !1625)
!1631 = !{i64 1518993, i64 1519014}
!1632 = !DILocation(line: 32, column: 9, scope: !1625)
!1633 = !DILocation(line: 33, column: 1, scope: !1625)
!1634 = !DILocation(line: 32, column: 2, scope: !1625)
