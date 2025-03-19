; ModuleID = 'drivers/acpi/acpica/utobject.c'
source_filename = "drivers/acpi/acpica/utobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_common_descriptor = type { ptr, i8 }
%struct.acpi_object_package = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, i32, i32 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }
%struct.acpi_object_string = type { ptr, i8, i8, i16, i8, ptr, i32 }
%struct.acpi_pkg_info = type { ptr, i64, i32, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_pkg_state = type { ptr, i8, i8, i16, i16, i32, ptr, ptr, ptr, ptr, i32 }

@_acpi_module_name = internal constant [9 x i8] c"utobject\00", align 1, !dbg !0
@.str = private unnamed_addr constant [27 x i8] c"Could not allocate size %u\00", align 1, !dbg !833
@acpi_gbl_operand_cache = external dso_local global ptr, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Could not allocate an object descriptor\00", align 1, !dbg !838
@.str.2 = private unnamed_addr constant [38 x i8] c"%p is not an ACPI Operand object [%s]\00", align 1, !dbg !843
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !848
@.str.4 = private unnamed_addr constant [70 x i8] c"Received a namespace node [%4.4s] where an operand object is required\00", align 1, !dbg !853
@.str.5 = private unnamed_addr constant [87 x i8] c"Cannot convert to external object - unsupported Reference Class [%s] 0x%X in object %p\00", align 1, !dbg !858
@.str.6 = private unnamed_addr constant [76 x i8] c"Cannot convert to external object - unsupported type [%s] 0x%X in object %p\00", align 1, !dbg !863

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ut_create_internal_object_dbg(ptr noundef %module_name, i32 noundef %line_number, i32 noundef %component_id, i32 noundef %type) #0 align 16 !dbg !879 {
entry:
  %retval = alloca ptr, align 8
  %module_name.addr = alloca ptr, align 8
  %line_number.addr = alloca i32, align 4
  %component_id.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %object = alloca ptr, align 8
  %second_object = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %module_name, ptr %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %module_name.addr, metadata !885, metadata !DIExpression()), !dbg !891
  store i32 %line_number, ptr %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line_number.addr, metadata !886, metadata !DIExpression()), !dbg !892
  store i32 %component_id, ptr %component_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %component_id.addr, metadata !887, metadata !DIExpression()), !dbg !893
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !888, metadata !DIExpression()), !dbg !894
  call void @llvm.lifetime.start.p0(i64 8, ptr %object) #13, !dbg !895
  call void @llvm.dbg.declare(metadata ptr %object, metadata !889, metadata !DIExpression()), !dbg !896
  call void @llvm.lifetime.start.p0(i64 8, ptr %second_object) #13, !dbg !897
  call void @llvm.dbg.declare(metadata ptr %second_object, metadata !890, metadata !DIExpression()), !dbg !898
  %0 = load ptr, ptr %module_name.addr, align 8, !dbg !899
  %1 = load i32, ptr %line_number.addr, align 4, !dbg !900
  %2 = load i32, ptr %component_id.addr, align 4, !dbg !901
  %call = call ptr @acpi_ut_allocate_object_desc_dbg(ptr noundef %0, i32 noundef %1, i32 noundef %2) #14, !dbg !902
  store ptr %call, ptr %object, align 8, !dbg !903
  %3 = load ptr, ptr %object, align 8, !dbg !904
  %tobool = icmp ne ptr %3, null, !dbg !904
  br i1 %tobool, label %if.end, label %if.then, !dbg !906

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !907
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !907

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %object, align 8, !dbg !909
  call void @kmemleak_not_leak(ptr noundef %4) #14, !dbg !910
  %5 = load i32, ptr %type.addr, align 4, !dbg !911
  switch i32 %5, label %sw.default [
    i32 10, label %sw.bb
    i32 14, label %sw.bb
    i32 18, label %sw.bb
  ], !dbg !912

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %6 = load ptr, ptr %module_name.addr, align 8, !dbg !913
  %7 = load i32, ptr %line_number.addr, align 4, !dbg !915
  %8 = load i32, ptr %component_id.addr, align 4, !dbg !916
  %call1 = call ptr @acpi_ut_allocate_object_desc_dbg(ptr noundef %6, i32 noundef %7, i32 noundef %8) #14, !dbg !917
  store ptr %call1, ptr %second_object, align 8, !dbg !918
  %9 = load ptr, ptr %second_object, align 8, !dbg !919
  %tobool2 = icmp ne ptr %9, null, !dbg !919
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !921

if.then3:                                         ; preds = %sw.bb
  %10 = load ptr, ptr %object, align 8, !dbg !922
  call void @acpi_ut_delete_object_desc(ptr noundef %10) #14, !dbg !924
  store ptr null, ptr %retval, align 8, !dbg !925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !925

if.end4:                                          ; preds = %sw.bb
  %11 = load ptr, ptr %second_object, align 8, !dbg !926
  %type5 = getelementptr inbounds %struct.acpi_object_common, ptr %11, i32 0, i32 2, !dbg !927
  store i8 28, ptr %type5, align 1, !dbg !928
  %12 = load ptr, ptr %second_object, align 8, !dbg !929
  %reference_count = getelementptr inbounds %struct.acpi_object_common, ptr %12, i32 0, i32 3, !dbg !930
  store i16 1, ptr %reference_count, align 2, !dbg !931
  %13 = load ptr, ptr %second_object, align 8, !dbg !932
  %14 = load ptr, ptr %object, align 8, !dbg !933
  %next_object = getelementptr inbounds %struct.acpi_object_common, ptr %14, i32 0, i32 0, !dbg !934
  store ptr %13, ptr %next_object, align 8, !dbg !935
  br label %sw.epilog, !dbg !936

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !937

sw.epilog:                                        ; preds = %sw.default, %if.end4
  %15 = load i32, ptr %type.addr, align 4, !dbg !938
  %conv = trunc i32 %15 to i8, !dbg !939
  %16 = load ptr, ptr %object, align 8, !dbg !940
  %type6 = getelementptr inbounds %struct.acpi_object_common, ptr %16, i32 0, i32 2, !dbg !941
  store i8 %conv, ptr %type6, align 1, !dbg !942
  %17 = load ptr, ptr %object, align 8, !dbg !943
  %reference_count7 = getelementptr inbounds %struct.acpi_object_common, ptr %17, i32 0, i32 3, !dbg !944
  store i16 1, ptr %reference_count7, align 2, !dbg !945
  %18 = load ptr, ptr %object, align 8, !dbg !946
  store ptr %18, ptr %retval, align 8, !dbg !946
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !946

cleanup:                                          ; preds = %sw.epilog, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %second_object) #13, !dbg !947
  call void @llvm.lifetime.end.p0(i64 8, ptr %object) #13, !dbg !947
  %19 = load ptr, ptr %retval, align 8, !dbg !947
  ret ptr %19, !dbg !947
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ut_allocate_object_desc_dbg(ptr noundef %module_name, i32 noundef %line_number, i32 noundef %component_id) #0 align 16 !dbg !948 {
entry:
  %retval = alloca ptr, align 8
  %module_name.addr = alloca ptr, align 8
  %line_number.addr = alloca i32, align 4
  %component_id.addr = alloca i32, align 4
  %object = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %module_name, ptr %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %module_name.addr, metadata !952, metadata !DIExpression()), !dbg !956
  store i32 %line_number, ptr %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line_number.addr, metadata !953, metadata !DIExpression()), !dbg !957
  store i32 %component_id, ptr %component_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %component_id.addr, metadata !954, metadata !DIExpression()), !dbg !958
  call void @llvm.lifetime.start.p0(i64 8, ptr %object) #13, !dbg !959
  call void @llvm.dbg.declare(metadata ptr %object, metadata !955, metadata !DIExpression()), !dbg !960
  %0 = load ptr, ptr @acpi_gbl_operand_cache, align 8, !dbg !961
  %call = call ptr @acpi_os_acquire_object(ptr noundef %0) #14, !dbg !962
  store ptr %call, ptr %object, align 8, !dbg !963
  %1 = load ptr, ptr %object, align 8, !dbg !964
  %tobool = icmp ne ptr %1, null, !dbg !964
  br i1 %tobool, label %if.end, label %if.then, !dbg !966

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %module_name.addr, align 8, !dbg !967
  %3 = load i32, ptr %line_number.addr, align 4, !dbg !967
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef %2, i32 noundef %3, ptr noundef @.str.1) #14, !dbg !967
  store ptr null, ptr %retval, align 8, !dbg !969
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !969

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %object, align 8, !dbg !970
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %4, i32 0, i32 1, !dbg !970
  store i8 14, ptr %descriptor_type, align 8, !dbg !970
  %5 = load ptr, ptr %object, align 8, !dbg !971
  store ptr %5, ptr %retval, align 8, !dbg !971
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !971

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %object) #13, !dbg !972
  %6 = load ptr, ptr %retval, align 8, !dbg !972
  ret ptr %6, !dbg !972
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmemleak_not_leak(ptr noundef %ptr) #3 align 16 !dbg !973 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !980, metadata !DIExpression()), !dbg !981
  ret void, !dbg !982
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_delete_object_desc(ptr noundef %object) #0 align 16 !dbg !983 {
entry:
  %object.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !987, metadata !DIExpression()), !dbg !988
  %0 = load ptr, ptr %object.addr, align 8, !dbg !989
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %0, i32 0, i32 1, !dbg !989
  %1 = load i8, ptr %descriptor_type, align 8, !dbg !989
  %conv = zext i8 %1 to i32, !dbg !989
  %cmp = icmp ne i32 %conv, 14, !dbg !991
  br i1 %cmp, label %if.then, label %if.end, !dbg !992

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %object.addr, align 8, !dbg !993
  %3 = load ptr, ptr %object.addr, align 8, !dbg !993
  %call = call ptr @acpi_ut_get_descriptor_name(ptr noundef %3) #14, !dbg !993
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 396, ptr noundef @.str.2, ptr noundef %2, ptr noundef %call) #14, !dbg !993
  br label %return, !dbg !995

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr @acpi_gbl_operand_cache, align 8, !dbg !996
  %5 = load ptr, ptr %object.addr, align 8, !dbg !997
  %call2 = call i32 @acpi_os_release_object(ptr noundef %4, ptr noundef %5) #14, !dbg !998
  br label %return, !dbg !999

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1000
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ut_create_package_object(i32 noundef %count) #0 align 16 !dbg !1001 {
entry:
  %retval = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %package_desc = alloca ptr, align 8
  %package_elements = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1005, metadata !DIExpression()), !dbg !1008
  call void @llvm.lifetime.start.p0(i64 8, ptr %package_desc) #13, !dbg !1009
  call void @llvm.dbg.declare(metadata ptr %package_desc, metadata !1006, metadata !DIExpression()), !dbg !1010
  call void @llvm.lifetime.start.p0(i64 8, ptr %package_elements) #13, !dbg !1011
  call void @llvm.dbg.declare(metadata ptr %package_elements, metadata !1007, metadata !DIExpression()), !dbg !1012
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 139, i32 noundef 1, i32 noundef 4) #14, !dbg !1013
  store ptr %call, ptr %package_desc, align 8, !dbg !1014
  %0 = load ptr, ptr %package_desc, align 8, !dbg !1015
  %tobool = icmp ne ptr %0, null, !dbg !1015
  br i1 %tobool, label %if.end, label %if.then, !dbg !1017

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1018
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1018

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %count.addr, align 4, !dbg !1020
  %conv = zext i32 %1 to i64, !dbg !1020
  %add = add i64 %conv, 1, !dbg !1020
  %mul = mul i64 %add, 8, !dbg !1020
  %call1 = call ptr @acpi_os_allocate_zeroed(i64 noundef %mul) #14, !dbg !1020
  store ptr %call1, ptr %package_elements, align 8, !dbg !1021
  %2 = load ptr, ptr %package_elements, align 8, !dbg !1022
  %tobool2 = icmp ne ptr %2, null, !dbg !1022
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1024

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %package_desc, align 8, !dbg !1025
  call void @acpi_os_free(ptr noundef %3) #14, !dbg !1025
  store ptr null, ptr %retval, align 8, !dbg !1027
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1027

if.end4:                                          ; preds = %if.end
  %4 = load i32, ptr %count.addr, align 4, !dbg !1028
  %5 = load ptr, ptr %package_desc, align 8, !dbg !1029
  %count5 = getelementptr inbounds %struct.acpi_object_package, ptr %5, i32 0, i32 9, !dbg !1030
  store i32 %4, ptr %count5, align 4, !dbg !1031
  %6 = load ptr, ptr %package_elements, align 8, !dbg !1032
  %7 = load ptr, ptr %package_desc, align 8, !dbg !1033
  %elements = getelementptr inbounds %struct.acpi_object_package, ptr %7, i32 0, i32 6, !dbg !1034
  store ptr %6, ptr %elements, align 8, !dbg !1035
  %8 = load ptr, ptr %package_desc, align 8, !dbg !1036
  store ptr %8, ptr %retval, align 8, !dbg !1036
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1036

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %package_elements) #13, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 8, ptr %package_desc) #13, !dbg !1037
  %9 = load ptr, ptr %retval, align 8, !dbg !1037
  ret ptr %9, !dbg !1037
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #3 align 16 !dbg !1038 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1043, metadata !DIExpression()), !dbg !1054
  %0 = load i64, ptr %size.addr, align 8, !dbg !1055
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !1056
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1044, metadata !DIExpression()), !dbg !1056
  br label %do.body, !dbg !1056

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !1057
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1046, metadata !DIExpression()), !dbg !1057
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !1057
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1049, metadata !DIExpression()), !dbg !1057
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1057
  %conv = zext i1 %cmp to i32, !dbg !1057
  store i32 1, ptr %tmp, align 4, !dbg !1057
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !1058
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !1058
  %1 = load i32, ptr %tmp, align 4, !dbg !1057
  %call = call i64 @arch_local_save_flags() #14, !dbg !1058
  store i64 %call, ptr %_flags, align 8, !dbg !1058
  br label %do.cond, !dbg !1058

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1058

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !1059
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1050, metadata !DIExpression()), !dbg !1059
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !1059
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1053, metadata !DIExpression()), !dbg !1059
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1059
  %conv6 = zext i1 %cmp5 to i32, !dbg !1059
  store i32 1, ptr %tmp7, align 4, !dbg !1059
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !1060
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !1060
  %2 = load i32, ptr %tmp7, align 4, !dbg !1059
  %3 = load i64, ptr %_flags, align 8, !dbg !1060
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !1060
  store i32 %call9, ptr %tmp8, align 4, !dbg !1060
  %4 = load i32, ptr %tmp8, align 4, !dbg !1060
  store i32 %4, ptr %tmp1, align 4, !dbg !1058
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !1061
  %5 = load i32, ptr %tmp1, align 4, !dbg !1056
  %tobool = icmp ne i32 %5, 0, !dbg !1061
  %6 = zext i1 %tobool to i64, !dbg !1061
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1061
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !1062
  ret ptr %call10, !dbg !1063
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #3 align 16 !dbg !1064 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1068, metadata !DIExpression()), !dbg !1069
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1070
  call void @kfree(ptr noundef %0) #14, !dbg !1071
  ret void, !dbg !1072
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ut_create_integer_object(i64 noundef %initial_value) #0 align 16 !dbg !1073 {
entry:
  %retval = alloca ptr, align 8
  %initial_value.addr = alloca i64, align 8
  %integer_desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %initial_value, ptr %initial_value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %initial_value.addr, metadata !1077, metadata !DIExpression()), !dbg !1079
  call void @llvm.lifetime.start.p0(i64 8, ptr %integer_desc) #13, !dbg !1080
  call void @llvm.dbg.declare(metadata ptr %integer_desc, metadata !1078, metadata !DIExpression()), !dbg !1081
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 180, i32 noundef 1, i32 noundef 1) #14, !dbg !1082
  store ptr %call, ptr %integer_desc, align 8, !dbg !1083
  %0 = load ptr, ptr %integer_desc, align 8, !dbg !1084
  %tobool = icmp ne ptr %0, null, !dbg !1084
  br i1 %tobool, label %if.end, label %if.then, !dbg !1086

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1087
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1087

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %initial_value.addr, align 8, !dbg !1089
  %2 = load ptr, ptr %integer_desc, align 8, !dbg !1090
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %2, i32 0, i32 6, !dbg !1091
  store i64 %1, ptr %value, align 8, !dbg !1092
  %3 = load ptr, ptr %integer_desc, align 8, !dbg !1093
  store ptr %3, ptr %retval, align 8, !dbg !1093
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1093

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %integer_desc) #13, !dbg !1094
  %4 = load ptr, ptr %retval, align 8, !dbg !1094
  ret ptr %4, !dbg !1094
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ut_create_buffer_object(i64 noundef %buffer_size) #0 align 16 !dbg !1095 {
entry:
  %retval = alloca ptr, align 8
  %buffer_size.addr = alloca i64, align 8
  %buffer_desc = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %buffer_size, ptr %buffer_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer_size.addr, metadata !1099, metadata !DIExpression()), !dbg !1102
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer_desc) #13, !dbg !1103
  call void @llvm.dbg.declare(metadata ptr %buffer_desc, metadata !1100, metadata !DIExpression()), !dbg !1104
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #13, !dbg !1105
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !1101, metadata !DIExpression()), !dbg !1106
  store ptr null, ptr %buffer, align 8, !dbg !1106
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 210, i32 noundef 1, i32 noundef 3) #14, !dbg !1107
  store ptr %call, ptr %buffer_desc, align 8, !dbg !1108
  %0 = load ptr, ptr %buffer_desc, align 8, !dbg !1109
  %tobool = icmp ne ptr %0, null, !dbg !1109
  br i1 %tobool, label %if.end, label %if.then, !dbg !1111

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1112
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1112

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %buffer_size.addr, align 8, !dbg !1114
  %cmp = icmp ugt i64 %1, 0, !dbg !1116
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !1117

if.then1:                                         ; preds = %if.end
  %2 = load i64, ptr %buffer_size.addr, align 8, !dbg !1118
  %call2 = call ptr @acpi_os_allocate_zeroed(i64 noundef %2) #14, !dbg !1118
  store ptr %call2, ptr %buffer, align 8, !dbg !1120
  %3 = load ptr, ptr %buffer, align 8, !dbg !1121
  %tobool3 = icmp ne ptr %3, null, !dbg !1121
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1123

if.then4:                                         ; preds = %if.then1
  %4 = load i64, ptr %buffer_size.addr, align 8, !dbg !1124
  %conv = trunc i64 %4 to i32, !dbg !1124
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 223, ptr noundef @.str, i32 noundef %conv) #14, !dbg !1124
  %5 = load ptr, ptr %buffer_desc, align 8, !dbg !1126
  call void @acpi_ut_remove_reference(ptr noundef %5) #14, !dbg !1127
  store ptr null, ptr %retval, align 8, !dbg !1128
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1128

if.end5:                                          ; preds = %if.then1
  br label %if.end6, !dbg !1129

if.end6:                                          ; preds = %if.end5, %if.end
  %6 = load ptr, ptr %buffer_desc, align 8, !dbg !1130
  %flags = getelementptr inbounds %struct.acpi_object_buffer, ptr %6, i32 0, i32 4, !dbg !1131
  %7 = load i8, ptr %flags, align 4, !dbg !1132
  %conv7 = zext i8 %7 to i32, !dbg !1132
  %or = or i32 %conv7, 4, !dbg !1132
  %conv8 = trunc i32 %or to i8, !dbg !1132
  store i8 %conv8, ptr %flags, align 4, !dbg !1132
  %8 = load ptr, ptr %buffer, align 8, !dbg !1133
  %9 = load ptr, ptr %buffer_desc, align 8, !dbg !1134
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %9, i32 0, i32 5, !dbg !1135
  store ptr %8, ptr %pointer, align 8, !dbg !1136
  %10 = load i64, ptr %buffer_size.addr, align 8, !dbg !1137
  %conv9 = trunc i64 %10 to i32, !dbg !1138
  %11 = load ptr, ptr %buffer_desc, align 8, !dbg !1139
  %length = getelementptr inbounds %struct.acpi_object_buffer, ptr %11, i32 0, i32 6, !dbg !1140
  store i32 %conv9, ptr %length, align 8, !dbg !1141
  %12 = load ptr, ptr %buffer_desc, align 8, !dbg !1142
  store ptr %12, ptr %retval, align 8, !dbg !1142
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1142

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #13, !dbg !1143
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer_desc) #13, !dbg !1143
  %13 = load ptr, ptr %retval, align 8, !dbg !1143
  ret ptr %13, !dbg !1143
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1144 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1148 dso_local void @acpi_ut_remove_reference(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ut_create_string_object(i64 noundef %string_size) #0 align 16 !dbg !1149 {
entry:
  %retval = alloca ptr, align 8
  %string_size.addr = alloca i64, align 8
  %string_desc = alloca ptr, align 8
  %string = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %string_size, ptr %string_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %string_size.addr, metadata !1151, metadata !DIExpression()), !dbg !1154
  call void @llvm.lifetime.start.p0(i64 8, ptr %string_desc) #13, !dbg !1155
  call void @llvm.dbg.declare(metadata ptr %string_desc, metadata !1152, metadata !DIExpression()), !dbg !1156
  call void @llvm.lifetime.start.p0(i64 8, ptr %string) #13, !dbg !1157
  call void @llvm.dbg.declare(metadata ptr %string, metadata !1153, metadata !DIExpression()), !dbg !1158
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 265, i32 noundef 1, i32 noundef 2) #14, !dbg !1159
  store ptr %call, ptr %string_desc, align 8, !dbg !1160
  %0 = load ptr, ptr %string_desc, align 8, !dbg !1161
  %tobool = icmp ne ptr %0, null, !dbg !1161
  br i1 %tobool, label %if.end, label %if.then, !dbg !1163

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1164
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1164

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %string_size.addr, align 8, !dbg !1166
  %add = add i64 %1, 1, !dbg !1166
  %call1 = call ptr @acpi_os_allocate_zeroed(i64 noundef %add) #14, !dbg !1166
  store ptr %call1, ptr %string, align 8, !dbg !1167
  %2 = load ptr, ptr %string, align 8, !dbg !1168
  %tobool2 = icmp ne ptr %2, null, !dbg !1168
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1170

if.then3:                                         ; preds = %if.end
  %3 = load i64, ptr %string_size.addr, align 8, !dbg !1171
  %conv = trunc i64 %3 to i32, !dbg !1171
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 276, ptr noundef @.str, i32 noundef %conv) #14, !dbg !1171
  %4 = load ptr, ptr %string_desc, align 8, !dbg !1173
  call void @acpi_ut_remove_reference(ptr noundef %4) #14, !dbg !1174
  store ptr null, ptr %retval, align 8, !dbg !1175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1175

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %string, align 8, !dbg !1176
  %6 = load ptr, ptr %string_desc, align 8, !dbg !1177
  %pointer = getelementptr inbounds %struct.acpi_object_string, ptr %6, i32 0, i32 5, !dbg !1178
  store ptr %5, ptr %pointer, align 8, !dbg !1179
  %7 = load i64, ptr %string_size.addr, align 8, !dbg !1180
  %conv5 = trunc i64 %7 to i32, !dbg !1181
  %8 = load ptr, ptr %string_desc, align 8, !dbg !1182
  %length = getelementptr inbounds %struct.acpi_object_string, ptr %8, i32 0, i32 6, !dbg !1183
  store i32 %conv5, ptr %length, align 8, !dbg !1184
  %9 = load ptr, ptr %string_desc, align 8, !dbg !1185
  store ptr %9, ptr %retval, align 8, !dbg !1185
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1185

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %string) #13, !dbg !1186
  call void @llvm.lifetime.end.p0(i64 8, ptr %string_desc) #13, !dbg !1186
  %10 = load ptr, ptr %retval, align 8, !dbg !1186
  ret ptr %10, !dbg !1186
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ut_valid_internal_object(ptr noundef %object) #0 align 16 !dbg !1187 {
entry:
  %retval = alloca i8, align 1
  %object.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1191, metadata !DIExpression()), !dbg !1192
  %0 = load ptr, ptr %object.addr, align 8, !dbg !1193
  %tobool = icmp ne ptr %0, null, !dbg !1193
  br i1 %tobool, label %if.end, label %if.then, !dbg !1195

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1, !dbg !1196
  br label %return, !dbg !1196

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %object.addr, align 8, !dbg !1198
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %1, i32 0, i32 1, !dbg !1198
  %2 = load i8, ptr %descriptor_type, align 8, !dbg !1198
  %conv = zext i8 %2 to i32, !dbg !1198
  switch i32 %conv, label %sw.default [
    i32 14, label %sw.bb
  ], !dbg !1199

sw.bb:                                            ; preds = %if.end
  store i8 1, ptr %retval, align 1, !dbg !1200
  br label %return, !dbg !1200

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !1202

sw.epilog:                                        ; preds = %sw.default
  store i8 0, ptr %retval, align 1, !dbg !1203
  br label %return, !dbg !1203

return:                                           ; preds = %sw.epilog, %sw.bb, %if.then
  %3 = load i8, ptr %retval, align 1, !dbg !1204
  ret i8 %3, !dbg !1204
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_acquire_object(ptr noundef %cache) #3 align 16 !dbg !1205 {
entry:
  %cache.addr = alloca ptr, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store ptr %cache, ptr %cache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !1212, metadata !DIExpression()), !dbg !1223
  %0 = load ptr, ptr %cache.addr, align 8, !dbg !1224
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !1225
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1213, metadata !DIExpression()), !dbg !1225
  br label %do.body, !dbg !1225

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !1226
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1215, metadata !DIExpression()), !dbg !1226
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !1226
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1218, metadata !DIExpression()), !dbg !1226
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1226
  %conv = zext i1 %cmp to i32, !dbg !1226
  store i32 1, ptr %tmp, align 4, !dbg !1226
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !1227
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !1227
  %1 = load i32, ptr %tmp, align 4, !dbg !1226
  %call = call i64 @arch_local_save_flags() #14, !dbg !1227
  store i64 %call, ptr %_flags, align 8, !dbg !1227
  br label %do.cond, !dbg !1227

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1227

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !1228
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1219, metadata !DIExpression()), !dbg !1228
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !1228
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1222, metadata !DIExpression()), !dbg !1228
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1228
  %conv6 = zext i1 %cmp5 to i32, !dbg !1228
  store i32 1, ptr %tmp7, align 4, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !1229
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !1229
  %2 = load i32, ptr %tmp7, align 4, !dbg !1228
  %3 = load i64, ptr %_flags, align 8, !dbg !1229
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !1229
  store i32 %call9, ptr %tmp8, align 4, !dbg !1229
  %4 = load i32, ptr %tmp8, align 4, !dbg !1229
  store i32 %4, ptr %tmp1, align 4, !dbg !1227
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !1230
  %5 = load i32, ptr %tmp1, align 4, !dbg !1225
  %tobool = icmp ne i32 %5, 0, !dbg !1230
  %6 = zext i1 %tobool to i64, !dbg !1230
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1230
  %call10 = call ptr @kmem_cache_zalloc(ptr noundef %0, i32 noundef %cond) #14, !dbg !1231
  ret ptr %call10, !dbg !1232
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1233 dso_local ptr @acpi_ut_get_descriptor_name(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1236 dso_local i32 @acpi_os_release_object(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_get_object_size(ptr noundef %internal_object, ptr noundef %obj_length) #0 align 16 !dbg !1240 {
entry:
  %internal_object.addr = alloca ptr, align 8
  %obj_length.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %internal_object, ptr %internal_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %internal_object.addr, metadata !1245, metadata !DIExpression()), !dbg !1248
  store ptr %obj_length, ptr %obj_length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_length.addr, metadata !1246, metadata !DIExpression()), !dbg !1249
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1250
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1247, metadata !DIExpression()), !dbg !1251
  %0 = load ptr, ptr %internal_object.addr, align 8, !dbg !1252
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %0, i32 0, i32 1, !dbg !1252
  %1 = load i8, ptr %descriptor_type, align 8, !dbg !1252
  %conv = zext i8 %1 to i32, !dbg !1252
  %cmp = icmp eq i32 %conv, 14, !dbg !1254
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !1255

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %internal_object.addr, align 8, !dbg !1256
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %2, i32 0, i32 2, !dbg !1257
  %3 = load i8, ptr %type, align 1, !dbg !1257
  %conv2 = zext i8 %3 to i32, !dbg !1256
  %cmp3 = icmp eq i32 %conv2, 4, !dbg !1258
  br i1 %cmp3, label %if.then, label %if.else, !dbg !1259

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %internal_object.addr, align 8, !dbg !1260
  %5 = load ptr, ptr %obj_length.addr, align 8, !dbg !1262
  %call = call i32 @acpi_ut_get_package_object_size(ptr noundef %4, ptr noundef %5) #14, !dbg !1263
  store i32 %call, ptr %status, align 4, !dbg !1264
  br label %if.end, !dbg !1265

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load ptr, ptr %internal_object.addr, align 8, !dbg !1266
  %7 = load ptr, ptr %obj_length.addr, align 8, !dbg !1268
  %call5 = call i32 @acpi_ut_get_simple_object_size(ptr noundef %6, ptr noundef %7) #14, !dbg !1269
  store i32 %call5, ptr %status, align 4, !dbg !1270
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, ptr %status, align 4, !dbg !1271
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1272
  ret i32 %8, !dbg !1273
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ut_get_package_object_size(ptr noundef %internal_object, ptr noundef %obj_length) #0 align 16 !dbg !1274 {
entry:
  %retval = alloca i32, align 4
  %internal_object.addr = alloca ptr, align 8
  %obj_length.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %info = alloca %struct.acpi_pkg_info, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %internal_object, ptr %internal_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %internal_object.addr, metadata !1276, metadata !DIExpression()), !dbg !1280
  store ptr %obj_length, ptr %obj_length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_length.addr, metadata !1277, metadata !DIExpression()), !dbg !1281
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1282
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1278, metadata !DIExpression()), !dbg !1283
  call void @llvm.lifetime.start.p0(i64 24, ptr %info) #13, !dbg !1284
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1279, metadata !DIExpression()), !dbg !1285
  %length = getelementptr inbounds %struct.acpi_pkg_info, ptr %info, i32 0, i32 1, !dbg !1286
  store i64 0, ptr %length, align 8, !dbg !1287
  %object_space = getelementptr inbounds %struct.acpi_pkg_info, ptr %info, i32 0, i32 2, !dbg !1288
  store i32 0, ptr %object_space, align 8, !dbg !1289
  %num_packages = getelementptr inbounds %struct.acpi_pkg_info, ptr %info, i32 0, i32 3, !dbg !1290
  store i32 1, ptr %num_packages, align 4, !dbg !1291
  %0 = load ptr, ptr %internal_object.addr, align 8, !dbg !1292
  %call = call i32 @acpi_ut_walk_package_tree(ptr noundef %0, ptr noundef null, ptr noundef @acpi_ut_get_element_length, ptr noundef %info) #14, !dbg !1293
  store i32 %call, ptr %status, align 4, !dbg !1294
  %1 = load i32, ptr %status, align 4, !dbg !1295
  %tobool = icmp ne i32 %1, 0, !dbg !1295
  br i1 %tobool, label %if.then, label %if.end, !dbg !1297

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !1298
  store i32 %2, ptr %retval, align 4, !dbg !1298
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1298

if.end:                                           ; preds = %entry
  %num_packages1 = getelementptr inbounds %struct.acpi_pkg_info, ptr %info, i32 0, i32 3, !dbg !1300
  %3 = load i32, ptr %num_packages1, align 4, !dbg !1300
  %conv = zext i32 %3 to i64, !dbg !1301
  %mul = mul i64 24, %conv, !dbg !1302
  %length2 = getelementptr inbounds %struct.acpi_pkg_info, ptr %info, i32 0, i32 1, !dbg !1303
  %4 = load i64, ptr %length2, align 8, !dbg !1304
  %add = add i64 %4, %mul, !dbg !1304
  store i64 %add, ptr %length2, align 8, !dbg !1304
  %length3 = getelementptr inbounds %struct.acpi_pkg_info, ptr %info, i32 0, i32 1, !dbg !1305
  %5 = load i64, ptr %length3, align 8, !dbg !1305
  %6 = load ptr, ptr %obj_length.addr, align 8, !dbg !1306
  store i64 %5, ptr %6, align 8, !dbg !1307
  %7 = load i32, ptr %status, align 4, !dbg !1308
  store i32 %7, ptr %retval, align 4, !dbg !1308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1308

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %info) #13, !dbg !1309
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1309
  %8 = load i32, ptr %retval, align 4, !dbg !1309
  ret i32 %8, !dbg !1309
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ut_get_simple_object_size(ptr noundef %internal_object, ptr noundef %obj_length) #0 align 16 !dbg !1310 {
entry:
  %retval = alloca i32, align 4
  %internal_object.addr = alloca ptr, align 8
  %obj_length.addr = alloca ptr, align 8
  %length = alloca i64, align 8
  %size = alloca i64, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %internal_object, ptr %internal_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %internal_object.addr, metadata !1312, metadata !DIExpression()), !dbg !1317
  store ptr %obj_length, ptr %obj_length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_length.addr, metadata !1313, metadata !DIExpression()), !dbg !1318
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #13, !dbg !1319
  call void @llvm.dbg.declare(metadata ptr %length, metadata !1314, metadata !DIExpression()), !dbg !1320
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #13, !dbg !1321
  call void @llvm.dbg.declare(metadata ptr %size, metadata !1315, metadata !DIExpression()), !dbg !1322
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1323
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1316, metadata !DIExpression()), !dbg !1324
  store i32 0, ptr %status, align 4, !dbg !1324
  store i64 24, ptr %length, align 8, !dbg !1325
  %0 = load ptr, ptr %internal_object.addr, align 8, !dbg !1326
  %tobool = icmp ne ptr %0, null, !dbg !1326
  br i1 %tobool, label %if.end, label %if.then, !dbg !1328

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %length, align 8, !dbg !1329
  %add = add i64 %1, 7, !dbg !1329
  %and = and i64 %add, -8, !dbg !1329
  %2 = load ptr, ptr %obj_length.addr, align 8, !dbg !1331
  store i64 %and, ptr %2, align 8, !dbg !1332
  store i32 0, ptr %retval, align 4, !dbg !1333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1333

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %internal_object.addr, align 8, !dbg !1334
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %3, i32 0, i32 1, !dbg !1334
  %4 = load i8, ptr %descriptor_type, align 8, !dbg !1334
  %conv = zext i8 %4 to i32, !dbg !1334
  %cmp = icmp eq i32 %conv, 15, !dbg !1336
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1337

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %internal_object.addr, align 8, !dbg !1338
  %6 = ptrtoint ptr %5 to i64, !dbg !1338
  %7 = inttoptr i64 %6 to ptr, !dbg !1338
  %name = getelementptr inbounds %struct.acpi_namespace_node, ptr %7, i32 0, i32 4, !dbg !1338
  %arraydecay = getelementptr inbounds [4 x i8], ptr %name, i64 0, i64 0, !dbg !1338
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 454, ptr noundef @.str.4, ptr noundef %arraydecay) #14, !dbg !1338
  store i32 12303, ptr %retval, align 4, !dbg !1340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1340

if.end3:                                          ; preds = %if.end
  %8 = load ptr, ptr %internal_object.addr, align 8, !dbg !1341
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %8, i32 0, i32 2, !dbg !1342
  %9 = load i8, ptr %type, align 1, !dbg !1342
  %conv4 = zext i8 %9 to i32, !dbg !1341
  switch i32 %conv4, label %sw.default26 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb9
    i32 1, label %sw.bb13
    i32 12, label %sw.bb13
    i32 11, label %sw.bb13
    i32 20, label %sw.bb14
  ], !dbg !1343

sw.bb:                                            ; preds = %if.end3
  %10 = load ptr, ptr %internal_object.addr, align 8, !dbg !1344
  %length5 = getelementptr inbounds %struct.acpi_object_string, ptr %10, i32 0, i32 6, !dbg !1346
  %11 = load i32, ptr %length5, align 8, !dbg !1346
  %conv6 = zext i32 %11 to i64, !dbg !1347
  %add7 = add i64 %conv6, 1, !dbg !1348
  %12 = load i64, ptr %length, align 8, !dbg !1349
  %add8 = add i64 %12, %add7, !dbg !1349
  store i64 %add8, ptr %length, align 8, !dbg !1349
  br label %sw.epilog30, !dbg !1350

sw.bb9:                                           ; preds = %if.end3
  %13 = load ptr, ptr %internal_object.addr, align 8, !dbg !1351
  %length10 = getelementptr inbounds %struct.acpi_object_buffer, ptr %13, i32 0, i32 6, !dbg !1352
  %14 = load i32, ptr %length10, align 8, !dbg !1352
  %conv11 = zext i32 %14 to i64, !dbg !1353
  %15 = load i64, ptr %length, align 8, !dbg !1354
  %add12 = add i64 %15, %conv11, !dbg !1354
  store i64 %add12, ptr %length, align 8, !dbg !1354
  br label %sw.epilog30, !dbg !1355

sw.bb13:                                          ; preds = %if.end3, %if.end3, %if.end3
  br label %sw.epilog30, !dbg !1356

sw.bb14:                                          ; preds = %if.end3
  %16 = load ptr, ptr %internal_object.addr, align 8, !dbg !1357
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %16, i32 0, i32 5, !dbg !1358
  %17 = load i8, ptr %class, align 1, !dbg !1358
  %conv15 = zext i8 %17 to i32, !dbg !1357
  switch i32 %conv15, label %sw.default [
    i32 5, label %sw.bb16
  ], !dbg !1359

sw.bb16:                                          ; preds = %sw.bb14
  %18 = load ptr, ptr %internal_object.addr, align 8, !dbg !1360
  %node = getelementptr inbounds %struct.acpi_object_reference, ptr %18, i32 0, i32 9, !dbg !1362
  %19 = load ptr, ptr %node, align 8, !dbg !1362
  %call = call i64 @acpi_ns_get_pathname_length(ptr noundef %19) #14, !dbg !1363
  store i64 %call, ptr %size, align 8, !dbg !1364
  %20 = load i64, ptr %size, align 8, !dbg !1365
  %tobool17 = icmp ne i64 %20, 0, !dbg !1365
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !1367

if.then18:                                        ; preds = %sw.bb16
  store i32 4097, ptr %retval, align 4, !dbg !1368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1368

if.end19:                                         ; preds = %sw.bb16
  %21 = load i64, ptr %size, align 8, !dbg !1370
  %add20 = add i64 %21, 7, !dbg !1370
  %and21 = and i64 %add20, -8, !dbg !1370
  %22 = load i64, ptr %length, align 8, !dbg !1371
  %add22 = add i64 %22, %and21, !dbg !1371
  store i64 %add22, ptr %length, align 8, !dbg !1371
  br label %sw.epilog, !dbg !1372

sw.default:                                       ; preds = %sw.bb14
  %23 = load ptr, ptr %internal_object.addr, align 8, !dbg !1373
  %call23 = call ptr @acpi_ut_get_reference_name(ptr noundef %23) #14, !dbg !1373
  %24 = load ptr, ptr %internal_object.addr, align 8, !dbg !1373
  %class24 = getelementptr inbounds %struct.acpi_object_reference, ptr %24, i32 0, i32 5, !dbg !1373
  %25 = load i8, ptr %class24, align 1, !dbg !1373
  %conv25 = zext i8 %25 to i32, !dbg !1373
  %26 = load ptr, ptr %internal_object.addr, align 8, !dbg !1373
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 511, ptr noundef @.str.5, ptr noundef %call23, i32 noundef %conv25, ptr noundef %26) #14, !dbg !1373
  store i32 8, ptr %status, align 4, !dbg !1374
  br label %sw.epilog, !dbg !1375

sw.epilog:                                        ; preds = %sw.default, %if.end19
  br label %sw.epilog30, !dbg !1376

sw.default26:                                     ; preds = %if.end3
  %27 = load ptr, ptr %internal_object.addr, align 8, !dbg !1377
  %call27 = call ptr @acpi_ut_get_object_type_name(ptr noundef %27) #14, !dbg !1377
  %28 = load ptr, ptr %internal_object.addr, align 8, !dbg !1377
  %type28 = getelementptr inbounds %struct.acpi_object_common, ptr %28, i32 0, i32 2, !dbg !1377
  %29 = load i8, ptr %type28, align 1, !dbg !1377
  %conv29 = zext i8 %29 to i32, !dbg !1377
  %30 = load ptr, ptr %internal_object.addr, align 8, !dbg !1377
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 524, ptr noundef @.str.6, ptr noundef %call27, i32 noundef %conv29, ptr noundef %30) #14, !dbg !1377
  store i32 8, ptr %status, align 4, !dbg !1378
  br label %sw.epilog30, !dbg !1379

sw.epilog30:                                      ; preds = %sw.default26, %sw.epilog, %sw.bb13, %sw.bb9, %sw.bb
  %31 = load i64, ptr %length, align 8, !dbg !1380
  %add31 = add i64 %31, 7, !dbg !1380
  %and32 = and i64 %add31, -8, !dbg !1380
  %32 = load ptr, ptr %obj_length.addr, align 8, !dbg !1381
  store i64 %and32, ptr %32, align 8, !dbg !1382
  %33 = load i32, ptr %status, align 4, !dbg !1383
  store i32 %33, ptr %retval, align 4, !dbg !1383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1383

cleanup:                                          ; preds = %sw.epilog30, %if.then18, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1384
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #13, !dbg !1384
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #13, !dbg !1384
  %34 = load i32, ptr %retval, align 4, !dbg !1384
  ret i32 %34, !dbg !1384
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1385 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1393, metadata !DIExpression()), !dbg !1395
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1394, metadata !DIExpression()), !dbg !1396
  %0 = load i64, ptr %size.addr, align 8, !dbg !1397
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1398
  %or = or i32 %1, 256, !dbg !1399
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !1400
  ret ptr %call, !dbg !1401
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !1402 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !1406
  ret i64 %call, !dbg !1407
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !1408 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1413, metadata !DIExpression()), !dbg !1414
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1415
  %and = and i64 %0, 512, !dbg !1416
  %tobool = icmp ne i64 %and, 0, !dbg !1417
  %lnot = xor i1 %tobool, true, !dbg !1417
  %lnot.ext = zext i1 %lnot to i32, !dbg !1417
  ret i32 %lnot.ext, !dbg !1418
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1419 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1421, metadata !DIExpression()), !dbg !1426
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1422, metadata !DIExpression()), !dbg !1427
  %0 = load i64, ptr %size.addr, align 8, !dbg !1428
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1429
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1430

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1431
  %tobool = icmp ne i64 %2, 0, !dbg !1431
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1432

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !1433
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1423, metadata !DIExpression()), !dbg !1434
  %3 = load i64, ptr %size.addr, align 8, !dbg !1435
  %cmp = icmp ugt i64 %3, 8192, !dbg !1437
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1438

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1439
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1440
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !1441
  store ptr %call, ptr %retval, align 8, !dbg !1442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1442

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1443
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !1443
  store i32 %call2, ptr %index, align 4, !dbg !1444
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1445
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1446
  %9 = ptrtoint ptr %8 to i64, !dbg !1446
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !1447
  %idxprom = zext i32 %call3 to i64, !dbg !1448
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1448
  %10 = load i32, ptr %index, align 4, !dbg !1449
  %idxprom4 = zext i32 %10 to i64, !dbg !1448
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1448
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1448
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1450
  %13 = load i64, ptr %size.addr, align 8, !dbg !1451
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !1452
  store ptr %call6, ptr %retval, align 8, !dbg !1453
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1453

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !1454
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1455
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1456
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !1457
  store ptr %call8, ptr %retval, align 8, !dbg !1458
  br label %return, !dbg !1458

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1459
  ret ptr %16, !dbg !1459
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1460 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !1461 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1467, metadata !DIExpression()), !dbg !1469
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1468, metadata !DIExpression()), !dbg !1470
  %0 = load i64, ptr %size.addr, align 8, !dbg !1471
  %tobool = icmp ne i64 %0, 0, !dbg !1471
  br i1 %tobool, label %if.end, label %if.then, !dbg !1473

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1474
  br label %return, !dbg !1474

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1475
  %cmp = icmp ule i64 %1, 8, !dbg !1477
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1478

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1479
  br label %return, !dbg !1479

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1480
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1482
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1483

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1484
  %cmp4 = icmp ule i64 %3, 96, !dbg !1485
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1486

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1487
  br label %return, !dbg !1487

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1488
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1490
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1491

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1492
  %cmp9 = icmp ule i64 %5, 192, !dbg !1493
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1494

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1495
  br label %return, !dbg !1495

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1496
  %cmp12 = icmp ule i64 %6, 8, !dbg !1498
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1499

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1500
  br label %return, !dbg !1500

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1501
  %cmp15 = icmp ule i64 %7, 16, !dbg !1503
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1504

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1505
  br label %return, !dbg !1505

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1506
  %cmp18 = icmp ule i64 %8, 32, !dbg !1508
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1509

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1510
  br label %return, !dbg !1510

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1511
  %cmp21 = icmp ule i64 %9, 64, !dbg !1513
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1514

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1515
  br label %return, !dbg !1515

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1516
  %cmp24 = icmp ule i64 %10, 128, !dbg !1518
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1519

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1520
  br label %return, !dbg !1520

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1521
  %cmp27 = icmp ule i64 %11, 256, !dbg !1523
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1524

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1525
  br label %return, !dbg !1525

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1526
  %cmp30 = icmp ule i64 %12, 512, !dbg !1528
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1529

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1530
  br label %return, !dbg !1530

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1531
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1533
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1534

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1535
  br label %return, !dbg !1535

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1536
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1538
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1539

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1540
  br label %return, !dbg !1540

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1541
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1543
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1544

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1545
  br label %return, !dbg !1545

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1546
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1548
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1549

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1550
  br label %return, !dbg !1550

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1551
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1553
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1554

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1555
  br label %return, !dbg !1555

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1556
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1558
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1559

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1560
  br label %return, !dbg !1560

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1561
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1563
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1564

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1565
  br label %return, !dbg !1565

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1566
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1568
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1569

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1570
  br label %return, !dbg !1570

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1571
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1573
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1574

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1575
  br label %return, !dbg !1575

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1576
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1578
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1579

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1580
  br label %return, !dbg !1580

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1581
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1583
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1584

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1585
  br label %return, !dbg !1585

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1586
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1588
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1589

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1590
  br label %return, !dbg !1590

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1591, !range !1593, !noundef !1594
  %tobool69 = trunc i8 %25 to i1, !dbg !1591
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1595

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1596

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !1597, !srcloc !1600
  unreachable, !dbg !1597

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1601

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1602

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1603

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1605

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1603

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #13, !dbg !1607, !srcloc !1609
  br label %do.end75, !dbg !1607

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1603

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1610
  br label %return, !dbg !1610

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1611
  ret i32 %26, !dbg !1611
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1612 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !1615 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1619, metadata !DIExpression()), !dbg !1621
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1620, metadata !DIExpression()), !dbg !1622
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1623
  %and = and i32 %0, 17, !dbg !1623
  %cmp = icmp eq i32 %and, 0, !dbg !1623
  %lnot = xor i1 %cmp, true, !dbg !1623
  %lnot1 = xor i1 %lnot, true, !dbg !1623
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1623
  %conv = sext i32 %lnot.ext to i64, !dbg !1623
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1623
  %tobool = icmp ne i64 %expval, 0, !dbg !1623
  br i1 %tobool, label %if.then, label %if.end, !dbg !1625

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1626
  br label %return, !dbg !1626

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1627
  %and2 = and i32 %1, 1, !dbg !1629
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1629
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1630

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1631
  br label %return, !dbg !1631

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1632
  br label %return, !dbg !1632

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1634
  ret i32 %2, !dbg !1634
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1635 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1636 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !1639 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1642
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1641, metadata !DIExpression()), !dbg !1643
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !1644, !srcloc !1645
  %0 = load i64, ptr %flags, align 8, !dbg !1646
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1647
  ret i64 %0, !dbg !1648
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1649 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmem_cache_zalloc(ptr noundef %k, i32 noundef %flags) #3 align 16 !dbg !1650 {
entry:
  %k.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !1654, metadata !DIExpression()), !dbg !1656
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1655, metadata !DIExpression()), !dbg !1657
  %0 = load ptr, ptr %k.addr, align 8, !dbg !1658
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1659
  %or = or i32 %1, 256, !dbg !1660
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %or) #14, !dbg !1661
  ret ptr %call, !dbg !1662
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1663 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1664 dso_local i32 @acpi_ut_walk_package_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ut_get_element_length(i8 noundef zeroext %object_type, ptr noundef %source_object, ptr noundef %state, ptr noundef %context) #0 align 16 !dbg !1671 {
entry:
  %retval = alloca i32, align 4
  %object_type.addr = alloca i8, align 1
  %source_object.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %info = alloca ptr, align 8
  %object_space = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %object_type, ptr %object_type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %object_type.addr, metadata !1673, metadata !DIExpression()), !dbg !1680
  store ptr %source_object, ptr %source_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_object.addr, metadata !1674, metadata !DIExpression()), !dbg !1681
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !1675, metadata !DIExpression()), !dbg !1682
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1676, metadata !DIExpression()), !dbg !1683
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1684
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1677, metadata !DIExpression()), !dbg !1685
  store i32 0, ptr %status, align 4, !dbg !1685
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #13, !dbg !1686
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1678, metadata !DIExpression()), !dbg !1687
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1688
  store ptr %0, ptr %info, align 8, !dbg !1687
  call void @llvm.lifetime.start.p0(i64 8, ptr %object_space) #13, !dbg !1689
  call void @llvm.dbg.declare(metadata ptr %object_space, metadata !1679, metadata !DIExpression()), !dbg !1690
  %1 = load i8, ptr %object_type.addr, align 1, !dbg !1691
  %conv = zext i8 %1 to i32, !dbg !1691
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !1692

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %source_object.addr, align 8, !dbg !1693
  %call = call i32 @acpi_ut_get_simple_object_size(ptr noundef %2, ptr noundef %object_space) #14, !dbg !1695
  store i32 %call, ptr %status, align 4, !dbg !1696
  %3 = load i32, ptr %status, align 4, !dbg !1697
  %tobool = icmp ne i32 %3, 0, !dbg !1697
  br i1 %tobool, label %if.then, label %if.end, !dbg !1699

if.then:                                          ; preds = %sw.bb
  %4 = load i32, ptr %status, align 4, !dbg !1700
  store i32 %4, ptr %retval, align 4, !dbg !1702
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1702

if.end:                                           ; preds = %sw.bb
  %5 = load i64, ptr %object_space, align 8, !dbg !1703
  %6 = load ptr, ptr %info, align 8, !dbg !1704
  %length = getelementptr inbounds %struct.acpi_pkg_info, ptr %6, i32 0, i32 1, !dbg !1705
  %7 = load i64, ptr %length, align 8, !dbg !1706
  %add = add i64 %7, %5, !dbg !1706
  store i64 %add, ptr %length, align 8, !dbg !1706
  br label %sw.epilog, !dbg !1707

sw.bb1:                                           ; preds = %entry
  %8 = load ptr, ptr %info, align 8, !dbg !1708
  %num_packages = getelementptr inbounds %struct.acpi_pkg_info, ptr %8, i32 0, i32 3, !dbg !1709
  %9 = load i32, ptr %num_packages, align 4, !dbg !1710
  %inc = add i32 %9, 1, !dbg !1710
  store i32 %inc, ptr %num_packages, align 4, !dbg !1710
  %10 = load ptr, ptr %state.addr, align 8, !dbg !1711
  %this_target_obj = getelementptr inbounds %struct.acpi_pkg_state, ptr %10, i32 0, i32 9, !dbg !1712
  store ptr null, ptr %this_target_obj, align 8, !dbg !1713
  br label %sw.epilog, !dbg !1714

sw.default:                                       ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1715
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1715

sw.epilog:                                        ; preds = %sw.bb1, %if.end
  %11 = load i32, ptr %status, align 4, !dbg !1716
  store i32 %11, ptr %retval, align 4, !dbg !1717
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1717

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %object_space) #13, !dbg !1718
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #13, !dbg !1718
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1718
  %12 = load i32, ptr %retval, align 4, !dbg !1718
  ret i32 %12, !dbg !1718
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1719 dso_local i64 @acpi_ns_get_pathname_length(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1723 dso_local ptr @acpi_ut_get_reference_name(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1726 dso_local ptr @acpi_ut_get_object_type_name(ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
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
!llvm.module.flags = !{!870, !871, !872, !873, !874, !875, !876, !877}
!llvm.ident = !{!878}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !868, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utobject.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utobject\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utobject.ll drivers/acpi/acpica/utobject.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !32, globals: !832, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utobject.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eddcfd36eeddf22c5b57a89548d3dae1")
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
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 323, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31}
!24 = !DIEnumerator(name: "ACPI_REFCLASS_LOCAL", value: 0)
!25 = !DIEnumerator(name: "ACPI_REFCLASS_ARG", value: 1)
!26 = !DIEnumerator(name: "ACPI_REFCLASS_REFOF", value: 2)
!27 = !DIEnumerator(name: "ACPI_REFCLASS_INDEX", value: 3)
!28 = !DIEnumerator(name: "ACPI_REFCLASS_TABLE", value: 4)
!29 = !DIEnumerator(name: "ACPI_REFCLASS_NAME", value: 5)
!30 = !DIEnumerator(name: "ACPI_REFCLASS_DEBUG", value: 6)
!31 = !DIEnumerator(name: "ACPI_REFCLASS_MAX", value: 6)
!32 = !{!33, !38, !43, !45, !52, !820, !822, !175, !823, !108, !831}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !34, line: 17, baseType: !35)
!34 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !36, line: 21, baseType: !37)
!36 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!37 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !39, line: 127, baseType: !40)
!39 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !34, line: 23, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !36, line: 31, baseType: !42)
!42 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !34, line: 21, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !36, line: 27, baseType: !7)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !22, line: 434, size: 1600, elements: !47)
!47 = !{!48, !54, !818, !819}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !46, file: !22, line: 435, baseType: !49, size: 128)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !22, line: 429, size: 128, elements: !50)
!50 = !{!51, !53}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !49, file: !22, line: 430, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !49, file: !22, line: 431, baseType: !33, size: 8, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !46, file: !22, line: 436, baseType: !55, size: 576)
!55 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !22, line: 369, size: 576, elements: !56)
!56 = !{!57, !69, !82, !94, !130, !144, !153, !467, !484, !500, !513, !591, !603, !617, !627, !645, !667, !686, !705, !724, !737, !764, !781, !794, !808, !817}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !55, file: !22, line: 370, baseType: !58, size: 128)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !22, line: 73, size: 128, elements: !59)
!59 = !{!60, !62, !63, !64, !68}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !58, file: !22, line: 74, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !58, file: !22, line: 74, baseType: !33, size: 8, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !58, file: !22, line: 74, baseType: !33, size: 8, offset: 72)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !58, file: !22, line: 74, baseType: !65, size: 16, offset: 80)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !34, line: 19, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !36, line: 24, baseType: !67)
!67 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !58, file: !22, line: 74, baseType: !33, size: 8, offset: 96)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !55, file: !22, line: 371, baseType: !70, size: 192)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !22, line: 76, size: 192, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !81}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !70, file: !22, line: 77, baseType: !61, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !70, file: !22, line: 77, baseType: !33, size: 8, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !22, line: 77, baseType: !33, size: 8, offset: 72)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !70, file: !22, line: 77, baseType: !65, size: 16, offset: 80)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !70, file: !22, line: 77, baseType: !33, size: 8, offset: 96)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !70, file: !22, line: 77, baseType: !78, size: 24, offset: 104)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 24, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 3)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !70, file: !22, line: 78, baseType: !40, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !55, file: !22, line: 372, baseType: !83, size: 256)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !22, line: 93, size: 256, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !93}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !83, file: !22, line: 94, baseType: !61, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !83, file: !22, line: 94, baseType: !33, size: 8, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !22, line: 94, baseType: !33, size: 8, offset: 72)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !83, file: !22, line: 94, baseType: !65, size: 16, offset: 80)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !83, file: !22, line: 94, baseType: !33, size: 8, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !83, file: !22, line: 94, baseType: !91, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !83, file: !22, line: 94, baseType: !43, size: 32, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !55, file: !22, line: 373, baseType: !95, size: 384)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !22, line: 97, size: 384, elements: !96)
!96 = !{!97, !98, !99, !100, !101, !102, !104, !105, !106, !107}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !95, file: !22, line: 98, baseType: !61, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !95, file: !22, line: 98, baseType: !33, size: 8, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !95, file: !22, line: 98, baseType: !33, size: 8, offset: 72)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !95, file: !22, line: 98, baseType: !65, size: 16, offset: 80)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !95, file: !22, line: 98, baseType: !33, size: 8, offset: 96)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !95, file: !22, line: 98, baseType: !103, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !95, file: !22, line: 98, baseType: !43, size: 32, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !95, file: !22, line: 99, baseType: !43, size: 32, offset: 224)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !95, file: !22, line: 100, baseType: !103, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !95, file: !22, line: 101, baseType: !108, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !110, line: 133, size: 384, elements: !111)
!110 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!111 = !{!112, !113, !114, !115, !116, !125, !126, !127, !128}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !109, file: !110, line: 134, baseType: !61, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !109, file: !110, line: 135, baseType: !33, size: 8, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !109, file: !110, line: 136, baseType: !33, size: 8, offset: 72)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !109, file: !110, line: 137, baseType: !65, size: 16, offset: 80)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !109, file: !110, line: 138, baseType: !117, size: 32, offset: 96)
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !118, line: 328, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!119 = !{!120, !121}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !117, file: !118, line: 329, baseType: !43, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !117, file: !118, line: 330, baseType: !122, size: 32)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 32, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 4)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !109, file: !110, line: 139, baseType: !108, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !109, file: !110, line: 140, baseType: !108, size: 64, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !109, file: !110, line: 141, baseType: !108, size: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !109, file: !110, line: 142, baseType: !129, size: 16, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !39, line: 445, baseType: !65)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !55, file: !22, line: 374, baseType: !131, size: 384)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !22, line: 104, size: 384, elements: !132)
!132 = !{!133, !134, !135, !136, !137, !138, !139, !141, !142, !143}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !131, file: !22, line: 105, baseType: !61, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !131, file: !22, line: 105, baseType: !33, size: 8, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !131, file: !22, line: 105, baseType: !33, size: 8, offset: 72)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !131, file: !22, line: 105, baseType: !65, size: 16, offset: 80)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !22, line: 105, baseType: !33, size: 8, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !131, file: !22, line: 105, baseType: !108, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !131, file: !22, line: 106, baseType: !140, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !131, file: !22, line: 107, baseType: !103, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !131, file: !22, line: 108, baseType: !43, size: 32, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !131, file: !22, line: 109, baseType: !43, size: 32, offset: 352)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !55, file: !22, line: 375, baseType: !145, size: 192)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !22, line: 118, size: 192, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !152}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !145, file: !22, line: 119, baseType: !61, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !145, file: !22, line: 119, baseType: !33, size: 8, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !145, file: !22, line: 119, baseType: !33, size: 8, offset: 72)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !145, file: !22, line: 119, baseType: !65, size: 16, offset: 80)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !145, file: !22, line: 119, baseType: !33, size: 8, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !145, file: !22, line: 119, baseType: !52, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !55, file: !22, line: 376, baseType: !154, size: 448)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !22, line: 144, size: 448, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !464, !465, !466}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !154, file: !22, line: 145, baseType: !61, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !154, file: !22, line: 145, baseType: !33, size: 8, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !154, file: !22, line: 145, baseType: !33, size: 8, offset: 72)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !154, file: !22, line: 145, baseType: !65, size: 16, offset: 80)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !154, file: !22, line: 145, baseType: !33, size: 8, offset: 96)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !154, file: !22, line: 145, baseType: !33, size: 8, offset: 104)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !154, file: !22, line: 146, baseType: !33, size: 8, offset: 112)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !154, file: !22, line: 147, baseType: !33, size: 8, offset: 120)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !154, file: !22, line: 148, baseType: !61, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !154, file: !22, line: 149, baseType: !61, size: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !154, file: !22, line: 150, baseType: !103, size: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !154, file: !22, line: 154, baseType: !168, size: 64, offset: 320)
!168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !154, file: !22, line: 151, size: 64, elements: !169)
!169 = !{!170, !463}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !168, file: !22, line: 152, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !110, line: 248, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !39, line: 421, baseType: !43)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !178, line: 37, size: 9024, elements: !179)
!178 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!179 = !{!180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !409, !410, !411, !412, !413, !417, !419, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !446, !447, !448, !449, !450, !451, !452, !453, !455, !461}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !177, file: !178, line: 38, baseType: !176, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !177, file: !178, line: 39, baseType: !33, size: 8, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !177, file: !178, line: 40, baseType: !33, size: 8, offset: 72)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !177, file: !178, line: 41, baseType: !65, size: 16, offset: 80)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !177, file: !178, line: 42, baseType: !33, size: 8, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !177, file: !178, line: 43, baseType: !33, size: 8, offset: 104)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !177, file: !178, line: 44, baseType: !33, size: 8, offset: 112)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !177, file: !178, line: 45, baseType: !129, size: 16, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !177, file: !178, line: 46, baseType: !33, size: 8, offset: 144)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !177, file: !178, line: 47, baseType: !33, size: 8, offset: 152)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !177, file: !178, line: 48, baseType: !33, size: 8, offset: 160)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !177, file: !178, line: 49, baseType: !33, size: 8, offset: 168)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !177, file: !178, line: 50, baseType: !33, size: 8, offset: 176)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !177, file: !178, line: 51, baseType: !33, size: 8, offset: 184)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !177, file: !178, line: 52, baseType: !33, size: 8, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !177, file: !178, line: 53, baseType: !33, size: 8, offset: 200)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !177, file: !178, line: 54, baseType: !103, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !177, file: !178, line: 55, baseType: !43, size: 32, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !177, file: !178, line: 56, baseType: !43, size: 32, offset: 352)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !177, file: !178, line: 57, baseType: !43, size: 32, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !177, file: !178, line: 58, baseType: !43, size: 32, offset: 416)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !177, file: !178, line: 60, baseType: !202, size: 640, offset: 448)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !110, line: 909, size: 640, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !290, !291, !407, !408}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !202, file: !110, line: 910, baseType: !103, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !202, file: !110, line: 911, baseType: !103, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !202, file: !110, line: 912, baseType: !103, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !202, file: !110, line: 913, baseType: !103, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !202, file: !110, line: 914, baseType: !103, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !202, file: !110, line: 915, baseType: !210, size: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !110, line: 891, size: 1600, elements: !212)
!212 = !{!213, !233, !249}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !211, file: !110, line: 892, baseType: !214, size: 448)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !110, line: 844, size: 448, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !232}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !214, file: !110, line: 845, baseType: !210, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !214, file: !110, line: 845, baseType: !33, size: 8, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !214, file: !110, line: 845, baseType: !33, size: 8, offset: 72)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !214, file: !110, line: 845, baseType: !65, size: 16, offset: 80)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !214, file: !110, line: 845, baseType: !103, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !214, file: !110, line: 845, baseType: !210, size: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !214, file: !110, line: 845, baseType: !108, size: 64, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !214, file: !110, line: 845, baseType: !224, size: 64, offset: 320)
!224 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !110, line: 732, size: 64, elements: !225)
!225 = !{!226, !227, !228, !229, !230, !231}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !224, file: !110, line: 733, baseType: !40, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !224, file: !110, line: 734, baseType: !43, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !224, file: !110, line: 735, baseType: !91, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !224, file: !110, line: 736, baseType: !103, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !224, file: !110, line: 737, baseType: !91, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !224, file: !110, line: 738, baseType: !210, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !214, file: !110, line: 845, baseType: !33, size: 8, offset: 384)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !211, file: !110, line: 893, baseType: !234, size: 640)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !110, line: 851, size: 640, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !234, file: !110, line: 852, baseType: !210, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !234, file: !110, line: 852, baseType: !33, size: 8, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !234, file: !110, line: 852, baseType: !33, size: 8, offset: 72)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !234, file: !110, line: 852, baseType: !65, size: 16, offset: 80)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !234, file: !110, line: 852, baseType: !103, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !234, file: !110, line: 852, baseType: !210, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !234, file: !110, line: 852, baseType: !108, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !234, file: !110, line: 852, baseType: !224, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !234, file: !110, line: 852, baseType: !33, size: 8, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !234, file: !110, line: 852, baseType: !91, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !234, file: !110, line: 853, baseType: !103, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !234, file: !110, line: 854, baseType: !43, size: 32, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !234, file: !110, line: 855, baseType: !43, size: 32, offset: 608)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !211, file: !110, line: 894, baseType: !250, size: 1600)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !110, line: 862, size: 1600, elements: !251)
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !250, file: !110, line: 863, baseType: !210, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !250, file: !110, line: 863, baseType: !33, size: 8, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !250, file: !110, line: 863, baseType: !33, size: 8, offset: 72)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !250, file: !110, line: 863, baseType: !65, size: 16, offset: 80)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !250, file: !110, line: 863, baseType: !103, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !250, file: !110, line: 863, baseType: !210, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !250, file: !110, line: 863, baseType: !108, size: 64, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !250, file: !110, line: 863, baseType: !224, size: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !250, file: !110, line: 863, baseType: !33, size: 8, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !250, file: !110, line: 863, baseType: !210, size: 64, offset: 448)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !250, file: !110, line: 864, baseType: !210, size: 64, offset: 512)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !250, file: !110, line: 865, baseType: !91, size: 64, offset: 576)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !250, file: !110, line: 866, baseType: !33, size: 8, offset: 640)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !250, file: !110, line: 867, baseType: !91, size: 64, offset: 704)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !250, file: !110, line: 868, baseType: !91, size: 64, offset: 768)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !250, file: !110, line: 869, baseType: !91, size: 64, offset: 832)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !250, file: !110, line: 870, baseType: !122, size: 32, offset: 896)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !250, file: !110, line: 871, baseType: !43, size: 32, offset: 928)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !250, file: !110, line: 872, baseType: !43, size: 32, offset: 960)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !250, file: !110, line: 873, baseType: !43, size: 32, offset: 992)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !250, file: !110, line: 874, baseType: !43, size: 32, offset: 1024)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !250, file: !110, line: 875, baseType: !43, size: 32, offset: 1056)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !250, file: !110, line: 876, baseType: !43, size: 32, offset: 1088)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !250, file: !110, line: 877, baseType: !43, size: 32, offset: 1120)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !250, file: !110, line: 878, baseType: !43, size: 32, offset: 1152)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !250, file: !110, line: 879, baseType: !43, size: 32, offset: 1184)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !250, file: !110, line: 880, baseType: !43, size: 32, offset: 1216)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !250, file: !110, line: 881, baseType: !43, size: 32, offset: 1248)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !250, file: !110, line: 882, baseType: !43, size: 32, offset: 1280)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !250, file: !110, line: 883, baseType: !43, size: 32, offset: 1312)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !250, file: !110, line: 884, baseType: !65, size: 16, offset: 1344)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !250, file: !110, line: 885, baseType: !33, size: 8, offset: 1360)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !250, file: !110, line: 886, baseType: !33, size: 8, offset: 1368)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !250, file: !110, line: 887, baseType: !33, size: 8, offset: 1376)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !250, file: !110, line: 888, baseType: !287, size: 160, offset: 1384)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 160, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 20)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !202, file: !110, line: 916, baseType: !108, size: 64, offset: 384)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !202, file: !110, line: 917, baseType: !292, size: 64, offset: 448)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !110, line: 679, size: 640, elements: !294)
!294 = !{!295, !303, !316, !325, !334, !347, !361, !373, !385}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !293, file: !110, line: 680, baseType: !296, size: 128)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !110, line: 575, size: 128, elements: !297)
!297 = !{!298, !299, !300, !301, !302}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !110, line: 576, baseType: !52, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !296, file: !110, line: 576, baseType: !33, size: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !110, line: 576, baseType: !33, size: 8, offset: 72)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !296, file: !110, line: 576, baseType: !65, size: 16, offset: 80)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !296, file: !110, line: 576, baseType: !65, size: 16, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !293, file: !110, line: 681, baseType: !304, size: 384)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !110, line: 604, size: 384, elements: !305)
!305 = !{!306, !307, !308, !309, !310, !311, !312, !313, !314, !315}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !304, file: !110, line: 605, baseType: !52, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !304, file: !110, line: 605, baseType: !33, size: 8, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !110, line: 605, baseType: !33, size: 8, offset: 72)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !304, file: !110, line: 605, baseType: !65, size: 16, offset: 80)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !304, file: !110, line: 605, baseType: !65, size: 16, offset: 96)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !304, file: !110, line: 606, baseType: !65, size: 16, offset: 112)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !304, file: !110, line: 607, baseType: !210, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !304, file: !110, line: 608, baseType: !103, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !304, file: !110, line: 609, baseType: !103, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !304, file: !110, line: 610, baseType: !40, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !293, file: !110, line: 682, baseType: !317, size: 192)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !110, line: 582, size: 192, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !110, line: 583, baseType: !52, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !317, file: !110, line: 583, baseType: !33, size: 8, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !110, line: 583, baseType: !33, size: 8, offset: 72)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !317, file: !110, line: 583, baseType: !65, size: 16, offset: 80)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !317, file: !110, line: 583, baseType: !65, size: 16, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !317, file: !110, line: 584, baseType: !61, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !293, file: !110, line: 683, baseType: !326, size: 192)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !110, line: 616, size: 192, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !110, line: 617, baseType: !52, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !326, file: !110, line: 617, baseType: !33, size: 8, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !326, file: !110, line: 617, baseType: !33, size: 8, offset: 72)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !326, file: !110, line: 617, baseType: !65, size: 16, offset: 80)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !326, file: !110, line: 617, baseType: !65, size: 16, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !326, file: !110, line: 618, baseType: !108, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !293, file: !110, line: 684, baseType: !335, size: 448)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !110, line: 621, size: 448, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !345, !346}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !335, file: !110, line: 622, baseType: !52, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !335, file: !110, line: 622, baseType: !33, size: 8, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !110, line: 622, baseType: !33, size: 8, offset: 72)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !335, file: !110, line: 622, baseType: !65, size: 16, offset: 80)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !335, file: !110, line: 622, baseType: !65, size: 16, offset: 96)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !335, file: !110, line: 623, baseType: !43, size: 32, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !335, file: !110, line: 624, baseType: !210, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !335, file: !110, line: 625, baseType: !103, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !335, file: !110, line: 626, baseType: !103, size: 64, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !335, file: !110, line: 627, baseType: !43, size: 32, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !293, file: !110, line: 685, baseType: !348, size: 512)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !110, line: 590, size: 512, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !110, line: 591, baseType: !52, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !348, file: !110, line: 591, baseType: !33, size: 8, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !110, line: 591, baseType: !33, size: 8, offset: 72)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !348, file: !110, line: 591, baseType: !65, size: 16, offset: 80)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !348, file: !110, line: 591, baseType: !65, size: 16, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !348, file: !110, line: 592, baseType: !43, size: 32, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !348, file: !110, line: 593, baseType: !61, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !348, file: !110, line: 594, baseType: !61, size: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !348, file: !110, line: 595, baseType: !176, size: 64, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !348, file: !110, line: 596, baseType: !52, size: 64, offset: 384)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !348, file: !110, line: 597, baseType: !43, size: 32, offset: 448)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !293, file: !110, line: 686, baseType: !362, size: 320)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !110, line: 634, size: 320, elements: !363)
!363 = !{!364, !365, !366, !367, !368, !369, !370, !371, !372}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !362, file: !110, line: 635, baseType: !52, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !362, file: !110, line: 635, baseType: !33, size: 8, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !362, file: !110, line: 635, baseType: !33, size: 8, offset: 72)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !362, file: !110, line: 635, baseType: !65, size: 16, offset: 80)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !362, file: !110, line: 635, baseType: !65, size: 16, offset: 96)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !362, file: !110, line: 636, baseType: !33, size: 8, offset: 112)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !362, file: !110, line: 637, baseType: !176, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !362, file: !110, line: 638, baseType: !61, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !362, file: !110, line: 639, baseType: !40, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !293, file: !110, line: 687, baseType: !374, size: 640)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !110, line: 646, size: 640, elements: !375)
!375 = !{!376, !377, !378, !379, !380, !381}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !374, file: !110, line: 647, baseType: !52, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !374, file: !110, line: 647, baseType: !33, size: 8, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !374, file: !110, line: 647, baseType: !33, size: 8, offset: 72)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !374, file: !110, line: 647, baseType: !65, size: 16, offset: 80)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !374, file: !110, line: 647, baseType: !65, size: 16, offset: 96)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !374, file: !110, line: 648, baseType: !382, size: 512, offset: 128)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 512, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 8)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !293, file: !110, line: 688, baseType: !386, size: 320)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !110, line: 669, size: 320, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393, !394, !395, !396}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !386, file: !110, line: 670, baseType: !52, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !386, file: !110, line: 670, baseType: !33, size: 8, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !110, line: 670, baseType: !33, size: 8, offset: 72)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !386, file: !110, line: 670, baseType: !65, size: 16, offset: 80)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !386, file: !110, line: 670, baseType: !65, size: 16, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !386, file: !110, line: 671, baseType: !33, size: 8, offset: 112)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !386, file: !110, line: 672, baseType: !108, size: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !386, file: !110, line: 673, baseType: !61, size: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !386, file: !110, line: 674, baseType: !397, size: 64, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !110, line: 660, size: 128, elements: !399)
!399 = !{!400, !406}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !398, file: !110, line: 661, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !39, line: 1061, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !405, !43, !52}
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !39, line: 424, baseType: !52)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !398, file: !110, line: 662, baseType: !52, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !202, file: !110, line: 918, baseType: !210, size: 64, offset: 512)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !202, file: !110, line: 919, baseType: !43, size: 32, offset: 576)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !177, file: !178, line: 61, baseType: !43, size: 32, offset: 1088)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !177, file: !178, line: 62, baseType: !43, size: 32, offset: 1120)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !177, file: !178, line: 63, baseType: !65, size: 16, offset: 1152)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !177, file: !178, line: 64, baseType: !33, size: 8, offset: 1168)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !177, file: !178, line: 66, baseType: !414, size: 2688, offset: 1216)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 2688, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 7)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !177, file: !178, line: 67, baseType: !418, size: 3072, offset: 3904)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 3072, elements: !383)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !177, file: !178, line: 68, baseType: !420, size: 576, offset: 6976)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 576, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 9)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !177, file: !178, line: 69, baseType: !140, size: 64, offset: 7552)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !177, file: !178, line: 71, baseType: !103, size: 64, offset: 7616)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !177, file: !178, line: 72, baseType: !140, size: 64, offset: 7680)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !177, file: !178, line: 73, baseType: !292, size: 64, offset: 7744)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !177, file: !178, line: 74, baseType: !108, size: 64, offset: 7808)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !177, file: !178, line: 75, baseType: !61, size: 64, offset: 7872)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !177, file: !178, line: 76, baseType: !108, size: 64, offset: 7936)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !177, file: !178, line: 77, baseType: !210, size: 64, offset: 8000)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !177, file: !178, line: 78, baseType: !61, size: 64, offset: 8064)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !177, file: !178, line: 79, baseType: !108, size: 64, offset: 8128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !177, file: !178, line: 80, baseType: !91, size: 64, offset: 8192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !177, file: !178, line: 81, baseType: !210, size: 64, offset: 8256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !177, file: !178, line: 82, baseType: !436, size: 64, offset: 8320)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !110, line: 718, size: 128, elements: !439)
!439 = !{!440, !441, !442, !443, !444, !445}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !438, file: !110, line: 722, baseType: !43, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !438, file: !110, line: 723, baseType: !43, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !438, file: !110, line: 724, baseType: !65, size: 16, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !438, file: !110, line: 725, baseType: !33, size: 8, offset: 80)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !438, file: !110, line: 726, baseType: !33, size: 8, offset: 88)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !438, file: !110, line: 727, baseType: !33, size: 8, offset: 96)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !177, file: !178, line: 83, baseType: !210, size: 64, offset: 8384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !177, file: !178, line: 84, baseType: !61, size: 64, offset: 8448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !177, file: !178, line: 85, baseType: !292, size: 64, offset: 8512)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !177, file: !178, line: 86, baseType: !61, size: 64, offset: 8576)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !177, file: !178, line: 87, baseType: !292, size: 64, offset: 8640)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !177, file: !178, line: 88, baseType: !210, size: 64, offset: 8704)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !177, file: !178, line: 89, baseType: !210, size: 64, offset: 8768)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !177, file: !178, line: 90, baseType: !454, size: 64, offset: 8832)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !177, file: !178, line: 91, baseType: !456, size: 64, offset: 8896)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !110, line: 652, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!175, !176, !460}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !177, file: !178, line: 92, baseType: !462, size: 64, offset: 8960)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !110, line: 656, baseType: !172)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !168, file: !22, line: 153, baseType: !61, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !154, file: !22, line: 156, baseType: !43, size: 32, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !154, file: !22, line: 157, baseType: !129, size: 16, offset: 416)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !154, file: !22, line: 158, baseType: !33, size: 8, offset: 432)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !55, file: !22, line: 377, baseType: !468, size: 576)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !22, line: 122, size: 576, elements: !469)
!469 = !{!470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !468, file: !22, line: 123, baseType: !61, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !468, file: !22, line: 123, baseType: !33, size: 8, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !468, file: !22, line: 123, baseType: !33, size: 8, offset: 72)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !468, file: !22, line: 123, baseType: !65, size: 16, offset: 80)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !468, file: !22, line: 123, baseType: !33, size: 8, offset: 96)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !468, file: !22, line: 123, baseType: !33, size: 8, offset: 104)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !468, file: !22, line: 124, baseType: !65, size: 16, offset: 112)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !468, file: !22, line: 125, baseType: !52, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !468, file: !22, line: 126, baseType: !40, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !468, file: !22, line: 127, baseType: !454, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !468, file: !22, line: 128, baseType: !61, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !468, file: !22, line: 129, baseType: !61, size: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !468, file: !22, line: 130, baseType: !108, size: 64, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !468, file: !22, line: 131, baseType: !33, size: 8, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !55, file: !22, line: 378, baseType: !485, size: 512)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !22, line: 134, size: 512, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !498, !499}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !485, file: !22, line: 135, baseType: !61, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !22, line: 135, baseType: !33, size: 8, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !22, line: 135, baseType: !33, size: 8, offset: 72)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !485, file: !22, line: 135, baseType: !65, size: 16, offset: 80)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !22, line: 135, baseType: !33, size: 8, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !485, file: !22, line: 135, baseType: !33, size: 8, offset: 104)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !485, file: !22, line: 136, baseType: !108, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !485, file: !22, line: 137, baseType: !61, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !485, file: !22, line: 138, baseType: !61, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !485, file: !22, line: 139, baseType: !497, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !39, line: 129, baseType: !40)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !485, file: !22, line: 140, baseType: !43, size: 32, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !485, file: !22, line: 141, baseType: !52, size: 64, offset: 448)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !55, file: !22, line: 379, baseType: !501, size: 320)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !22, line: 185, size: 320, elements: !502)
!502 = !{!503, !504, !505, !506, !507, !508, !512}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !501, file: !22, line: 186, baseType: !61, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !501, file: !22, line: 186, baseType: !33, size: 8, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !501, file: !22, line: 186, baseType: !33, size: 8, offset: 72)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !501, file: !22, line: 186, baseType: !65, size: 16, offset: 80)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !501, file: !22, line: 186, baseType: !33, size: 8, offset: 96)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !501, file: !22, line: 186, baseType: !509, size: 128, offset: 128)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 128, elements: !510)
!510 = !{!511}
!511 = !DISubrange(count: 2)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !501, file: !22, line: 186, baseType: !61, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !55, file: !22, line: 380, baseType: !514, size: 384)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !22, line: 188, size: 384, elements: !515)
!515 = !{!516, !517, !518, !519, !520, !521, !522, !523}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !514, file: !22, line: 189, baseType: !61, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !514, file: !22, line: 189, baseType: !33, size: 8, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !514, file: !22, line: 189, baseType: !33, size: 8, offset: 72)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !514, file: !22, line: 189, baseType: !65, size: 16, offset: 80)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !514, file: !22, line: 189, baseType: !33, size: 8, offset: 96)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !514, file: !22, line: 190, baseType: !509, size: 128, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !514, file: !22, line: 190, baseType: !61, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !514, file: !22, line: 190, baseType: !524, size: 64, offset: 320)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !110, line: 480, size: 576, elements: !526)
!526 = !{!527, !528, !529, !530, !538, !553, !585, !586, !587, !588, !589, !590}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !525, file: !110, line: 481, baseType: !108, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !525, file: !110, line: 482, baseType: !524, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !525, file: !110, line: 483, baseType: !524, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !525, file: !110, line: 484, baseType: !531, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !110, line: 497, size: 256, elements: !533)
!533 = !{!534, !535, !536, !537}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !532, file: !110, line: 498, baseType: !531, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !532, file: !110, line: 499, baseType: !531, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !532, file: !110, line: 500, baseType: !524, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !532, file: !110, line: 501, baseType: !43, size: 32, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !525, file: !110, line: 485, baseType: !539, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !110, line: 466, size: 320, elements: !541)
!541 = !{!542, !547, !548, !549, !550, !551, !552}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !540, file: !110, line: 467, baseType: !543, size: 128)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !110, line: 459, size: 128, elements: !544)
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !543, file: !110, line: 460, baseType: !33, size: 8)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !543, file: !110, line: 461, baseType: !40, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !540, file: !110, line: 468, baseType: !543, size: 128, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !540, file: !110, line: 469, baseType: !65, size: 16, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !540, file: !110, line: 470, baseType: !33, size: 8, offset: 272)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !540, file: !110, line: 471, baseType: !33, size: 8, offset: 280)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !540, file: !110, line: 472, baseType: !33, size: 8, offset: 288)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !540, file: !110, line: 473, baseType: !33, size: 8, offset: 296)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !525, file: !110, line: 486, baseType: !554, size: 64, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !110, line: 448, size: 192, elements: !556)
!556 = !{!557, !580, !581, !582, !583, !584}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !555, file: !110, line: 449, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !110, line: 438, size: 64, elements: !559)
!559 = !{!560, !561, !574}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !558, file: !110, line: 439, baseType: !108, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !558, file: !110, line: 440, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !110, line: 419, size: 256, elements: !564)
!564 = !{!565, !570, !571, !572, !573}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !563, file: !110, line: 420, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !39, line: 1058, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!43, !405, !43, !52}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !563, file: !110, line: 421, baseType: !52, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !563, file: !110, line: 422, baseType: !108, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !563, file: !110, line: 423, baseType: !33, size: 8, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !563, file: !110, line: 424, baseType: !33, size: 8, offset: 200)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !558, file: !110, line: 441, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !110, line: 429, size: 128, elements: !577)
!577 = !{!578, !579}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !576, file: !110, line: 430, baseType: !108, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !576, file: !110, line: 431, baseType: !575, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !555, file: !110, line: 450, baseType: !539, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !555, file: !110, line: 451, baseType: !33, size: 8, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !555, file: !110, line: 452, baseType: !33, size: 8, offset: 136)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !555, file: !110, line: 453, baseType: !33, size: 8, offset: 144)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !555, file: !110, line: 454, baseType: !33, size: 8, offset: 152)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !525, file: !110, line: 487, baseType: !40, size: 64, offset: 384)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !525, file: !110, line: 488, baseType: !43, size: 32, offset: 448)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !525, file: !110, line: 489, baseType: !65, size: 16, offset: 480)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !525, file: !110, line: 490, baseType: !65, size: 16, offset: 496)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !525, file: !110, line: 491, baseType: !33, size: 8, offset: 512)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !525, file: !110, line: 492, baseType: !33, size: 8, offset: 520)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !55, file: !22, line: 381, baseType: !592, size: 384)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !22, line: 193, size: 384, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !600, !601, !602}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !592, file: !22, line: 194, baseType: !61, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !592, file: !22, line: 194, baseType: !33, size: 8, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !592, file: !22, line: 194, baseType: !33, size: 8, offset: 72)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !592, file: !22, line: 194, baseType: !65, size: 16, offset: 80)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !592, file: !22, line: 194, baseType: !33, size: 8, offset: 96)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !592, file: !22, line: 194, baseType: !509, size: 128, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !592, file: !22, line: 194, baseType: !61, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !592, file: !22, line: 194, baseType: !43, size: 32, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !592, file: !22, line: 195, baseType: !43, size: 32, offset: 352)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !55, file: !22, line: 382, baseType: !604, size: 384)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !22, line: 198, size: 384, elements: !605)
!605 = !{!606, !607, !608, !609, !610, !611, !612, !613, !614, !615}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !604, file: !22, line: 199, baseType: !61, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !604, file: !22, line: 199, baseType: !33, size: 8, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !604, file: !22, line: 199, baseType: !33, size: 8, offset: 72)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !604, file: !22, line: 199, baseType: !65, size: 16, offset: 80)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !604, file: !22, line: 199, baseType: !33, size: 8, offset: 96)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !604, file: !22, line: 201, baseType: !33, size: 8, offset: 104)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !604, file: !22, line: 202, baseType: !33, size: 8, offset: 112)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !604, file: !22, line: 203, baseType: !509, size: 128, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !604, file: !22, line: 203, baseType: !61, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !604, file: !22, line: 203, baseType: !616, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !39, line: 128, baseType: !40)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !55, file: !22, line: 383, baseType: !618, size: 320)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !22, line: 206, size: 320, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !626}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !618, file: !22, line: 207, baseType: !61, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !618, file: !22, line: 207, baseType: !33, size: 8, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !618, file: !22, line: 207, baseType: !33, size: 8, offset: 72)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !618, file: !22, line: 207, baseType: !65, size: 16, offset: 80)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !618, file: !22, line: 207, baseType: !33, size: 8, offset: 96)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !618, file: !22, line: 207, baseType: !509, size: 128, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !618, file: !22, line: 207, baseType: !61, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !55, file: !22, line: 384, baseType: !628, size: 384)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !22, line: 234, size: 384, elements: !629)
!629 = !{!630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !628, file: !22, line: 235, baseType: !61, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !628, file: !22, line: 235, baseType: !33, size: 8, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !628, file: !22, line: 235, baseType: !33, size: 8, offset: 72)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !628, file: !22, line: 235, baseType: !65, size: 16, offset: 80)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !628, file: !22, line: 235, baseType: !33, size: 8, offset: 96)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !628, file: !22, line: 235, baseType: !33, size: 8, offset: 104)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !628, file: !22, line: 235, baseType: !33, size: 8, offset: 112)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !628, file: !22, line: 235, baseType: !33, size: 8, offset: 120)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !628, file: !22, line: 235, baseType: !108, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !628, file: !22, line: 235, baseType: !43, size: 32, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !628, file: !22, line: 235, baseType: !43, size: 32, offset: 224)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !628, file: !22, line: 235, baseType: !43, size: 32, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !628, file: !22, line: 235, baseType: !33, size: 8, offset: 288)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !628, file: !22, line: 235, baseType: !33, size: 8, offset: 296)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !628, file: !22, line: 235, baseType: !61, size: 64, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !55, file: !22, line: 385, baseType: !646, size: 576)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !22, line: 238, size: 576, elements: !647)
!647 = !{!648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !646, file: !22, line: 239, baseType: !61, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !646, file: !22, line: 239, baseType: !33, size: 8, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !646, file: !22, line: 239, baseType: !33, size: 8, offset: 72)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !646, file: !22, line: 239, baseType: !65, size: 16, offset: 80)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !646, file: !22, line: 239, baseType: !33, size: 8, offset: 96)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !646, file: !22, line: 239, baseType: !33, size: 8, offset: 104)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !646, file: !22, line: 239, baseType: !33, size: 8, offset: 112)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !646, file: !22, line: 239, baseType: !33, size: 8, offset: 120)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !646, file: !22, line: 239, baseType: !108, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !646, file: !22, line: 239, baseType: !43, size: 32, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !646, file: !22, line: 239, baseType: !43, size: 32, offset: 224)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !646, file: !22, line: 239, baseType: !43, size: 32, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !646, file: !22, line: 239, baseType: !33, size: 8, offset: 288)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !646, file: !22, line: 239, baseType: !33, size: 8, offset: 296)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !646, file: !22, line: 239, baseType: !65, size: 16, offset: 304)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !646, file: !22, line: 240, baseType: !61, size: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !646, file: !22, line: 241, baseType: !103, size: 64, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !646, file: !22, line: 242, baseType: !65, size: 16, offset: 448)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !646, file: !22, line: 243, baseType: !103, size: 64, offset: 512)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !55, file: !22, line: 386, baseType: !668, size: 384)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !22, line: 263, size: 384, elements: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !668, file: !22, line: 264, baseType: !61, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !668, file: !22, line: 264, baseType: !33, size: 8, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !668, file: !22, line: 264, baseType: !33, size: 8, offset: 72)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !668, file: !22, line: 264, baseType: !65, size: 16, offset: 80)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !22, line: 264, baseType: !33, size: 8, offset: 96)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !668, file: !22, line: 264, baseType: !33, size: 8, offset: 104)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !668, file: !22, line: 264, baseType: !33, size: 8, offset: 112)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !668, file: !22, line: 264, baseType: !33, size: 8, offset: 120)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !668, file: !22, line: 264, baseType: !108, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !668, file: !22, line: 264, baseType: !43, size: 32, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !668, file: !22, line: 264, baseType: !43, size: 32, offset: 224)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !668, file: !22, line: 264, baseType: !43, size: 32, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !668, file: !22, line: 264, baseType: !33, size: 8, offset: 288)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !668, file: !22, line: 264, baseType: !33, size: 8, offset: 296)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !668, file: !22, line: 264, baseType: !33, size: 8, offset: 304)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !668, file: !22, line: 265, baseType: !61, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !55, file: !22, line: 387, baseType: !687, size: 448)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !22, line: 246, size: 448, elements: !688)
!688 = !{!689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !687, file: !22, line: 247, baseType: !61, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !687, file: !22, line: 247, baseType: !33, size: 8, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !687, file: !22, line: 247, baseType: !33, size: 8, offset: 72)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !687, file: !22, line: 247, baseType: !65, size: 16, offset: 80)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !687, file: !22, line: 247, baseType: !33, size: 8, offset: 96)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !687, file: !22, line: 247, baseType: !33, size: 8, offset: 104)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !687, file: !22, line: 247, baseType: !33, size: 8, offset: 112)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !687, file: !22, line: 247, baseType: !33, size: 8, offset: 120)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !687, file: !22, line: 247, baseType: !108, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !687, file: !22, line: 247, baseType: !43, size: 32, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !687, file: !22, line: 247, baseType: !43, size: 32, offset: 224)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !687, file: !22, line: 247, baseType: !43, size: 32, offset: 256)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !687, file: !22, line: 247, baseType: !33, size: 8, offset: 288)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !687, file: !22, line: 247, baseType: !33, size: 8, offset: 296)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !687, file: !22, line: 247, baseType: !61, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !687, file: !22, line: 248, baseType: !61, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !55, file: !22, line: 388, baseType: !706, size: 448)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !22, line: 251, size: 448, elements: !707)
!707 = !{!708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !706, file: !22, line: 252, baseType: !61, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !706, file: !22, line: 252, baseType: !33, size: 8, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !706, file: !22, line: 252, baseType: !33, size: 8, offset: 72)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !706, file: !22, line: 252, baseType: !65, size: 16, offset: 80)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !706, file: !22, line: 252, baseType: !33, size: 8, offset: 96)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !706, file: !22, line: 252, baseType: !33, size: 8, offset: 104)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !706, file: !22, line: 252, baseType: !33, size: 8, offset: 112)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !706, file: !22, line: 252, baseType: !33, size: 8, offset: 120)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !706, file: !22, line: 252, baseType: !108, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !706, file: !22, line: 252, baseType: !43, size: 32, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !706, file: !22, line: 252, baseType: !43, size: 32, offset: 224)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !706, file: !22, line: 252, baseType: !43, size: 32, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !706, file: !22, line: 252, baseType: !33, size: 8, offset: 288)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !706, file: !22, line: 252, baseType: !33, size: 8, offset: 296)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !706, file: !22, line: 257, baseType: !61, size: 64, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !706, file: !22, line: 258, baseType: !61, size: 64, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !55, file: !22, line: 389, baseType: !725, size: 512)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !22, line: 274, size: 512, elements: !726)
!726 = !{!727, !728, !729, !730, !731, !732, !733, !734, !735, !736}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !725, file: !22, line: 275, baseType: !61, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !725, file: !22, line: 275, baseType: !33, size: 8, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !725, file: !22, line: 275, baseType: !33, size: 8, offset: 72)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !725, file: !22, line: 275, baseType: !65, size: 16, offset: 80)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !725, file: !22, line: 275, baseType: !33, size: 8, offset: 96)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !725, file: !22, line: 275, baseType: !108, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !725, file: !22, line: 276, baseType: !43, size: 32, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !725, file: !22, line: 277, baseType: !401, size: 64, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !725, file: !22, line: 278, baseType: !52, size: 64, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !725, file: !22, line: 279, baseType: !509, size: 128, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !55, file: !22, line: 390, baseType: !738, size: 576)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !22, line: 282, size: 576, elements: !739)
!739 = !{!740, !741, !742, !743, !744, !745, !746, !747, !753, !754, !755, !756, !762, !763}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !738, file: !22, line: 283, baseType: !61, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !738, file: !22, line: 283, baseType: !33, size: 8, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !738, file: !22, line: 283, baseType: !33, size: 8, offset: 72)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !738, file: !22, line: 283, baseType: !65, size: 16, offset: 80)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !738, file: !22, line: 283, baseType: !33, size: 8, offset: 96)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !738, file: !22, line: 283, baseType: !33, size: 8, offset: 104)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !738, file: !22, line: 284, baseType: !33, size: 8, offset: 112)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !738, file: !22, line: 285, baseType: !748, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !39, line: 1093, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!175, !43, !497, !43, !752, !52, !52}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !738, file: !22, line: 286, baseType: !108, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !738, file: !22, line: 287, baseType: !52, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !738, file: !22, line: 288, baseType: !52, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !738, file: !22, line: 289, baseType: !757, size: 64, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !39, line: 1126, baseType: !758)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!175, !405, !43, !52, !761}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !738, file: !22, line: 290, baseType: !61, size: 64, offset: 448)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !738, file: !22, line: 291, baseType: !61, size: 64, offset: 512)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !55, file: !22, line: 391, baseType: !765, size: 512)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !22, line: 309, size: 512, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !765, file: !22, line: 310, baseType: !61, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !765, file: !22, line: 310, baseType: !33, size: 8, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !765, file: !22, line: 310, baseType: !33, size: 8, offset: 72)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !765, file: !22, line: 310, baseType: !65, size: 16, offset: 80)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !765, file: !22, line: 310, baseType: !33, size: 8, offset: 96)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !765, file: !22, line: 310, baseType: !33, size: 8, offset: 104)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !765, file: !22, line: 311, baseType: !33, size: 8, offset: 112)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !765, file: !22, line: 312, baseType: !33, size: 8, offset: 120)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !765, file: !22, line: 313, baseType: !52, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !765, file: !22, line: 314, baseType: !108, size: 64, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !765, file: !22, line: 315, baseType: !140, size: 64, offset: 256)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !765, file: !22, line: 316, baseType: !103, size: 64, offset: 320)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !765, file: !22, line: 317, baseType: !103, size: 64, offset: 384)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !765, file: !22, line: 318, baseType: !43, size: 32, offset: 448)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !55, file: !22, line: 392, baseType: !782, size: 448)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !22, line: 342, size: 448, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789, !790, !791, !792, !793}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !782, file: !22, line: 343, baseType: !61, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !782, file: !22, line: 343, baseType: !33, size: 8, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !782, file: !22, line: 343, baseType: !33, size: 8, offset: 72)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !782, file: !22, line: 343, baseType: !65, size: 16, offset: 80)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !22, line: 343, baseType: !33, size: 8, offset: 96)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !782, file: !22, line: 343, baseType: !108, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !782, file: !22, line: 344, baseType: !108, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !782, file: !22, line: 345, baseType: !52, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !782, file: !22, line: 346, baseType: !103, size: 64, offset: 320)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !782, file: !22, line: 347, baseType: !43, size: 32, offset: 384)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !55, file: !22, line: 393, baseType: !795, size: 256)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !22, line: 352, size: 256, elements: !796)
!796 = !{!797, !798, !799, !800, !801, !802, !807}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !795, file: !22, line: 353, baseType: !61, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !795, file: !22, line: 353, baseType: !33, size: 8, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !795, file: !22, line: 353, baseType: !33, size: 8, offset: 72)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !795, file: !22, line: 353, baseType: !65, size: 16, offset: 80)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !795, file: !22, line: 353, baseType: !33, size: 8, offset: 96)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !795, file: !22, line: 353, baseType: !803, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !39, line: 1064, baseType: !804)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !405, !52}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !795, file: !22, line: 354, baseType: !52, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !55, file: !22, line: 394, baseType: !809, size: 192)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !22, line: 359, size: 192, elements: !810)
!810 = !{!811, !812, !813, !814, !815, !816}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !809, file: !22, line: 360, baseType: !61, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !809, file: !22, line: 360, baseType: !33, size: 8, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !809, file: !22, line: 360, baseType: !33, size: 8, offset: 72)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !809, file: !22, line: 360, baseType: !65, size: 16, offset: 80)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !809, file: !22, line: 360, baseType: !33, size: 8, offset: 96)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !809, file: !22, line: 360, baseType: !61, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !55, file: !22, line: 401, baseType: !109, size: 384)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !46, file: !22, line: 437, baseType: !109, size: 384)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !46, file: !22, line: 438, baseType: !211, size: 1600)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !821, line: 154, baseType: !7)
!821 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!822 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_info", file: !825, line: 134, size: 192, elements: !826)
!825 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!826 = !{!827, !828, !829, !830}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "free_space", scope: !824, file: !825, line: 135, baseType: !103, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !824, file: !825, line: 136, baseType: !38, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "object_space", scope: !824, file: !825, line: 137, baseType: !43, size: 32, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !824, file: !825, line: 138, baseType: !43, size: 32, offset: 160)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !821, line: 42, baseType: !822)
!832 = !{!833, !838, !843, !0, !848, !853, !858, !863}
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(scope: null, file: !3, line: 223, type: !835, isLocal: true, isDefinition: true)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 216, elements: !836)
!836 = !{!837}
!837 = !DISubrange(count: 27)
!838 = !DIGlobalVariableExpression(var: !839, expr: !DIExpression())
!839 = distinct !DIGlobalVariable(scope: null, file: !3, line: 361, type: !840, isLocal: true, isDefinition: true)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 320, elements: !841)
!841 = !{!842}
!842 = !DISubrange(count: 40)
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression())
!844 = distinct !DIGlobalVariable(scope: null, file: !3, line: 396, type: !845, isLocal: true, isDefinition: true)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 304, elements: !846)
!846 = !{!847}
!847 = !DISubrange(count: 38)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !850, isLocal: true, isDefinition: true)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 168, elements: !851)
!851 = !{!852}
!852 = !DISubrange(count: 21)
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression())
!854 = distinct !DIGlobalVariable(scope: null, file: !3, line: 454, type: !855, isLocal: true, isDefinition: true)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 560, elements: !856)
!856 = !{!857}
!857 = !DISubrange(count: 70)
!858 = !DIGlobalVariableExpression(var: !859, expr: !DIExpression())
!859 = distinct !DIGlobalVariable(scope: null, file: !3, line: 511, type: !860, isLocal: true, isDefinition: true)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 696, elements: !861)
!861 = !{!862}
!862 = !DISubrange(count: 87)
!863 = !DIGlobalVariableExpression(var: !864, expr: !DIExpression())
!864 = distinct !DIGlobalVariable(scope: null, file: !3, line: 524, type: !865, isLocal: true, isDefinition: true)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 608, elements: !866)
!866 = !{!867}
!867 = !DISubrange(count: 76)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !869, size: 72, elements: !421)
!869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!870 = !{i32 7, !"Dwarf Version", i32 5}
!871 = !{i32 2, !"Debug Info Version", i32 3}
!872 = !{i32 1, !"wchar_size", i32 2}
!873 = !{i32 8, !"cf-protection-branch", i32 1}
!874 = !{i32 4, !"function_return_thunk_extern", i32 1}
!875 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!876 = !{i32 1, !"Code Model", i32 2}
!877 = !{i32 1, !"override-stack-alignment", i32 8}
!878 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!879 = distinct !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !3, file: !3, line: 53, type: !880, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !884)
!880 = !DISubroutineType(types: !881)
!881 = !{!61, !882, !43, !43, !883}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !39, line: 644, baseType: !43)
!884 = !{!885, !886, !887, !888, !889, !890}
!885 = !DILocalVariable(name: "module_name", arg: 1, scope: !879, file: !3, line: 54, type: !882)
!886 = !DILocalVariable(name: "line_number", arg: 2, scope: !879, file: !3, line: 55, type: !43)
!887 = !DILocalVariable(name: "component_id", arg: 3, scope: !879, file: !3, line: 56, type: !43)
!888 = !DILocalVariable(name: "type", arg: 4, scope: !879, file: !3, line: 58, type: !883)
!889 = !DILocalVariable(name: "object", scope: !879, file: !3, line: 60, type: !61)
!890 = !DILocalVariable(name: "second_object", scope: !879, file: !3, line: 61, type: !61)
!891 = !DILocation(line: 54, column: 15, scope: !879)
!892 = !DILocation(line: 55, column: 18, scope: !879)
!893 = !DILocation(line: 56, column: 18, scope: !879)
!894 = !DILocation(line: 58, column: 14, scope: !879)
!895 = !DILocation(line: 60, column: 2, scope: !879)
!896 = !DILocation(line: 60, column: 29, scope: !879)
!897 = !DILocation(line: 61, column: 2, scope: !879)
!898 = !DILocation(line: 61, column: 29, scope: !879)
!899 = !DILocation(line: 69, column: 39, scope: !879)
!900 = !DILocation(line: 69, column: 52, scope: !879)
!901 = !DILocation(line: 70, column: 11, scope: !879)
!902 = !DILocation(line: 69, column: 6, scope: !879)
!903 = !DILocation(line: 68, column: 9, scope: !879)
!904 = !DILocation(line: 71, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !879, file: !3, line: 71, column: 6)
!906 = !DILocation(line: 71, column: 6, scope: !879)
!907 = !DILocation(line: 72, column: 3, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !3, line: 71, column: 15)
!909 = !DILocation(line: 74, column: 20, scope: !879)
!910 = !DILocation(line: 74, column: 2, scope: !879)
!911 = !DILocation(line: 76, column: 10, scope: !879)
!912 = !DILocation(line: 76, column: 2, scope: !879)
!913 = !DILocation(line: 84, column: 40, scope: !914)
!914 = distinct !DILexicalBlock(scope: !879, file: !3, line: 76, column: 16)
!915 = !DILocation(line: 84, column: 53, scope: !914)
!916 = !DILocation(line: 85, column: 12, scope: !914)
!917 = !DILocation(line: 84, column: 7, scope: !914)
!918 = !DILocation(line: 83, column: 17, scope: !914)
!919 = !DILocation(line: 86, column: 8, scope: !920)
!920 = distinct !DILexicalBlock(scope: !914, file: !3, line: 86, column: 7)
!921 = !DILocation(line: 86, column: 7, scope: !914)
!922 = !DILocation(line: 87, column: 31, scope: !923)
!923 = distinct !DILexicalBlock(scope: !920, file: !3, line: 86, column: 23)
!924 = !DILocation(line: 87, column: 4, scope: !923)
!925 = !DILocation(line: 88, column: 4, scope: !923)
!926 = !DILocation(line: 91, column: 3, scope: !914)
!927 = !DILocation(line: 91, column: 25, scope: !914)
!928 = !DILocation(line: 91, column: 30, scope: !914)
!929 = !DILocation(line: 92, column: 3, scope: !914)
!930 = !DILocation(line: 92, column: 25, scope: !914)
!931 = !DILocation(line: 92, column: 41, scope: !914)
!932 = !DILocation(line: 96, column: 32, scope: !914)
!933 = !DILocation(line: 96, column: 3, scope: !914)
!934 = !DILocation(line: 96, column: 18, scope: !914)
!935 = !DILocation(line: 96, column: 30, scope: !914)
!936 = !DILocation(line: 97, column: 3, scope: !914)
!937 = !DILocation(line: 102, column: 3, scope: !914)
!938 = !DILocation(line: 107, column: 29, scope: !879)
!939 = !DILocation(line: 107, column: 24, scope: !879)
!940 = !DILocation(line: 107, column: 2, scope: !879)
!941 = !DILocation(line: 107, column: 17, scope: !879)
!942 = !DILocation(line: 107, column: 22, scope: !879)
!943 = !DILocation(line: 111, column: 2, scope: !879)
!944 = !DILocation(line: 111, column: 17, scope: !879)
!945 = !DILocation(line: 111, column: 33, scope: !879)
!946 = !DILocation(line: 115, column: 2, scope: !879)
!947 = !DILocation(line: 116, column: 1, scope: !879)
!948 = distinct !DISubprogram(name: "acpi_ut_allocate_object_desc_dbg", scope: !3, file: !3, line: 352, type: !949, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !951)
!949 = !DISubroutineType(types: !950)
!950 = !{!52, !882, !43, !43}
!951 = !{!952, !953, !954, !955}
!952 = !DILocalVariable(name: "module_name", arg: 1, scope: !948, file: !3, line: 352, type: !882)
!953 = !DILocalVariable(name: "line_number", arg: 2, scope: !948, file: !3, line: 353, type: !43)
!954 = !DILocalVariable(name: "component_id", arg: 3, scope: !948, file: !3, line: 353, type: !43)
!955 = !DILocalVariable(name: "object", scope: !948, file: !3, line: 355, type: !61)
!956 = !DILocation(line: 352, column: 52, scope: !948)
!957 = !DILocation(line: 353, column: 16, scope: !948)
!958 = !DILocation(line: 353, column: 33, scope: !948)
!959 = !DILocation(line: 355, column: 2, scope: !948)
!960 = !DILocation(line: 355, column: 29, scope: !948)
!961 = !DILocation(line: 359, column: 34, scope: !948)
!962 = !DILocation(line: 359, column: 11, scope: !948)
!963 = !DILocation(line: 359, column: 9, scope: !948)
!964 = !DILocation(line: 360, column: 7, scope: !965)
!965 = distinct !DILexicalBlock(scope: !948, file: !3, line: 360, column: 6)
!966 = !DILocation(line: 360, column: 6, scope: !948)
!967 = !DILocation(line: 361, column: 3, scope: !968)
!968 = distinct !DILexicalBlock(scope: !965, file: !3, line: 360, column: 15)
!969 = !DILocation(line: 364, column: 3, scope: !968)
!970 = !DILocation(line: 369, column: 2, scope: !948)
!971 = !DILocation(line: 374, column: 2, scope: !948)
!972 = !DILocation(line: 375, column: 1, scope: !948)
!973 = distinct !DISubprogram(name: "kmemleak_not_leak", scope: !974, file: !974, line: 93, type: !975, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !979)
!974 = !DIFile(filename: "./include/linux/kmemleak.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f4ed42ee6c6e5d06af9997953e90d37")
!975 = !DISubroutineType(types: !976)
!976 = !{null, !977}
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!979 = !{!980}
!980 = !DILocalVariable(name: "ptr", arg: 1, scope: !973, file: !974, line: 93, type: !977)
!981 = !DILocation(line: 93, column: 50, scope: !973)
!982 = !DILocation(line: 95, column: 1, scope: !973)
!983 = distinct !DISubprogram(name: "acpi_ut_delete_object_desc", scope: !3, file: !3, line: 389, type: !984, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !986)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !61}
!986 = !{!987}
!987 = !DILocalVariable(name: "object", arg: 1, scope: !983, file: !3, line: 389, type: !61)
!988 = !DILocation(line: 389, column: 60, scope: !983)
!989 = !DILocation(line: 395, column: 6, scope: !990)
!990 = distinct !DILexicalBlock(scope: !983, file: !3, line: 395, column: 6)
!991 = !DILocation(line: 395, column: 39, scope: !990)
!992 = !DILocation(line: 395, column: 6, scope: !983)
!993 = !DILocation(line: 396, column: 3, scope: !994)
!994 = distinct !DILexicalBlock(scope: !990, file: !3, line: 395, column: 66)
!995 = !DILocation(line: 399, column: 3, scope: !994)
!996 = !DILocation(line: 402, column: 31, scope: !983)
!997 = !DILocation(line: 402, column: 55, scope: !983)
!998 = !DILocation(line: 402, column: 8, scope: !983)
!999 = !DILocation(line: 403, column: 2, scope: !983)
!1000 = !DILocation(line: 404, column: 1, scope: !983)
!1001 = distinct !DISubprogram(name: "acpi_ut_create_package_object", scope: !3, file: !3, line: 130, type: !1002, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1004)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!61, !43}
!1004 = !{!1005, !1006, !1007}
!1005 = !DILocalVariable(name: "count", arg: 1, scope: !1001, file: !3, line: 130, type: !43)
!1006 = !DILocalVariable(name: "package_desc", scope: !1001, file: !3, line: 132, type: !61)
!1007 = !DILocalVariable(name: "package_elements", scope: !1001, file: !3, line: 133, type: !140)
!1008 = !DILocation(line: 130, column: 62, scope: !1001)
!1009 = !DILocation(line: 132, column: 2, scope: !1001)
!1010 = !DILocation(line: 132, column: 29, scope: !1001)
!1011 = !DILocation(line: 133, column: 2, scope: !1001)
!1012 = !DILocation(line: 133, column: 30, scope: !1001)
!1013 = !DILocation(line: 139, column: 17, scope: !1001)
!1014 = !DILocation(line: 139, column: 15, scope: !1001)
!1015 = !DILocation(line: 140, column: 7, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 140, column: 6)
!1017 = !DILocation(line: 140, column: 6, scope: !1001)
!1018 = !DILocation(line: 141, column: 3, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 140, column: 21)
!1020 = !DILocation(line: 148, column: 21, scope: !1001)
!1021 = !DILocation(line: 148, column: 19, scope: !1001)
!1022 = !DILocation(line: 150, column: 7, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 150, column: 6)
!1024 = !DILocation(line: 150, column: 6, scope: !1001)
!1025 = !DILocation(line: 151, column: 3, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 150, column: 25)
!1027 = !DILocation(line: 152, column: 3, scope: !1026)
!1028 = !DILocation(line: 155, column: 32, scope: !1001)
!1029 = !DILocation(line: 155, column: 2, scope: !1001)
!1030 = !DILocation(line: 155, column: 24, scope: !1001)
!1031 = !DILocation(line: 155, column: 30, scope: !1001)
!1032 = !DILocation(line: 156, column: 35, scope: !1001)
!1033 = !DILocation(line: 156, column: 2, scope: !1001)
!1034 = !DILocation(line: 156, column: 24, scope: !1001)
!1035 = !DILocation(line: 156, column: 33, scope: !1001)
!1036 = !DILocation(line: 157, column: 2, scope: !1001)
!1037 = !DILocation(line: 158, column: 1, scope: !1001)
!1038 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1039, file: !1039, line: 55, type: !1040, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1042)
!1039 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!52, !38}
!1042 = !{!1043, !1044, !1046, !1049, !1050, !1053}
!1043 = !DILocalVariable(name: "size", arg: 1, scope: !1038, file: !1039, line: 55, type: !38)
!1044 = !DILocalVariable(name: "_flags", scope: !1045, file: !1039, line: 57, type: !822)
!1045 = distinct !DILexicalBlock(scope: !1038, file: !1039, line: 57, column: 23)
!1046 = !DILocalVariable(name: "__dummy", scope: !1047, file: !1039, line: 57, type: !822)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !1039, line: 57, column: 23)
!1048 = distinct !DILexicalBlock(scope: !1045, file: !1039, line: 57, column: 23)
!1049 = !DILocalVariable(name: "__dummy2", scope: !1047, file: !1039, line: 57, type: !822)
!1050 = !DILocalVariable(name: "__dummy", scope: !1051, file: !1039, line: 57, type: !822)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !1039, line: 57, column: 23)
!1052 = distinct !DILexicalBlock(scope: !1045, file: !1039, line: 57, column: 23)
!1053 = !DILocalVariable(name: "__dummy2", scope: !1051, file: !1039, line: 57, type: !822)
!1054 = !DILocation(line: 55, column: 55, scope: !1038)
!1055 = !DILocation(line: 57, column: 17, scope: !1038)
!1056 = !DILocation(line: 57, column: 23, scope: !1045)
!1057 = !DILocation(line: 57, column: 23, scope: !1047)
!1058 = !DILocation(line: 57, column: 23, scope: !1048)
!1059 = !DILocation(line: 57, column: 23, scope: !1051)
!1060 = !DILocation(line: 57, column: 23, scope: !1052)
!1061 = !DILocation(line: 57, column: 23, scope: !1038)
!1062 = !DILocation(line: 57, column: 9, scope: !1038)
!1063 = !DILocation(line: 57, column: 2, scope: !1038)
!1064 = distinct !DISubprogram(name: "acpi_os_free", scope: !1039, file: !1039, line: 60, type: !1065, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1067)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !52}
!1067 = !{!1068}
!1068 = !DILocalVariable(name: "memory", arg: 1, scope: !1064, file: !1039, line: 60, type: !52)
!1069 = !DILocation(line: 60, column: 39, scope: !1064)
!1070 = !DILocation(line: 62, column: 8, scope: !1064)
!1071 = !DILocation(line: 62, column: 2, scope: !1064)
!1072 = !DILocation(line: 63, column: 1, scope: !1064)
!1073 = distinct !DISubprogram(name: "acpi_ut_create_integer_object", scope: !3, file: !3, line: 172, type: !1074, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1076)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!61, !40}
!1076 = !{!1077, !1078}
!1077 = !DILocalVariable(name: "initial_value", arg: 1, scope: !1073, file: !3, line: 172, type: !40)
!1078 = !DILocalVariable(name: "integer_desc", scope: !1073, file: !3, line: 174, type: !61)
!1079 = !DILocation(line: 172, column: 62, scope: !1073)
!1080 = !DILocation(line: 174, column: 2, scope: !1073)
!1081 = !DILocation(line: 174, column: 29, scope: !1073)
!1082 = !DILocation(line: 180, column: 17, scope: !1073)
!1083 = !DILocation(line: 180, column: 15, scope: !1073)
!1084 = !DILocation(line: 181, column: 7, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 181, column: 6)
!1086 = !DILocation(line: 181, column: 6, scope: !1073)
!1087 = !DILocation(line: 182, column: 3, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 181, column: 21)
!1089 = !DILocation(line: 185, column: 32, scope: !1073)
!1090 = !DILocation(line: 185, column: 2, scope: !1073)
!1091 = !DILocation(line: 185, column: 24, scope: !1073)
!1092 = !DILocation(line: 185, column: 30, scope: !1073)
!1093 = !DILocation(line: 186, column: 2, scope: !1073)
!1094 = !DILocation(line: 187, column: 1, scope: !1073)
!1095 = distinct !DISubprogram(name: "acpi_ut_create_buffer_object", scope: !3, file: !3, line: 201, type: !1096, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1098)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!61, !38}
!1098 = !{!1099, !1100, !1101}
!1099 = !DILocalVariable(name: "buffer_size", arg: 1, scope: !1095, file: !3, line: 201, type: !38)
!1100 = !DILocalVariable(name: "buffer_desc", scope: !1095, file: !3, line: 203, type: !61)
!1101 = !DILocalVariable(name: "buffer", scope: !1095, file: !3, line: 204, type: !103)
!1102 = !DILocation(line: 201, column: 67, scope: !1095)
!1103 = !DILocation(line: 203, column: 2, scope: !1095)
!1104 = !DILocation(line: 203, column: 29, scope: !1095)
!1105 = !DILocation(line: 204, column: 2, scope: !1095)
!1106 = !DILocation(line: 204, column: 6, scope: !1095)
!1107 = !DILocation(line: 210, column: 16, scope: !1095)
!1108 = !DILocation(line: 210, column: 14, scope: !1095)
!1109 = !DILocation(line: 211, column: 7, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 211, column: 6)
!1111 = !DILocation(line: 211, column: 6, scope: !1095)
!1112 = !DILocation(line: 212, column: 3, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 211, column: 20)
!1114 = !DILocation(line: 217, column: 6, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 217, column: 6)
!1116 = !DILocation(line: 217, column: 18, scope: !1115)
!1117 = !DILocation(line: 217, column: 6, scope: !1095)
!1118 = !DILocation(line: 221, column: 12, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 217, column: 23)
!1120 = !DILocation(line: 221, column: 10, scope: !1119)
!1121 = !DILocation(line: 222, column: 8, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 222, column: 7)
!1123 = !DILocation(line: 222, column: 7, scope: !1119)
!1124 = !DILocation(line: 223, column: 4, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 222, column: 16)
!1126 = !DILocation(line: 226, column: 29, scope: !1125)
!1127 = !DILocation(line: 226, column: 4, scope: !1125)
!1128 = !DILocation(line: 227, column: 4, scope: !1125)
!1129 = !DILocation(line: 229, column: 2, scope: !1119)
!1130 = !DILocation(line: 233, column: 2, scope: !1095)
!1131 = !DILocation(line: 233, column: 22, scope: !1095)
!1132 = !DILocation(line: 233, column: 28, scope: !1095)
!1133 = !DILocation(line: 234, column: 32, scope: !1095)
!1134 = !DILocation(line: 234, column: 2, scope: !1095)
!1135 = !DILocation(line: 234, column: 22, scope: !1095)
!1136 = !DILocation(line: 234, column: 30, scope: !1095)
!1137 = !DILocation(line: 235, column: 37, scope: !1095)
!1138 = !DILocation(line: 235, column: 31, scope: !1095)
!1139 = !DILocation(line: 235, column: 2, scope: !1095)
!1140 = !DILocation(line: 235, column: 22, scope: !1095)
!1141 = !DILocation(line: 235, column: 29, scope: !1095)
!1142 = !DILocation(line: 239, column: 2, scope: !1095)
!1143 = !DILocation(line: 240, column: 1, scope: !1095)
!1144 = !DISubprogram(name: "acpi_error", scope: !1145, file: !1145, line: 901, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1145 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !882, !43, !882, null}
!1148 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !825, file: !825, line: 369, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1149 = distinct !DISubprogram(name: "acpi_ut_create_string_object", scope: !3, file: !3, line: 256, type: !1096, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1150)
!1150 = !{!1151, !1152, !1153}
!1151 = !DILocalVariable(name: "string_size", arg: 1, scope: !1149, file: !3, line: 256, type: !38)
!1152 = !DILocalVariable(name: "string_desc", scope: !1149, file: !3, line: 258, type: !61)
!1153 = !DILocalVariable(name: "string", scope: !1149, file: !3, line: 259, type: !91)
!1154 = !DILocation(line: 256, column: 67, scope: !1149)
!1155 = !DILocation(line: 258, column: 2, scope: !1149)
!1156 = !DILocation(line: 258, column: 29, scope: !1149)
!1157 = !DILocation(line: 259, column: 2, scope: !1149)
!1158 = !DILocation(line: 259, column: 8, scope: !1149)
!1159 = !DILocation(line: 265, column: 16, scope: !1149)
!1160 = !DILocation(line: 265, column: 14, scope: !1149)
!1161 = !DILocation(line: 266, column: 7, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 266, column: 6)
!1163 = !DILocation(line: 266, column: 6, scope: !1149)
!1164 = !DILocation(line: 267, column: 3, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 266, column: 20)
!1166 = !DILocation(line: 274, column: 11, scope: !1149)
!1167 = !DILocation(line: 274, column: 9, scope: !1149)
!1168 = !DILocation(line: 275, column: 7, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 275, column: 6)
!1170 = !DILocation(line: 275, column: 6, scope: !1149)
!1171 = !DILocation(line: 276, column: 3, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 275, column: 15)
!1173 = !DILocation(line: 279, column: 28, scope: !1172)
!1174 = !DILocation(line: 279, column: 3, scope: !1172)
!1175 = !DILocation(line: 280, column: 3, scope: !1172)
!1176 = !DILocation(line: 285, column: 32, scope: !1149)
!1177 = !DILocation(line: 285, column: 2, scope: !1149)
!1178 = !DILocation(line: 285, column: 22, scope: !1149)
!1179 = !DILocation(line: 285, column: 30, scope: !1149)
!1180 = !DILocation(line: 286, column: 37, scope: !1149)
!1181 = !DILocation(line: 286, column: 31, scope: !1149)
!1182 = !DILocation(line: 286, column: 2, scope: !1149)
!1183 = !DILocation(line: 286, column: 22, scope: !1149)
!1184 = !DILocation(line: 286, column: 29, scope: !1149)
!1185 = !DILocation(line: 290, column: 2, scope: !1149)
!1186 = !DILocation(line: 291, column: 1, scope: !1149)
!1187 = distinct !DISubprogram(name: "acpi_ut_valid_internal_object", scope: !3, file: !3, line: 305, type: !1188, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1190)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!33, !52}
!1190 = !{!1191}
!1191 = !DILocalVariable(name: "object", arg: 1, scope: !1187, file: !3, line: 305, type: !52)
!1192 = !DILocation(line: 305, column: 40, scope: !1187)
!1193 = !DILocation(line: 312, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 312, column: 6)
!1195 = !DILocation(line: 312, column: 6, scope: !1187)
!1196 = !DILocation(line: 314, column: 3, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 312, column: 15)
!1198 = !DILocation(line: 319, column: 10, scope: !1187)
!1199 = !DILocation(line: 319, column: 2, scope: !1187)
!1200 = !DILocation(line: 324, column: 3, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 319, column: 44)
!1202 = !DILocation(line: 331, column: 3, scope: !1201)
!1203 = !DILocation(line: 334, column: 2, scope: !1187)
!1204 = !DILocation(line: 335, column: 1, scope: !1187)
!1205 = distinct !DISubprogram(name: "acpi_os_acquire_object", scope: !1039, file: !1039, line: 65, type: !1206, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1211)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!52, !1208}
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1210, line: 11, flags: DIFlagFwdDecl)
!1210 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1211 = !{!1212, !1213, !1215, !1218, !1219, !1222}
!1212 = !DILocalVariable(name: "cache", arg: 1, scope: !1205, file: !1039, line: 65, type: !1208)
!1213 = !DILocalVariable(name: "_flags", scope: !1214, file: !1039, line: 68, type: !822)
!1214 = distinct !DILexicalBlock(scope: !1205, file: !1039, line: 68, column: 6)
!1215 = !DILocalVariable(name: "__dummy", scope: !1216, file: !1039, line: 68, type: !822)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !1039, line: 68, column: 6)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !1039, line: 68, column: 6)
!1218 = !DILocalVariable(name: "__dummy2", scope: !1216, file: !1039, line: 68, type: !822)
!1219 = !DILocalVariable(name: "__dummy", scope: !1220, file: !1039, line: 68, type: !822)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !1039, line: 68, column: 6)
!1221 = distinct !DILexicalBlock(scope: !1214, file: !1039, line: 68, column: 6)
!1222 = !DILocalVariable(name: "__dummy2", scope: !1220, file: !1039, line: 68, type: !822)
!1223 = !DILocation(line: 65, column: 59, scope: !1205)
!1224 = !DILocation(line: 67, column: 27, scope: !1205)
!1225 = !DILocation(line: 68, column: 6, scope: !1214)
!1226 = !DILocation(line: 68, column: 6, scope: !1216)
!1227 = !DILocation(line: 68, column: 6, scope: !1217)
!1228 = !DILocation(line: 68, column: 6, scope: !1220)
!1229 = !DILocation(line: 68, column: 6, scope: !1221)
!1230 = !DILocation(line: 68, column: 6, scope: !1205)
!1231 = !DILocation(line: 67, column: 9, scope: !1205)
!1232 = !DILocation(line: 67, column: 2, scope: !1205)
!1233 = !DISubprogram(name: "acpi_ut_get_descriptor_name", scope: !825, file: !825, line: 229, type: !1234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!882, !52}
!1236 = !DISubprogram(name: "acpi_os_release_object", scope: !1237, file: !1237, line: 219, type: !1238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1237 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!175, !1208, !52}
!1240 = distinct !DISubprogram(name: "acpi_ut_get_object_size", scope: !3, file: !3, line: 664, type: !1241, scopeLine: 666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1244)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!175, !61, !1243}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!1244 = !{!1245, !1246, !1247}
!1245 = !DILocalVariable(name: "internal_object", arg: 1, scope: !1240, file: !3, line: 664, type: !61)
!1246 = !DILocalVariable(name: "obj_length", arg: 2, scope: !1240, file: !3, line: 665, type: !1243)
!1247 = !DILocalVariable(name: "status", scope: !1240, file: !3, line: 667, type: !175)
!1248 = !DILocation(line: 664, column: 52, scope: !1240)
!1249 = !DILocation(line: 665, column: 15, scope: !1240)
!1250 = !DILocation(line: 667, column: 2, scope: !1240)
!1251 = !DILocation(line: 667, column: 14, scope: !1240)
!1252 = !DILocation(line: 671, column: 7, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 671, column: 6)
!1254 = !DILocation(line: 671, column: 49, scope: !1253)
!1255 = !DILocation(line: 672, column: 31, scope: !1253)
!1256 = !DILocation(line: 673, column: 7, scope: !1253)
!1257 = !DILocation(line: 673, column: 31, scope: !1253)
!1258 = !DILocation(line: 673, column: 36, scope: !1253)
!1259 = !DILocation(line: 671, column: 6, scope: !1240)
!1260 = !DILocation(line: 675, column: 39, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 673, column: 59)
!1262 = !DILocation(line: 676, column: 11, scope: !1261)
!1263 = !DILocation(line: 675, column: 7, scope: !1261)
!1264 = !DILocation(line: 674, column: 10, scope: !1261)
!1265 = !DILocation(line: 677, column: 2, scope: !1261)
!1266 = !DILocation(line: 679, column: 38, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 677, column: 9)
!1268 = !DILocation(line: 679, column: 55, scope: !1267)
!1269 = !DILocation(line: 679, column: 7, scope: !1267)
!1270 = !DILocation(line: 678, column: 10, scope: !1267)
!1271 = !DILocation(line: 682, column: 10, scope: !1240)
!1272 = !DILocation(line: 683, column: 1, scope: !1240)
!1273 = !DILocation(line: 682, column: 2, scope: !1240)
!1274 = distinct !DISubprogram(name: "acpi_ut_get_package_object_size", scope: !3, file: !3, line: 615, type: !1241, scopeLine: 617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1275)
!1275 = !{!1276, !1277, !1278, !1279}
!1276 = !DILocalVariable(name: "internal_object", arg: 1, scope: !1274, file: !3, line: 615, type: !61)
!1277 = !DILocalVariable(name: "obj_length", arg: 2, scope: !1274, file: !3, line: 616, type: !1243)
!1278 = !DILocalVariable(name: "status", scope: !1274, file: !3, line: 618, type: !175)
!1279 = !DILocalVariable(name: "info", scope: !1274, file: !3, line: 619, type: !824)
!1280 = !DILocation(line: 615, column: 60, scope: !1274)
!1281 = !DILocation(line: 616, column: 16, scope: !1274)
!1282 = !DILocation(line: 618, column: 2, scope: !1274)
!1283 = !DILocation(line: 618, column: 14, scope: !1274)
!1284 = !DILocation(line: 619, column: 2, scope: !1274)
!1285 = !DILocation(line: 619, column: 23, scope: !1274)
!1286 = !DILocation(line: 623, column: 7, scope: !1274)
!1287 = !DILocation(line: 623, column: 14, scope: !1274)
!1288 = !DILocation(line: 624, column: 7, scope: !1274)
!1289 = !DILocation(line: 624, column: 20, scope: !1274)
!1290 = !DILocation(line: 625, column: 7, scope: !1274)
!1291 = !DILocation(line: 625, column: 20, scope: !1274)
!1292 = !DILocation(line: 628, column: 32, scope: !1274)
!1293 = !DILocation(line: 628, column: 6, scope: !1274)
!1294 = !DILocation(line: 627, column: 9, scope: !1274)
!1295 = !DILocation(line: 630, column: 6, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 630, column: 6)
!1297 = !DILocation(line: 630, column: 6, scope: !1274)
!1298 = !DILocation(line: 631, column: 3, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 630, column: 28)
!1300 = !DILocation(line: 641, column: 22, scope: !1274)
!1301 = !DILocation(line: 641, column: 6, scope: !1274)
!1302 = !DILocation(line: 640, column: 62, scope: !1274)
!1303 = !DILocation(line: 639, column: 7, scope: !1274)
!1304 = !DILocation(line: 639, column: 14, scope: !1274)
!1305 = !DILocation(line: 645, column: 21, scope: !1274)
!1306 = !DILocation(line: 645, column: 3, scope: !1274)
!1307 = !DILocation(line: 645, column: 14, scope: !1274)
!1308 = !DILocation(line: 646, column: 2, scope: !1274)
!1309 = !DILocation(line: 647, column: 1, scope: !1274)
!1310 = distinct !DISubprogram(name: "acpi_ut_get_simple_object_size", scope: !3, file: !3, line: 424, type: !1241, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1311)
!1311 = !{!1312, !1313, !1314, !1315, !1316}
!1312 = !DILocalVariable(name: "internal_object", arg: 1, scope: !1310, file: !3, line: 424, type: !61)
!1313 = !DILocalVariable(name: "obj_length", arg: 2, scope: !1310, file: !3, line: 425, type: !1243)
!1314 = !DILocalVariable(name: "length", scope: !1310, file: !3, line: 427, type: !38)
!1315 = !DILocalVariable(name: "size", scope: !1310, file: !3, line: 428, type: !38)
!1316 = !DILocalVariable(name: "status", scope: !1310, file: !3, line: 429, type: !175)
!1317 = !DILocation(line: 424, column: 59, scope: !1310)
!1318 = !DILocation(line: 425, column: 22, scope: !1310)
!1319 = !DILocation(line: 427, column: 2, scope: !1310)
!1320 = !DILocation(line: 427, column: 12, scope: !1310)
!1321 = !DILocation(line: 428, column: 2, scope: !1310)
!1322 = !DILocation(line: 428, column: 12, scope: !1310)
!1323 = !DILocation(line: 429, column: 2, scope: !1310)
!1324 = !DILocation(line: 429, column: 14, scope: !1310)
!1325 = !DILocation(line: 435, column: 9, scope: !1310)
!1326 = !DILocation(line: 439, column: 7, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 439, column: 6)
!1328 = !DILocation(line: 439, column: 6, scope: !1310)
!1329 = !DILocation(line: 444, column: 17, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 439, column: 24)
!1331 = !DILocation(line: 444, column: 4, scope: !1330)
!1332 = !DILocation(line: 444, column: 15, scope: !1330)
!1333 = !DILocation(line: 445, column: 3, scope: !1330)
!1334 = !DILocation(line: 450, column: 6, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 450, column: 6)
!1336 = !DILocation(line: 450, column: 48, scope: !1335)
!1337 = !DILocation(line: 450, column: 6, scope: !1310)
!1338 = !DILocation(line: 454, column: 3, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 450, column: 73)
!1340 = !DILocation(line: 459, column: 3, scope: !1339)
!1341 = !DILocation(line: 468, column: 10, scope: !1310)
!1342 = !DILocation(line: 468, column: 34, scope: !1310)
!1343 = !DILocation(line: 468, column: 2, scope: !1310)
!1344 = !DILocation(line: 471, column: 24, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 468, column: 40)
!1346 = !DILocation(line: 471, column: 48, scope: !1345)
!1347 = !DILocation(line: 471, column: 13, scope: !1345)
!1348 = !DILocation(line: 471, column: 55, scope: !1345)
!1349 = !DILocation(line: 471, column: 10, scope: !1345)
!1350 = !DILocation(line: 472, column: 3, scope: !1345)
!1351 = !DILocation(line: 476, column: 24, scope: !1345)
!1352 = !DILocation(line: 476, column: 48, scope: !1345)
!1353 = !DILocation(line: 476, column: 13, scope: !1345)
!1354 = !DILocation(line: 476, column: 10, scope: !1345)
!1355 = !DILocation(line: 477, column: 3, scope: !1345)
!1356 = !DILocation(line: 485, column: 3, scope: !1345)
!1357 = !DILocation(line: 489, column: 11, scope: !1345)
!1358 = !DILocation(line: 489, column: 38, scope: !1345)
!1359 = !DILocation(line: 489, column: 3, scope: !1345)
!1360 = !DILocation(line: 496, column: 36, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 489, column: 45)
!1362 = !DILocation(line: 497, column: 18, scope: !1361)
!1363 = !DILocation(line: 496, column: 8, scope: !1361)
!1364 = !DILocation(line: 495, column: 9, scope: !1361)
!1365 = !DILocation(line: 498, column: 9, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 498, column: 8)
!1367 = !DILocation(line: 498, column: 8, scope: !1361)
!1368 = !DILocation(line: 499, column: 5, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 498, column: 15)
!1370 = !DILocation(line: 502, column: 14, scope: !1361)
!1371 = !DILocation(line: 502, column: 11, scope: !1361)
!1372 = !DILocation(line: 503, column: 4, scope: !1361)
!1373 = !DILocation(line: 511, column: 4, scope: !1361)
!1374 = !DILocation(line: 517, column: 11, scope: !1361)
!1375 = !DILocation(line: 518, column: 4, scope: !1361)
!1376 = !DILocation(line: 520, column: 3, scope: !1345)
!1377 = !DILocation(line: 524, column: 3, scope: !1345)
!1378 = !DILocation(line: 528, column: 10, scope: !1345)
!1379 = !DILocation(line: 529, column: 3, scope: !1345)
!1380 = !DILocation(line: 538, column: 16, scope: !1310)
!1381 = !DILocation(line: 538, column: 3, scope: !1310)
!1382 = !DILocation(line: 538, column: 14, scope: !1310)
!1383 = !DILocation(line: 539, column: 2, scope: !1310)
!1384 = !DILocation(line: 540, column: 1, scope: !1310)
!1385 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !1386, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1392)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!52, !1388, !820}
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !821, line: 61, baseType: !1389)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1390, line: 72, baseType: !1391)
!1390 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1390, line: 16, baseType: !822)
!1392 = !{!1393, !1394}
!1393 = !DILocalVariable(name: "size", arg: 1, scope: !1385, file: !12, line: 719, type: !1388)
!1394 = !DILocalVariable(name: "flags", arg: 2, scope: !1385, file: !12, line: 719, type: !820)
!1395 = !DILocation(line: 719, column: 52, scope: !1385)
!1396 = !DILocation(line: 719, column: 64, scope: !1385)
!1397 = !DILocation(line: 721, column: 17, scope: !1385)
!1398 = !DILocation(line: 721, column: 23, scope: !1385)
!1399 = !DILocation(line: 721, column: 29, scope: !1385)
!1400 = !DILocation(line: 721, column: 9, scope: !1385)
!1401 = !DILocation(line: 721, column: 2, scope: !1385)
!1402 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1403, file: !1403, line: 65, type: !1404, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1403 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!822}
!1406 = !DILocation(line: 67, column: 9, scope: !1402)
!1407 = !DILocation(line: 67, column: 2, scope: !1402)
!1408 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1403, file: !1403, line: 120, type: !1409, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1412)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!1411, !822}
!1411 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1412 = !{!1413}
!1413 = !DILocalVariable(name: "flags", arg: 1, scope: !1408, file: !1403, line: 120, type: !822)
!1414 = !DILocation(line: 120, column: 67, scope: !1408)
!1415 = !DILocation(line: 122, column: 11, scope: !1408)
!1416 = !DILocation(line: 122, column: 17, scope: !1408)
!1417 = !DILocation(line: 122, column: 9, scope: !1408)
!1418 = !DILocation(line: 122, column: 2, scope: !1408)
!1419 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !1386, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1420)
!1420 = !{!1421, !1422, !1423}
!1421 = !DILocalVariable(name: "size", arg: 1, scope: !1419, file: !12, line: 591, type: !1388)
!1422 = !DILocalVariable(name: "flags", arg: 2, scope: !1419, file: !12, line: 591, type: !820)
!1423 = !DILocalVariable(name: "index", scope: !1424, file: !12, line: 594, type: !7)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !12, line: 593, column: 42)
!1425 = distinct !DILexicalBlock(scope: !1419, file: !12, line: 593, column: 6)
!1426 = !DILocation(line: 591, column: 61, scope: !1419)
!1427 = !DILocation(line: 591, column: 73, scope: !1419)
!1428 = !DILocation(line: 593, column: 27, scope: !1425)
!1429 = !DILocation(line: 593, column: 6, scope: !1425)
!1430 = !DILocation(line: 593, column: 33, scope: !1425)
!1431 = !DILocation(line: 593, column: 36, scope: !1425)
!1432 = !DILocation(line: 593, column: 6, scope: !1419)
!1433 = !DILocation(line: 594, column: 3, scope: !1424)
!1434 = !DILocation(line: 594, column: 16, scope: !1424)
!1435 = !DILocation(line: 596, column: 7, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1424, file: !12, line: 596, column: 7)
!1437 = !DILocation(line: 596, column: 12, scope: !1436)
!1438 = !DILocation(line: 596, column: 7, scope: !1424)
!1439 = !DILocation(line: 597, column: 25, scope: !1436)
!1440 = !DILocation(line: 597, column: 31, scope: !1436)
!1441 = !DILocation(line: 597, column: 11, scope: !1436)
!1442 = !DILocation(line: 597, column: 4, scope: !1436)
!1443 = !DILocation(line: 599, column: 11, scope: !1424)
!1444 = !DILocation(line: 599, column: 9, scope: !1424)
!1445 = !DILocation(line: 601, column: 33, scope: !1424)
!1446 = !DILocation(line: 601, column: 40, scope: !1424)
!1447 = !DILocation(line: 601, column: 20, scope: !1424)
!1448 = !DILocation(line: 601, column: 5, scope: !1424)
!1449 = !DILocation(line: 601, column: 51, scope: !1424)
!1450 = !DILocation(line: 602, column: 5, scope: !1424)
!1451 = !DILocation(line: 602, column: 12, scope: !1424)
!1452 = !DILocation(line: 600, column: 10, scope: !1424)
!1453 = !DILocation(line: 600, column: 3, scope: !1424)
!1454 = !DILocation(line: 603, column: 2, scope: !1425)
!1455 = !DILocation(line: 604, column: 19, scope: !1419)
!1456 = !DILocation(line: 604, column: 25, scope: !1419)
!1457 = !DILocation(line: 604, column: 9, scope: !1419)
!1458 = !DILocation(line: 604, column: 2, scope: !1419)
!1459 = !DILocation(line: 605, column: 1, scope: !1419)
!1460 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !1386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1461 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !1462, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1466)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!7, !1388, !1464}
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !821, line: 35, baseType: !1465)
!1465 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1466 = !{!1467, !1468}
!1467 = !DILocalVariable(name: "size", arg: 1, scope: !1461, file: !12, line: 444, type: !1388)
!1468 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1461, file: !12, line: 445, type: !1464)
!1469 = !DILocation(line: 444, column: 60, scope: !1461)
!1470 = !DILocation(line: 445, column: 16, scope: !1461)
!1471 = !DILocation(line: 447, column: 7, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 447, column: 6)
!1473 = !DILocation(line: 447, column: 6, scope: !1461)
!1474 = !DILocation(line: 448, column: 3, scope: !1472)
!1475 = !DILocation(line: 450, column: 6, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 450, column: 6)
!1477 = !DILocation(line: 450, column: 11, scope: !1476)
!1478 = !DILocation(line: 450, column: 6, scope: !1461)
!1479 = !DILocation(line: 451, column: 3, scope: !1476)
!1480 = !DILocation(line: 453, column: 32, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 453, column: 6)
!1482 = !DILocation(line: 453, column: 37, scope: !1481)
!1483 = !DILocation(line: 453, column: 42, scope: !1481)
!1484 = !DILocation(line: 453, column: 45, scope: !1481)
!1485 = !DILocation(line: 453, column: 50, scope: !1481)
!1486 = !DILocation(line: 453, column: 6, scope: !1461)
!1487 = !DILocation(line: 454, column: 3, scope: !1481)
!1488 = !DILocation(line: 455, column: 32, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 455, column: 6)
!1490 = !DILocation(line: 455, column: 37, scope: !1489)
!1491 = !DILocation(line: 455, column: 43, scope: !1489)
!1492 = !DILocation(line: 455, column: 46, scope: !1489)
!1493 = !DILocation(line: 455, column: 51, scope: !1489)
!1494 = !DILocation(line: 455, column: 6, scope: !1461)
!1495 = !DILocation(line: 456, column: 3, scope: !1489)
!1496 = !DILocation(line: 457, column: 6, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 457, column: 6)
!1498 = !DILocation(line: 457, column: 11, scope: !1497)
!1499 = !DILocation(line: 457, column: 6, scope: !1461)
!1500 = !DILocation(line: 457, column: 26, scope: !1497)
!1501 = !DILocation(line: 458, column: 6, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 458, column: 6)
!1503 = !DILocation(line: 458, column: 11, scope: !1502)
!1504 = !DILocation(line: 458, column: 6, scope: !1461)
!1505 = !DILocation(line: 458, column: 26, scope: !1502)
!1506 = !DILocation(line: 459, column: 6, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 459, column: 6)
!1508 = !DILocation(line: 459, column: 11, scope: !1507)
!1509 = !DILocation(line: 459, column: 6, scope: !1461)
!1510 = !DILocation(line: 459, column: 26, scope: !1507)
!1511 = !DILocation(line: 460, column: 6, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 460, column: 6)
!1513 = !DILocation(line: 460, column: 11, scope: !1512)
!1514 = !DILocation(line: 460, column: 6, scope: !1461)
!1515 = !DILocation(line: 460, column: 26, scope: !1512)
!1516 = !DILocation(line: 461, column: 6, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 461, column: 6)
!1518 = !DILocation(line: 461, column: 11, scope: !1517)
!1519 = !DILocation(line: 461, column: 6, scope: !1461)
!1520 = !DILocation(line: 461, column: 26, scope: !1517)
!1521 = !DILocation(line: 462, column: 6, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 462, column: 6)
!1523 = !DILocation(line: 462, column: 11, scope: !1522)
!1524 = !DILocation(line: 462, column: 6, scope: !1461)
!1525 = !DILocation(line: 462, column: 26, scope: !1522)
!1526 = !DILocation(line: 463, column: 6, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 463, column: 6)
!1528 = !DILocation(line: 463, column: 11, scope: !1527)
!1529 = !DILocation(line: 463, column: 6, scope: !1461)
!1530 = !DILocation(line: 463, column: 26, scope: !1527)
!1531 = !DILocation(line: 464, column: 6, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 464, column: 6)
!1533 = !DILocation(line: 464, column: 11, scope: !1532)
!1534 = !DILocation(line: 464, column: 6, scope: !1461)
!1535 = !DILocation(line: 464, column: 26, scope: !1532)
!1536 = !DILocation(line: 465, column: 6, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 465, column: 6)
!1538 = !DILocation(line: 465, column: 11, scope: !1537)
!1539 = !DILocation(line: 465, column: 6, scope: !1461)
!1540 = !DILocation(line: 465, column: 26, scope: !1537)
!1541 = !DILocation(line: 466, column: 6, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 466, column: 6)
!1543 = !DILocation(line: 466, column: 11, scope: !1542)
!1544 = !DILocation(line: 466, column: 6, scope: !1461)
!1545 = !DILocation(line: 466, column: 26, scope: !1542)
!1546 = !DILocation(line: 467, column: 6, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 467, column: 6)
!1548 = !DILocation(line: 467, column: 11, scope: !1547)
!1549 = !DILocation(line: 467, column: 6, scope: !1461)
!1550 = !DILocation(line: 467, column: 26, scope: !1547)
!1551 = !DILocation(line: 468, column: 6, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 468, column: 6)
!1553 = !DILocation(line: 468, column: 11, scope: !1552)
!1554 = !DILocation(line: 468, column: 6, scope: !1461)
!1555 = !DILocation(line: 468, column: 26, scope: !1552)
!1556 = !DILocation(line: 469, column: 6, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 469, column: 6)
!1558 = !DILocation(line: 469, column: 11, scope: !1557)
!1559 = !DILocation(line: 469, column: 6, scope: !1461)
!1560 = !DILocation(line: 469, column: 26, scope: !1557)
!1561 = !DILocation(line: 470, column: 6, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 470, column: 6)
!1563 = !DILocation(line: 470, column: 11, scope: !1562)
!1564 = !DILocation(line: 470, column: 6, scope: !1461)
!1565 = !DILocation(line: 470, column: 26, scope: !1562)
!1566 = !DILocation(line: 471, column: 6, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 471, column: 6)
!1568 = !DILocation(line: 471, column: 11, scope: !1567)
!1569 = !DILocation(line: 471, column: 6, scope: !1461)
!1570 = !DILocation(line: 471, column: 26, scope: !1567)
!1571 = !DILocation(line: 472, column: 6, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 472, column: 6)
!1573 = !DILocation(line: 472, column: 11, scope: !1572)
!1574 = !DILocation(line: 472, column: 6, scope: !1461)
!1575 = !DILocation(line: 472, column: 26, scope: !1572)
!1576 = !DILocation(line: 473, column: 6, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 473, column: 6)
!1578 = !DILocation(line: 473, column: 11, scope: !1577)
!1579 = !DILocation(line: 473, column: 6, scope: !1461)
!1580 = !DILocation(line: 473, column: 26, scope: !1577)
!1581 = !DILocation(line: 474, column: 6, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 474, column: 6)
!1583 = !DILocation(line: 474, column: 11, scope: !1582)
!1584 = !DILocation(line: 474, column: 6, scope: !1461)
!1585 = !DILocation(line: 474, column: 27, scope: !1582)
!1586 = !DILocation(line: 475, column: 6, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 475, column: 6)
!1588 = !DILocation(line: 475, column: 11, scope: !1587)
!1589 = !DILocation(line: 475, column: 6, scope: !1461)
!1590 = !DILocation(line: 475, column: 32, scope: !1587)
!1591 = !DILocation(line: 477, column: 50, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1461, file: !12, line: 477, column: 6)
!1593 = !{i8 0, i8 2}
!1594 = !{}
!1595 = !DILocation(line: 477, column: 6, scope: !1461)
!1596 = !DILocation(line: 478, column: 3, scope: !1592)
!1597 = !DILocation(line: 478, column: 3, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !12, line: 478, column: 3)
!1599 = distinct !DILexicalBlock(scope: !1592, file: !12, line: 478, column: 3)
!1600 = !{i32 -2143030821}
!1601 = !DILocation(line: 478, column: 3, scope: !1599)
!1602 = !DILocation(line: 480, column: 3, scope: !1592)
!1603 = !DILocation(line: 480, column: 3, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1592, file: !12, line: 480, column: 3)
!1605 = !DILocation(line: 480, column: 3, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 480, column: 3)
!1607 = !DILocation(line: 480, column: 3, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 480, column: 3)
!1609 = !{i64 2151936678, i64 2151936707, i64 2151936753, i64 2151936811, i64 2151936865, i64 2151936919, i64 2151936974, i64 2151937005}
!1610 = !DILocation(line: 483, column: 2, scope: !1461)
!1611 = !DILocation(line: 484, column: 1, scope: !1461)
!1612 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !1613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!52, !1208, !820, !1388}
!1615 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !1616, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1618)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!11, !820, !822}
!1618 = !{!1619, !1620}
!1619 = !DILocalVariable(name: "flags", arg: 1, scope: !1615, file: !12, line: 401, type: !820)
!1620 = !DILocalVariable(name: "caller", arg: 2, scope: !1615, file: !12, line: 401, type: !822)
!1621 = !DILocation(line: 401, column: 67, scope: !1615)
!1622 = !DILocation(line: 401, column: 88, scope: !1615)
!1623 = !DILocation(line: 407, column: 6, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1615, file: !12, line: 407, column: 6)
!1625 = !DILocation(line: 407, column: 6, scope: !1615)
!1626 = !DILocation(line: 413, column: 3, scope: !1624)
!1627 = !DILocation(line: 423, column: 38, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1615, file: !12, line: 423, column: 6)
!1629 = !DILocation(line: 423, column: 44, scope: !1628)
!1630 = !DILocation(line: 423, column: 6, scope: !1615)
!1631 = !DILocation(line: 424, column: 3, scope: !1628)
!1632 = !DILocation(line: 426, column: 3, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1615, file: !12, line: 425, column: 6)
!1634 = !DILocation(line: 429, column: 1, scope: !1615)
!1635 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !1386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1636 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !1637, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{null}
!1639 = distinct !DISubprogram(name: "native_save_fl", scope: !1403, file: !1403, line: 17, type: !1404, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1640)
!1640 = !{!1641}
!1641 = !DILocalVariable(name: "flags", scope: !1639, file: !1403, line: 19, type: !822)
!1642 = !DILocation(line: 19, column: 2, scope: !1639)
!1643 = !DILocation(line: 19, column: 16, scope: !1639)
!1644 = !DILocation(line: 26, column: 2, scope: !1639)
!1645 = !{i64 1526597, i64 1526618}
!1646 = !DILocation(line: 32, column: 9, scope: !1639)
!1647 = !DILocation(line: 33, column: 1, scope: !1639)
!1648 = !DILocation(line: 32, column: 2, scope: !1639)
!1649 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1650 = distinct !DISubprogram(name: "kmem_cache_zalloc", scope: !12, file: !12, line: 709, type: !1651, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1653)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!52, !1208, !820}
!1653 = !{!1654, !1655}
!1654 = !DILocalVariable(name: "k", arg: 1, scope: !1650, file: !12, line: 709, type: !1208)
!1655 = !DILocalVariable(name: "flags", arg: 2, scope: !1650, file: !12, line: 709, type: !820)
!1656 = !DILocation(line: 709, column: 58, scope: !1650)
!1657 = !DILocation(line: 709, column: 67, scope: !1650)
!1658 = !DILocation(line: 711, column: 26, scope: !1650)
!1659 = !DILocation(line: 711, column: 29, scope: !1650)
!1660 = !DILocation(line: 711, column: 35, scope: !1650)
!1661 = !DILocation(line: 711, column: 9, scope: !1650)
!1662 = !DILocation(line: 711, column: 2, scope: !1650)
!1663 = !DISubprogram(name: "kmem_cache_alloc", scope: !12, file: !12, line: 500, type: !1651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1664 = !DISubprogram(name: "acpi_ut_walk_package_tree", scope: !825, file: !825, line: 564, type: !1665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!175, !61, !52, !1667, !52}
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_pkg_callback", file: !825, line: 129, baseType: !1668)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!175, !33, !61, !292, !52}
!1671 = distinct !DISubprogram(name: "acpi_ut_get_element_length", scope: !3, file: !3, line: 555, type: !1669, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1672)
!1672 = !{!1673, !1674, !1675, !1676, !1677, !1678, !1679}
!1673 = !DILocalVariable(name: "object_type", arg: 1, scope: !1671, file: !3, line: 555, type: !33)
!1674 = !DILocalVariable(name: "source_object", arg: 2, scope: !1671, file: !3, line: 556, type: !61)
!1675 = !DILocalVariable(name: "state", arg: 3, scope: !1671, file: !3, line: 557, type: !292)
!1676 = !DILocalVariable(name: "context", arg: 4, scope: !1671, file: !3, line: 557, type: !52)
!1677 = !DILocalVariable(name: "status", scope: !1671, file: !3, line: 559, type: !175)
!1678 = !DILocalVariable(name: "info", scope: !1671, file: !3, line: 560, type: !823)
!1679 = !DILocalVariable(name: "object_space", scope: !1671, file: !3, line: 561, type: !38)
!1680 = !DILocation(line: 555, column: 31, scope: !1671)
!1681 = !DILocation(line: 556, column: 34, scope: !1671)
!1682 = !DILocation(line: 557, column: 33, scope: !1671)
!1683 = !DILocation(line: 557, column: 46, scope: !1671)
!1684 = !DILocation(line: 559, column: 2, scope: !1671)
!1685 = !DILocation(line: 559, column: 14, scope: !1671)
!1686 = !DILocation(line: 560, column: 2, scope: !1671)
!1687 = !DILocation(line: 560, column: 24, scope: !1671)
!1688 = !DILocation(line: 560, column: 55, scope: !1671)
!1689 = !DILocation(line: 561, column: 2, scope: !1671)
!1690 = !DILocation(line: 561, column: 12, scope: !1671)
!1691 = !DILocation(line: 563, column: 10, scope: !1671)
!1692 = !DILocation(line: 563, column: 2, scope: !1671)
!1693 = !DILocation(line: 570, column: 38, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 563, column: 23)
!1695 = !DILocation(line: 570, column: 7, scope: !1694)
!1696 = !DILocation(line: 569, column: 10, scope: !1694)
!1697 = !DILocation(line: 572, column: 7, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 572, column: 7)
!1699 = !DILocation(line: 572, column: 7, scope: !1694)
!1700 = !DILocation(line: 573, column: 12, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 572, column: 29)
!1702 = !DILocation(line: 573, column: 4, scope: !1701)
!1703 = !DILocation(line: 576, column: 19, scope: !1694)
!1704 = !DILocation(line: 576, column: 3, scope: !1694)
!1705 = !DILocation(line: 576, column: 9, scope: !1694)
!1706 = !DILocation(line: 576, column: 16, scope: !1694)
!1707 = !DILocation(line: 577, column: 3, scope: !1694)
!1708 = !DILocation(line: 583, column: 3, scope: !1694)
!1709 = !DILocation(line: 583, column: 9, scope: !1694)
!1710 = !DILocation(line: 583, column: 21, scope: !1694)
!1711 = !DILocation(line: 584, column: 3, scope: !1694)
!1712 = !DILocation(line: 584, column: 14, scope: !1694)
!1713 = !DILocation(line: 584, column: 30, scope: !1694)
!1714 = !DILocation(line: 585, column: 3, scope: !1694)
!1715 = !DILocation(line: 591, column: 3, scope: !1694)
!1716 = !DILocation(line: 594, column: 10, scope: !1671)
!1717 = !DILocation(line: 594, column: 2, scope: !1671)
!1718 = !DILocation(line: 595, column: 1, scope: !1671)
!1719 = !DISubprogram(name: "acpi_ns_get_pathname_length", scope: !1720, file: !1720, line: 289, type: !1721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1720 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!38, !108}
!1723 = !DISubprogram(name: "acpi_ut_get_reference_name", scope: !825, file: !825, line: 231, type: !1724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!882, !61}
!1726 = !DISubprogram(name: "acpi_ut_get_object_type_name", scope: !825, file: !825, line: 233, type: !1724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
