; ModuleID = 'drivers/acpi/acpica/utcopy.c'
source_filename = "drivers/acpi/acpica/utcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_buffer = type { i64, ptr }
%struct.acpi_pkg_info = type { ptr, i64, i32, i32 }
%struct.acpi_object_package = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, i32, i32 }
%struct.anon.2 = type { i32, i32, ptr }
%struct.anon.0 = type { i32, i32, ptr }
%struct.acpi_object_string = type { ptr, i8, i8, i16, i8, ptr, i32 }
%struct.anon.1 = type { i32, i32, ptr }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.anon = type { i32, i64 }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.anon.3 = type { i32, i32, ptr }
%struct.acpi_object_processor = type { ptr, i8, i8, i16, i8, i8, i8, [2 x ptr], ptr, i64 }
%struct.anon.4 = type { i32, i32, i64, i32 }
%struct.acpi_object_power_resource = type { ptr, i8, i8, i16, i8, [2 x ptr], ptr, i32, i32 }
%struct.anon.5 = type { i32, i32, i32 }
%union.acpi_object = type { %struct.anon.4 }
%struct.acpi_common_descriptor = type { ptr, i8 }
%struct.acpi_object_region = type { ptr, i8, i8, i16, i8, i8, ptr, ptr, ptr, i64, i32, ptr }
%struct.acpi_object_mutex = type { ptr, i8, i8, i16, i8, i8, i16, ptr, i64, ptr, ptr, ptr, ptr, i8 }
%struct.acpi_object_event = type { ptr, i8, i8, i16, i8, ptr }
%struct.acpi_pkg_state = type { ptr, i8, i8, i16, i16, i32, ptr, ptr, ptr, ptr, i32 }

@_acpi_module_name = internal constant [7 x i8] c"utcopy\00", align 1, !dbg !0
@.str = private unnamed_addr constant [63 x i8] c"Unsupported object type, cannot convert to external object: %s\00", align 1, !dbg !880
@.str.1 = private unnamed_addr constant [63 x i8] c"Unsupported object type, cannot convert to internal object: %s\00", align 1, !dbg !885
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !887
@.str.3 = private unnamed_addr constant [27 x i8] c"Package allocation failure\00", align 1, !dbg !892

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_copy_iobject_to_eobject(ptr noundef %internal_object, ptr noundef %ret_buffer) #0 align 16 !dbg !908 {
entry:
  %internal_object.addr = alloca ptr, align 8
  %ret_buffer.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %internal_object, ptr %internal_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %internal_object.addr, metadata !917, metadata !DIExpression()), !dbg !920
  store ptr %ret_buffer, ptr %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret_buffer.addr, metadata !918, metadata !DIExpression()), !dbg !921
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !922
  call void @llvm.dbg.declare(metadata ptr %status, metadata !919, metadata !DIExpression()), !dbg !923
  %0 = load ptr, ptr %internal_object.addr, align 8, !dbg !924
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %0, i32 0, i32 2, !dbg !926
  %1 = load i8, ptr %type, align 1, !dbg !926
  %conv = zext i8 %1 to i32, !dbg !924
  %cmp = icmp eq i32 %conv, 4, !dbg !927
  br i1 %cmp, label %if.then, label %if.else, !dbg !928

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %internal_object.addr, align 8, !dbg !929
  %3 = load ptr, ptr %ret_buffer.addr, align 8, !dbg !931
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %3, i32 0, i32 1, !dbg !932
  %4 = load ptr, ptr %pointer, align 8, !dbg !932
  %5 = load ptr, ptr %ret_buffer.addr, align 8, !dbg !933
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %5, i32 0, i32 0, !dbg !934
  %call = call i32 @acpi_ut_copy_ipackage_to_epackage(ptr noundef %2, ptr noundef %4, ptr noundef %length) #16, !dbg !935
  store i32 %call, ptr %status, align 4, !dbg !936
  br label %if.end, !dbg !937

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %internal_object.addr, align 8, !dbg !938
  %7 = load ptr, ptr %ret_buffer.addr, align 8, !dbg !940
  %pointer2 = getelementptr inbounds %struct.acpi_buffer, ptr %7, i32 0, i32 1, !dbg !940
  %8 = load ptr, ptr %pointer2, align 8, !dbg !940
  %9 = ptrtoint ptr %8 to i64, !dbg !940
  %10 = inttoptr i64 %9 to ptr, !dbg !940
  %11 = load ptr, ptr %ret_buffer.addr, align 8, !dbg !941
  %pointer3 = getelementptr inbounds %struct.acpi_buffer, ptr %11, i32 0, i32 1, !dbg !941
  %12 = load ptr, ptr %pointer3, align 8, !dbg !941
  %13 = ptrtoint ptr %12 to i64, !dbg !941
  %14 = inttoptr i64 %13 to ptr, !dbg !941
  %add.ptr = getelementptr i8, ptr %14, i64 24, !dbg !941
  %15 = ptrtoint ptr %add.ptr to i64, !dbg !941
  %16 = inttoptr i64 %15 to ptr, !dbg !941
  %17 = load ptr, ptr %ret_buffer.addr, align 8, !dbg !942
  %length4 = getelementptr inbounds %struct.acpi_buffer, ptr %17, i32 0, i32 0, !dbg !943
  %call5 = call i32 @acpi_ut_copy_isimple_to_esimple(ptr noundef %6, ptr noundef %10, ptr noundef %16, ptr noundef %length4) #16, !dbg !944
  store i32 %call5, ptr %status, align 4, !dbg !945
  %18 = load ptr, ptr %ret_buffer.addr, align 8, !dbg !946
  %length6 = getelementptr inbounds %struct.acpi_buffer, ptr %18, i32 0, i32 0, !dbg !947
  %19 = load i64, ptr %length6, align 8, !dbg !948
  %add = add i64 %19, 24, !dbg !948
  store i64 %add, ptr %length6, align 8, !dbg !948
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load i32, ptr %status, align 4, !dbg !949
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !950
  ret i32 %20, !dbg !949
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ut_copy_ipackage_to_epackage(ptr noundef %internal_object, ptr noundef %buffer, ptr noundef %space_used) #0 align 16 !dbg !951 {
entry:
  %internal_object.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %space_used.addr = alloca ptr, align 8
  %external_object = alloca ptr, align 8
  %status = alloca i32, align 4
  %info = alloca %struct.acpi_pkg_info, align 8
  store ptr %internal_object, ptr %internal_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %internal_object.addr, metadata !956, metadata !DIExpression()), !dbg !962
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !957, metadata !DIExpression()), !dbg !963
  store ptr %space_used, ptr %space_used.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %space_used.addr, metadata !958, metadata !DIExpression()), !dbg !964
  call void @llvm.lifetime.start.p0(i64 8, ptr %external_object) #15, !dbg !965
  call void @llvm.dbg.declare(metadata ptr %external_object, metadata !959, metadata !DIExpression()), !dbg !966
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !967
  call void @llvm.dbg.declare(metadata ptr %status, metadata !960, metadata !DIExpression()), !dbg !968
  call void @llvm.lifetime.start.p0(i64 24, ptr %info) #15, !dbg !969
  call void @llvm.dbg.declare(metadata ptr %info, metadata !961, metadata !DIExpression()), !dbg !970
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !971
  %1 = ptrtoint ptr %0 to i64, !dbg !971
  %2 = inttoptr i64 %1 to ptr, !dbg !971
  store ptr %2, ptr %external_object, align 8, !dbg !972
  %length = getelementptr inbounds %struct.acpi_pkg_info, ptr %info, i32 0, i32 1, !dbg !973
  store i64 24, ptr %length, align 8, !dbg !974
  %3 = load ptr, ptr %buffer.addr, align 8, !dbg !975
  %add.ptr = getelementptr i8, ptr %3, i64 24, !dbg !976
  %free_space = getelementptr inbounds %struct.acpi_pkg_info, ptr %info, i32 0, i32 0, !dbg !977
  store ptr %add.ptr, ptr %free_space, align 8, !dbg !978
  %object_space = getelementptr inbounds %struct.acpi_pkg_info, ptr %info, i32 0, i32 2, !dbg !979
  store i32 0, ptr %object_space, align 8, !dbg !980
  %num_packages = getelementptr inbounds %struct.acpi_pkg_info, ptr %info, i32 0, i32 3, !dbg !981
  store i32 1, ptr %num_packages, align 4, !dbg !982
  %4 = load ptr, ptr %internal_object.addr, align 8, !dbg !983
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %4, i32 0, i32 2, !dbg !984
  %5 = load i8, ptr %type, align 1, !dbg !984
  %conv = zext i8 %5 to i32, !dbg !983
  %6 = load ptr, ptr %external_object, align 8, !dbg !985
  store i32 %conv, ptr %6, align 8, !dbg !986
  %7 = load ptr, ptr %internal_object.addr, align 8, !dbg !987
  %count = getelementptr inbounds %struct.acpi_object_package, ptr %7, i32 0, i32 9, !dbg !988
  %8 = load i32, ptr %count, align 4, !dbg !988
  %9 = load ptr, ptr %external_object, align 8, !dbg !989
  %count1 = getelementptr inbounds %struct.anon.2, ptr %9, i32 0, i32 1, !dbg !990
  store i32 %8, ptr %count1, align 4, !dbg !991
  %free_space2 = getelementptr inbounds %struct.acpi_pkg_info, ptr %info, i32 0, i32 0, !dbg !992
  %10 = load ptr, ptr %free_space2, align 8, !dbg !992
  %11 = ptrtoint ptr %10 to i64, !dbg !992
  %12 = inttoptr i64 %11 to ptr, !dbg !992
  %13 = load ptr, ptr %external_object, align 8, !dbg !993
  %elements = getelementptr inbounds %struct.anon.2, ptr %13, i32 0, i32 2, !dbg !994
  store ptr %12, ptr %elements, align 8, !dbg !995
  %14 = load ptr, ptr %external_object, align 8, !dbg !996
  %count3 = getelementptr inbounds %struct.anon.2, ptr %14, i32 0, i32 1, !dbg !997
  %15 = load i32, ptr %count3, align 4, !dbg !997
  %conv4 = zext i32 %15 to i64, !dbg !998
  %mul = mul i64 %conv4, 24, !dbg !999
  %length5 = getelementptr inbounds %struct.acpi_pkg_info, ptr %info, i32 0, i32 1, !dbg !1000
  %16 = load i64, ptr %length5, align 8, !dbg !1001
  %add = add i64 %16, %mul, !dbg !1001
  store i64 %add, ptr %length5, align 8, !dbg !1001
  %17 = load ptr, ptr %external_object, align 8, !dbg !1002
  %count6 = getelementptr inbounds %struct.anon.2, ptr %17, i32 0, i32 1, !dbg !1003
  %18 = load i32, ptr %count6, align 4, !dbg !1003
  %conv7 = zext i32 %18 to i64, !dbg !1002
  %mul8 = mul i64 %conv7, 24, !dbg !1004
  %free_space9 = getelementptr inbounds %struct.acpi_pkg_info, ptr %info, i32 0, i32 0, !dbg !1005
  %19 = load ptr, ptr %free_space9, align 8, !dbg !1006
  %add.ptr10 = getelementptr i8, ptr %19, i64 %mul8, !dbg !1006
  store ptr %add.ptr10, ptr %free_space9, align 8, !dbg !1006
  %20 = load ptr, ptr %internal_object.addr, align 8, !dbg !1007
  %21 = load ptr, ptr %external_object, align 8, !dbg !1008
  %call = call i32 @acpi_ut_walk_package_tree(ptr noundef %20, ptr noundef %21, ptr noundef @acpi_ut_copy_ielement_to_eelement, ptr noundef %info) #16, !dbg !1009
  store i32 %call, ptr %status, align 4, !dbg !1010
  %length11 = getelementptr inbounds %struct.acpi_pkg_info, ptr %info, i32 0, i32 1, !dbg !1011
  %22 = load i64, ptr %length11, align 8, !dbg !1011
  %23 = load ptr, ptr %space_used.addr, align 8, !dbg !1012
  store i64 %22, ptr %23, align 8, !dbg !1013
  %24 = load i32, ptr %status, align 4, !dbg !1014
  call void @llvm.lifetime.end.p0(i64 24, ptr %info) #15, !dbg !1015
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1015
  call void @llvm.lifetime.end.p0(i64 8, ptr %external_object) #15, !dbg !1015
  ret i32 %24, !dbg !1014
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ut_copy_isimple_to_esimple(ptr noundef %internal_object, ptr noundef %external_object, ptr noundef %data_space, ptr noundef %buffer_space_used) #0 align 16 !dbg !1016 {
entry:
  %retval = alloca i32, align 4
  %internal_object.addr = alloca ptr, align 8
  %external_object.addr = alloca ptr, align 8
  %data_space.addr = alloca ptr, align 8
  %buffer_space_used.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %internal_object, ptr %internal_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %internal_object.addr, metadata !1020, metadata !DIExpression()), !dbg !1025
  store ptr %external_object, ptr %external_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %external_object.addr, metadata !1021, metadata !DIExpression()), !dbg !1026
  store ptr %data_space, ptr %data_space.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data_space.addr, metadata !1022, metadata !DIExpression()), !dbg !1027
  store ptr %buffer_space_used, ptr %buffer_space_used.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer_space_used.addr, metadata !1023, metadata !DIExpression()), !dbg !1028
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1029
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1024, metadata !DIExpression()), !dbg !1030
  store i32 0, ptr %status, align 4, !dbg !1030
  %0 = load ptr, ptr %buffer_space_used.addr, align 8, !dbg !1031
  store i64 0, ptr %0, align 8, !dbg !1032
  %1 = load ptr, ptr %internal_object.addr, align 8, !dbg !1033
  %tobool = icmp ne ptr %1, null, !dbg !1033
  br i1 %tobool, label %if.end, label %if.then, !dbg !1035

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1036
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1036

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %external_object.addr, align 8, !dbg !1038
  call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 24, i1 false), !dbg !1039
  %3 = load ptr, ptr %internal_object.addr, align 8, !dbg !1040
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %3, i32 0, i32 2, !dbg !1041
  %4 = load i8, ptr %type, align 1, !dbg !1041
  %conv = zext i8 %4 to i32, !dbg !1040
  %5 = load ptr, ptr %external_object.addr, align 8, !dbg !1042
  store i32 %conv, ptr %5, align 8, !dbg !1043
  %6 = load ptr, ptr %internal_object.addr, align 8, !dbg !1044
  %type1 = getelementptr inbounds %struct.acpi_object_common, ptr %6, i32 0, i32 2, !dbg !1045
  %7 = load i8, ptr %type1, align 1, !dbg !1045
  %conv2 = zext i8 %7 to i32, !dbg !1044
  switch i32 %conv2, label %sw.default36 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb11
    i32 1, label %sw.bb22
    i32 20, label %sw.bb24
    i32 12, label %sw.bb28
    i32 11, label %sw.bb33
  ], !dbg !1046

sw.bb:                                            ; preds = %if.end
  %8 = load ptr, ptr %data_space.addr, align 8, !dbg !1047
  %9 = load ptr, ptr %external_object.addr, align 8, !dbg !1049
  %pointer = getelementptr inbounds %struct.anon.0, ptr %9, i32 0, i32 2, !dbg !1050
  store ptr %8, ptr %pointer, align 8, !dbg !1051
  %10 = load ptr, ptr %internal_object.addr, align 8, !dbg !1052
  %length = getelementptr inbounds %struct.acpi_object_string, ptr %10, i32 0, i32 6, !dbg !1053
  %11 = load i32, ptr %length, align 8, !dbg !1053
  %12 = load ptr, ptr %external_object.addr, align 8, !dbg !1054
  %length3 = getelementptr inbounds %struct.anon.0, ptr %12, i32 0, i32 1, !dbg !1055
  store i32 %11, ptr %length3, align 4, !dbg !1056
  %13 = load ptr, ptr %internal_object.addr, align 8, !dbg !1057
  %length4 = getelementptr inbounds %struct.acpi_object_string, ptr %13, i32 0, i32 6, !dbg !1057
  %14 = load i32, ptr %length4, align 8, !dbg !1057
  %conv5 = zext i32 %14 to i64, !dbg !1057
  %add = add i64 %conv5, 1, !dbg !1057
  %add6 = add i64 %add, 7, !dbg !1057
  %and = and i64 %add6, -8, !dbg !1057
  %15 = load ptr, ptr %buffer_space_used.addr, align 8, !dbg !1058
  store i64 %and, ptr %15, align 8, !dbg !1059
  %16 = load ptr, ptr %data_space.addr, align 8, !dbg !1060
  %17 = load ptr, ptr %internal_object.addr, align 8, !dbg !1061
  %pointer7 = getelementptr inbounds %struct.acpi_object_string, ptr %17, i32 0, i32 5, !dbg !1062
  %18 = load ptr, ptr %pointer7, align 8, !dbg !1062
  %19 = load ptr, ptr %internal_object.addr, align 8, !dbg !1063
  %length8 = getelementptr inbounds %struct.acpi_object_string, ptr %19, i32 0, i32 6, !dbg !1064
  %20 = load i32, ptr %length8, align 8, !dbg !1064
  %conv9 = zext i32 %20 to i64, !dbg !1065
  %add10 = add i64 %conv9, 1, !dbg !1066
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %18, i64 %add10, i1 false), !dbg !1067
  br label %sw.epilog40, !dbg !1068

sw.bb11:                                          ; preds = %if.end
  %21 = load ptr, ptr %data_space.addr, align 8, !dbg !1069
  %22 = load ptr, ptr %external_object.addr, align 8, !dbg !1070
  %pointer12 = getelementptr inbounds %struct.anon.1, ptr %22, i32 0, i32 2, !dbg !1071
  store ptr %21, ptr %pointer12, align 8, !dbg !1072
  %23 = load ptr, ptr %internal_object.addr, align 8, !dbg !1073
  %length13 = getelementptr inbounds %struct.acpi_object_buffer, ptr %23, i32 0, i32 6, !dbg !1074
  %24 = load i32, ptr %length13, align 8, !dbg !1074
  %25 = load ptr, ptr %external_object.addr, align 8, !dbg !1075
  %length14 = getelementptr inbounds %struct.anon.1, ptr %25, i32 0, i32 1, !dbg !1076
  store i32 %24, ptr %length14, align 4, !dbg !1077
  %26 = load ptr, ptr %internal_object.addr, align 8, !dbg !1078
  %length15 = getelementptr inbounds %struct.acpi_object_string, ptr %26, i32 0, i32 6, !dbg !1078
  %27 = load i32, ptr %length15, align 8, !dbg !1078
  %conv16 = zext i32 %27 to i64, !dbg !1078
  %add17 = add i64 %conv16, 7, !dbg !1078
  %and18 = and i64 %add17, -8, !dbg !1078
  %28 = load ptr, ptr %buffer_space_used.addr, align 8, !dbg !1079
  store i64 %and18, ptr %28, align 8, !dbg !1080
  %29 = load ptr, ptr %data_space.addr, align 8, !dbg !1081
  %30 = load ptr, ptr %internal_object.addr, align 8, !dbg !1082
  %pointer19 = getelementptr inbounds %struct.acpi_object_buffer, ptr %30, i32 0, i32 5, !dbg !1083
  %31 = load ptr, ptr %pointer19, align 8, !dbg !1083
  %32 = load ptr, ptr %internal_object.addr, align 8, !dbg !1084
  %length20 = getelementptr inbounds %struct.acpi_object_buffer, ptr %32, i32 0, i32 6, !dbg !1085
  %33 = load i32, ptr %length20, align 8, !dbg !1085
  %conv21 = zext i32 %33 to i64, !dbg !1084
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %29, ptr align 1 %31, i64 %conv21, i1 false), !dbg !1086
  br label %sw.epilog40, !dbg !1087

sw.bb22:                                          ; preds = %if.end
  %34 = load ptr, ptr %internal_object.addr, align 8, !dbg !1088
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %34, i32 0, i32 6, !dbg !1089
  %35 = load i64, ptr %value, align 8, !dbg !1089
  %36 = load ptr, ptr %external_object.addr, align 8, !dbg !1090
  %value23 = getelementptr inbounds %struct.anon, ptr %36, i32 0, i32 1, !dbg !1091
  store i64 %35, ptr %value23, align 8, !dbg !1092
  br label %sw.epilog40, !dbg !1093

sw.bb24:                                          ; preds = %if.end
  %37 = load ptr, ptr %internal_object.addr, align 8, !dbg !1094
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %37, i32 0, i32 5, !dbg !1095
  %38 = load i8, ptr %class, align 1, !dbg !1095
  %conv25 = zext i8 %38 to i32, !dbg !1094
  switch i32 %conv25, label %sw.default [
    i32 5, label %sw.bb26
  ], !dbg !1096

sw.bb26:                                          ; preds = %sw.bb24
  %39 = load ptr, ptr %internal_object.addr, align 8, !dbg !1097
  %node = getelementptr inbounds %struct.acpi_object_reference, ptr %39, i32 0, i32 9, !dbg !1099
  %40 = load ptr, ptr %node, align 8, !dbg !1099
  %41 = load ptr, ptr %external_object.addr, align 8, !dbg !1100
  %handle = getelementptr inbounds %struct.anon.3, ptr %41, i32 0, i32 2, !dbg !1101
  store ptr %40, ptr %handle, align 8, !dbg !1102
  %42 = load ptr, ptr %internal_object.addr, align 8, !dbg !1103
  %node27 = getelementptr inbounds %struct.acpi_object_reference, ptr %42, i32 0, i32 9, !dbg !1104
  %43 = load ptr, ptr %node27, align 8, !dbg !1104
  %call = call i32 @acpi_ns_get_type(ptr noundef %43) #16, !dbg !1105
  %44 = load ptr, ptr %external_object.addr, align 8, !dbg !1106
  %actual_type = getelementptr inbounds %struct.anon.3, ptr %44, i32 0, i32 1, !dbg !1107
  store i32 %call, ptr %actual_type, align 4, !dbg !1108
  br label %sw.epilog, !dbg !1109

sw.default:                                       ; preds = %sw.bb24
  store i32 8, ptr %retval, align 4, !dbg !1110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1110

sw.epilog:                                        ; preds = %sw.bb26
  br label %sw.epilog40, !dbg !1111

sw.bb28:                                          ; preds = %if.end
  %45 = load ptr, ptr %internal_object.addr, align 8, !dbg !1112
  %proc_id = getelementptr inbounds %struct.acpi_object_processor, ptr %45, i32 0, i32 5, !dbg !1113
  %46 = load i8, ptr %proc_id, align 1, !dbg !1113
  %conv29 = zext i8 %46 to i32, !dbg !1112
  %47 = load ptr, ptr %external_object.addr, align 8, !dbg !1114
  %proc_id30 = getelementptr inbounds %struct.anon.4, ptr %47, i32 0, i32 1, !dbg !1115
  store i32 %conv29, ptr %proc_id30, align 4, !dbg !1116
  %48 = load ptr, ptr %internal_object.addr, align 8, !dbg !1117
  %address = getelementptr inbounds %struct.acpi_object_processor, ptr %48, i32 0, i32 9, !dbg !1118
  %49 = load i64, ptr %address, align 8, !dbg !1118
  %50 = load ptr, ptr %external_object.addr, align 8, !dbg !1119
  %pblk_address = getelementptr inbounds %struct.anon.4, ptr %50, i32 0, i32 2, !dbg !1120
  store i64 %49, ptr %pblk_address, align 8, !dbg !1121
  %51 = load ptr, ptr %internal_object.addr, align 8, !dbg !1122
  %length31 = getelementptr inbounds %struct.acpi_object_processor, ptr %51, i32 0, i32 6, !dbg !1123
  %52 = load i8, ptr %length31, align 2, !dbg !1123
  %conv32 = zext i8 %52 to i32, !dbg !1122
  %53 = load ptr, ptr %external_object.addr, align 8, !dbg !1124
  %pblk_length = getelementptr inbounds %struct.anon.4, ptr %53, i32 0, i32 3, !dbg !1125
  store i32 %conv32, ptr %pblk_length, align 8, !dbg !1126
  br label %sw.epilog40, !dbg !1127

sw.bb33:                                          ; preds = %if.end
  %54 = load ptr, ptr %internal_object.addr, align 8, !dbg !1128
  %system_level = getelementptr inbounds %struct.acpi_object_power_resource, ptr %54, i32 0, i32 7, !dbg !1129
  %55 = load i32, ptr %system_level, align 8, !dbg !1129
  %56 = load ptr, ptr %external_object.addr, align 8, !dbg !1130
  %system_level34 = getelementptr inbounds %struct.anon.5, ptr %56, i32 0, i32 1, !dbg !1131
  store i32 %55, ptr %system_level34, align 4, !dbg !1132
  %57 = load ptr, ptr %internal_object.addr, align 8, !dbg !1133
  %resource_order = getelementptr inbounds %struct.acpi_object_power_resource, ptr %57, i32 0, i32 8, !dbg !1134
  %58 = load i32, ptr %resource_order, align 4, !dbg !1134
  %59 = load ptr, ptr %external_object.addr, align 8, !dbg !1135
  %resource_order35 = getelementptr inbounds %struct.anon.5, ptr %59, i32 0, i32 2, !dbg !1136
  store i32 %58, ptr %resource_order35, align 8, !dbg !1137
  br label %sw.epilog40, !dbg !1138

sw.default36:                                     ; preds = %if.end
  %60 = load ptr, ptr %internal_object.addr, align 8, !dbg !1139
  %type37 = getelementptr inbounds %struct.acpi_object_common, ptr %60, i32 0, i32 2, !dbg !1139
  %61 = load i8, ptr %type37, align 1, !dbg !1139
  %conv38 = zext i8 %61 to i32, !dbg !1139
  %call39 = call ptr @acpi_ut_get_type_name(i32 noundef %conv38) #16, !dbg !1139
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 188, ptr noundef @.str, ptr noundef %call39) #16, !dbg !1139
  store i32 15, ptr %retval, align 4, !dbg !1140
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1140

sw.epilog40:                                      ; preds = %sw.bb33, %sw.bb28, %sw.epilog, %sw.bb22, %sw.bb11, %sw.bb
  %62 = load i32, ptr %status, align 4, !dbg !1141
  store i32 %62, ptr %retval, align 4, !dbg !1141
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1141

cleanup:                                          ; preds = %sw.epilog40, %sw.default36, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1142
  %63 = load i32, ptr %retval, align 4, !dbg !1142
  ret i32 %63, !dbg !1142
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_copy_eobject_to_iobject(ptr noundef %external_object, ptr noundef %internal_object) #0 align 16 !dbg !1143 {
entry:
  %external_object.addr = alloca ptr, align 8
  %internal_object.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %external_object, ptr %external_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %external_object.addr, metadata !1147, metadata !DIExpression()), !dbg !1150
  store ptr %internal_object, ptr %internal_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %internal_object.addr, metadata !1148, metadata !DIExpression()), !dbg !1151
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1152
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1149, metadata !DIExpression()), !dbg !1153
  %0 = load ptr, ptr %external_object.addr, align 8, !dbg !1154
  %1 = load i32, ptr %0, align 8, !dbg !1156
  %cmp = icmp eq i32 %1, 4, !dbg !1157
  br i1 %cmp, label %if.then, label %if.else, !dbg !1158

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %external_object.addr, align 8, !dbg !1159
  %3 = load ptr, ptr %internal_object.addr, align 8, !dbg !1161
  %call = call i32 @acpi_ut_copy_epackage_to_ipackage(ptr noundef %2, ptr noundef %3) #16, !dbg !1162
  store i32 %call, ptr %status, align 4, !dbg !1163
  br label %if.end, !dbg !1164

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %external_object.addr, align 8, !dbg !1165
  %5 = load ptr, ptr %internal_object.addr, align 8, !dbg !1167
  %call1 = call i32 @acpi_ut_copy_esimple_to_isimple(ptr noundef %4, ptr noundef %5) #16, !dbg !1168
  store i32 %call1, ptr %status, align 4, !dbg !1169
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, ptr %status, align 4, !dbg !1170
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1171
  ret i32 %6, !dbg !1170
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ut_copy_epackage_to_ipackage(ptr noundef %external_object, ptr noundef %internal_object) #0 align 16 !dbg !1172 {
entry:
  %retval = alloca i32, align 4
  %external_object.addr = alloca ptr, align 8
  %internal_object.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %package_object = alloca ptr, align 8
  %package_elements = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %external_object, ptr %external_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %external_object.addr, metadata !1174, metadata !DIExpression()), !dbg !1180
  store ptr %internal_object, ptr %internal_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %internal_object.addr, metadata !1175, metadata !DIExpression()), !dbg !1181
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1182
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1176, metadata !DIExpression()), !dbg !1183
  store i32 0, ptr %status, align 4, !dbg !1183
  call void @llvm.lifetime.start.p0(i64 8, ptr %package_object) #15, !dbg !1184
  call void @llvm.dbg.declare(metadata ptr %package_object, metadata !1177, metadata !DIExpression()), !dbg !1185
  call void @llvm.lifetime.start.p0(i64 8, ptr %package_elements) #15, !dbg !1186
  call void @llvm.dbg.declare(metadata ptr %package_elements, metadata !1178, metadata !DIExpression()), !dbg !1187
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !1188
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1179, metadata !DIExpression()), !dbg !1189
  %0 = load ptr, ptr %external_object.addr, align 8, !dbg !1190
  %count = getelementptr inbounds %struct.anon.2, ptr %0, i32 0, i32 1, !dbg !1191
  %1 = load i32, ptr %count, align 4, !dbg !1191
  %call = call ptr @acpi_ut_create_package_object(i32 noundef %1) #16, !dbg !1192
  store ptr %call, ptr %package_object, align 8, !dbg !1193
  %2 = load ptr, ptr %package_object, align 8, !dbg !1194
  %tobool = icmp ne ptr %2, null, !dbg !1194
  br i1 %tobool, label %if.end, label %if.then, !dbg !1196

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !1197
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1197

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %package_object, align 8, !dbg !1199
  %elements = getelementptr inbounds %struct.acpi_object_package, ptr %3, i32 0, i32 6, !dbg !1200
  %4 = load ptr, ptr %elements, align 8, !dbg !1200
  store ptr %4, ptr %package_elements, align 8, !dbg !1201
  store i32 0, ptr %i, align 4, !dbg !1202
  br label %for.cond, !dbg !1204

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4, !dbg !1205
  %6 = load ptr, ptr %external_object.addr, align 8, !dbg !1207
  %count1 = getelementptr inbounds %struct.anon.2, ptr %6, i32 0, i32 1, !dbg !1208
  %7 = load i32, ptr %count1, align 4, !dbg !1208
  %cmp = icmp ult i32 %5, %7, !dbg !1209
  br i1 %cmp, label %for.body, label %for.end, !dbg !1210

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %external_object.addr, align 8, !dbg !1211
  %elements2 = getelementptr inbounds %struct.anon.2, ptr %8, i32 0, i32 2, !dbg !1213
  %9 = load ptr, ptr %elements2, align 8, !dbg !1213
  %10 = load i32, ptr %i, align 4, !dbg !1214
  %idxprom = zext i32 %10 to i64, !dbg !1211
  %arrayidx = getelementptr %union.acpi_object, ptr %9, i64 %idxprom, !dbg !1211
  %11 = load ptr, ptr %package_elements, align 8, !dbg !1215
  %12 = load i32, ptr %i, align 4, !dbg !1216
  %idxprom3 = zext i32 %12 to i64, !dbg !1215
  %arrayidx4 = getelementptr ptr, ptr %11, i64 %idxprom3, !dbg !1215
  %call5 = call i32 @acpi_ut_copy_eobject_to_iobject(ptr noundef %arrayidx, ptr noundef %arrayidx4) #16, !dbg !1217
  store i32 %call5, ptr %status, align 4, !dbg !1218
  %13 = load i32, ptr %status, align 4, !dbg !1219
  %tobool6 = icmp ne i32 %13, 0, !dbg !1219
  br i1 %tobool6, label %if.then7, label %if.end11, !dbg !1221

if.then7:                                         ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !dbg !1222
  %15 = load ptr, ptr %package_object, align 8, !dbg !1224
  %count8 = getelementptr inbounds %struct.acpi_object_package, ptr %15, i32 0, i32 9, !dbg !1225
  store i32 %14, ptr %count8, align 4, !dbg !1226
  %16 = load ptr, ptr %package_elements, align 8, !dbg !1227
  %17 = load i32, ptr %i, align 4, !dbg !1228
  %idxprom9 = zext i32 %17 to i64, !dbg !1227
  %arrayidx10 = getelementptr ptr, ptr %16, i64 %idxprom9, !dbg !1227
  store ptr null, ptr %arrayidx10, align 8, !dbg !1229
  %18 = load ptr, ptr %package_object, align 8, !dbg !1230
  call void @acpi_ut_remove_reference(ptr noundef %18) #16, !dbg !1231
  %19 = load i32, ptr %status, align 4, !dbg !1232
  store i32 %19, ptr %retval, align 4, !dbg !1232
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1232

if.end11:                                         ; preds = %for.body
  br label %for.inc, !dbg !1233

for.inc:                                          ; preds = %if.end11
  %20 = load i32, ptr %i, align 4, !dbg !1234
  %inc = add i32 %20, 1, !dbg !1234
  store i32 %inc, ptr %i, align 4, !dbg !1234
  br label %for.cond, !dbg !1235, !llvm.loop !1236

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %package_object, align 8, !dbg !1240
  %flags = getelementptr inbounds %struct.acpi_object_package, ptr %21, i32 0, i32 4, !dbg !1241
  %22 = load i8, ptr %flags, align 4, !dbg !1242
  %conv = zext i8 %22 to i32, !dbg !1242
  %or = or i32 %conv, 4, !dbg !1242
  %conv12 = trunc i32 %or to i8, !dbg !1242
  store i8 %conv12, ptr %flags, align 4, !dbg !1242
  %23 = load ptr, ptr %package_object, align 8, !dbg !1243
  %24 = load ptr, ptr %internal_object.addr, align 8, !dbg !1244
  store ptr %23, ptr %24, align 8, !dbg !1245
  %25 = load i32, ptr %status, align 4, !dbg !1246
  store i32 %25, ptr %retval, align 4, !dbg !1246
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1246

cleanup:                                          ; preds = %for.end, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !1247
  call void @llvm.lifetime.end.p0(i64 8, ptr %package_elements) #15, !dbg !1247
  call void @llvm.lifetime.end.p0(i64 8, ptr %package_object) #15, !dbg !1247
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1247
  %26 = load i32, ptr %retval, align 4, !dbg !1247
  ret i32 %26, !dbg !1247
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ut_copy_esimple_to_isimple(ptr noundef %external_object, ptr noundef %ret_internal_object) #0 align 16 !dbg !1248 {
entry:
  %retval = alloca i32, align 4
  %external_object.addr = alloca ptr, align 8
  %ret_internal_object.addr = alloca ptr, align 8
  %internal_object = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %external_object, ptr %external_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %external_object.addr, metadata !1250, metadata !DIExpression()), !dbg !1254
  store ptr %ret_internal_object, ptr %ret_internal_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret_internal_object.addr, metadata !1251, metadata !DIExpression()), !dbg !1255
  call void @llvm.lifetime.start.p0(i64 8, ptr %internal_object) #15, !dbg !1256
  call void @llvm.dbg.declare(metadata ptr %internal_object, metadata !1252, metadata !DIExpression()), !dbg !1257
  %0 = load ptr, ptr %external_object.addr, align 8, !dbg !1258
  %1 = load i32, ptr %0, align 8, !dbg !1259
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 1, label %sw.bb
    i32 20, label %sw.bb
    i32 0, label %sw.bb2
  ], !dbg !1260

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  %2 = load ptr, ptr %external_object.addr, align 8, !dbg !1261
  %3 = load i32, ptr %2, align 8, !dbg !1261
  %conv = trunc i32 %3 to i8, !dbg !1261
  %conv1 = zext i8 %conv to i32, !dbg !1261
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 436, i32 noundef 1, i32 noundef %conv1) #16, !dbg !1261
  store ptr %call, ptr %internal_object, align 8, !dbg !1263
  %4 = load ptr, ptr %internal_object, align 8, !dbg !1264
  %tobool = icmp ne ptr %4, null, !dbg !1264
  br i1 %tobool, label %if.end, label %if.then, !dbg !1266

if.then:                                          ; preds = %sw.bb
  store i32 4, ptr %retval, align 4, !dbg !1267
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1267

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog, !dbg !1269

sw.bb2:                                           ; preds = %entry
  %5 = load ptr, ptr %ret_internal_object.addr, align 8, !dbg !1270
  store ptr null, ptr %5, align 8, !dbg !1271
  store i32 0, ptr %retval, align 4, !dbg !1272
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1272

sw.default:                                       ; preds = %entry
  %6 = load ptr, ptr %external_object.addr, align 8, !dbg !1273
  %7 = load i32, ptr %6, align 8, !dbg !1273
  %call3 = call ptr @acpi_ut_get_type_name(i32 noundef %7) #16, !dbg !1273
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 451, ptr noundef @.str.1, ptr noundef %call3) #16, !dbg !1273
  store i32 15, ptr %retval, align 4, !dbg !1274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1274

sw.epilog:                                        ; preds = %if.end
  %8 = load ptr, ptr %external_object.addr, align 8, !dbg !1275
  %9 = load i32, ptr %8, align 8, !dbg !1276
  switch i32 %9, label %sw.default37 [
    i32 2, label %sw.bb4
    i32 3, label %sw.bb17
    i32 1, label %sw.bb34
    i32 20, label %sw.bb36
  ], !dbg !1277

sw.bb4:                                           ; preds = %sw.epilog
  %10 = load ptr, ptr %external_object.addr, align 8, !dbg !1278
  %length = getelementptr inbounds %struct.anon.0, ptr %10, i32 0, i32 1, !dbg !1278
  %11 = load i32, ptr %length, align 4, !dbg !1278
  %conv5 = zext i32 %11 to i64, !dbg !1278
  %add = add i64 %conv5, 1, !dbg !1278
  %call6 = call ptr @acpi_os_allocate_zeroed(i64 noundef %add) #16, !dbg !1278
  %12 = load ptr, ptr %internal_object, align 8, !dbg !1280
  %pointer = getelementptr inbounds %struct.acpi_object_string, ptr %12, i32 0, i32 5, !dbg !1281
  store ptr %call6, ptr %pointer, align 8, !dbg !1282
  %13 = load ptr, ptr %internal_object, align 8, !dbg !1283
  %pointer7 = getelementptr inbounds %struct.acpi_object_string, ptr %13, i32 0, i32 5, !dbg !1285
  %14 = load ptr, ptr %pointer7, align 8, !dbg !1285
  %tobool8 = icmp ne ptr %14, null, !dbg !1283
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1286

if.then9:                                         ; preds = %sw.bb4
  br label %error_exit, !dbg !1287

if.end10:                                         ; preds = %sw.bb4
  %15 = load ptr, ptr %internal_object, align 8, !dbg !1289
  %pointer11 = getelementptr inbounds %struct.acpi_object_string, ptr %15, i32 0, i32 5, !dbg !1290
  %16 = load ptr, ptr %pointer11, align 8, !dbg !1290
  %17 = load ptr, ptr %external_object.addr, align 8, !dbg !1291
  %pointer12 = getelementptr inbounds %struct.anon.0, ptr %17, i32 0, i32 2, !dbg !1292
  %18 = load ptr, ptr %pointer12, align 8, !dbg !1292
  %19 = load ptr, ptr %external_object.addr, align 8, !dbg !1293
  %length13 = getelementptr inbounds %struct.anon.0, ptr %19, i32 0, i32 1, !dbg !1294
  %20 = load i32, ptr %length13, align 4, !dbg !1294
  %conv14 = zext i32 %20 to i64, !dbg !1293
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %18, i64 %conv14, i1 false), !dbg !1295
  %21 = load ptr, ptr %external_object.addr, align 8, !dbg !1296
  %length15 = getelementptr inbounds %struct.anon.0, ptr %21, i32 0, i32 1, !dbg !1297
  %22 = load i32, ptr %length15, align 4, !dbg !1297
  %23 = load ptr, ptr %internal_object, align 8, !dbg !1298
  %length16 = getelementptr inbounds %struct.acpi_object_string, ptr %23, i32 0, i32 6, !dbg !1299
  store i32 %22, ptr %length16, align 8, !dbg !1300
  br label %sw.epilog38, !dbg !1301

sw.bb17:                                          ; preds = %sw.epilog
  %24 = load ptr, ptr %external_object.addr, align 8, !dbg !1302
  %length18 = getelementptr inbounds %struct.anon.1, ptr %24, i32 0, i32 1, !dbg !1302
  %25 = load i32, ptr %length18, align 4, !dbg !1302
  %conv19 = zext i32 %25 to i64, !dbg !1302
  %call20 = call ptr @acpi_os_allocate_zeroed(i64 noundef %conv19) #16, !dbg !1302
  %26 = load ptr, ptr %internal_object, align 8, !dbg !1303
  %pointer21 = getelementptr inbounds %struct.acpi_object_buffer, ptr %26, i32 0, i32 5, !dbg !1304
  store ptr %call20, ptr %pointer21, align 8, !dbg !1305
  %27 = load ptr, ptr %internal_object, align 8, !dbg !1306
  %pointer22 = getelementptr inbounds %struct.acpi_object_buffer, ptr %27, i32 0, i32 5, !dbg !1308
  %28 = load ptr, ptr %pointer22, align 8, !dbg !1308
  %tobool23 = icmp ne ptr %28, null, !dbg !1306
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !1309

if.then24:                                        ; preds = %sw.bb17
  br label %error_exit, !dbg !1310

if.end25:                                         ; preds = %sw.bb17
  %29 = load ptr, ptr %internal_object, align 8, !dbg !1312
  %pointer26 = getelementptr inbounds %struct.acpi_object_buffer, ptr %29, i32 0, i32 5, !dbg !1313
  %30 = load ptr, ptr %pointer26, align 8, !dbg !1313
  %31 = load ptr, ptr %external_object.addr, align 8, !dbg !1314
  %pointer27 = getelementptr inbounds %struct.anon.1, ptr %31, i32 0, i32 2, !dbg !1315
  %32 = load ptr, ptr %pointer27, align 8, !dbg !1315
  %33 = load ptr, ptr %external_object.addr, align 8, !dbg !1316
  %length28 = getelementptr inbounds %struct.anon.1, ptr %33, i32 0, i32 1, !dbg !1317
  %34 = load i32, ptr %length28, align 4, !dbg !1317
  %conv29 = zext i32 %34 to i64, !dbg !1316
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %30, ptr align 1 %32, i64 %conv29, i1 false), !dbg !1318
  %35 = load ptr, ptr %external_object.addr, align 8, !dbg !1319
  %length30 = getelementptr inbounds %struct.anon.1, ptr %35, i32 0, i32 1, !dbg !1320
  %36 = load i32, ptr %length30, align 4, !dbg !1320
  %37 = load ptr, ptr %internal_object, align 8, !dbg !1321
  %length31 = getelementptr inbounds %struct.acpi_object_buffer, ptr %37, i32 0, i32 6, !dbg !1322
  store i32 %36, ptr %length31, align 8, !dbg !1323
  %38 = load ptr, ptr %internal_object, align 8, !dbg !1324
  %flags = getelementptr inbounds %struct.acpi_object_buffer, ptr %38, i32 0, i32 4, !dbg !1325
  %39 = load i8, ptr %flags, align 4, !dbg !1326
  %conv32 = zext i8 %39 to i32, !dbg !1326
  %or = or i32 %conv32, 4, !dbg !1326
  %conv33 = trunc i32 %or to i8, !dbg !1326
  store i8 %conv33, ptr %flags, align 4, !dbg !1326
  br label %sw.epilog38, !dbg !1327

sw.bb34:                                          ; preds = %sw.epilog
  %40 = load ptr, ptr %external_object.addr, align 8, !dbg !1328
  %value = getelementptr inbounds %struct.anon, ptr %40, i32 0, i32 1, !dbg !1329
  %41 = load i64, ptr %value, align 8, !dbg !1329
  %42 = load ptr, ptr %internal_object, align 8, !dbg !1330
  %value35 = getelementptr inbounds %struct.acpi_object_integer, ptr %42, i32 0, i32 6, !dbg !1331
  store i64 %41, ptr %value35, align 8, !dbg !1332
  br label %sw.epilog38, !dbg !1333

sw.bb36:                                          ; preds = %sw.epilog
  %43 = load ptr, ptr %internal_object, align 8, !dbg !1334
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %43, i32 0, i32 5, !dbg !1335
  store i8 2, ptr %class, align 1, !dbg !1336
  %44 = load ptr, ptr %external_object.addr, align 8, !dbg !1337
  %handle = getelementptr inbounds %struct.anon.3, ptr %44, i32 0, i32 2, !dbg !1338
  %45 = load ptr, ptr %handle, align 8, !dbg !1338
  %46 = load ptr, ptr %internal_object, align 8, !dbg !1339
  %object = getelementptr inbounds %struct.acpi_object_reference, ptr %46, i32 0, i32 8, !dbg !1340
  store ptr %45, ptr %object, align 8, !dbg !1341
  br label %sw.epilog38, !dbg !1342

sw.default37:                                     ; preds = %sw.epilog
  br label %sw.epilog38, !dbg !1343

sw.epilog38:                                      ; preds = %sw.default37, %sw.bb36, %sw.bb34, %if.end25, %if.end10
  %47 = load ptr, ptr %internal_object, align 8, !dbg !1344
  %48 = load ptr, ptr %ret_internal_object.addr, align 8, !dbg !1345
  store ptr %47, ptr %48, align 8, !dbg !1346
  store i32 0, ptr %retval, align 4, !dbg !1347
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1347

error_exit:                                       ; preds = %if.then24, %if.then9
  call void @llvm.dbg.label(metadata !1253), !dbg !1348
  %49 = load ptr, ptr %internal_object, align 8, !dbg !1349
  call void @acpi_ut_remove_reference(ptr noundef %49) #16, !dbg !1350
  store i32 4, ptr %retval, align 4, !dbg !1351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1351

cleanup:                                          ; preds = %error_exit, %sw.epilog38, %sw.default, %sw.bb2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %internal_object) #15, !dbg !1352
  %50 = load i32, ptr %retval, align 4, !dbg !1352
  ret i32 %50, !dbg !1352
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_copy_iobject_to_iobject(ptr noundef %source_desc, ptr noundef %dest_desc, ptr noundef %walk_state) #0 align 16 !dbg !1353 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca ptr, align 8
  %dest_desc.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %source_desc, ptr %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_desc.addr, metadata !1357, metadata !DIExpression()), !dbg !1361
  store ptr %dest_desc, ptr %dest_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_desc.addr, metadata !1358, metadata !DIExpression()), !dbg !1362
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1359, metadata !DIExpression()), !dbg !1363
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1364
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1360, metadata !DIExpression()), !dbg !1365
  store i32 0, ptr %status, align 4, !dbg !1365
  %0 = load ptr, ptr %source_desc.addr, align 8, !dbg !1366
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %0, i32 0, i32 2, !dbg !1366
  %1 = load i8, ptr %type, align 1, !dbg !1366
  %conv = zext i8 %1 to i32, !dbg !1366
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 947, i32 noundef 1, i32 noundef %conv) #16, !dbg !1366
  %2 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1367
  store ptr %call, ptr %2, align 8, !dbg !1368
  %3 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1369
  %4 = load ptr, ptr %3, align 8, !dbg !1371
  %tobool = icmp ne ptr %4, null, !dbg !1371
  br i1 %tobool, label %if.end, label %if.then, !dbg !1372

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !1373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1373

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %source_desc.addr, align 8, !dbg !1375
  %type1 = getelementptr inbounds %struct.acpi_object_common, ptr %5, i32 0, i32 2, !dbg !1377
  %6 = load i8, ptr %type1, align 1, !dbg !1377
  %conv2 = zext i8 %6 to i32, !dbg !1375
  %cmp = icmp eq i32 %conv2, 4, !dbg !1378
  br i1 %cmp, label %if.then4, label %if.else, !dbg !1379

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %source_desc.addr, align 8, !dbg !1380
  %8 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1382
  %9 = load ptr, ptr %8, align 8, !dbg !1383
  %10 = load ptr, ptr %walk_state.addr, align 8, !dbg !1384
  %call5 = call i32 @acpi_ut_copy_ipackage_to_ipackage(ptr noundef %7, ptr noundef %9, ptr noundef %10) #16, !dbg !1385
  store i32 %call5, ptr %status, align 4, !dbg !1386
  br label %if.end7, !dbg !1387

if.else:                                          ; preds = %if.end
  %11 = load ptr, ptr %source_desc.addr, align 8, !dbg !1388
  %12 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1390
  %13 = load ptr, ptr %12, align 8, !dbg !1391
  %call6 = call i32 @acpi_ut_copy_simple_object(ptr noundef %11, ptr noundef %13) #16, !dbg !1392
  store i32 %call6, ptr %status, align 4, !dbg !1393
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %14 = load i32, ptr %status, align 4, !dbg !1394
  %tobool8 = icmp ne i32 %14, 0, !dbg !1394
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1396

if.then9:                                         ; preds = %if.end7
  %15 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1397
  %16 = load ptr, ptr %15, align 8, !dbg !1399
  call void @acpi_ut_remove_reference(ptr noundef %16) #16, !dbg !1400
  br label %if.end10, !dbg !1401

if.end10:                                         ; preds = %if.then9, %if.end7
  %17 = load i32, ptr %status, align 4, !dbg !1402
  store i32 %17, ptr %retval, align 4, !dbg !1402
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1402

cleanup:                                          ; preds = %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1403
  %18 = load i32, ptr %retval, align 4, !dbg !1403
  ret i32 %18, !dbg !1403
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1404 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ut_copy_ipackage_to_ipackage(ptr noundef %source_obj, ptr noundef %dest_obj, ptr noundef %walk_state) #0 align 16 !dbg !1408 {
entry:
  %retval = alloca i32, align 4
  %source_obj.addr = alloca ptr, align 8
  %dest_obj.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %source_obj, ptr %source_obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_obj.addr, metadata !1412, metadata !DIExpression()), !dbg !1416
  store ptr %dest_obj, ptr %dest_obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_obj.addr, metadata !1413, metadata !DIExpression()), !dbg !1417
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1414, metadata !DIExpression()), !dbg !1418
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1419
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1415, metadata !DIExpression()), !dbg !1420
  store i32 0, ptr %status, align 4, !dbg !1420
  %0 = load ptr, ptr %source_obj.addr, align 8, !dbg !1421
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %0, i32 0, i32 2, !dbg !1422
  %1 = load i8, ptr %type, align 1, !dbg !1422
  %2 = load ptr, ptr %dest_obj.addr, align 8, !dbg !1423
  %type1 = getelementptr inbounds %struct.acpi_object_common, ptr %2, i32 0, i32 2, !dbg !1424
  store i8 %1, ptr %type1, align 1, !dbg !1425
  %3 = load ptr, ptr %source_obj.addr, align 8, !dbg !1426
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %3, i32 0, i32 4, !dbg !1427
  %4 = load i8, ptr %flags, align 4, !dbg !1427
  %5 = load ptr, ptr %dest_obj.addr, align 8, !dbg !1428
  %flags2 = getelementptr inbounds %struct.acpi_object_common, ptr %5, i32 0, i32 4, !dbg !1429
  store i8 %4, ptr %flags2, align 4, !dbg !1430
  %6 = load ptr, ptr %source_obj.addr, align 8, !dbg !1431
  %count = getelementptr inbounds %struct.acpi_object_package, ptr %6, i32 0, i32 9, !dbg !1432
  %7 = load i32, ptr %count, align 4, !dbg !1432
  %8 = load ptr, ptr %dest_obj.addr, align 8, !dbg !1433
  %count3 = getelementptr inbounds %struct.acpi_object_package, ptr %8, i32 0, i32 9, !dbg !1434
  store i32 %7, ptr %count3, align 4, !dbg !1435
  %9 = load ptr, ptr %source_obj.addr, align 8, !dbg !1436
  %count4 = getelementptr inbounds %struct.acpi_object_package, ptr %9, i32 0, i32 9, !dbg !1436
  %10 = load i32, ptr %count4, align 4, !dbg !1436
  %conv = zext i32 %10 to i64, !dbg !1436
  %add = add i64 %conv, 1, !dbg !1436
  %mul = mul i64 %add, 8, !dbg !1436
  %call = call ptr @acpi_os_allocate_zeroed(i64 noundef %mul) #16, !dbg !1436
  %11 = load ptr, ptr %dest_obj.addr, align 8, !dbg !1437
  %elements = getelementptr inbounds %struct.acpi_object_package, ptr %11, i32 0, i32 6, !dbg !1438
  store ptr %call, ptr %elements, align 8, !dbg !1439
  %12 = load ptr, ptr %dest_obj.addr, align 8, !dbg !1440
  %elements5 = getelementptr inbounds %struct.acpi_object_package, ptr %12, i32 0, i32 6, !dbg !1442
  %13 = load ptr, ptr %elements5, align 8, !dbg !1442
  %tobool = icmp ne ptr %13, null, !dbg !1440
  br i1 %tobool, label %if.end, label %if.then, !dbg !1443

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 908, ptr noundef @.str.3) #16, !dbg !1444
  store i32 4, ptr %retval, align 4, !dbg !1446
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1446

if.end:                                           ; preds = %entry
  %14 = load ptr, ptr %source_obj.addr, align 8, !dbg !1447
  %15 = load ptr, ptr %dest_obj.addr, align 8, !dbg !1448
  %16 = load ptr, ptr %walk_state.addr, align 8, !dbg !1449
  %call6 = call i32 @acpi_ut_walk_package_tree(ptr noundef %14, ptr noundef %15, ptr noundef @acpi_ut_copy_ielement_to_ielement, ptr noundef %16) #16, !dbg !1450
  store i32 %call6, ptr %status, align 4, !dbg !1451
  %17 = load i32, ptr %status, align 4, !dbg !1452
  store i32 %17, ptr %retval, align 4, !dbg !1452
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1452

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1453
  %18 = load i32, ptr %retval, align 4, !dbg !1453
  ret i32 %18, !dbg !1453
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ut_copy_simple_object(ptr noundef %source_desc, ptr noundef %dest_desc) #0 align 16 !dbg !1454 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca ptr, align 8
  %dest_desc.addr = alloca ptr, align 8
  %reference_count = alloca i16, align 2
  %next_object = alloca ptr, align 8
  %status = alloca i32, align 4
  %copy_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %source_desc, ptr %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_desc.addr, metadata !1458, metadata !DIExpression()), !dbg !1464
  store ptr %dest_desc, ptr %dest_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_desc.addr, metadata !1459, metadata !DIExpression()), !dbg !1465
  call void @llvm.lifetime.start.p0(i64 2, ptr %reference_count) #15, !dbg !1466
  call void @llvm.dbg.declare(metadata ptr %reference_count, metadata !1460, metadata !DIExpression()), !dbg !1467
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_object) #15, !dbg !1468
  call void @llvm.dbg.declare(metadata ptr %next_object, metadata !1461, metadata !DIExpression()), !dbg !1469
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1470
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1462, metadata !DIExpression()), !dbg !1471
  call void @llvm.lifetime.start.p0(i64 8, ptr %copy_size) #15, !dbg !1472
  call void @llvm.dbg.declare(metadata ptr %copy_size, metadata !1463, metadata !DIExpression()), !dbg !1473
  %0 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1474
  %reference_count1 = getelementptr inbounds %struct.acpi_object_common, ptr %0, i32 0, i32 3, !dbg !1475
  %1 = load i16, ptr %reference_count1, align 2, !dbg !1475
  store i16 %1, ptr %reference_count, align 2, !dbg !1476
  %2 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1477
  %next_object2 = getelementptr inbounds %struct.acpi_object_common, ptr %2, i32 0, i32 0, !dbg !1478
  %3 = load ptr, ptr %next_object2, align 8, !dbg !1478
  store ptr %3, ptr %next_object, align 8, !dbg !1479
  store i64 72, ptr %copy_size, align 8, !dbg !1480
  %4 = load ptr, ptr %source_desc.addr, align 8, !dbg !1481
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %4, i32 0, i32 1, !dbg !1481
  %5 = load i8, ptr %descriptor_type, align 8, !dbg !1481
  %conv = zext i8 %5 to i32, !dbg !1481
  %cmp = icmp eq i32 %conv, 15, !dbg !1483
  br i1 %cmp, label %if.then, label %if.end, !dbg !1484

if.then:                                          ; preds = %entry
  store i64 48, ptr %copy_size, align 8, !dbg !1485
  br label %if.end, !dbg !1487

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1488
  %7 = ptrtoint ptr %6 to i64, !dbg !1488
  %8 = inttoptr i64 %7 to ptr, !dbg !1488
  %9 = load ptr, ptr %source_desc.addr, align 8, !dbg !1489
  %10 = ptrtoint ptr %9 to i64, !dbg !1489
  %11 = inttoptr i64 %10 to ptr, !dbg !1489
  %12 = load i64, ptr %copy_size, align 8, !dbg !1490
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %11, i64 %12, i1 false), !dbg !1491
  %13 = load i16, ptr %reference_count, align 2, !dbg !1492
  %14 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1493
  %reference_count4 = getelementptr inbounds %struct.acpi_object_common, ptr %14, i32 0, i32 3, !dbg !1494
  store i16 %13, ptr %reference_count4, align 2, !dbg !1495
  %15 = load ptr, ptr %next_object, align 8, !dbg !1496
  %16 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1497
  %next_object5 = getelementptr inbounds %struct.acpi_object_common, ptr %16, i32 0, i32 0, !dbg !1498
  store ptr %15, ptr %next_object5, align 8, !dbg !1499
  %17 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1500
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %17, i32 0, i32 4, !dbg !1501
  %18 = load i8, ptr %flags, align 4, !dbg !1502
  %conv6 = zext i8 %18 to i32, !dbg !1502
  %and = and i32 %conv6, -3, !dbg !1502
  %conv7 = trunc i32 %and to i8, !dbg !1502
  store i8 %conv7, ptr %flags, align 4, !dbg !1502
  %19 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1503
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %19, i32 0, i32 2, !dbg !1504
  %20 = load i8, ptr %type, align 1, !dbg !1504
  %conv8 = zext i8 %20 to i32, !dbg !1503
  switch i32 %conv8, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb23
    i32 20, label %sw.bb41
    i32 10, label %sw.bb47
    i32 9, label %sw.bb52
    i32 7, label %sw.bb57
  ], !dbg !1505

sw.bb:                                            ; preds = %if.end
  %21 = load ptr, ptr %source_desc.addr, align 8, !dbg !1506
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %21, i32 0, i32 5, !dbg !1509
  %22 = load ptr, ptr %pointer, align 8, !dbg !1509
  %tobool = icmp ne ptr %22, null, !dbg !1510
  br i1 %tobool, label %land.lhs.true, label %if.end22, !dbg !1511

land.lhs.true:                                    ; preds = %sw.bb
  %23 = load ptr, ptr %source_desc.addr, align 8, !dbg !1512
  %length = getelementptr inbounds %struct.acpi_object_buffer, ptr %23, i32 0, i32 6, !dbg !1513
  %24 = load i32, ptr %length, align 8, !dbg !1513
  %tobool9 = icmp ne i32 %24, 0, !dbg !1514
  br i1 %tobool9, label %if.then10, label %if.end22, !dbg !1515

if.then10:                                        ; preds = %land.lhs.true
  %25 = load ptr, ptr %source_desc.addr, align 8, !dbg !1516
  %length11 = getelementptr inbounds %struct.acpi_object_buffer, ptr %25, i32 0, i32 6, !dbg !1516
  %26 = load i32, ptr %length11, align 8, !dbg !1516
  %conv12 = zext i32 %26 to i64, !dbg !1516
  %call = call ptr @acpi_os_allocate(i64 noundef %conv12) #16, !dbg !1516
  %27 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1518
  %pointer13 = getelementptr inbounds %struct.acpi_object_buffer, ptr %27, i32 0, i32 5, !dbg !1519
  store ptr %call, ptr %pointer13, align 8, !dbg !1520
  %28 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1521
  %pointer14 = getelementptr inbounds %struct.acpi_object_buffer, ptr %28, i32 0, i32 5, !dbg !1523
  %29 = load ptr, ptr %pointer14, align 8, !dbg !1523
  %tobool15 = icmp ne ptr %29, null, !dbg !1521
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !1524

if.then16:                                        ; preds = %if.then10
  store i32 4, ptr %retval, align 4, !dbg !1525
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1525

if.end17:                                         ; preds = %if.then10
  %30 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1527
  %pointer18 = getelementptr inbounds %struct.acpi_object_buffer, ptr %30, i32 0, i32 5, !dbg !1528
  %31 = load ptr, ptr %pointer18, align 8, !dbg !1528
  %32 = load ptr, ptr %source_desc.addr, align 8, !dbg !1529
  %pointer19 = getelementptr inbounds %struct.acpi_object_buffer, ptr %32, i32 0, i32 5, !dbg !1530
  %33 = load ptr, ptr %pointer19, align 8, !dbg !1530
  %34 = load ptr, ptr %source_desc.addr, align 8, !dbg !1531
  %length20 = getelementptr inbounds %struct.acpi_object_buffer, ptr %34, i32 0, i32 6, !dbg !1532
  %35 = load i32, ptr %length20, align 8, !dbg !1532
  %conv21 = zext i32 %35 to i64, !dbg !1531
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %31, ptr align 1 %33, i64 %conv21, i1 false), !dbg !1533
  br label %if.end22, !dbg !1534

if.end22:                                         ; preds = %if.end17, %land.lhs.true, %sw.bb
  br label %sw.epilog, !dbg !1535

sw.bb23:                                          ; preds = %if.end
  %36 = load ptr, ptr %source_desc.addr, align 8, !dbg !1536
  %pointer24 = getelementptr inbounds %struct.acpi_object_string, ptr %36, i32 0, i32 5, !dbg !1538
  %37 = load ptr, ptr %pointer24, align 8, !dbg !1538
  %tobool25 = icmp ne ptr %37, null, !dbg !1536
  br i1 %tobool25, label %if.then26, label %if.end40, !dbg !1539

if.then26:                                        ; preds = %sw.bb23
  %38 = load ptr, ptr %source_desc.addr, align 8, !dbg !1540
  %length27 = getelementptr inbounds %struct.acpi_object_string, ptr %38, i32 0, i32 6, !dbg !1540
  %39 = load i32, ptr %length27, align 8, !dbg !1540
  %conv28 = zext i32 %39 to i64, !dbg !1540
  %add = add i64 %conv28, 1, !dbg !1540
  %call29 = call ptr @acpi_os_allocate(i64 noundef %add) #16, !dbg !1540
  %40 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1542
  %pointer30 = getelementptr inbounds %struct.acpi_object_string, ptr %40, i32 0, i32 5, !dbg !1543
  store ptr %call29, ptr %pointer30, align 8, !dbg !1544
  %41 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1545
  %pointer31 = getelementptr inbounds %struct.acpi_object_string, ptr %41, i32 0, i32 5, !dbg !1547
  %42 = load ptr, ptr %pointer31, align 8, !dbg !1547
  %tobool32 = icmp ne ptr %42, null, !dbg !1545
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !1548

if.then33:                                        ; preds = %if.then26
  store i32 4, ptr %retval, align 4, !dbg !1549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1549

if.end34:                                         ; preds = %if.then26
  %43 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1551
  %pointer35 = getelementptr inbounds %struct.acpi_object_string, ptr %43, i32 0, i32 5, !dbg !1552
  %44 = load ptr, ptr %pointer35, align 8, !dbg !1552
  %45 = load ptr, ptr %source_desc.addr, align 8, !dbg !1553
  %pointer36 = getelementptr inbounds %struct.acpi_object_string, ptr %45, i32 0, i32 5, !dbg !1554
  %46 = load ptr, ptr %pointer36, align 8, !dbg !1554
  %47 = load ptr, ptr %source_desc.addr, align 8, !dbg !1555
  %length37 = getelementptr inbounds %struct.acpi_object_string, ptr %47, i32 0, i32 6, !dbg !1556
  %48 = load i32, ptr %length37, align 8, !dbg !1556
  %conv38 = zext i32 %48 to i64, !dbg !1557
  %add39 = add i64 %conv38, 1, !dbg !1558
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %44, ptr align 1 %46, i64 %add39, i1 false), !dbg !1559
  br label %if.end40, !dbg !1560

if.end40:                                         ; preds = %if.end34, %sw.bb23
  br label %sw.epilog, !dbg !1561

sw.bb41:                                          ; preds = %if.end
  %49 = load ptr, ptr %source_desc.addr, align 8, !dbg !1562
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %49, i32 0, i32 5, !dbg !1564
  %50 = load i8, ptr %class, align 1, !dbg !1564
  %conv42 = zext i8 %50 to i32, !dbg !1562
  %cmp43 = icmp eq i32 %conv42, 4, !dbg !1565
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !1566

if.then45:                                        ; preds = %sw.bb41
  br label %sw.epilog, !dbg !1567

if.end46:                                         ; preds = %sw.bb41
  %51 = load ptr, ptr %source_desc.addr, align 8, !dbg !1569
  %object = getelementptr inbounds %struct.acpi_object_reference, ptr %51, i32 0, i32 8, !dbg !1570
  %52 = load ptr, ptr %object, align 8, !dbg !1570
  call void @acpi_ut_add_reference(ptr noundef %52) #16, !dbg !1571
  br label %sw.epilog, !dbg !1572

sw.bb47:                                          ; preds = %if.end
  %53 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1573
  %handler = getelementptr inbounds %struct.acpi_object_region, ptr %53, i32 0, i32 7, !dbg !1575
  %54 = load ptr, ptr %handler, align 8, !dbg !1575
  %tobool48 = icmp ne ptr %54, null, !dbg !1573
  br i1 %tobool48, label %if.then49, label %if.end51, !dbg !1576

if.then49:                                        ; preds = %sw.bb47
  %55 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1577
  %handler50 = getelementptr inbounds %struct.acpi_object_region, ptr %55, i32 0, i32 7, !dbg !1579
  %56 = load ptr, ptr %handler50, align 8, !dbg !1579
  call void @acpi_ut_add_reference(ptr noundef %56) #16, !dbg !1580
  br label %if.end51, !dbg !1581

if.end51:                                         ; preds = %if.then49, %sw.bb47
  br label %sw.epilog, !dbg !1582

sw.bb52:                                          ; preds = %if.end
  %57 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1583
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, ptr %57, i32 0, i32 7, !dbg !1583
  %call53 = call i32 @acpi_os_create_semaphore(i32 noundef 1, i32 noundef 1, ptr noundef %os_mutex) #16, !dbg !1583
  store i32 %call53, ptr %status, align 4, !dbg !1584
  %58 = load i32, ptr %status, align 4, !dbg !1585
  %tobool54 = icmp ne i32 %58, 0, !dbg !1585
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !1587

if.then55:                                        ; preds = %sw.bb52
  %59 = load i32, ptr %status, align 4, !dbg !1588
  store i32 %59, ptr %retval, align 4, !dbg !1590
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1590

if.end56:                                         ; preds = %sw.bb52
  br label %sw.epilog, !dbg !1591

sw.bb57:                                          ; preds = %if.end
  %60 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1592
  %os_semaphore = getelementptr inbounds %struct.acpi_object_event, ptr %60, i32 0, i32 5, !dbg !1593
  %call58 = call i32 @acpi_os_create_semaphore(i32 noundef -1, i32 noundef 0, ptr noundef %os_semaphore) #16, !dbg !1594
  store i32 %call58, ptr %status, align 4, !dbg !1595
  %61 = load i32, ptr %status, align 4, !dbg !1596
  %tobool59 = icmp ne i32 %61, 0, !dbg !1596
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !1598

if.then60:                                        ; preds = %sw.bb57
  %62 = load i32, ptr %status, align 4, !dbg !1599
  store i32 %62, ptr %retval, align 4, !dbg !1601
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1601

if.end61:                                         ; preds = %sw.bb57
  br label %sw.epilog, !dbg !1602

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !1603

sw.epilog:                                        ; preds = %sw.default, %if.end61, %if.end56, %if.end51, %if.end46, %if.then45, %if.end40, %if.end22
  store i32 0, ptr %retval, align 4, !dbg !1604
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1604

cleanup:                                          ; preds = %sw.epilog, %if.then60, %if.then55, %if.then33, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %copy_size) #15, !dbg !1605
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1605
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_object) #15, !dbg !1605
  call void @llvm.lifetime.end.p0(i64 2, ptr %reference_count) #15, !dbg !1605
  %63 = load i32, ptr %retval, align 4, !dbg !1605
  ret i32 %63, !dbg !1605
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1606 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1609 dso_local i32 @acpi_ut_walk_package_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ut_copy_ielement_to_eelement(i8 noundef zeroext %object_type, ptr noundef %source_object, ptr noundef %state, ptr noundef %context) #0 align 16 !dbg !1616 {
entry:
  %retval = alloca i32, align 4
  %object_type.addr = alloca i8, align 1
  %source_object.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %info = alloca ptr, align 8
  %object_space = alloca i64, align 8
  %this_index = alloca i32, align 4
  %target_object = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %object_type, ptr %object_type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %object_type.addr, metadata !1618, metadata !DIExpression()), !dbg !1627
  store ptr %source_object, ptr %source_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_object.addr, metadata !1619, metadata !DIExpression()), !dbg !1628
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !1620, metadata !DIExpression()), !dbg !1629
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1621, metadata !DIExpression()), !dbg !1630
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1631
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1622, metadata !DIExpression()), !dbg !1632
  store i32 0, ptr %status, align 4, !dbg !1632
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #15, !dbg !1633
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1623, metadata !DIExpression()), !dbg !1634
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1635
  store ptr %0, ptr %info, align 8, !dbg !1634
  call void @llvm.lifetime.start.p0(i64 8, ptr %object_space) #15, !dbg !1636
  call void @llvm.dbg.declare(metadata ptr %object_space, metadata !1624, metadata !DIExpression()), !dbg !1637
  call void @llvm.lifetime.start.p0(i64 4, ptr %this_index) #15, !dbg !1638
  call void @llvm.dbg.declare(metadata ptr %this_index, metadata !1625, metadata !DIExpression()), !dbg !1639
  call void @llvm.lifetime.start.p0(i64 8, ptr %target_object) #15, !dbg !1640
  call void @llvm.dbg.declare(metadata ptr %target_object, metadata !1626, metadata !DIExpression()), !dbg !1641
  %1 = load ptr, ptr %state.addr, align 8, !dbg !1642
  %index = getelementptr inbounds %struct.acpi_pkg_state, ptr %1, i32 0, i32 5, !dbg !1643
  %2 = load i32, ptr %index, align 8, !dbg !1643
  store i32 %2, ptr %this_index, align 4, !dbg !1644
  %3 = load ptr, ptr %state.addr, align 8, !dbg !1645
  %dest_object = getelementptr inbounds %struct.acpi_pkg_state, ptr %3, i32 0, i32 7, !dbg !1646
  %4 = load ptr, ptr %dest_object, align 8, !dbg !1646
  %elements = getelementptr inbounds %struct.anon.2, ptr %4, i32 0, i32 2, !dbg !1647
  %5 = load ptr, ptr %elements, align 8, !dbg !1647
  %6 = load i32, ptr %this_index, align 4, !dbg !1648
  %idxprom = zext i32 %6 to i64, !dbg !1649
  %arrayidx = getelementptr %union.acpi_object, ptr %5, i64 %idxprom, !dbg !1649
  store ptr %arrayidx, ptr %target_object, align 8, !dbg !1650
  %7 = load i8, ptr %object_type.addr, align 1, !dbg !1651
  %conv = zext i8 %7 to i32, !dbg !1651
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !1652

sw.bb:                                            ; preds = %entry
  %8 = load ptr, ptr %source_object.addr, align 8, !dbg !1653
  %9 = load ptr, ptr %target_object, align 8, !dbg !1655
  %10 = load ptr, ptr %info, align 8, !dbg !1656
  %free_space = getelementptr inbounds %struct.acpi_pkg_info, ptr %10, i32 0, i32 0, !dbg !1657
  %11 = load ptr, ptr %free_space, align 8, !dbg !1657
  %call = call i32 @acpi_ut_copy_isimple_to_esimple(ptr noundef %8, ptr noundef %9, ptr noundef %11, ptr noundef %object_space) #16, !dbg !1658
  store i32 %call, ptr %status, align 4, !dbg !1659
  %12 = load i32, ptr %status, align 4, !dbg !1660
  %tobool = icmp ne i32 %12, 0, !dbg !1660
  br i1 %tobool, label %if.then, label %if.end, !dbg !1662

if.then:                                          ; preds = %sw.bb
  %13 = load i32, ptr %status, align 4, !dbg !1663
  store i32 %13, ptr %retval, align 4, !dbg !1665
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1665

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog, !dbg !1666

sw.bb1:                                           ; preds = %entry
  %14 = load ptr, ptr %target_object, align 8, !dbg !1667
  store i32 4, ptr %14, align 8, !dbg !1668
  %15 = load ptr, ptr %source_object.addr, align 8, !dbg !1669
  %count = getelementptr inbounds %struct.acpi_object_package, ptr %15, i32 0, i32 9, !dbg !1670
  %16 = load i32, ptr %count, align 4, !dbg !1670
  %17 = load ptr, ptr %target_object, align 8, !dbg !1671
  %count2 = getelementptr inbounds %struct.anon.2, ptr %17, i32 0, i32 1, !dbg !1672
  store i32 %16, ptr %count2, align 4, !dbg !1673
  %18 = load ptr, ptr %info, align 8, !dbg !1674
  %free_space3 = getelementptr inbounds %struct.acpi_pkg_info, ptr %18, i32 0, i32 0, !dbg !1674
  %19 = load ptr, ptr %free_space3, align 8, !dbg !1674
  %20 = ptrtoint ptr %19 to i64, !dbg !1674
  %21 = inttoptr i64 %20 to ptr, !dbg !1674
  %22 = load ptr, ptr %target_object, align 8, !dbg !1675
  %elements4 = getelementptr inbounds %struct.anon.2, ptr %22, i32 0, i32 2, !dbg !1676
  store ptr %21, ptr %elements4, align 8, !dbg !1677
  %23 = load ptr, ptr %target_object, align 8, !dbg !1678
  %24 = load ptr, ptr %state.addr, align 8, !dbg !1679
  %this_target_obj = getelementptr inbounds %struct.acpi_pkg_state, ptr %24, i32 0, i32 9, !dbg !1680
  store ptr %23, ptr %this_target_obj, align 8, !dbg !1681
  %25 = load ptr, ptr %target_object, align 8, !dbg !1682
  %count5 = getelementptr inbounds %struct.anon.2, ptr %25, i32 0, i32 1, !dbg !1682
  %26 = load i32, ptr %count5, align 4, !dbg !1682
  %conv6 = zext i32 %26 to i64, !dbg !1682
  %mul = mul i64 %conv6, 24, !dbg !1682
  %add = add i64 %mul, 7, !dbg !1682
  %and = and i64 %add, -8, !dbg !1682
  store i64 %and, ptr %object_space, align 8, !dbg !1683
  br label %sw.epilog, !dbg !1684

sw.default:                                       ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1685
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1685

sw.epilog:                                        ; preds = %sw.bb1, %if.end
  %27 = load i64, ptr %object_space, align 8, !dbg !1686
  %28 = load ptr, ptr %info, align 8, !dbg !1687
  %free_space7 = getelementptr inbounds %struct.acpi_pkg_info, ptr %28, i32 0, i32 0, !dbg !1688
  %29 = load ptr, ptr %free_space7, align 8, !dbg !1689
  %add.ptr = getelementptr i8, ptr %29, i64 %27, !dbg !1689
  store ptr %add.ptr, ptr %free_space7, align 8, !dbg !1689
  %30 = load i64, ptr %object_space, align 8, !dbg !1690
  %31 = load ptr, ptr %info, align 8, !dbg !1691
  %length = getelementptr inbounds %struct.acpi_pkg_info, ptr %31, i32 0, i32 1, !dbg !1692
  %32 = load i64, ptr %length, align 8, !dbg !1693
  %add8 = add i64 %32, %30, !dbg !1693
  store i64 %add8, ptr %length, align 8, !dbg !1693
  %33 = load i32, ptr %status, align 4, !dbg !1694
  store i32 %33, ptr %retval, align 4, !dbg !1695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1695

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %target_object) #15, !dbg !1696
  call void @llvm.lifetime.end.p0(i64 4, ptr %this_index) #15, !dbg !1696
  call void @llvm.lifetime.end.p0(i64 8, ptr %object_space) #15, !dbg !1696
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #15, !dbg !1696
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1696
  %34 = load i32, ptr %retval, align 4, !dbg !1696
  ret i32 %34, !dbg !1696
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1697 dso_local i32 @acpi_ns_get_type(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1701 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1705 dso_local ptr @acpi_ut_get_type_name(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1708 dso_local ptr @acpi_ut_create_package_object(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #6 align 16 !dbg !1711 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1716, metadata !DIExpression()), !dbg !1727
  %0 = load i64, ptr %size.addr, align 8, !dbg !1728
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #15, !dbg !1729
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1717, metadata !DIExpression()), !dbg !1729
  br label %do.body, !dbg !1729

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !1730
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1719, metadata !DIExpression()), !dbg !1730
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !1730
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1722, metadata !DIExpression()), !dbg !1730
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1730
  %conv = zext i1 %cmp to i32, !dbg !1730
  store i32 1, ptr %tmp, align 4, !dbg !1730
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !1731
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !1731
  %1 = load i32, ptr %tmp, align 4, !dbg !1730
  %call = call i64 @arch_local_save_flags() #16, !dbg !1731
  store i64 %call, ptr %_flags, align 8, !dbg !1731
  br label %do.cond, !dbg !1731

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1731

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #15, !dbg !1732
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1723, metadata !DIExpression()), !dbg !1732
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #15, !dbg !1732
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1726, metadata !DIExpression()), !dbg !1732
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1732
  %conv6 = zext i1 %cmp5 to i32, !dbg !1732
  store i32 1, ptr %tmp7, align 4, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #15, !dbg !1733
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #15, !dbg !1733
  %2 = load i32, ptr %tmp7, align 4, !dbg !1732
  %3 = load i64, ptr %_flags, align 8, !dbg !1733
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #16, !dbg !1733
  store i32 %call9, ptr %tmp8, align 4, !dbg !1733
  %4 = load i32, ptr %tmp8, align 4, !dbg !1733
  store i32 %4, ptr %tmp1, align 4, !dbg !1731
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #15, !dbg !1734
  %5 = load i32, ptr %tmp1, align 4, !dbg !1729
  %tobool = icmp ne i32 %5, 0, !dbg !1734
  %6 = zext i1 %tobool to i64, !dbg !1734
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1734
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #17, !dbg !1735
  ret ptr %call10, !dbg !1736
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1737 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1745, metadata !DIExpression()), !dbg !1747
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1746, metadata !DIExpression()), !dbg !1748
  %0 = load i64, ptr %size.addr, align 8, !dbg !1749
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1750
  %or = or i32 %1, 256, !dbg !1751
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !1752
  ret ptr %call, !dbg !1753
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #8 align 16 !dbg !1754 {
entry:
  %call = call i64 @native_save_fl() #16, !dbg !1758
  ret i64 %call, !dbg !1759
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #8 align 16 !dbg !1760 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1765, metadata !DIExpression()), !dbg !1766
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1767
  %and = and i64 %0, 512, !dbg !1768
  %tobool = icmp ne i64 %and, 0, !dbg !1769
  %lnot = xor i1 %tobool, true, !dbg !1769
  %lnot.ext = zext i1 %lnot to i32, !dbg !1769
  ret i32 %lnot.ext, !dbg !1770
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !1771 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1773, metadata !DIExpression()), !dbg !1778
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1774, metadata !DIExpression()), !dbg !1779
  %0 = load i64, ptr %size.addr, align 8, !dbg !1780
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1781
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1782

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1783
  %tobool = icmp ne i64 %2, 0, !dbg !1783
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1784

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !1785
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1775, metadata !DIExpression()), !dbg !1786
  %3 = load i64, ptr %size.addr, align 8, !dbg !1787
  %cmp = icmp ugt i64 %3, 8192, !dbg !1789
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1790

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1791
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1792
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !1793
  store ptr %call, ptr %retval, align 8, !dbg !1794
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1794

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1795
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !1795
  store i32 %call2, ptr %index, align 4, !dbg !1796
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1797
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1798
  %9 = ptrtoint ptr %8 to i64, !dbg !1798
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !1799
  %idxprom = zext i32 %call3 to i64, !dbg !1800
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1800
  %10 = load i32, ptr %index, align 4, !dbg !1801
  %idxprom4 = zext i32 %10 to i64, !dbg !1800
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1800
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1800
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1802
  %13 = load i64, ptr %size.addr, align 8, !dbg !1803
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !1804
  store ptr %call6, ptr %retval, align 8, !dbg !1805
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1805

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !1806
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1807
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1808
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !1809
  store ptr %call8, ptr %retval, align 8, !dbg !1810
  br label %return, !dbg !1810

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1811
  ret ptr %16, !dbg !1811
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1812 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !1813 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1819, metadata !DIExpression()), !dbg !1821
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1820, metadata !DIExpression()), !dbg !1822
  %0 = load i64, ptr %size.addr, align 8, !dbg !1823
  %tobool = icmp ne i64 %0, 0, !dbg !1823
  br i1 %tobool, label %if.end, label %if.then, !dbg !1825

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1826
  br label %return, !dbg !1826

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1827
  %cmp = icmp ule i64 %1, 8, !dbg !1829
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1830

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1831
  br label %return, !dbg !1831

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1832
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1834
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1835

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1836
  %cmp4 = icmp ule i64 %3, 96, !dbg !1837
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1838

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1839
  br label %return, !dbg !1839

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1840
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1842
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1843

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1844
  %cmp9 = icmp ule i64 %5, 192, !dbg !1845
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1846

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1847
  br label %return, !dbg !1847

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1848
  %cmp12 = icmp ule i64 %6, 8, !dbg !1850
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1851

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1852
  br label %return, !dbg !1852

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1853
  %cmp15 = icmp ule i64 %7, 16, !dbg !1855
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1856

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1857
  br label %return, !dbg !1857

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1858
  %cmp18 = icmp ule i64 %8, 32, !dbg !1860
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1861

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1862
  br label %return, !dbg !1862

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1863
  %cmp21 = icmp ule i64 %9, 64, !dbg !1865
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1866

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1867
  br label %return, !dbg !1867

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1868
  %cmp24 = icmp ule i64 %10, 128, !dbg !1870
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1871

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1872
  br label %return, !dbg !1872

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1873
  %cmp27 = icmp ule i64 %11, 256, !dbg !1875
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1876

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1877
  br label %return, !dbg !1877

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1878
  %cmp30 = icmp ule i64 %12, 512, !dbg !1880
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1881

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1882
  br label %return, !dbg !1882

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1883
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1885
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1886

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1887
  br label %return, !dbg !1887

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1888
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1890
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1891

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1892
  br label %return, !dbg !1892

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1893
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1895
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1896

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1897
  br label %return, !dbg !1897

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1898
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1900
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1901

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1902
  br label %return, !dbg !1902

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1903
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1905
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1906

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1907
  br label %return, !dbg !1907

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1908
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1910
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1911

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1912
  br label %return, !dbg !1912

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1913
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1915
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1916

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1917
  br label %return, !dbg !1917

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1918
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1920
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1921

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1922
  br label %return, !dbg !1922

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1923
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1925
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1926

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1927
  br label %return, !dbg !1927

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1928
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1930
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1931

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1932
  br label %return, !dbg !1932

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1933
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1935
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1936

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1937
  br label %return, !dbg !1937

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1938
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1940
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1941

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1942
  br label %return, !dbg !1942

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1943, !range !1945, !noundef !1946
  %tobool69 = trunc i8 %25 to i1, !dbg !1943
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1947

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1948

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #19, !dbg !1949, !srcloc !1952
  unreachable, !dbg !1949

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1953

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1954

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1955

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1957

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1955

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #15, !dbg !1959, !srcloc !1961
  br label %do.end75, !dbg !1959

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1955

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1962
  br label %return, !dbg !1962

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1963
  ret i32 %26, !dbg !1963
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1964 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !1970 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1974, metadata !DIExpression()), !dbg !1976
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1975, metadata !DIExpression()), !dbg !1977
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1978
  %and = and i32 %0, 17, !dbg !1978
  %cmp = icmp eq i32 %and, 0, !dbg !1978
  %lnot = xor i1 %cmp, true, !dbg !1978
  %lnot1 = xor i1 %lnot, true, !dbg !1978
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1978
  %conv = sext i32 %lnot.ext to i64, !dbg !1978
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1978
  %tobool = icmp ne i64 %expval, 0, !dbg !1978
  br i1 %tobool, label %if.then, label %if.end, !dbg !1980

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1981
  br label %return, !dbg !1981

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1982
  %and2 = and i32 %1, 1, !dbg !1984
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1984
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1985

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1986
  br label %return, !dbg !1986

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1987
  br label %return, !dbg !1987

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1989
  ret i32 %2, !dbg !1989
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1990 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1991 dso_local void @__compiletime_assert_173() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #8 align 16 !dbg !1994 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !1997
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1996, metadata !DIExpression()), !dbg !1998
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #15, !dbg !1999, !srcloc !2000
  %0 = load i64, ptr %flags, align 8, !dbg !2001
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !2002
  ret i64 %0, !dbg !2003
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ut_copy_ielement_to_ielement(i8 noundef zeroext %object_type, ptr noundef %source_object, ptr noundef %state, ptr noundef %context) #0 align 16 !dbg !2004 {
entry:
  %retval = alloca i32, align 4
  %object_type.addr = alloca i8, align 1
  %source_object.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %this_index = alloca i32, align 4
  %this_target_ptr = alloca ptr, align 8
  %target_object = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %object_type, ptr %object_type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %object_type.addr, metadata !2006, metadata !DIExpression()), !dbg !2015
  store ptr %source_object, ptr %source_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_object.addr, metadata !2007, metadata !DIExpression()), !dbg !2016
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2008, metadata !DIExpression()), !dbg !2017
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !2009, metadata !DIExpression()), !dbg !2018
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !2019
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2010, metadata !DIExpression()), !dbg !2020
  store i32 0, ptr %status, align 4, !dbg !2020
  call void @llvm.lifetime.start.p0(i64 4, ptr %this_index) #15, !dbg !2021
  call void @llvm.dbg.declare(metadata ptr %this_index, metadata !2011, metadata !DIExpression()), !dbg !2022
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_target_ptr) #15, !dbg !2023
  call void @llvm.dbg.declare(metadata ptr %this_target_ptr, metadata !2012, metadata !DIExpression()), !dbg !2024
  call void @llvm.lifetime.start.p0(i64 8, ptr %target_object) #15, !dbg !2025
  call void @llvm.dbg.declare(metadata ptr %target_object, metadata !2013, metadata !DIExpression()), !dbg !2026
  %0 = load ptr, ptr %state.addr, align 8, !dbg !2027
  %index = getelementptr inbounds %struct.acpi_pkg_state, ptr %0, i32 0, i32 5, !dbg !2028
  %1 = load i32, ptr %index, align 8, !dbg !2028
  store i32 %1, ptr %this_index, align 4, !dbg !2029
  %2 = load ptr, ptr %state.addr, align 8, !dbg !2030
  %dest_object = getelementptr inbounds %struct.acpi_pkg_state, ptr %2, i32 0, i32 7, !dbg !2031
  %3 = load ptr, ptr %dest_object, align 8, !dbg !2031
  %elements = getelementptr inbounds %struct.acpi_object_package, ptr %3, i32 0, i32 6, !dbg !2032
  %4 = load ptr, ptr %elements, align 8, !dbg !2032
  %5 = load i32, ptr %this_index, align 4, !dbg !2033
  %idxprom = zext i32 %5 to i64, !dbg !2030
  %arrayidx = getelementptr ptr, ptr %4, i64 %idxprom, !dbg !2030
  store ptr %arrayidx, ptr %this_target_ptr, align 8, !dbg !2034
  %6 = load i8, ptr %object_type.addr, align 1, !dbg !2035
  %conv = zext i8 %6 to i32, !dbg !2035
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
  ], !dbg !2036

sw.bb:                                            ; preds = %entry
  %7 = load ptr, ptr %source_object.addr, align 8, !dbg !2037
  %tobool = icmp ne ptr %7, null, !dbg !2037
  br i1 %tobool, label %if.then, label %if.else, !dbg !2040

if.then:                                          ; preds = %sw.bb
  %8 = load ptr, ptr %source_object.addr, align 8, !dbg !2041
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %8, i32 0, i32 2, !dbg !2041
  %9 = load i8, ptr %type, align 1, !dbg !2041
  %conv1 = zext i8 %9 to i32, !dbg !2041
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 818, i32 noundef 1, i32 noundef %conv1) #16, !dbg !2041
  store ptr %call, ptr %target_object, align 8, !dbg !2043
  %10 = load ptr, ptr %target_object, align 8, !dbg !2044
  %tobool2 = icmp ne ptr %10, null, !dbg !2044
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !2046

if.then3:                                         ; preds = %if.then
  store i32 4, ptr %retval, align 4, !dbg !2047
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2047

if.end:                                           ; preds = %if.then
  %11 = load ptr, ptr %source_object.addr, align 8, !dbg !2049
  %12 = load ptr, ptr %target_object, align 8, !dbg !2050
  %call4 = call i32 @acpi_ut_copy_simple_object(ptr noundef %11, ptr noundef %12) #16, !dbg !2051
  store i32 %call4, ptr %status, align 4, !dbg !2052
  %13 = load i32, ptr %status, align 4, !dbg !2053
  %tobool5 = icmp ne i32 %13, 0, !dbg !2053
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2055

if.then6:                                         ; preds = %if.end
  br label %error_exit, !dbg !2056

if.end7:                                          ; preds = %if.end
  %14 = load ptr, ptr %target_object, align 8, !dbg !2058
  %15 = load ptr, ptr %this_target_ptr, align 8, !dbg !2059
  store ptr %14, ptr %15, align 8, !dbg !2060
  br label %if.end8, !dbg !2061

if.else:                                          ; preds = %sw.bb
  %16 = load ptr, ptr %this_target_ptr, align 8, !dbg !2062
  store ptr null, ptr %16, align 8, !dbg !2064
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end7
  br label %sw.epilog, !dbg !2065

sw.bb9:                                           ; preds = %entry
  %17 = load ptr, ptr %source_object.addr, align 8, !dbg !2066
  %count = getelementptr inbounds %struct.acpi_object_package, ptr %17, i32 0, i32 9, !dbg !2067
  %18 = load i32, ptr %count, align 4, !dbg !2067
  %call10 = call ptr @acpi_ut_create_package_object(i32 noundef %18) #16, !dbg !2068
  store ptr %call10, ptr %target_object, align 8, !dbg !2069
  %19 = load ptr, ptr %target_object, align 8, !dbg !2070
  %tobool11 = icmp ne ptr %19, null, !dbg !2070
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !2072

if.then12:                                        ; preds = %sw.bb9
  store i32 4, ptr %retval, align 4, !dbg !2073
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2073

if.end13:                                         ; preds = %sw.bb9
  %20 = load ptr, ptr %source_object.addr, align 8, !dbg !2075
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %20, i32 0, i32 4, !dbg !2076
  %21 = load i8, ptr %flags, align 4, !dbg !2076
  %22 = load ptr, ptr %target_object, align 8, !dbg !2077
  %flags14 = getelementptr inbounds %struct.acpi_object_common, ptr %22, i32 0, i32 4, !dbg !2078
  store i8 %21, ptr %flags14, align 4, !dbg !2079
  %23 = load ptr, ptr %target_object, align 8, !dbg !2080
  %24 = load ptr, ptr %state.addr, align 8, !dbg !2081
  %this_target_obj = getelementptr inbounds %struct.acpi_pkg_state, ptr %24, i32 0, i32 9, !dbg !2082
  store ptr %23, ptr %this_target_obj, align 8, !dbg !2083
  %25 = load ptr, ptr %target_object, align 8, !dbg !2084
  %26 = load ptr, ptr %this_target_ptr, align 8, !dbg !2085
  store ptr %25, ptr %26, align 8, !dbg !2086
  br label %sw.epilog, !dbg !2087

sw.default:                                       ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !2088
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2088

sw.epilog:                                        ; preds = %if.end13, %if.end8
  %27 = load i32, ptr %status, align 4, !dbg !2089
  store i32 %27, ptr %retval, align 4, !dbg !2090
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2090

error_exit:                                       ; preds = %if.then6
  call void @llvm.dbg.label(metadata !2014), !dbg !2091
  %28 = load ptr, ptr %target_object, align 8, !dbg !2092
  call void @acpi_ut_remove_reference(ptr noundef %28) #16, !dbg !2093
  %29 = load i32, ptr %status, align 4, !dbg !2094
  store i32 %29, ptr %retval, align 4, !dbg !2095
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2095

cleanup:                                          ; preds = %error_exit, %sw.epilog, %sw.default, %if.then12, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %target_object) #15, !dbg !2096
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_target_ptr) #15, !dbg !2096
  call void @llvm.lifetime.end.p0(i64 4, ptr %this_index) #15, !dbg !2096
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !2096
  %30 = load i32, ptr %retval, align 4, !dbg !2096
  ret i32 %30, !dbg !2096
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate(i64 noundef %size) #6 align 16 !dbg !2097 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2099, metadata !DIExpression()), !dbg !2110
  %0 = load i64, ptr %size.addr, align 8, !dbg !2111
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #15, !dbg !2112
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !2100, metadata !DIExpression()), !dbg !2112
  br label %do.body, !dbg !2112

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !2113
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2102, metadata !DIExpression()), !dbg !2113
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !2113
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2105, metadata !DIExpression()), !dbg !2113
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2113
  %conv = zext i1 %cmp to i32, !dbg !2113
  store i32 1, ptr %tmp, align 4, !dbg !2113
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !2114
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !2114
  %1 = load i32, ptr %tmp, align 4, !dbg !2113
  %call = call i64 @arch_local_save_flags() #16, !dbg !2114
  store i64 %call, ptr %_flags, align 8, !dbg !2114
  br label %do.cond, !dbg !2114

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2114

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #15, !dbg !2115
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !2106, metadata !DIExpression()), !dbg !2115
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #15, !dbg !2115
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !2109, metadata !DIExpression()), !dbg !2115
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !2115
  %conv6 = zext i1 %cmp5 to i32, !dbg !2115
  store i32 1, ptr %tmp7, align 4, !dbg !2115
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #15, !dbg !2116
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #15, !dbg !2116
  %2 = load i32, ptr %tmp7, align 4, !dbg !2115
  %3 = load i64, ptr %_flags, align 8, !dbg !2116
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #16, !dbg !2116
  store i32 %call9, ptr %tmp8, align 4, !dbg !2116
  %4 = load i32, ptr %tmp8, align 4, !dbg !2116
  store i32 %4, ptr %tmp1, align 4, !dbg !2114
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #15, !dbg !2117
  %5 = load i32, ptr %tmp1, align 4, !dbg !2112
  %tobool = icmp ne i32 %5, 0, !dbg !2117
  %6 = zext i1 %tobool to i64, !dbg !2117
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !2117
  %call10 = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %cond) #17, !dbg !2118
  ret ptr %call10, !dbg !2119
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2120 dso_local void @acpi_ut_add_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2121 dso_local i32 @acpi_os_create_semaphore(i32 noundef, i32 noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!899, !900, !901, !902, !903, !904, !905, !906}
!llvm.ident = !{!907}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !897, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utcopy.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utcopy\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utcopy.ll drivers/acpi/acpica/utcopy.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !32, globals: !879, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utcopy.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cd44ab280c49783358d3f0f1461f2993")
!4 = !{!5, !17, !22}
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
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 10, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "false", value: 0)
!21 = !DIEnumerator(name: "true", value: 1)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !23, line: 364, baseType: !7, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!24 = !{!25, !26, !27, !28, !29, !30, !31}
!25 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!26 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!27 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!28 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!29 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!30 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!31 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!32 = !{!33, !97, !65, !100, !101, !102, !57, !82, !66, !110, !99, !111, !868, !39}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !35, line: 908, size: 192, elements: !36)
!35 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!36 = !{!37, !43, !51, !59, !69, !75, !83, !91}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !34, file: !35, line: 909, baseType: !38, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !35, line: 644, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !40, line: 21, baseType: !41)
!40 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !42, line: 27, baseType: !7)
!42 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!43 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !34, file: !35, line: 913, baseType: !44, size: 128)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !34, file: !35, line: 910, size: 128, elements: !45)
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !44, file: !35, line: 911, baseType: !38, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !44, file: !35, line: 912, baseType: !48, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !40, line: 23, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !42, line: 31, baseType: !50)
!50 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !34, file: !35, line: 919, baseType: !52, size: 128)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !34, file: !35, line: 915, size: 128, elements: !53)
!53 = !{!54, !55, !56}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !35, line: 916, baseType: !38, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !52, file: !35, line: 917, baseType: !39, size: 32, offset: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !52, file: !35, line: 918, baseType: !57, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !34, file: !35, line: 925, baseType: !60, size: 128)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !34, file: !35, line: 921, size: 128, elements: !61)
!61 = !{!62, !63, !64}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !60, file: !35, line: 922, baseType: !38, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !60, file: !35, line: 923, baseType: !39, size: 32, offset: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !60, file: !35, line: 924, baseType: !65, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !40, line: 17, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !42, line: 21, baseType: !68)
!68 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !34, file: !35, line: 931, baseType: !70, size: 128)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !34, file: !35, line: 927, size: 128, elements: !71)
!71 = !{!72, !73, !74}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !35, line: 928, baseType: !38, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !70, file: !35, line: 929, baseType: !39, size: 32, offset: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !70, file: !35, line: 930, baseType: !33, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !34, file: !35, line: 937, baseType: !76, size: 128)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !34, file: !35, line: 933, size: 128, elements: !77)
!77 = !{!78, !79, !80}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !76, file: !35, line: 934, baseType: !38, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !76, file: !35, line: 935, baseType: !38, size: 32, offset: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !76, file: !35, line: 936, baseType: !81, size: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !35, line: 424, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !34, file: !35, line: 944, baseType: !84, size: 192)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !34, file: !35, line: 939, size: 192, elements: !85)
!85 = !{!86, !87, !88, !90}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !84, file: !35, line: 940, baseType: !38, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !84, file: !35, line: 941, baseType: !39, size: 32, offset: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !84, file: !35, line: 942, baseType: !89, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !35, line: 128, baseType: !48)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !84, file: !35, line: 943, baseType: !39, size: 32, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !34, file: !35, line: 950, baseType: !92, size: 96)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !34, file: !35, line: 946, size: 96, elements: !93)
!93 = !{!94, !95, !96}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !92, file: !35, line: 947, baseType: !38, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !92, file: !35, line: 948, baseType: !39, size: 32, offset: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !92, file: !35, line: 949, baseType: !39, size: 32, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !98, line: 42, baseType: !99)
!98 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!99 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !35, line: 127, baseType: !48)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !35, line: 421, baseType: !39)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_info", file: !104, line: 134, size: 192, elements: !105)
!104 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!105 = !{!106, !107, !108, !109}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "free_space", scope: !103, file: !104, line: 135, baseType: !65, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !103, file: !104, line: 136, baseType: !100, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "object_space", scope: !103, file: !104, line: 137, baseType: !39, size: 32, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !103, file: !104, line: 138, baseType: !39, size: 32, offset: 160)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !98, line: 154, baseType: !7)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 369, size: 576, elements: !114)
!114 = !{!115, !126, !139, !149, !184, !197, !206, !518, !535, !551, !564, !642, !654, !667, !677, !695, !717, !736, !755, !774, !787, !814, !831, !844, !858, !867}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !113, file: !6, line: 370, baseType: !116, size: 128)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !117)
!117 = !{!118, !119, !120, !121, !125}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !116, file: !6, line: 74, baseType: !112, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !116, file: !6, line: 74, baseType: !66, size: 8, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !6, line: 74, baseType: !66, size: 8, offset: 72)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !116, file: !6, line: 74, baseType: !122, size: 16, offset: 80)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !40, line: 19, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !42, line: 24, baseType: !124)
!124 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !6, line: 74, baseType: !66, size: 8, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !113, file: !6, line: 371, baseType: !127, size: 192)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134, !138}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !127, file: !6, line: 77, baseType: !112, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !127, file: !6, line: 77, baseType: !66, size: 8, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !127, file: !6, line: 77, baseType: !66, size: 8, offset: 72)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !127, file: !6, line: 77, baseType: !122, size: 16, offset: 80)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !127, file: !6, line: 77, baseType: !66, size: 8, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !127, file: !6, line: 77, baseType: !135, size: 24, offset: 104)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 24, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 3)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !127, file: !6, line: 78, baseType: !48, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !113, file: !6, line: 372, baseType: !140, size: 256)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !140, file: !6, line: 94, baseType: !112, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !140, file: !6, line: 94, baseType: !66, size: 8, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !6, line: 94, baseType: !66, size: 8, offset: 72)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !140, file: !6, line: 94, baseType: !122, size: 16, offset: 80)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !6, line: 94, baseType: !66, size: 8, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !140, file: !6, line: 94, baseType: !57, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !140, file: !6, line: 94, baseType: !39, size: 32, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !113, file: !6, line: 373, baseType: !150, size: 384)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !150, file: !6, line: 98, baseType: !112, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !150, file: !6, line: 98, baseType: !66, size: 8, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !150, file: !6, line: 98, baseType: !66, size: 8, offset: 72)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !150, file: !6, line: 98, baseType: !122, size: 16, offset: 80)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !150, file: !6, line: 98, baseType: !66, size: 8, offset: 96)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !150, file: !6, line: 98, baseType: !65, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !150, file: !6, line: 98, baseType: !39, size: 32, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !150, file: !6, line: 99, baseType: !39, size: 32, offset: 224)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !150, file: !6, line: 100, baseType: !65, size: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !150, file: !6, line: 101, baseType: !162, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !164, line: 133, size: 384, elements: !165)
!164 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!165 = !{!166, !167, !168, !169, !170, !179, !180, !181, !182}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !163, file: !164, line: 134, baseType: !112, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !163, file: !164, line: 135, baseType: !66, size: 8, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !163, file: !164, line: 136, baseType: !66, size: 8, offset: 72)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !163, file: !164, line: 137, baseType: !122, size: 16, offset: 80)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !163, file: !164, line: 138, baseType: !171, size: 32, offset: 96)
!171 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !172, line: 328, size: 32, elements: !173)
!172 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!173 = !{!174, !175}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !171, file: !172, line: 329, baseType: !39, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !171, file: !172, line: 330, baseType: !176, size: 32)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 32, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 4)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !163, file: !164, line: 139, baseType: !162, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !163, file: !164, line: 140, baseType: !162, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !163, file: !164, line: 141, baseType: !162, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !163, file: !164, line: 142, baseType: !183, size: 16, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !35, line: 445, baseType: !122)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !113, file: !6, line: 374, baseType: !185, size: 384)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194, !195, !196}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !185, file: !6, line: 105, baseType: !112, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !185, file: !6, line: 105, baseType: !66, size: 8, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !185, file: !6, line: 105, baseType: !66, size: 8, offset: 72)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !185, file: !6, line: 105, baseType: !122, size: 16, offset: 80)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !185, file: !6, line: 105, baseType: !66, size: 8, offset: 96)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !185, file: !6, line: 105, baseType: !162, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !185, file: !6, line: 106, baseType: !111, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !185, file: !6, line: 107, baseType: !65, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !185, file: !6, line: 108, baseType: !39, size: 32, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !185, file: !6, line: 109, baseType: !39, size: 32, offset: 352)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !113, file: !6, line: 375, baseType: !198, size: 192)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !198, file: !6, line: 119, baseType: !112, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !198, file: !6, line: 119, baseType: !66, size: 8, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !198, file: !6, line: 119, baseType: !66, size: 8, offset: 72)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !198, file: !6, line: 119, baseType: !122, size: 16, offset: 80)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !6, line: 119, baseType: !66, size: 8, offset: 96)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !198, file: !6, line: 119, baseType: !82, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !113, file: !6, line: 376, baseType: !207, size: 448)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 144, size: 448, elements: !208)
!208 = !{!209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !515, !516, !517}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !207, file: !6, line: 145, baseType: !112, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !207, file: !6, line: 145, baseType: !66, size: 8, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !207, file: !6, line: 145, baseType: !66, size: 8, offset: 72)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !207, file: !6, line: 145, baseType: !122, size: 16, offset: 80)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !207, file: !6, line: 145, baseType: !66, size: 8, offset: 96)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !207, file: !6, line: 145, baseType: !66, size: 8, offset: 104)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !207, file: !6, line: 146, baseType: !66, size: 8, offset: 112)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !207, file: !6, line: 147, baseType: !66, size: 8, offset: 120)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !207, file: !6, line: 148, baseType: !112, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !207, file: !6, line: 149, baseType: !112, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !207, file: !6, line: 150, baseType: !65, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !207, file: !6, line: 154, baseType: !221, size: 64, offset: 320)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !207, file: !6, line: 151, size: 64, elements: !222)
!222 = !{!223, !514}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !221, file: !6, line: 152, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !164, line: 248, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!101, !228}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !230, line: 37, size: 9024, elements: !231)
!230 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !460, !461, !462, !463, !464, !468, !470, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !497, !498, !499, !500, !501, !502, !503, !504, !506, !512}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !229, file: !230, line: 38, baseType: !228, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !229, file: !230, line: 39, baseType: !66, size: 8, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !229, file: !230, line: 40, baseType: !66, size: 8, offset: 72)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !229, file: !230, line: 41, baseType: !122, size: 16, offset: 80)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !229, file: !230, line: 42, baseType: !66, size: 8, offset: 96)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !229, file: !230, line: 43, baseType: !66, size: 8, offset: 104)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !229, file: !230, line: 44, baseType: !66, size: 8, offset: 112)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !229, file: !230, line: 45, baseType: !183, size: 16, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !229, file: !230, line: 46, baseType: !66, size: 8, offset: 144)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !229, file: !230, line: 47, baseType: !66, size: 8, offset: 152)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !229, file: !230, line: 48, baseType: !66, size: 8, offset: 160)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !229, file: !230, line: 49, baseType: !66, size: 8, offset: 168)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !229, file: !230, line: 50, baseType: !66, size: 8, offset: 176)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !229, file: !230, line: 51, baseType: !66, size: 8, offset: 184)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !229, file: !230, line: 52, baseType: !66, size: 8, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !229, file: !230, line: 53, baseType: !66, size: 8, offset: 200)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !229, file: !230, line: 54, baseType: !65, size: 64, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !229, file: !230, line: 55, baseType: !39, size: 32, offset: 320)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !229, file: !230, line: 56, baseType: !39, size: 32, offset: 352)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !229, file: !230, line: 57, baseType: !39, size: 32, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !229, file: !230, line: 58, baseType: !39, size: 32, offset: 416)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !229, file: !230, line: 60, baseType: !254, size: 640, offset: 448)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !164, line: 909, size: 640, elements: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !342, !343, !458, !459}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !254, file: !164, line: 910, baseType: !65, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !254, file: !164, line: 911, baseType: !65, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !254, file: !164, line: 912, baseType: !65, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !254, file: !164, line: 913, baseType: !65, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !254, file: !164, line: 914, baseType: !65, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !254, file: !164, line: 915, baseType: !262, size: 64, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !164, line: 891, size: 1600, elements: !264)
!264 = !{!265, !285, !301}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !263, file: !164, line: 892, baseType: !266, size: 448)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !164, line: 844, size: 448, elements: !267)
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !284}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !266, file: !164, line: 845, baseType: !262, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !266, file: !164, line: 845, baseType: !66, size: 8, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !164, line: 845, baseType: !66, size: 8, offset: 72)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !266, file: !164, line: 845, baseType: !122, size: 16, offset: 80)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !266, file: !164, line: 845, baseType: !65, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !164, line: 845, baseType: !262, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !266, file: !164, line: 845, baseType: !162, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !266, file: !164, line: 845, baseType: !276, size: 64, offset: 320)
!276 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !164, line: 732, size: 64, elements: !277)
!277 = !{!278, !279, !280, !281, !282, !283}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !276, file: !164, line: 733, baseType: !48, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !276, file: !164, line: 734, baseType: !39, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !276, file: !164, line: 735, baseType: !57, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !276, file: !164, line: 736, baseType: !65, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !276, file: !164, line: 737, baseType: !57, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !276, file: !164, line: 738, baseType: !262, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !266, file: !164, line: 845, baseType: !66, size: 8, offset: 384)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !263, file: !164, line: 893, baseType: !286, size: 640)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !164, line: 851, size: 640, elements: !287)
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !286, file: !164, line: 852, baseType: !262, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !286, file: !164, line: 852, baseType: !66, size: 8, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !286, file: !164, line: 852, baseType: !66, size: 8, offset: 72)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !286, file: !164, line: 852, baseType: !122, size: 16, offset: 80)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !286, file: !164, line: 852, baseType: !65, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !286, file: !164, line: 852, baseType: !262, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !286, file: !164, line: 852, baseType: !162, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !286, file: !164, line: 852, baseType: !276, size: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !286, file: !164, line: 852, baseType: !66, size: 8, offset: 384)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !286, file: !164, line: 852, baseType: !57, size: 64, offset: 448)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !286, file: !164, line: 853, baseType: !65, size: 64, offset: 512)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !286, file: !164, line: 854, baseType: !39, size: 32, offset: 576)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !286, file: !164, line: 855, baseType: !39, size: 32, offset: 608)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !263, file: !164, line: 894, baseType: !302, size: 1600)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !164, line: 862, size: 1600, elements: !303)
!303 = !{!304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !302, file: !164, line: 863, baseType: !262, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !302, file: !164, line: 863, baseType: !66, size: 8, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !302, file: !164, line: 863, baseType: !66, size: 8, offset: 72)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !302, file: !164, line: 863, baseType: !122, size: 16, offset: 80)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !302, file: !164, line: 863, baseType: !65, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !302, file: !164, line: 863, baseType: !262, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !302, file: !164, line: 863, baseType: !162, size: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !302, file: !164, line: 863, baseType: !276, size: 64, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !302, file: !164, line: 863, baseType: !66, size: 8, offset: 384)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !302, file: !164, line: 863, baseType: !262, size: 64, offset: 448)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !302, file: !164, line: 864, baseType: !262, size: 64, offset: 512)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !302, file: !164, line: 865, baseType: !57, size: 64, offset: 576)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !302, file: !164, line: 866, baseType: !66, size: 8, offset: 640)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !302, file: !164, line: 867, baseType: !57, size: 64, offset: 704)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !302, file: !164, line: 868, baseType: !57, size: 64, offset: 768)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !302, file: !164, line: 869, baseType: !57, size: 64, offset: 832)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !302, file: !164, line: 870, baseType: !176, size: 32, offset: 896)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !302, file: !164, line: 871, baseType: !39, size: 32, offset: 928)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !302, file: !164, line: 872, baseType: !39, size: 32, offset: 960)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !302, file: !164, line: 873, baseType: !39, size: 32, offset: 992)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !302, file: !164, line: 874, baseType: !39, size: 32, offset: 1024)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !302, file: !164, line: 875, baseType: !39, size: 32, offset: 1056)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !302, file: !164, line: 876, baseType: !39, size: 32, offset: 1088)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !302, file: !164, line: 877, baseType: !39, size: 32, offset: 1120)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !302, file: !164, line: 878, baseType: !39, size: 32, offset: 1152)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !302, file: !164, line: 879, baseType: !39, size: 32, offset: 1184)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !302, file: !164, line: 880, baseType: !39, size: 32, offset: 1216)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !302, file: !164, line: 881, baseType: !39, size: 32, offset: 1248)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !302, file: !164, line: 882, baseType: !39, size: 32, offset: 1280)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !302, file: !164, line: 883, baseType: !39, size: 32, offset: 1312)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !302, file: !164, line: 884, baseType: !122, size: 16, offset: 1344)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !302, file: !164, line: 885, baseType: !66, size: 8, offset: 1360)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !302, file: !164, line: 886, baseType: !66, size: 8, offset: 1368)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !302, file: !164, line: 887, baseType: !66, size: 8, offset: 1376)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !302, file: !164, line: 888, baseType: !339, size: 160, offset: 1384)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 160, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 20)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !254, file: !164, line: 916, baseType: !162, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !254, file: !164, line: 917, baseType: !344, size: 64, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !164, line: 679, size: 640, elements: !346)
!346 = !{!347, !355, !368, !377, !386, !399, !413, !425, !437}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !345, file: !164, line: 680, baseType: !348, size: 128)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !164, line: 575, size: 128, elements: !349)
!349 = !{!350, !351, !352, !353, !354}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !164, line: 576, baseType: !82, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !348, file: !164, line: 576, baseType: !66, size: 8, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !164, line: 576, baseType: !66, size: 8, offset: 72)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !348, file: !164, line: 576, baseType: !122, size: 16, offset: 80)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !348, file: !164, line: 576, baseType: !122, size: 16, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !345, file: !164, line: 681, baseType: !356, size: 384)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !164, line: 604, size: 384, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365, !366, !367}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !164, line: 605, baseType: !82, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !356, file: !164, line: 605, baseType: !66, size: 8, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !356, file: !164, line: 605, baseType: !66, size: 8, offset: 72)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !356, file: !164, line: 605, baseType: !122, size: 16, offset: 80)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !356, file: !164, line: 605, baseType: !122, size: 16, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !356, file: !164, line: 606, baseType: !122, size: 16, offset: 112)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !356, file: !164, line: 607, baseType: !262, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !356, file: !164, line: 608, baseType: !65, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !356, file: !164, line: 609, baseType: !65, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !356, file: !164, line: 610, baseType: !48, size: 64, offset: 320)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !345, file: !164, line: 682, baseType: !369, size: 192)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !164, line: 582, size: 192, elements: !370)
!370 = !{!371, !372, !373, !374, !375, !376}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !369, file: !164, line: 583, baseType: !82, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !369, file: !164, line: 583, baseType: !66, size: 8, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !369, file: !164, line: 583, baseType: !66, size: 8, offset: 72)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !369, file: !164, line: 583, baseType: !122, size: 16, offset: 80)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !369, file: !164, line: 583, baseType: !122, size: 16, offset: 96)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !369, file: !164, line: 584, baseType: !112, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !345, file: !164, line: 683, baseType: !378, size: 192)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !164, line: 616, size: 192, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !385}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !378, file: !164, line: 617, baseType: !82, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !378, file: !164, line: 617, baseType: !66, size: 8, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !378, file: !164, line: 617, baseType: !66, size: 8, offset: 72)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !378, file: !164, line: 617, baseType: !122, size: 16, offset: 80)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !378, file: !164, line: 617, baseType: !122, size: 16, offset: 96)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !378, file: !164, line: 618, baseType: !162, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !345, file: !164, line: 684, baseType: !387, size: 448)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !164, line: 621, size: 448, elements: !388)
!388 = !{!389, !390, !391, !392, !393, !394, !395, !396, !397, !398}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !387, file: !164, line: 622, baseType: !82, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !387, file: !164, line: 622, baseType: !66, size: 8, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !387, file: !164, line: 622, baseType: !66, size: 8, offset: 72)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !387, file: !164, line: 622, baseType: !122, size: 16, offset: 80)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !387, file: !164, line: 622, baseType: !122, size: 16, offset: 96)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !387, file: !164, line: 623, baseType: !39, size: 32, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !387, file: !164, line: 624, baseType: !262, size: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !387, file: !164, line: 625, baseType: !65, size: 64, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !387, file: !164, line: 626, baseType: !65, size: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !387, file: !164, line: 627, baseType: !39, size: 32, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !345, file: !164, line: 685, baseType: !400, size: 512)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !164, line: 590, size: 512, elements: !401)
!401 = !{!402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !400, file: !164, line: 591, baseType: !82, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !400, file: !164, line: 591, baseType: !66, size: 8, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !400, file: !164, line: 591, baseType: !66, size: 8, offset: 72)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !400, file: !164, line: 591, baseType: !122, size: 16, offset: 80)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !400, file: !164, line: 591, baseType: !122, size: 16, offset: 96)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !400, file: !164, line: 592, baseType: !39, size: 32, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !400, file: !164, line: 593, baseType: !112, size: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !400, file: !164, line: 594, baseType: !112, size: 64, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !400, file: !164, line: 595, baseType: !228, size: 64, offset: 320)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !400, file: !164, line: 596, baseType: !82, size: 64, offset: 384)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !400, file: !164, line: 597, baseType: !39, size: 32, offset: 448)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !345, file: !164, line: 686, baseType: !414, size: 320)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !164, line: 634, size: 320, elements: !415)
!415 = !{!416, !417, !418, !419, !420, !421, !422, !423, !424}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !414, file: !164, line: 635, baseType: !82, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !414, file: !164, line: 635, baseType: !66, size: 8, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !164, line: 635, baseType: !66, size: 8, offset: 72)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !414, file: !164, line: 635, baseType: !122, size: 16, offset: 80)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !414, file: !164, line: 635, baseType: !122, size: 16, offset: 96)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !414, file: !164, line: 636, baseType: !66, size: 8, offset: 112)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !414, file: !164, line: 637, baseType: !228, size: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !414, file: !164, line: 638, baseType: !112, size: 64, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !414, file: !164, line: 639, baseType: !48, size: 64, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !345, file: !164, line: 687, baseType: !426, size: 640)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !164, line: 646, size: 640, elements: !427)
!427 = !{!428, !429, !430, !431, !432, !433}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !426, file: !164, line: 647, baseType: !82, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !426, file: !164, line: 647, baseType: !66, size: 8, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !426, file: !164, line: 647, baseType: !66, size: 8, offset: 72)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !426, file: !164, line: 647, baseType: !122, size: 16, offset: 80)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !426, file: !164, line: 647, baseType: !122, size: 16, offset: 96)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !426, file: !164, line: 648, baseType: !434, size: 512, offset: 128)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 512, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 8)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !345, file: !164, line: 688, baseType: !438, size: 320)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !164, line: 669, size: 320, elements: !439)
!439 = !{!440, !441, !442, !443, !444, !445, !446, !447, !448}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !438, file: !164, line: 670, baseType: !82, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !438, file: !164, line: 670, baseType: !66, size: 8, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !438, file: !164, line: 670, baseType: !66, size: 8, offset: 72)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !438, file: !164, line: 670, baseType: !122, size: 16, offset: 80)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !438, file: !164, line: 670, baseType: !122, size: 16, offset: 96)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !438, file: !164, line: 671, baseType: !66, size: 8, offset: 112)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !438, file: !164, line: 672, baseType: !162, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !438, file: !164, line: 673, baseType: !112, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !438, file: !164, line: 674, baseType: !449, size: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !164, line: 660, size: 128, elements: !451)
!451 = !{!452, !457}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !450, file: !164, line: 661, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !35, line: 1061, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !81, !39, !82}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !450, file: !164, line: 662, baseType: !82, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !254, file: !164, line: 918, baseType: !262, size: 64, offset: 512)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !254, file: !164, line: 919, baseType: !39, size: 32, offset: 576)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !229, file: !230, line: 61, baseType: !39, size: 32, offset: 1088)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !229, file: !230, line: 62, baseType: !39, size: 32, offset: 1120)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !229, file: !230, line: 63, baseType: !122, size: 16, offset: 1152)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !229, file: !230, line: 64, baseType: !66, size: 8, offset: 1168)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !229, file: !230, line: 66, baseType: !465, size: 2688, offset: 1216)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 2688, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 7)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !229, file: !230, line: 67, baseType: !469, size: 3072, offset: 3904)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 3072, elements: !435)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !229, file: !230, line: 68, baseType: !471, size: 576, offset: 6976)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 576, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 9)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !229, file: !230, line: 69, baseType: !111, size: 64, offset: 7552)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !229, file: !230, line: 71, baseType: !65, size: 64, offset: 7616)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !229, file: !230, line: 72, baseType: !111, size: 64, offset: 7680)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !229, file: !230, line: 73, baseType: !344, size: 64, offset: 7744)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !229, file: !230, line: 74, baseType: !162, size: 64, offset: 7808)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !229, file: !230, line: 75, baseType: !112, size: 64, offset: 7872)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !229, file: !230, line: 76, baseType: !162, size: 64, offset: 7936)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !229, file: !230, line: 77, baseType: !262, size: 64, offset: 8000)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !229, file: !230, line: 78, baseType: !112, size: 64, offset: 8064)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !229, file: !230, line: 79, baseType: !162, size: 64, offset: 8128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !229, file: !230, line: 80, baseType: !57, size: 64, offset: 8192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !229, file: !230, line: 81, baseType: !262, size: 64, offset: 8256)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !229, file: !230, line: 82, baseType: !487, size: 64, offset: 8320)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !164, line: 718, size: 128, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !489, file: !164, line: 722, baseType: !39, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !489, file: !164, line: 723, baseType: !39, size: 32, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !489, file: !164, line: 724, baseType: !122, size: 16, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !489, file: !164, line: 725, baseType: !66, size: 8, offset: 80)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !489, file: !164, line: 726, baseType: !66, size: 8, offset: 88)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !489, file: !164, line: 727, baseType: !66, size: 8, offset: 96)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !229, file: !230, line: 83, baseType: !262, size: 64, offset: 8384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !229, file: !230, line: 84, baseType: !112, size: 64, offset: 8448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !229, file: !230, line: 85, baseType: !344, size: 64, offset: 8512)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !229, file: !230, line: 86, baseType: !112, size: 64, offset: 8576)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !229, file: !230, line: 87, baseType: !344, size: 64, offset: 8640)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !229, file: !230, line: 88, baseType: !262, size: 64, offset: 8704)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !229, file: !230, line: 89, baseType: !262, size: 64, offset: 8768)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !229, file: !230, line: 90, baseType: !505, size: 64, offset: 8832)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !229, file: !230, line: 91, baseType: !507, size: 64, offset: 8896)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !164, line: 652, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!101, !228, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !229, file: !230, line: 92, baseType: !513, size: 64, offset: 8960)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !164, line: 656, baseType: !225)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !221, file: !6, line: 153, baseType: !112, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !207, file: !6, line: 156, baseType: !39, size: 32, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !207, file: !6, line: 157, baseType: !183, size: 16, offset: 416)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !207, file: !6, line: 158, baseType: !66, size: 8, offset: 432)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !113, file: !6, line: 377, baseType: !519, size: 576)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !520)
!520 = !{!521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !519, file: !6, line: 123, baseType: !112, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !519, file: !6, line: 123, baseType: !66, size: 8, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !519, file: !6, line: 123, baseType: !66, size: 8, offset: 72)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !519, file: !6, line: 123, baseType: !122, size: 16, offset: 80)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !519, file: !6, line: 123, baseType: !66, size: 8, offset: 96)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !519, file: !6, line: 123, baseType: !66, size: 8, offset: 104)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !519, file: !6, line: 124, baseType: !122, size: 16, offset: 112)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !519, file: !6, line: 125, baseType: !82, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !519, file: !6, line: 126, baseType: !48, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !519, file: !6, line: 127, baseType: !505, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !519, file: !6, line: 128, baseType: !112, size: 64, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !519, file: !6, line: 129, baseType: !112, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !519, file: !6, line: 130, baseType: !162, size: 64, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !519, file: !6, line: 131, baseType: !66, size: 8, offset: 512)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !113, file: !6, line: 378, baseType: !536, size: 512)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 512, elements: !537)
!537 = !{!538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !549, !550}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !536, file: !6, line: 135, baseType: !112, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !536, file: !6, line: 135, baseType: !66, size: 8, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !536, file: !6, line: 135, baseType: !66, size: 8, offset: 72)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !536, file: !6, line: 135, baseType: !122, size: 16, offset: 80)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !536, file: !6, line: 135, baseType: !66, size: 8, offset: 96)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !536, file: !6, line: 135, baseType: !66, size: 8, offset: 104)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !536, file: !6, line: 136, baseType: !162, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !536, file: !6, line: 137, baseType: !112, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !536, file: !6, line: 138, baseType: !112, size: 64, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !536, file: !6, line: 139, baseType: !548, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !35, line: 129, baseType: !48)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !536, file: !6, line: 140, baseType: !39, size: 32, offset: 384)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !536, file: !6, line: 141, baseType: !82, size: 64, offset: 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !113, file: !6, line: 379, baseType: !552, size: 320)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 185, size: 320, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559, !563}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !552, file: !6, line: 186, baseType: !112, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !552, file: !6, line: 186, baseType: !66, size: 8, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !552, file: !6, line: 186, baseType: !66, size: 8, offset: 72)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !552, file: !6, line: 186, baseType: !122, size: 16, offset: 80)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !552, file: !6, line: 186, baseType: !66, size: 8, offset: 96)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !552, file: !6, line: 186, baseType: !560, size: 128, offset: 128)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 128, elements: !561)
!561 = !{!562}
!562 = !DISubrange(count: 2)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !552, file: !6, line: 186, baseType: !112, size: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !113, file: !6, line: 380, baseType: !565, size: 384)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 188, size: 384, elements: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !565, file: !6, line: 189, baseType: !112, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !565, file: !6, line: 189, baseType: !66, size: 8, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !565, file: !6, line: 189, baseType: !66, size: 8, offset: 72)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !565, file: !6, line: 189, baseType: !122, size: 16, offset: 80)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !565, file: !6, line: 189, baseType: !66, size: 8, offset: 96)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !565, file: !6, line: 190, baseType: !560, size: 128, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !565, file: !6, line: 190, baseType: !112, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !565, file: !6, line: 190, baseType: !575, size: 64, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !164, line: 480, size: 576, elements: !577)
!577 = !{!578, !579, !580, !581, !589, !604, !636, !637, !638, !639, !640, !641}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !576, file: !164, line: 481, baseType: !162, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !576, file: !164, line: 482, baseType: !575, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !576, file: !164, line: 483, baseType: !575, size: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !576, file: !164, line: 484, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !164, line: 497, size: 256, elements: !584)
!584 = !{!585, !586, !587, !588}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !583, file: !164, line: 498, baseType: !582, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !583, file: !164, line: 499, baseType: !582, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !583, file: !164, line: 500, baseType: !575, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !583, file: !164, line: 501, baseType: !39, size: 32, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !576, file: !164, line: 485, baseType: !590, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !164, line: 466, size: 320, elements: !592)
!592 = !{!593, !598, !599, !600, !601, !602, !603}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !591, file: !164, line: 467, baseType: !594, size: 128)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !164, line: 459, size: 128, elements: !595)
!595 = !{!596, !597}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !594, file: !164, line: 460, baseType: !66, size: 8)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !594, file: !164, line: 461, baseType: !48, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !591, file: !164, line: 468, baseType: !594, size: 128, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !591, file: !164, line: 469, baseType: !122, size: 16, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !591, file: !164, line: 470, baseType: !66, size: 8, offset: 272)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !591, file: !164, line: 471, baseType: !66, size: 8, offset: 280)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !591, file: !164, line: 472, baseType: !66, size: 8, offset: 288)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !591, file: !164, line: 473, baseType: !66, size: 8, offset: 296)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !576, file: !164, line: 486, baseType: !605, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !164, line: 448, size: 192, elements: !607)
!607 = !{!608, !631, !632, !633, !634, !635}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !606, file: !164, line: 449, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !164, line: 438, size: 64, elements: !610)
!610 = !{!611, !612, !625}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !609, file: !164, line: 439, baseType: !162, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !609, file: !164, line: 440, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !164, line: 419, size: 256, elements: !615)
!615 = !{!616, !621, !622, !623, !624}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !614, file: !164, line: 420, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !35, line: 1058, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!39, !81, !39, !82}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !614, file: !164, line: 421, baseType: !82, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !614, file: !164, line: 422, baseType: !162, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !614, file: !164, line: 423, baseType: !66, size: 8, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !614, file: !164, line: 424, baseType: !66, size: 8, offset: 200)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !609, file: !164, line: 441, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !164, line: 429, size: 128, elements: !628)
!628 = !{!629, !630}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !627, file: !164, line: 430, baseType: !162, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !627, file: !164, line: 431, baseType: !626, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !606, file: !164, line: 450, baseType: !590, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !606, file: !164, line: 451, baseType: !66, size: 8, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !606, file: !164, line: 452, baseType: !66, size: 8, offset: 136)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !606, file: !164, line: 453, baseType: !66, size: 8, offset: 144)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !606, file: !164, line: 454, baseType: !66, size: 8, offset: 152)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !576, file: !164, line: 487, baseType: !48, size: 64, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !576, file: !164, line: 488, baseType: !39, size: 32, offset: 448)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !576, file: !164, line: 489, baseType: !122, size: 16, offset: 480)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !576, file: !164, line: 490, baseType: !122, size: 16, offset: 496)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !576, file: !164, line: 491, baseType: !66, size: 8, offset: 512)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !576, file: !164, line: 492, baseType: !66, size: 8, offset: 520)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !113, file: !6, line: 381, baseType: !643, size: 384)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 193, size: 384, elements: !644)
!644 = !{!645, !646, !647, !648, !649, !650, !651, !652, !653}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !643, file: !6, line: 194, baseType: !112, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !643, file: !6, line: 194, baseType: !66, size: 8, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !643, file: !6, line: 194, baseType: !66, size: 8, offset: 72)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !643, file: !6, line: 194, baseType: !122, size: 16, offset: 80)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !643, file: !6, line: 194, baseType: !66, size: 8, offset: 96)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !643, file: !6, line: 194, baseType: !560, size: 128, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !643, file: !6, line: 194, baseType: !112, size: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !643, file: !6, line: 194, baseType: !39, size: 32, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !643, file: !6, line: 195, baseType: !39, size: 32, offset: 352)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !113, file: !6, line: 382, baseType: !655, size: 384)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 198, size: 384, elements: !656)
!656 = !{!657, !658, !659, !660, !661, !662, !663, !664, !665, !666}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !655, file: !6, line: 199, baseType: !112, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !655, file: !6, line: 199, baseType: !66, size: 8, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !655, file: !6, line: 199, baseType: !66, size: 8, offset: 72)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !655, file: !6, line: 199, baseType: !122, size: 16, offset: 80)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !655, file: !6, line: 199, baseType: !66, size: 8, offset: 96)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !655, file: !6, line: 201, baseType: !66, size: 8, offset: 104)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !655, file: !6, line: 202, baseType: !66, size: 8, offset: 112)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !655, file: !6, line: 203, baseType: !560, size: 128, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !655, file: !6, line: 203, baseType: !112, size: 64, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !655, file: !6, line: 203, baseType: !89, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !113, file: !6, line: 383, baseType: !668, size: 320)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 206, size: 320, elements: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !668, file: !6, line: 207, baseType: !112, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !668, file: !6, line: 207, baseType: !66, size: 8, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !668, file: !6, line: 207, baseType: !66, size: 8, offset: 72)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !668, file: !6, line: 207, baseType: !122, size: 16, offset: 80)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !6, line: 207, baseType: !66, size: 8, offset: 96)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !668, file: !6, line: 207, baseType: !560, size: 128, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !668, file: !6, line: 207, baseType: !112, size: 64, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !113, file: !6, line: 384, baseType: !678, size: 384)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 234, size: 384, elements: !679)
!679 = !{!680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !678, file: !6, line: 235, baseType: !112, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !678, file: !6, line: 235, baseType: !66, size: 8, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !678, file: !6, line: 235, baseType: !66, size: 8, offset: 72)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !678, file: !6, line: 235, baseType: !122, size: 16, offset: 80)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !678, file: !6, line: 235, baseType: !66, size: 8, offset: 96)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !678, file: !6, line: 235, baseType: !66, size: 8, offset: 104)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !678, file: !6, line: 235, baseType: !66, size: 8, offset: 112)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !678, file: !6, line: 235, baseType: !66, size: 8, offset: 120)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !678, file: !6, line: 235, baseType: !162, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !678, file: !6, line: 235, baseType: !39, size: 32, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !678, file: !6, line: 235, baseType: !39, size: 32, offset: 224)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !678, file: !6, line: 235, baseType: !39, size: 32, offset: 256)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !678, file: !6, line: 235, baseType: !66, size: 8, offset: 288)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !678, file: !6, line: 235, baseType: !66, size: 8, offset: 296)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !678, file: !6, line: 235, baseType: !112, size: 64, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !113, file: !6, line: 385, baseType: !696, size: 576)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 238, size: 576, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !696, file: !6, line: 239, baseType: !112, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !696, file: !6, line: 239, baseType: !66, size: 8, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !696, file: !6, line: 239, baseType: !66, size: 8, offset: 72)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !696, file: !6, line: 239, baseType: !122, size: 16, offset: 80)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !6, line: 239, baseType: !66, size: 8, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !696, file: !6, line: 239, baseType: !66, size: 8, offset: 104)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !696, file: !6, line: 239, baseType: !66, size: 8, offset: 112)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !696, file: !6, line: 239, baseType: !66, size: 8, offset: 120)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !696, file: !6, line: 239, baseType: !162, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !696, file: !6, line: 239, baseType: !39, size: 32, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !696, file: !6, line: 239, baseType: !39, size: 32, offset: 224)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !696, file: !6, line: 239, baseType: !39, size: 32, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !696, file: !6, line: 239, baseType: !66, size: 8, offset: 288)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !696, file: !6, line: 239, baseType: !66, size: 8, offset: 296)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !696, file: !6, line: 239, baseType: !122, size: 16, offset: 304)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !696, file: !6, line: 240, baseType: !112, size: 64, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !696, file: !6, line: 241, baseType: !65, size: 64, offset: 384)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !696, file: !6, line: 242, baseType: !122, size: 16, offset: 448)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !696, file: !6, line: 243, baseType: !65, size: 64, offset: 512)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !113, file: !6, line: 386, baseType: !718, size: 384)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 263, size: 384, elements: !719)
!719 = !{!720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !718, file: !6, line: 264, baseType: !112, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !718, file: !6, line: 264, baseType: !66, size: 8, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !718, file: !6, line: 264, baseType: !66, size: 8, offset: 72)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !718, file: !6, line: 264, baseType: !122, size: 16, offset: 80)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !718, file: !6, line: 264, baseType: !66, size: 8, offset: 96)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !718, file: !6, line: 264, baseType: !66, size: 8, offset: 104)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !718, file: !6, line: 264, baseType: !66, size: 8, offset: 112)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !718, file: !6, line: 264, baseType: !66, size: 8, offset: 120)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !718, file: !6, line: 264, baseType: !162, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !718, file: !6, line: 264, baseType: !39, size: 32, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !718, file: !6, line: 264, baseType: !39, size: 32, offset: 224)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !718, file: !6, line: 264, baseType: !39, size: 32, offset: 256)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !718, file: !6, line: 264, baseType: !66, size: 8, offset: 288)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !718, file: !6, line: 264, baseType: !66, size: 8, offset: 296)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !718, file: !6, line: 264, baseType: !66, size: 8, offset: 304)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !718, file: !6, line: 265, baseType: !112, size: 64, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !113, file: !6, line: 387, baseType: !737, size: 448)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 246, size: 448, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !737, file: !6, line: 247, baseType: !112, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !737, file: !6, line: 247, baseType: !66, size: 8, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !737, file: !6, line: 247, baseType: !66, size: 8, offset: 72)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !737, file: !6, line: 247, baseType: !122, size: 16, offset: 80)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !737, file: !6, line: 247, baseType: !66, size: 8, offset: 96)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !737, file: !6, line: 247, baseType: !66, size: 8, offset: 104)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !737, file: !6, line: 247, baseType: !66, size: 8, offset: 112)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !737, file: !6, line: 247, baseType: !66, size: 8, offset: 120)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !737, file: !6, line: 247, baseType: !162, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !737, file: !6, line: 247, baseType: !39, size: 32, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !737, file: !6, line: 247, baseType: !39, size: 32, offset: 224)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !737, file: !6, line: 247, baseType: !39, size: 32, offset: 256)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !737, file: !6, line: 247, baseType: !66, size: 8, offset: 288)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !737, file: !6, line: 247, baseType: !66, size: 8, offset: 296)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !737, file: !6, line: 247, baseType: !112, size: 64, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !737, file: !6, line: 248, baseType: !112, size: 64, offset: 384)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !113, file: !6, line: 388, baseType: !756, size: 448)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 251, size: 448, elements: !757)
!757 = !{!758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !756, file: !6, line: 252, baseType: !112, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !756, file: !6, line: 252, baseType: !66, size: 8, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !756, file: !6, line: 252, baseType: !66, size: 8, offset: 72)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !756, file: !6, line: 252, baseType: !122, size: 16, offset: 80)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !756, file: !6, line: 252, baseType: !66, size: 8, offset: 96)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !756, file: !6, line: 252, baseType: !66, size: 8, offset: 104)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !756, file: !6, line: 252, baseType: !66, size: 8, offset: 112)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !756, file: !6, line: 252, baseType: !66, size: 8, offset: 120)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !756, file: !6, line: 252, baseType: !162, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !756, file: !6, line: 252, baseType: !39, size: 32, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !756, file: !6, line: 252, baseType: !39, size: 32, offset: 224)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !756, file: !6, line: 252, baseType: !39, size: 32, offset: 256)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !756, file: !6, line: 252, baseType: !66, size: 8, offset: 288)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !756, file: !6, line: 252, baseType: !66, size: 8, offset: 296)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !756, file: !6, line: 257, baseType: !112, size: 64, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !756, file: !6, line: 258, baseType: !112, size: 64, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !113, file: !6, line: 389, baseType: !775, size: 512)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 274, size: 512, elements: !776)
!776 = !{!777, !778, !779, !780, !781, !782, !783, !784, !785, !786}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !775, file: !6, line: 275, baseType: !112, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !775, file: !6, line: 275, baseType: !66, size: 8, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !775, file: !6, line: 275, baseType: !66, size: 8, offset: 72)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !775, file: !6, line: 275, baseType: !122, size: 16, offset: 80)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !6, line: 275, baseType: !66, size: 8, offset: 96)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !775, file: !6, line: 275, baseType: !162, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !775, file: !6, line: 276, baseType: !39, size: 32, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !775, file: !6, line: 277, baseType: !453, size: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !775, file: !6, line: 278, baseType: !82, size: 64, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !775, file: !6, line: 279, baseType: !560, size: 128, offset: 384)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !113, file: !6, line: 390, baseType: !788, size: 576)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 282, size: 576, elements: !789)
!789 = !{!790, !791, !792, !793, !794, !795, !796, !797, !803, !804, !805, !806, !812, !813}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !788, file: !6, line: 283, baseType: !112, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !788, file: !6, line: 283, baseType: !66, size: 8, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !788, file: !6, line: 283, baseType: !66, size: 8, offset: 72)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !788, file: !6, line: 283, baseType: !122, size: 16, offset: 80)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !788, file: !6, line: 283, baseType: !66, size: 8, offset: 96)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !788, file: !6, line: 283, baseType: !66, size: 8, offset: 104)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !788, file: !6, line: 284, baseType: !66, size: 8, offset: 112)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !788, file: !6, line: 285, baseType: !798, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !35, line: 1093, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!101, !39, !548, !39, !802, !82, !82}
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !788, file: !6, line: 286, baseType: !162, size: 64, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !788, file: !6, line: 287, baseType: !82, size: 64, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !788, file: !6, line: 288, baseType: !82, size: 64, offset: 320)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !788, file: !6, line: 289, baseType: !807, size: 64, offset: 384)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !35, line: 1126, baseType: !808)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!101, !81, !39, !82, !811}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !788, file: !6, line: 290, baseType: !112, size: 64, offset: 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !788, file: !6, line: 291, baseType: !112, size: 64, offset: 512)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !113, file: !6, line: 391, baseType: !815, size: 512)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 309, size: 512, elements: !816)
!816 = !{!817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !815, file: !6, line: 310, baseType: !112, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !815, file: !6, line: 310, baseType: !66, size: 8, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !815, file: !6, line: 310, baseType: !66, size: 8, offset: 72)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !815, file: !6, line: 310, baseType: !122, size: 16, offset: 80)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !815, file: !6, line: 310, baseType: !66, size: 8, offset: 96)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !815, file: !6, line: 310, baseType: !66, size: 8, offset: 104)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !815, file: !6, line: 311, baseType: !66, size: 8, offset: 112)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !815, file: !6, line: 312, baseType: !66, size: 8, offset: 120)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !815, file: !6, line: 313, baseType: !82, size: 64, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !815, file: !6, line: 314, baseType: !162, size: 64, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !815, file: !6, line: 315, baseType: !111, size: 64, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !815, file: !6, line: 316, baseType: !65, size: 64, offset: 320)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !815, file: !6, line: 317, baseType: !65, size: 64, offset: 384)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !815, file: !6, line: 318, baseType: !39, size: 32, offset: 448)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !113, file: !6, line: 392, baseType: !832, size: 448)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 342, size: 448, elements: !833)
!833 = !{!834, !835, !836, !837, !838, !839, !840, !841, !842, !843}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !832, file: !6, line: 343, baseType: !112, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !832, file: !6, line: 343, baseType: !66, size: 8, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !832, file: !6, line: 343, baseType: !66, size: 8, offset: 72)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !832, file: !6, line: 343, baseType: !122, size: 16, offset: 80)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !832, file: !6, line: 343, baseType: !66, size: 8, offset: 96)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !832, file: !6, line: 343, baseType: !162, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !832, file: !6, line: 344, baseType: !162, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !832, file: !6, line: 345, baseType: !82, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !832, file: !6, line: 346, baseType: !65, size: 64, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !832, file: !6, line: 347, baseType: !39, size: 32, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !113, file: !6, line: 393, baseType: !845, size: 256)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 352, size: 256, elements: !846)
!846 = !{!847, !848, !849, !850, !851, !852, !857}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !845, file: !6, line: 353, baseType: !112, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !845, file: !6, line: 353, baseType: !66, size: 8, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !845, file: !6, line: 353, baseType: !66, size: 8, offset: 72)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !845, file: !6, line: 353, baseType: !122, size: 16, offset: 80)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !845, file: !6, line: 353, baseType: !66, size: 8, offset: 96)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !845, file: !6, line: 353, baseType: !853, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !35, line: 1064, baseType: !854)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !81, !82}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !845, file: !6, line: 354, baseType: !82, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !113, file: !6, line: 394, baseType: !859, size: 192)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 359, size: 192, elements: !860)
!860 = !{!861, !862, !863, !864, !865, !866}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !859, file: !6, line: 360, baseType: !112, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !859, file: !6, line: 360, baseType: !66, size: 8, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !859, file: !6, line: 360, baseType: !66, size: 8, offset: 72)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !859, file: !6, line: 360, baseType: !122, size: 16, offset: 80)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !859, file: !6, line: 360, baseType: !66, size: 8, offset: 96)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !859, file: !6, line: 360, baseType: !112, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !113, file: !6, line: 401, baseType: !163, size: 384)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !6, line: 434, size: 1600, elements: !870)
!870 = !{!871, !876, !877, !878}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !869, file: !6, line: 435, baseType: !872, size: 128)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !6, line: 429, size: 128, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !872, file: !6, line: 430, baseType: !82, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !872, file: !6, line: 431, baseType: !66, size: 8, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !869, file: !6, line: 436, baseType: !113, size: 576)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !869, file: !6, line: 437, baseType: !163, size: 384)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !869, file: !6, line: 438, baseType: !263, size: 1600)
!879 = !{!880, !885, !887, !0, !892}
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(scope: null, file: !3, line: 188, type: !882, isLocal: true, isDefinition: true)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 504, elements: !883)
!883 = !{!884}
!884 = !DISubrange(count: 63)
!885 = !DIGlobalVariableExpression(var: !886, expr: !DIExpression())
!886 = distinct !DIGlobalVariable(scope: null, file: !3, line: 451, type: !882, isLocal: true, isDefinition: true)
!887 = !DIGlobalVariableExpression(var: !888, expr: !DIExpression())
!888 = distinct !DIGlobalVariable(scope: null, file: !23, line: 480, type: !889, isLocal: true, isDefinition: true)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 168, elements: !890)
!890 = !{!891}
!891 = !DISubrange(count: 21)
!892 = !DIGlobalVariableExpression(var: !893, expr: !DIExpression())
!893 = distinct !DIGlobalVariable(scope: null, file: !3, line: 908, type: !894, isLocal: true, isDefinition: true)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 216, elements: !895)
!895 = !{!896}
!896 = !DISubrange(count: 27)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 56, elements: !466)
!898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!899 = !{i32 7, !"Dwarf Version", i32 5}
!900 = !{i32 2, !"Debug Info Version", i32 3}
!901 = !{i32 1, !"wchar_size", i32 2}
!902 = !{i32 8, !"cf-protection-branch", i32 1}
!903 = !{i32 4, !"function_return_thunk_extern", i32 1}
!904 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!905 = !{i32 1, !"Code Model", i32 2}
!906 = !{i32 1, !"override-stack-alignment", i32 8}
!907 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!908 = distinct !DISubprogram(name: "acpi_ut_copy_iobject_to_eobject", scope: !3, file: !3, line: 359, type: !909, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !916)
!909 = !DISubroutineType(types: !910)
!910 = !{!101, !112, !911}
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !35, line: 978, size: 128, elements: !913)
!913 = !{!914, !915}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !912, file: !35, line: 979, baseType: !100, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !912, file: !35, line: 980, baseType: !82, size: 64, offset: 64)
!916 = !{!917, !918, !919}
!917 = !DILocalVariable(name: "internal_object", arg: 1, scope: !908, file: !3, line: 359, type: !112)
!918 = !DILocalVariable(name: "ret_buffer", arg: 2, scope: !908, file: !3, line: 360, type: !911)
!919 = !DILocalVariable(name: "status", scope: !908, file: !3, line: 362, type: !101)
!920 = !DILocation(line: 359, column: 60, scope: !908)
!921 = !DILocation(line: 360, column: 25, scope: !908)
!922 = !DILocation(line: 362, column: 2, scope: !908)
!923 = !DILocation(line: 362, column: 14, scope: !908)
!924 = !DILocation(line: 366, column: 6, scope: !925)
!925 = distinct !DILexicalBlock(scope: !908, file: !3, line: 366, column: 6)
!926 = !DILocation(line: 366, column: 30, scope: !925)
!927 = !DILocation(line: 366, column: 35, scope: !925)
!928 = !DILocation(line: 366, column: 6, scope: !908)
!929 = !DILocation(line: 371, column: 46, scope: !930)
!930 = distinct !DILexicalBlock(scope: !925, file: !3, line: 366, column: 57)
!931 = !DILocation(line: 372, column: 11, scope: !930)
!932 = !DILocation(line: 372, column: 23, scope: !930)
!933 = !DILocation(line: 373, column: 12, scope: !930)
!934 = !DILocation(line: 373, column: 24, scope: !930)
!935 = !DILocation(line: 371, column: 12, scope: !930)
!936 = !DILocation(line: 371, column: 10, scope: !930)
!937 = !DILocation(line: 374, column: 2, scope: !930)
!938 = !DILocation(line: 378, column: 44, scope: !939)
!939 = distinct !DILexicalBlock(scope: !925, file: !3, line: 374, column: 9)
!940 = !DILocation(line: 379, column: 9, scope: !939)
!941 = !DILocation(line: 383, column: 9, scope: !939)
!942 = !DILocation(line: 390, column: 10, scope: !939)
!943 = !DILocation(line: 390, column: 22, scope: !939)
!944 = !DILocation(line: 378, column: 12, scope: !939)
!945 = !DILocation(line: 378, column: 10, scope: !939)
!946 = !DILocation(line: 395, column: 3, scope: !939)
!947 = !DILocation(line: 395, column: 15, scope: !939)
!948 = !DILocation(line: 395, column: 22, scope: !939)
!949 = !DILocation(line: 398, column: 2, scope: !908)
!950 = !DILocation(line: 399, column: 1, scope: !908)
!951 = distinct !DISubprogram(name: "acpi_ut_copy_ipackage_to_epackage", scope: !3, file: !3, line: 299, type: !952, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !955)
!952 = !DISubroutineType(types: !953)
!953 = !{!101, !112, !65, !954}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!955 = !{!956, !957, !958, !959, !960, !961}
!956 = !DILocalVariable(name: "internal_object", arg: 1, scope: !951, file: !3, line: 299, type: !112)
!957 = !DILocalVariable(name: "buffer", arg: 2, scope: !951, file: !3, line: 300, type: !65)
!958 = !DILocalVariable(name: "space_used", arg: 3, scope: !951, file: !3, line: 300, type: !954)
!959 = !DILocalVariable(name: "external_object", scope: !951, file: !3, line: 302, type: !33)
!960 = !DILocalVariable(name: "status", scope: !951, file: !3, line: 303, type: !101)
!961 = !DILocalVariable(name: "info", scope: !951, file: !3, line: 304, type: !103)
!962 = !DILocation(line: 299, column: 62, scope: !951)
!963 = !DILocation(line: 300, column: 11, scope: !951)
!964 = !DILocation(line: 300, column: 30, scope: !951)
!965 = !DILocation(line: 302, column: 2, scope: !951)
!966 = !DILocation(line: 302, column: 21, scope: !951)
!967 = !DILocation(line: 303, column: 2, scope: !951)
!968 = !DILocation(line: 303, column: 14, scope: !951)
!969 = !DILocation(line: 304, column: 2, scope: !951)
!970 = !DILocation(line: 304, column: 23, scope: !951)
!971 = !DILocation(line: 311, column: 20, scope: !951)
!972 = !DILocation(line: 311, column: 18, scope: !951)
!973 = !DILocation(line: 316, column: 7, scope: !951)
!974 = !DILocation(line: 316, column: 14, scope: !951)
!975 = !DILocation(line: 317, column: 20, scope: !951)
!976 = !DILocation(line: 317, column: 27, scope: !951)
!977 = !DILocation(line: 317, column: 7, scope: !951)
!978 = !DILocation(line: 317, column: 18, scope: !951)
!979 = !DILocation(line: 319, column: 7, scope: !951)
!980 = !DILocation(line: 319, column: 20, scope: !951)
!981 = !DILocation(line: 320, column: 7, scope: !951)
!982 = !DILocation(line: 320, column: 20, scope: !951)
!983 = !DILocation(line: 322, column: 26, scope: !951)
!984 = !DILocation(line: 322, column: 50, scope: !951)
!985 = !DILocation(line: 322, column: 2, scope: !951)
!986 = !DILocation(line: 322, column: 24, scope: !951)
!987 = !DILocation(line: 323, column: 35, scope: !951)
!988 = !DILocation(line: 323, column: 60, scope: !951)
!989 = !DILocation(line: 323, column: 2, scope: !951)
!990 = !DILocation(line: 323, column: 27, scope: !951)
!991 = !DILocation(line: 323, column: 33, scope: !951)
!992 = !DILocation(line: 325, column: 6, scope: !951)
!993 = !DILocation(line: 324, column: 2, scope: !951)
!994 = !DILocation(line: 324, column: 27, scope: !951)
!995 = !DILocation(line: 324, column: 36, scope: !951)
!996 = !DILocation(line: 331, column: 28, scope: !951)
!997 = !DILocation(line: 331, column: 53, scope: !951)
!998 = !DILocation(line: 331, column: 17, scope: !951)
!999 = !DILocation(line: 331, column: 59, scope: !951)
!1000 = !DILocation(line: 331, column: 7, scope: !951)
!1001 = !DILocation(line: 331, column: 14, scope: !951)
!1002 = !DILocation(line: 333, column: 21, scope: !951)
!1003 = !DILocation(line: 333, column: 46, scope: !951)
!1004 = !DILocation(line: 333, column: 52, scope: !951)
!1005 = !DILocation(line: 333, column: 7, scope: !951)
!1006 = !DILocation(line: 333, column: 18, scope: !951)
!1007 = !DILocation(line: 336, column: 37, scope: !951)
!1008 = !DILocation(line: 336, column: 54, scope: !951)
!1009 = !DILocation(line: 336, column: 11, scope: !951)
!1010 = !DILocation(line: 336, column: 9, scope: !951)
!1011 = !DILocation(line: 340, column: 21, scope: !951)
!1012 = !DILocation(line: 340, column: 3, scope: !951)
!1013 = !DILocation(line: 340, column: 14, scope: !951)
!1014 = !DILocation(line: 341, column: 2, scope: !951)
!1015 = !DILocation(line: 342, column: 1, scope: !951)
!1016 = distinct !DISubprogram(name: "acpi_ut_copy_isimple_to_esimple", scope: !3, file: !3, line: 78, type: !1017, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1019)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!101, !112, !33, !65, !954}
!1019 = !{!1020, !1021, !1022, !1023, !1024}
!1020 = !DILocalVariable(name: "internal_object", arg: 1, scope: !1016, file: !3, line: 78, type: !112)
!1021 = !DILocalVariable(name: "external_object", arg: 2, scope: !1016, file: !3, line: 79, type: !33)
!1022 = !DILocalVariable(name: "data_space", arg: 3, scope: !1016, file: !3, line: 80, type: !65)
!1023 = !DILocalVariable(name: "buffer_space_used", arg: 4, scope: !1016, file: !3, line: 80, type: !954)
!1024 = !DILocalVariable(name: "status", scope: !1016, file: !3, line: 82, type: !101)
!1025 = !DILocation(line: 78, column: 60, scope: !1016)
!1026 = !DILocation(line: 79, column: 24, scope: !1016)
!1027 = !DILocation(line: 80, column: 9, scope: !1016)
!1028 = !DILocation(line: 80, column: 32, scope: !1016)
!1029 = !DILocation(line: 82, column: 2, scope: !1016)
!1030 = !DILocation(line: 82, column: 14, scope: !1016)
!1031 = !DILocation(line: 86, column: 3, scope: !1016)
!1032 = !DILocation(line: 86, column: 21, scope: !1016)
!1033 = !DILocation(line: 92, column: 7, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 92, column: 6)
!1035 = !DILocation(line: 92, column: 6, scope: !1016)
!1036 = !DILocation(line: 93, column: 3, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 92, column: 24)
!1038 = !DILocation(line: 98, column: 9, scope: !1016)
!1039 = !DILocation(line: 98, column: 2, scope: !1016)
!1040 = !DILocation(line: 104, column: 26, scope: !1016)
!1041 = !DILocation(line: 104, column: 50, scope: !1016)
!1042 = !DILocation(line: 104, column: 2, scope: !1016)
!1043 = !DILocation(line: 104, column: 24, scope: !1016)
!1044 = !DILocation(line: 108, column: 10, scope: !1016)
!1045 = !DILocation(line: 108, column: 34, scope: !1016)
!1046 = !DILocation(line: 108, column: 2, scope: !1016)
!1047 = !DILocation(line: 111, column: 45, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 108, column: 40)
!1049 = !DILocation(line: 111, column: 3, scope: !1048)
!1050 = !DILocation(line: 111, column: 27, scope: !1048)
!1051 = !DILocation(line: 111, column: 35, scope: !1048)
!1052 = !DILocation(line: 112, column: 36, scope: !1048)
!1053 = !DILocation(line: 112, column: 60, scope: !1048)
!1054 = !DILocation(line: 112, column: 3, scope: !1048)
!1055 = !DILocation(line: 112, column: 27, scope: !1048)
!1056 = !DILocation(line: 112, column: 34, scope: !1048)
!1057 = !DILocation(line: 113, column: 24, scope: !1048)
!1058 = !DILocation(line: 113, column: 4, scope: !1048)
!1059 = !DILocation(line: 113, column: 22, scope: !1048)
!1060 = !DILocation(line: 118, column: 18, scope: !1048)
!1061 = !DILocation(line: 119, column: 18, scope: !1048)
!1062 = !DILocation(line: 119, column: 42, scope: !1048)
!1063 = !DILocation(line: 120, column: 21, scope: !1048)
!1064 = !DILocation(line: 120, column: 45, scope: !1048)
!1065 = !DILocation(line: 120, column: 10, scope: !1048)
!1066 = !DILocation(line: 120, column: 52, scope: !1048)
!1067 = !DILocation(line: 118, column: 3, scope: !1048)
!1068 = !DILocation(line: 121, column: 3, scope: !1048)
!1069 = !DILocation(line: 125, column: 37, scope: !1048)
!1070 = !DILocation(line: 125, column: 3, scope: !1048)
!1071 = !DILocation(line: 125, column: 27, scope: !1048)
!1072 = !DILocation(line: 125, column: 35, scope: !1048)
!1073 = !DILocation(line: 126, column: 36, scope: !1048)
!1074 = !DILocation(line: 126, column: 60, scope: !1048)
!1075 = !DILocation(line: 126, column: 3, scope: !1048)
!1076 = !DILocation(line: 126, column: 27, scope: !1048)
!1077 = !DILocation(line: 126, column: 34, scope: !1048)
!1078 = !DILocation(line: 128, column: 7, scope: !1048)
!1079 = !DILocation(line: 127, column: 4, scope: !1048)
!1080 = !DILocation(line: 127, column: 22, scope: !1048)
!1081 = !DILocation(line: 131, column: 18, scope: !1048)
!1082 = !DILocation(line: 132, column: 18, scope: !1048)
!1083 = !DILocation(line: 132, column: 42, scope: !1048)
!1084 = !DILocation(line: 133, column: 10, scope: !1048)
!1085 = !DILocation(line: 133, column: 34, scope: !1048)
!1086 = !DILocation(line: 131, column: 3, scope: !1048)
!1087 = !DILocation(line: 134, column: 3, scope: !1048)
!1088 = !DILocation(line: 138, column: 36, scope: !1048)
!1089 = !DILocation(line: 138, column: 61, scope: !1048)
!1090 = !DILocation(line: 138, column: 3, scope: !1048)
!1091 = !DILocation(line: 138, column: 28, scope: !1048)
!1092 = !DILocation(line: 138, column: 34, scope: !1048)
!1093 = !DILocation(line: 139, column: 3, scope: !1048)
!1094 = !DILocation(line: 145, column: 11, scope: !1048)
!1095 = !DILocation(line: 145, column: 38, scope: !1048)
!1096 = !DILocation(line: 145, column: 3, scope: !1048)
!1097 = !DILocation(line: 152, column: 8, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 145, column: 45)
!1099 = !DILocation(line: 152, column: 35, scope: !1098)
!1100 = !DILocation(line: 151, column: 4, scope: !1098)
!1101 = !DILocation(line: 151, column: 31, scope: !1098)
!1102 = !DILocation(line: 151, column: 38, scope: !1098)
!1103 = !DILocation(line: 154, column: 25, scope: !1098)
!1104 = !DILocation(line: 154, column: 52, scope: !1098)
!1105 = !DILocation(line: 154, column: 8, scope: !1098)
!1106 = !DILocation(line: 153, column: 4, scope: !1098)
!1107 = !DILocation(line: 153, column: 31, scope: !1098)
!1108 = !DILocation(line: 153, column: 43, scope: !1098)
!1109 = !DILocation(line: 155, column: 4, scope: !1098)
!1110 = !DILocation(line: 161, column: 4, scope: !1098)
!1111 = !DILocation(line: 163, column: 3, scope: !1048)
!1112 = !DILocation(line: 168, column: 7, scope: !1048)
!1113 = !DILocation(line: 168, column: 34, scope: !1048)
!1114 = !DILocation(line: 167, column: 3, scope: !1048)
!1115 = !DILocation(line: 167, column: 30, scope: !1048)
!1116 = !DILocation(line: 167, column: 38, scope: !1048)
!1117 = !DILocation(line: 170, column: 7, scope: !1048)
!1118 = !DILocation(line: 170, column: 34, scope: !1048)
!1119 = !DILocation(line: 169, column: 3, scope: !1048)
!1120 = !DILocation(line: 169, column: 30, scope: !1048)
!1121 = !DILocation(line: 169, column: 43, scope: !1048)
!1122 = !DILocation(line: 172, column: 7, scope: !1048)
!1123 = !DILocation(line: 172, column: 34, scope: !1048)
!1124 = !DILocation(line: 171, column: 3, scope: !1048)
!1125 = !DILocation(line: 171, column: 30, scope: !1048)
!1126 = !DILocation(line: 171, column: 42, scope: !1048)
!1127 = !DILocation(line: 173, column: 3, scope: !1048)
!1128 = !DILocation(line: 178, column: 7, scope: !1048)
!1129 = !DILocation(line: 178, column: 39, scope: !1048)
!1130 = !DILocation(line: 177, column: 3, scope: !1048)
!1131 = !DILocation(line: 177, column: 35, scope: !1048)
!1132 = !DILocation(line: 177, column: 48, scope: !1048)
!1133 = !DILocation(line: 181, column: 7, scope: !1048)
!1134 = !DILocation(line: 181, column: 39, scope: !1048)
!1135 = !DILocation(line: 180, column: 3, scope: !1048)
!1136 = !DILocation(line: 180, column: 35, scope: !1048)
!1137 = !DILocation(line: 180, column: 50, scope: !1048)
!1138 = !DILocation(line: 182, column: 3, scope: !1048)
!1139 = !DILocation(line: 188, column: 3, scope: !1048)
!1140 = !DILocation(line: 193, column: 3, scope: !1048)
!1141 = !DILocation(line: 196, column: 2, scope: !1016)
!1142 = !DILocation(line: 197, column: 1, scope: !1016)
!1143 = distinct !DISubprogram(name: "acpi_ut_copy_eobject_to_iobject", scope: !3, file: !3, line: 603, type: !1144, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1146)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!101, !33, !111}
!1146 = !{!1147, !1148, !1149}
!1147 = !DILocalVariable(name: "external_object", arg: 1, scope: !1143, file: !3, line: 603, type: !33)
!1148 = !DILocalVariable(name: "internal_object", arg: 2, scope: !1143, file: !3, line: 604, type: !111)
!1149 = !DILocalVariable(name: "status", scope: !1143, file: !3, line: 606, type: !101)
!1150 = !DILocation(line: 603, column: 52, scope: !1143)
!1151 = !DILocation(line: 604, column: 33, scope: !1143)
!1152 = !DILocation(line: 606, column: 2, scope: !1143)
!1153 = !DILocation(line: 606, column: 14, scope: !1143)
!1154 = !DILocation(line: 610, column: 6, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 610, column: 6)
!1156 = !DILocation(line: 610, column: 23, scope: !1155)
!1157 = !DILocation(line: 610, column: 28, scope: !1155)
!1158 = !DILocation(line: 610, column: 6, scope: !1143)
!1159 = !DILocation(line: 612, column: 41, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 610, column: 50)
!1161 = !DILocation(line: 613, column: 13, scope: !1160)
!1162 = !DILocation(line: 612, column: 7, scope: !1160)
!1163 = !DILocation(line: 611, column: 10, scope: !1160)
!1164 = !DILocation(line: 614, column: 2, scope: !1160)
!1165 = !DILocation(line: 618, column: 44, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 614, column: 9)
!1167 = !DILocation(line: 619, column: 9, scope: !1166)
!1168 = !DILocation(line: 618, column: 12, scope: !1166)
!1169 = !DILocation(line: 618, column: 10, scope: !1166)
!1170 = !DILocation(line: 622, column: 2, scope: !1143)
!1171 = !DILocation(line: 623, column: 1, scope: !1143)
!1172 = distinct !DISubprogram(name: "acpi_ut_copy_epackage_to_ipackage", scope: !3, file: !3, line: 541, type: !1144, scopeLine: 543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1173)
!1173 = !{!1174, !1175, !1176, !1177, !1178, !1179}
!1174 = !DILocalVariable(name: "external_object", arg: 1, scope: !1172, file: !3, line: 541, type: !33)
!1175 = !DILocalVariable(name: "internal_object", arg: 2, scope: !1172, file: !3, line: 542, type: !111)
!1176 = !DILocalVariable(name: "status", scope: !1172, file: !3, line: 544, type: !101)
!1177 = !DILocalVariable(name: "package_object", scope: !1172, file: !3, line: 545, type: !112)
!1178 = !DILocalVariable(name: "package_elements", scope: !1172, file: !3, line: 546, type: !111)
!1179 = !DILocalVariable(name: "i", scope: !1172, file: !3, line: 547, type: !39)
!1180 = !DILocation(line: 541, column: 54, scope: !1172)
!1181 = !DILocation(line: 542, column: 35, scope: !1172)
!1182 = !DILocation(line: 544, column: 2, scope: !1172)
!1183 = !DILocation(line: 544, column: 14, scope: !1172)
!1184 = !DILocation(line: 545, column: 2, scope: !1172)
!1185 = !DILocation(line: 545, column: 29, scope: !1172)
!1186 = !DILocation(line: 546, column: 2, scope: !1172)
!1187 = !DILocation(line: 546, column: 30, scope: !1172)
!1188 = !DILocation(line: 547, column: 2, scope: !1172)
!1189 = !DILocation(line: 547, column: 6, scope: !1172)
!1190 = !DILocation(line: 554, column: 36, scope: !1172)
!1191 = !DILocation(line: 554, column: 61, scope: !1172)
!1192 = !DILocation(line: 554, column: 6, scope: !1172)
!1193 = !DILocation(line: 553, column: 17, scope: !1172)
!1194 = !DILocation(line: 555, column: 7, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 555, column: 6)
!1196 = !DILocation(line: 555, column: 6, scope: !1172)
!1197 = !DILocation(line: 556, column: 3, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 555, column: 23)
!1199 = !DILocation(line: 559, column: 21, scope: !1172)
!1200 = !DILocation(line: 559, column: 45, scope: !1172)
!1201 = !DILocation(line: 559, column: 19, scope: !1172)
!1202 = !DILocation(line: 565, column: 9, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 565, column: 2)
!1204 = !DILocation(line: 565, column: 7, scope: !1203)
!1205 = !DILocation(line: 565, column: 14, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 565, column: 2)
!1207 = !DILocation(line: 565, column: 18, scope: !1206)
!1208 = !DILocation(line: 565, column: 43, scope: !1206)
!1209 = !DILocation(line: 565, column: 16, scope: !1206)
!1210 = !DILocation(line: 565, column: 2, scope: !1203)
!1211 = !DILocation(line: 567, column: 40, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 565, column: 55)
!1213 = !DILocation(line: 568, column: 11, scope: !1212)
!1214 = !DILocation(line: 568, column: 20, scope: !1212)
!1215 = !DILocation(line: 569, column: 12, scope: !1212)
!1216 = !DILocation(line: 569, column: 29, scope: !1212)
!1217 = !DILocation(line: 567, column: 7, scope: !1212)
!1218 = !DILocation(line: 566, column: 10, scope: !1212)
!1219 = !DILocation(line: 570, column: 7, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 570, column: 7)
!1221 = !DILocation(line: 570, column: 7, scope: !1212)
!1222 = !DILocation(line: 574, column: 36, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 570, column: 29)
!1224 = !DILocation(line: 574, column: 4, scope: !1223)
!1225 = !DILocation(line: 574, column: 28, scope: !1223)
!1226 = !DILocation(line: 574, column: 34, scope: !1223)
!1227 = !DILocation(line: 575, column: 4, scope: !1223)
!1228 = !DILocation(line: 575, column: 21, scope: !1223)
!1229 = !DILocation(line: 575, column: 24, scope: !1223)
!1230 = !DILocation(line: 576, column: 29, scope: !1223)
!1231 = !DILocation(line: 576, column: 4, scope: !1223)
!1232 = !DILocation(line: 577, column: 4, scope: !1223)
!1233 = !DILocation(line: 579, column: 2, scope: !1212)
!1234 = !DILocation(line: 565, column: 51, scope: !1206)
!1235 = !DILocation(line: 565, column: 2, scope: !1206)
!1236 = distinct !{!1236, !1210, !1237, !1238, !1239}
!1237 = !DILocation(line: 579, column: 2, scope: !1203)
!1238 = !{!"llvm.loop.mustprogress"}
!1239 = !{!"llvm.loop.unroll.disable"}
!1240 = !DILocation(line: 583, column: 2, scope: !1172)
!1241 = !DILocation(line: 583, column: 26, scope: !1172)
!1242 = !DILocation(line: 583, column: 32, scope: !1172)
!1243 = !DILocation(line: 585, column: 21, scope: !1172)
!1244 = !DILocation(line: 585, column: 3, scope: !1172)
!1245 = !DILocation(line: 585, column: 19, scope: !1172)
!1246 = !DILocation(line: 586, column: 2, scope: !1172)
!1247 = !DILocation(line: 587, column: 1, scope: !1172)
!1248 = distinct !DISubprogram(name: "acpi_ut_copy_esimple_to_isimple", scope: !3, file: !3, line: 418, type: !1144, scopeLine: 420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1249)
!1249 = !{!1250, !1251, !1252, !1253}
!1250 = !DILocalVariable(name: "external_object", arg: 1, scope: !1248, file: !3, line: 418, type: !33)
!1251 = !DILocalVariable(name: "ret_internal_object", arg: 2, scope: !1248, file: !3, line: 419, type: !111)
!1252 = !DILocalVariable(name: "internal_object", scope: !1248, file: !3, line: 421, type: !112)
!1253 = !DILabel(scope: !1248, name: "error_exit", file: !3, line: 521)
!1254 = !DILocation(line: 418, column: 52, scope: !1248)
!1255 = !DILocation(line: 419, column: 33, scope: !1248)
!1256 = !DILocation(line: 421, column: 2, scope: !1248)
!1257 = !DILocation(line: 421, column: 29, scope: !1248)
!1258 = !DILocation(line: 428, column: 10, scope: !1248)
!1259 = !DILocation(line: 428, column: 27, scope: !1248)
!1260 = !DILocation(line: 428, column: 2, scope: !1248)
!1261 = !DILocation(line: 434, column: 21, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 428, column: 33)
!1263 = !DILocation(line: 434, column: 19, scope: !1262)
!1264 = !DILocation(line: 437, column: 8, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 437, column: 7)
!1266 = !DILocation(line: 437, column: 7, scope: !1262)
!1267 = !DILocation(line: 438, column: 4, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 437, column: 25)
!1269 = !DILocation(line: 440, column: 3, scope: !1262)
!1270 = !DILocation(line: 444, column: 4, scope: !1262)
!1271 = !DILocation(line: 444, column: 24, scope: !1262)
!1272 = !DILocation(line: 445, column: 3, scope: !1262)
!1273 = !DILocation(line: 451, column: 3, scope: !1262)
!1274 = !DILocation(line: 455, column: 3, scope: !1262)
!1275 = !DILocation(line: 460, column: 10, scope: !1248)
!1276 = !DILocation(line: 460, column: 27, scope: !1248)
!1277 = !DILocation(line: 460, column: 2, scope: !1248)
!1278 = !DILocation(line: 464, column: 7, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 460, column: 33)
!1280 = !DILocation(line: 463, column: 3, scope: !1279)
!1281 = !DILocation(line: 463, column: 27, scope: !1279)
!1282 = !DILocation(line: 463, column: 35, scope: !1279)
!1283 = !DILocation(line: 467, column: 8, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 467, column: 7)
!1285 = !DILocation(line: 467, column: 32, scope: !1284)
!1286 = !DILocation(line: 467, column: 7, scope: !1279)
!1287 = !DILocation(line: 468, column: 4, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 467, column: 41)
!1289 = !DILocation(line: 471, column: 10, scope: !1279)
!1290 = !DILocation(line: 471, column: 34, scope: !1279)
!1291 = !DILocation(line: 472, column: 10, scope: !1279)
!1292 = !DILocation(line: 472, column: 34, scope: !1279)
!1293 = !DILocation(line: 473, column: 10, scope: !1279)
!1294 = !DILocation(line: 473, column: 34, scope: !1279)
!1295 = !DILocation(line: 471, column: 3, scope: !1279)
!1296 = !DILocation(line: 475, column: 36, scope: !1279)
!1297 = !DILocation(line: 475, column: 60, scope: !1279)
!1298 = !DILocation(line: 475, column: 3, scope: !1279)
!1299 = !DILocation(line: 475, column: 27, scope: !1279)
!1300 = !DILocation(line: 475, column: 34, scope: !1279)
!1301 = !DILocation(line: 476, column: 3, scope: !1279)
!1302 = !DILocation(line: 481, column: 7, scope: !1279)
!1303 = !DILocation(line: 480, column: 3, scope: !1279)
!1304 = !DILocation(line: 480, column: 27, scope: !1279)
!1305 = !DILocation(line: 480, column: 35, scope: !1279)
!1306 = !DILocation(line: 482, column: 8, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 482, column: 7)
!1308 = !DILocation(line: 482, column: 32, scope: !1307)
!1309 = !DILocation(line: 482, column: 7, scope: !1279)
!1310 = !DILocation(line: 483, column: 4, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 482, column: 41)
!1312 = !DILocation(line: 486, column: 10, scope: !1279)
!1313 = !DILocation(line: 486, column: 34, scope: !1279)
!1314 = !DILocation(line: 487, column: 10, scope: !1279)
!1315 = !DILocation(line: 487, column: 34, scope: !1279)
!1316 = !DILocation(line: 488, column: 10, scope: !1279)
!1317 = !DILocation(line: 488, column: 34, scope: !1279)
!1318 = !DILocation(line: 486, column: 3, scope: !1279)
!1319 = !DILocation(line: 490, column: 36, scope: !1279)
!1320 = !DILocation(line: 490, column: 60, scope: !1279)
!1321 = !DILocation(line: 490, column: 3, scope: !1279)
!1322 = !DILocation(line: 490, column: 27, scope: !1279)
!1323 = !DILocation(line: 490, column: 34, scope: !1279)
!1324 = !DILocation(line: 494, column: 3, scope: !1279)
!1325 = !DILocation(line: 494, column: 27, scope: !1279)
!1326 = !DILocation(line: 494, column: 33, scope: !1279)
!1327 = !DILocation(line: 495, column: 3, scope: !1279)
!1328 = !DILocation(line: 499, column: 36, scope: !1279)
!1329 = !DILocation(line: 499, column: 61, scope: !1279)
!1330 = !DILocation(line: 499, column: 3, scope: !1279)
!1331 = !DILocation(line: 499, column: 28, scope: !1279)
!1332 = !DILocation(line: 499, column: 34, scope: !1279)
!1333 = !DILocation(line: 500, column: 3, scope: !1279)
!1334 = !DILocation(line: 506, column: 3, scope: !1279)
!1335 = !DILocation(line: 506, column: 30, scope: !1279)
!1336 = !DILocation(line: 506, column: 36, scope: !1279)
!1337 = !DILocation(line: 508, column: 7, scope: !1279)
!1338 = !DILocation(line: 508, column: 34, scope: !1279)
!1339 = !DILocation(line: 507, column: 3, scope: !1279)
!1340 = !DILocation(line: 507, column: 30, scope: !1279)
!1341 = !DILocation(line: 507, column: 37, scope: !1279)
!1342 = !DILocation(line: 509, column: 3, scope: !1279)
!1343 = !DILocation(line: 515, column: 3, scope: !1279)
!1344 = !DILocation(line: 518, column: 25, scope: !1248)
!1345 = !DILocation(line: 518, column: 3, scope: !1248)
!1346 = !DILocation(line: 518, column: 23, scope: !1248)
!1347 = !DILocation(line: 519, column: 2, scope: !1248)
!1348 = !DILocation(line: 521, column: 1, scope: !1248)
!1349 = !DILocation(line: 522, column: 27, scope: !1248)
!1350 = !DILocation(line: 522, column: 2, scope: !1248)
!1351 = !DILocation(line: 523, column: 2, scope: !1248)
!1352 = !DILocation(line: 524, column: 1, scope: !1248)
!1353 = distinct !DISubprogram(name: "acpi_ut_copy_iobject_to_iobject", scope: !3, file: !3, line: 937, type: !1354, scopeLine: 940, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1356)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!101, !112, !111, !228}
!1356 = !{!1357, !1358, !1359, !1360}
!1357 = !DILocalVariable(name: "source_desc", arg: 1, scope: !1353, file: !3, line: 937, type: !112)
!1358 = !DILocalVariable(name: "dest_desc", arg: 2, scope: !1353, file: !3, line: 938, type: !111)
!1359 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1353, file: !3, line: 939, type: !228)
!1360 = !DILocalVariable(name: "status", scope: !1353, file: !3, line: 941, type: !101)
!1361 = !DILocation(line: 937, column: 60, scope: !1353)
!1362 = !DILocation(line: 938, column: 33, scope: !1353)
!1363 = !DILocation(line: 939, column: 29, scope: !1353)
!1364 = !DILocation(line: 941, column: 2, scope: !1353)
!1365 = !DILocation(line: 941, column: 14, scope: !1353)
!1366 = !DILocation(line: 947, column: 15, scope: !1353)
!1367 = !DILocation(line: 947, column: 3, scope: !1353)
!1368 = !DILocation(line: 947, column: 13, scope: !1353)
!1369 = !DILocation(line: 948, column: 8, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 948, column: 6)
!1371 = !DILocation(line: 948, column: 7, scope: !1370)
!1372 = !DILocation(line: 948, column: 6, scope: !1353)
!1373 = !DILocation(line: 949, column: 3, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 948, column: 19)
!1375 = !DILocation(line: 954, column: 6, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 954, column: 6)
!1377 = !DILocation(line: 954, column: 26, scope: !1376)
!1378 = !DILocation(line: 954, column: 31, scope: !1376)
!1379 = !DILocation(line: 954, column: 6, scope: !1353)
!1380 = !DILocation(line: 956, column: 41, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 954, column: 53)
!1382 = !DILocation(line: 956, column: 55, scope: !1381)
!1383 = !DILocation(line: 956, column: 54, scope: !1381)
!1384 = !DILocation(line: 957, column: 13, scope: !1381)
!1385 = !DILocation(line: 956, column: 7, scope: !1381)
!1386 = !DILocation(line: 955, column: 10, scope: !1381)
!1387 = !DILocation(line: 958, column: 2, scope: !1381)
!1388 = !DILocation(line: 959, column: 39, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 958, column: 9)
!1390 = !DILocation(line: 959, column: 53, scope: !1389)
!1391 = !DILocation(line: 959, column: 52, scope: !1389)
!1392 = !DILocation(line: 959, column: 12, scope: !1389)
!1393 = !DILocation(line: 959, column: 10, scope: !1389)
!1394 = !DILocation(line: 964, column: 6, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 964, column: 6)
!1396 = !DILocation(line: 964, column: 6, scope: !1353)
!1397 = !DILocation(line: 965, column: 29, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 964, column: 28)
!1399 = !DILocation(line: 965, column: 28, scope: !1398)
!1400 = !DILocation(line: 965, column: 3, scope: !1398)
!1401 = !DILocation(line: 966, column: 2, scope: !1398)
!1402 = !DILocation(line: 968, column: 2, scope: !1353)
!1403 = !DILocation(line: 969, column: 1, scope: !1353)
!1404 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !104, file: !104, line: 436, type: !1405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!112, !1407, !39, !39, !38}
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!1408 = distinct !DISubprogram(name: "acpi_ut_copy_ipackage_to_ipackage", scope: !3, file: !3, line: 888, type: !1409, scopeLine: 891, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1411)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!101, !112, !112, !228}
!1411 = !{!1412, !1413, !1414, !1415}
!1412 = !DILocalVariable(name: "source_obj", arg: 1, scope: !1408, file: !3, line: 888, type: !112)
!1413 = !DILocalVariable(name: "dest_obj", arg: 2, scope: !1408, file: !3, line: 889, type: !112)
!1414 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1408, file: !3, line: 890, type: !228)
!1415 = !DILocalVariable(name: "status", scope: !1408, file: !3, line: 892, type: !101)
!1416 = !DILocation(line: 888, column: 62, scope: !1408)
!1417 = !DILocation(line: 889, column: 34, scope: !1408)
!1418 = !DILocation(line: 890, column: 31, scope: !1408)
!1419 = !DILocation(line: 892, column: 2, scope: !1408)
!1420 = !DILocation(line: 892, column: 14, scope: !1408)
!1421 = !DILocation(line: 896, column: 26, scope: !1408)
!1422 = !DILocation(line: 896, column: 45, scope: !1408)
!1423 = !DILocation(line: 896, column: 2, scope: !1408)
!1424 = !DILocation(line: 896, column: 19, scope: !1408)
!1425 = !DILocation(line: 896, column: 24, scope: !1408)
!1426 = !DILocation(line: 897, column: 27, scope: !1408)
!1427 = !DILocation(line: 897, column: 46, scope: !1408)
!1428 = !DILocation(line: 897, column: 2, scope: !1408)
!1429 = !DILocation(line: 897, column: 19, scope: !1408)
!1430 = !DILocation(line: 897, column: 25, scope: !1408)
!1431 = !DILocation(line: 898, column: 28, scope: !1408)
!1432 = !DILocation(line: 898, column: 48, scope: !1408)
!1433 = !DILocation(line: 898, column: 2, scope: !1408)
!1434 = !DILocation(line: 898, column: 20, scope: !1408)
!1435 = !DILocation(line: 898, column: 26, scope: !1408)
!1436 = !DILocation(line: 903, column: 31, scope: !1408)
!1437 = !DILocation(line: 903, column: 2, scope: !1408)
!1438 = !DILocation(line: 903, column: 20, scope: !1408)
!1439 = !DILocation(line: 903, column: 29, scope: !1408)
!1440 = !DILocation(line: 907, column: 7, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 907, column: 6)
!1442 = !DILocation(line: 907, column: 25, scope: !1441)
!1443 = !DILocation(line: 907, column: 6, scope: !1408)
!1444 = !DILocation(line: 908, column: 3, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 907, column: 35)
!1446 = !DILocation(line: 909, column: 3, scope: !1445)
!1447 = !DILocation(line: 916, column: 37, scope: !1408)
!1448 = !DILocation(line: 916, column: 49, scope: !1408)
!1449 = !DILocation(line: 918, column: 9, scope: !1408)
!1450 = !DILocation(line: 916, column: 11, scope: !1408)
!1451 = !DILocation(line: 916, column: 9, scope: !1408)
!1452 = !DILocation(line: 919, column: 2, scope: !1408)
!1453 = !DILocation(line: 920, column: 1, scope: !1408)
!1454 = distinct !DISubprogram(name: "acpi_ut_copy_simple_object", scope: !3, file: !3, line: 640, type: !1455, scopeLine: 642, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1457)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!101, !112, !112}
!1457 = !{!1458, !1459, !1460, !1461, !1462, !1463}
!1458 = !DILocalVariable(name: "source_desc", arg: 1, scope: !1454, file: !3, line: 640, type: !112)
!1459 = !DILocalVariable(name: "dest_desc", arg: 2, scope: !1454, file: !3, line: 641, type: !112)
!1460 = !DILocalVariable(name: "reference_count", scope: !1454, file: !3, line: 643, type: !122)
!1461 = !DILocalVariable(name: "next_object", scope: !1454, file: !3, line: 644, type: !112)
!1462 = !DILocalVariable(name: "status", scope: !1454, file: !3, line: 645, type: !101)
!1463 = !DILocalVariable(name: "copy_size", scope: !1454, file: !3, line: 646, type: !100)
!1464 = !DILocation(line: 640, column: 55, scope: !1454)
!1465 = !DILocation(line: 641, column: 34, scope: !1454)
!1466 = !DILocation(line: 643, column: 2, scope: !1454)
!1467 = !DILocation(line: 643, column: 6, scope: !1454)
!1468 = !DILocation(line: 644, column: 2, scope: !1454)
!1469 = !DILocation(line: 644, column: 29, scope: !1454)
!1470 = !DILocation(line: 645, column: 2, scope: !1454)
!1471 = !DILocation(line: 645, column: 14, scope: !1454)
!1472 = !DILocation(line: 646, column: 2, scope: !1454)
!1473 = !DILocation(line: 646, column: 12, scope: !1454)
!1474 = !DILocation(line: 650, column: 20, scope: !1454)
!1475 = !DILocation(line: 650, column: 38, scope: !1454)
!1476 = !DILocation(line: 650, column: 18, scope: !1454)
!1477 = !DILocation(line: 651, column: 16, scope: !1454)
!1478 = !DILocation(line: 651, column: 34, scope: !1454)
!1479 = !DILocation(line: 651, column: 14, scope: !1454)
!1480 = !DILocation(line: 657, column: 12, scope: !1454)
!1481 = !DILocation(line: 658, column: 6, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 658, column: 6)
!1483 = !DILocation(line: 658, column: 44, scope: !1482)
!1484 = !DILocation(line: 658, column: 6, scope: !1454)
!1485 = !DILocation(line: 659, column: 13, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 658, column: 69)
!1487 = !DILocation(line: 660, column: 2, scope: !1486)
!1488 = !DILocation(line: 662, column: 9, scope: !1454)
!1489 = !DILocation(line: 663, column: 9, scope: !1454)
!1490 = !DILocation(line: 663, column: 43, scope: !1454)
!1491 = !DILocation(line: 662, column: 2, scope: !1454)
!1492 = !DILocation(line: 667, column: 38, scope: !1454)
!1493 = !DILocation(line: 667, column: 2, scope: !1454)
!1494 = !DILocation(line: 667, column: 20, scope: !1454)
!1495 = !DILocation(line: 667, column: 36, scope: !1454)
!1496 = !DILocation(line: 668, column: 34, scope: !1454)
!1497 = !DILocation(line: 668, column: 2, scope: !1454)
!1498 = !DILocation(line: 668, column: 20, scope: !1454)
!1499 = !DILocation(line: 668, column: 32, scope: !1454)
!1500 = !DILocation(line: 672, column: 2, scope: !1454)
!1501 = !DILocation(line: 672, column: 20, scope: !1454)
!1502 = !DILocation(line: 672, column: 26, scope: !1454)
!1503 = !DILocation(line: 676, column: 10, scope: !1454)
!1504 = !DILocation(line: 676, column: 28, scope: !1454)
!1505 = !DILocation(line: 676, column: 2, scope: !1454)
!1506 = !DILocation(line: 683, column: 8, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 683, column: 7)
!1508 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 676, column: 34)
!1509 = !DILocation(line: 683, column: 28, scope: !1507)
!1510 = !DILocation(line: 683, column: 7, scope: !1507)
!1511 = !DILocation(line: 683, column: 37, scope: !1507)
!1512 = !DILocation(line: 684, column: 8, scope: !1507)
!1513 = !DILocation(line: 684, column: 28, scope: !1507)
!1514 = !DILocation(line: 684, column: 7, scope: !1507)
!1515 = !DILocation(line: 683, column: 7, scope: !1508)
!1516 = !DILocation(line: 686, column: 8, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 684, column: 37)
!1518 = !DILocation(line: 685, column: 4, scope: !1517)
!1519 = !DILocation(line: 685, column: 22, scope: !1517)
!1520 = !DILocation(line: 685, column: 30, scope: !1517)
!1521 = !DILocation(line: 687, column: 9, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 687, column: 8)
!1523 = !DILocation(line: 687, column: 27, scope: !1522)
!1524 = !DILocation(line: 687, column: 8, scope: !1517)
!1525 = !DILocation(line: 688, column: 5, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 687, column: 36)
!1527 = !DILocation(line: 693, column: 11, scope: !1517)
!1528 = !DILocation(line: 693, column: 29, scope: !1517)
!1529 = !DILocation(line: 694, column: 11, scope: !1517)
!1530 = !DILocation(line: 694, column: 31, scope: !1517)
!1531 = !DILocation(line: 695, column: 11, scope: !1517)
!1532 = !DILocation(line: 695, column: 31, scope: !1517)
!1533 = !DILocation(line: 693, column: 4, scope: !1517)
!1534 = !DILocation(line: 696, column: 3, scope: !1517)
!1535 = !DILocation(line: 697, column: 3, scope: !1508)
!1536 = !DILocation(line: 705, column: 7, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 705, column: 7)
!1538 = !DILocation(line: 705, column: 27, scope: !1537)
!1539 = !DILocation(line: 705, column: 7, scope: !1508)
!1540 = !DILocation(line: 707, column: 8, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 705, column: 36)
!1542 = !DILocation(line: 706, column: 4, scope: !1541)
!1543 = !DILocation(line: 706, column: 22, scope: !1541)
!1544 = !DILocation(line: 706, column: 30, scope: !1541)
!1545 = !DILocation(line: 709, column: 9, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 709, column: 8)
!1547 = !DILocation(line: 709, column: 27, scope: !1546)
!1548 = !DILocation(line: 709, column: 8, scope: !1541)
!1549 = !DILocation(line: 710, column: 5, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 709, column: 36)
!1551 = !DILocation(line: 715, column: 11, scope: !1541)
!1552 = !DILocation(line: 715, column: 29, scope: !1541)
!1553 = !DILocation(line: 716, column: 11, scope: !1541)
!1554 = !DILocation(line: 716, column: 31, scope: !1541)
!1555 = !DILocation(line: 717, column: 22, scope: !1541)
!1556 = !DILocation(line: 717, column: 42, scope: !1541)
!1557 = !DILocation(line: 717, column: 11, scope: !1541)
!1558 = !DILocation(line: 717, column: 49, scope: !1541)
!1559 = !DILocation(line: 715, column: 4, scope: !1541)
!1560 = !DILocation(line: 718, column: 3, scope: !1541)
!1561 = !DILocation(line: 719, column: 3, scope: !1508)
!1562 = !DILocation(line: 730, column: 7, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 730, column: 7)
!1564 = !DILocation(line: 730, column: 30, scope: !1563)
!1565 = !DILocation(line: 730, column: 36, scope: !1563)
!1566 = !DILocation(line: 730, column: 7, scope: !1508)
!1567 = !DILocation(line: 731, column: 4, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 730, column: 60)
!1569 = !DILocation(line: 734, column: 25, scope: !1508)
!1570 = !DILocation(line: 734, column: 48, scope: !1508)
!1571 = !DILocation(line: 734, column: 3, scope: !1508)
!1572 = !DILocation(line: 735, column: 3, scope: !1508)
!1573 = !DILocation(line: 741, column: 7, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 741, column: 7)
!1575 = !DILocation(line: 741, column: 25, scope: !1574)
!1576 = !DILocation(line: 741, column: 7, scope: !1508)
!1577 = !DILocation(line: 742, column: 26, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 741, column: 34)
!1579 = !DILocation(line: 742, column: 44, scope: !1578)
!1580 = !DILocation(line: 742, column: 4, scope: !1578)
!1581 = !DILocation(line: 743, column: 3, scope: !1578)
!1582 = !DILocation(line: 744, column: 3, scope: !1508)
!1583 = !DILocation(line: 752, column: 12, scope: !1508)
!1584 = !DILocation(line: 752, column: 10, scope: !1508)
!1585 = !DILocation(line: 753, column: 7, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 753, column: 7)
!1587 = !DILocation(line: 753, column: 7, scope: !1508)
!1588 = !DILocation(line: 754, column: 12, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 753, column: 29)
!1590 = !DILocation(line: 754, column: 4, scope: !1589)
!1591 = !DILocation(line: 756, column: 3, scope: !1508)
!1592 = !DILocation(line: 761, column: 10, scope: !1508)
!1593 = !DILocation(line: 762, column: 9, scope: !1508)
!1594 = !DILocation(line: 760, column: 12, scope: !1508)
!1595 = !DILocation(line: 760, column: 10, scope: !1508)
!1596 = !DILocation(line: 763, column: 7, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 763, column: 7)
!1598 = !DILocation(line: 763, column: 7, scope: !1508)
!1599 = !DILocation(line: 764, column: 12, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 763, column: 29)
!1601 = !DILocation(line: 764, column: 4, scope: !1600)
!1602 = !DILocation(line: 766, column: 3, scope: !1508)
!1603 = !DILocation(line: 772, column: 3, scope: !1508)
!1604 = !DILocation(line: 775, column: 2, scope: !1454)
!1605 = !DILocation(line: 776, column: 1, scope: !1454)
!1606 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !104, file: !104, line: 369, type: !1607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{null, !112}
!1609 = !DISubprogram(name: "acpi_ut_walk_package_tree", scope: !104, file: !104, line: 564, type: !1610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!101, !112, !82, !1612, !82}
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_pkg_callback", file: !104, line: 129, baseType: !1613)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!101, !66, !112, !344, !82}
!1616 = distinct !DISubprogram(name: "acpi_ut_copy_ielement_to_eelement", scope: !3, file: !3, line: 212, type: !1614, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1617)
!1617 = !{!1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626}
!1618 = !DILocalVariable(name: "object_type", arg: 1, scope: !1616, file: !3, line: 212, type: !66)
!1619 = !DILocalVariable(name: "source_object", arg: 2, scope: !1616, file: !3, line: 213, type: !112)
!1620 = !DILocalVariable(name: "state", arg: 3, scope: !1616, file: !3, line: 214, type: !344)
!1621 = !DILocalVariable(name: "context", arg: 4, scope: !1616, file: !3, line: 215, type: !82)
!1622 = !DILocalVariable(name: "status", scope: !1616, file: !3, line: 217, type: !101)
!1623 = !DILocalVariable(name: "info", scope: !1616, file: !3, line: 218, type: !102)
!1624 = !DILocalVariable(name: "object_space", scope: !1616, file: !3, line: 219, type: !100)
!1625 = !DILocalVariable(name: "this_index", scope: !1616, file: !3, line: 220, type: !39)
!1626 = !DILocalVariable(name: "target_object", scope: !1616, file: !3, line: 221, type: !33)
!1627 = !DILocation(line: 212, column: 38, scope: !1616)
!1628 = !DILocation(line: 213, column: 34, scope: !1616)
!1629 = !DILocation(line: 214, column: 33, scope: !1616)
!1630 = !DILocation(line: 215, column: 13, scope: !1616)
!1631 = !DILocation(line: 217, column: 2, scope: !1616)
!1632 = !DILocation(line: 217, column: 14, scope: !1616)
!1633 = !DILocation(line: 218, column: 2, scope: !1616)
!1634 = !DILocation(line: 218, column: 24, scope: !1616)
!1635 = !DILocation(line: 218, column: 55, scope: !1616)
!1636 = !DILocation(line: 219, column: 2, scope: !1616)
!1637 = !DILocation(line: 219, column: 12, scope: !1616)
!1638 = !DILocation(line: 220, column: 2, scope: !1616)
!1639 = !DILocation(line: 220, column: 6, scope: !1616)
!1640 = !DILocation(line: 221, column: 2, scope: !1616)
!1641 = !DILocation(line: 221, column: 21, scope: !1616)
!1642 = !DILocation(line: 225, column: 15, scope: !1616)
!1643 = !DILocation(line: 225, column: 26, scope: !1616)
!1644 = !DILocation(line: 225, column: 13, scope: !1616)
!1645 = !DILocation(line: 227, column: 14, scope: !1616)
!1646 = !DILocation(line: 227, column: 25, scope: !1616)
!1647 = !DILocation(line: 228, column: 14, scope: !1616)
!1648 = !DILocation(line: 228, column: 23, scope: !1616)
!1649 = !DILocation(line: 226, column: 40, scope: !1616)
!1650 = !DILocation(line: 226, column: 16, scope: !1616)
!1651 = !DILocation(line: 230, column: 10, scope: !1616)
!1652 = !DILocation(line: 230, column: 2, scope: !1616)
!1653 = !DILocation(line: 235, column: 44, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 230, column: 23)
!1655 = !DILocation(line: 236, column: 9, scope: !1654)
!1656 = !DILocation(line: 237, column: 9, scope: !1654)
!1657 = !DILocation(line: 237, column: 15, scope: !1654)
!1658 = !DILocation(line: 235, column: 12, scope: !1654)
!1659 = !DILocation(line: 235, column: 10, scope: !1654)
!1660 = !DILocation(line: 239, column: 7, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 239, column: 7)
!1662 = !DILocation(line: 239, column: 7, scope: !1654)
!1663 = !DILocation(line: 240, column: 12, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 239, column: 29)
!1665 = !DILocation(line: 240, column: 4, scope: !1664)
!1666 = !DILocation(line: 242, column: 3, scope: !1654)
!1667 = !DILocation(line: 248, column: 3, scope: !1654)
!1668 = !DILocation(line: 248, column: 23, scope: !1654)
!1669 = !DILocation(line: 249, column: 34, scope: !1654)
!1670 = !DILocation(line: 249, column: 57, scope: !1654)
!1671 = !DILocation(line: 249, column: 3, scope: !1654)
!1672 = !DILocation(line: 249, column: 26, scope: !1654)
!1673 = !DILocation(line: 249, column: 32, scope: !1654)
!1674 = !DILocation(line: 251, column: 7, scope: !1654)
!1675 = !DILocation(line: 250, column: 3, scope: !1654)
!1676 = !DILocation(line: 250, column: 26, scope: !1654)
!1677 = !DILocation(line: 250, column: 35, scope: !1654)
!1678 = !DILocation(line: 256, column: 32, scope: !1654)
!1679 = !DILocation(line: 256, column: 3, scope: !1654)
!1680 = !DILocation(line: 256, column: 14, scope: !1654)
!1681 = !DILocation(line: 256, column: 30, scope: !1654)
!1682 = !DILocation(line: 262, column: 18, scope: !1654)
!1683 = !DILocation(line: 262, column: 16, scope: !1654)
!1684 = !DILocation(line: 267, column: 3, scope: !1654)
!1685 = !DILocation(line: 271, column: 3, scope: !1654)
!1686 = !DILocation(line: 274, column: 22, scope: !1616)
!1687 = !DILocation(line: 274, column: 2, scope: !1616)
!1688 = !DILocation(line: 274, column: 8, scope: !1616)
!1689 = !DILocation(line: 274, column: 19, scope: !1616)
!1690 = !DILocation(line: 275, column: 18, scope: !1616)
!1691 = !DILocation(line: 275, column: 2, scope: !1616)
!1692 = !DILocation(line: 275, column: 8, scope: !1616)
!1693 = !DILocation(line: 275, column: 15, scope: !1616)
!1694 = !DILocation(line: 276, column: 10, scope: !1616)
!1695 = !DILocation(line: 276, column: 2, scope: !1616)
!1696 = !DILocation(line: 277, column: 1, scope: !1616)
!1697 = !DISubprogram(name: "acpi_ns_get_type", scope: !1698, file: !1698, line: 379, type: !1699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1698 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!38, !162}
!1701 = !DISubprogram(name: "acpi_error", scope: !1702, file: !1702, line: 901, type: !1703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1702 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1703 = !DISubroutineType(types: !1704)
!1704 = !{null, !1407, !39, !1407, null}
!1705 = !DISubprogram(name: "acpi_ut_get_type_name", scope: !104, file: !104, line: 225, type: !1706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!1407, !38}
!1708 = !DISubprogram(name: "acpi_ut_create_package_object", scope: !104, file: !104, line: 453, type: !1709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!112, !39}
!1711 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1712, file: !1712, line: 55, type: !1713, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1715)
!1712 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!82, !100}
!1715 = !{!1716, !1717, !1719, !1722, !1723, !1726}
!1716 = !DILocalVariable(name: "size", arg: 1, scope: !1711, file: !1712, line: 55, type: !100)
!1717 = !DILocalVariable(name: "_flags", scope: !1718, file: !1712, line: 57, type: !99)
!1718 = distinct !DILexicalBlock(scope: !1711, file: !1712, line: 57, column: 23)
!1719 = !DILocalVariable(name: "__dummy", scope: !1720, file: !1712, line: 57, type: !99)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !1712, line: 57, column: 23)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !1712, line: 57, column: 23)
!1722 = !DILocalVariable(name: "__dummy2", scope: !1720, file: !1712, line: 57, type: !99)
!1723 = !DILocalVariable(name: "__dummy", scope: !1724, file: !1712, line: 57, type: !99)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !1712, line: 57, column: 23)
!1725 = distinct !DILexicalBlock(scope: !1718, file: !1712, line: 57, column: 23)
!1726 = !DILocalVariable(name: "__dummy2", scope: !1724, file: !1712, line: 57, type: !99)
!1727 = !DILocation(line: 55, column: 55, scope: !1711)
!1728 = !DILocation(line: 57, column: 17, scope: !1711)
!1729 = !DILocation(line: 57, column: 23, scope: !1718)
!1730 = !DILocation(line: 57, column: 23, scope: !1720)
!1731 = !DILocation(line: 57, column: 23, scope: !1721)
!1732 = !DILocation(line: 57, column: 23, scope: !1724)
!1733 = !DILocation(line: 57, column: 23, scope: !1725)
!1734 = !DILocation(line: 57, column: 23, scope: !1711)
!1735 = !DILocation(line: 57, column: 9, scope: !1711)
!1736 = !DILocation(line: 57, column: 2, scope: !1711)
!1737 = distinct !DISubprogram(name: "kzalloc", scope: !23, file: !23, line: 719, type: !1738, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1744)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!82, !1740, !110}
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !98, line: 61, baseType: !1741)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1742, line: 72, baseType: !1743)
!1742 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1742, line: 16, baseType: !99)
!1744 = !{!1745, !1746}
!1745 = !DILocalVariable(name: "size", arg: 1, scope: !1737, file: !23, line: 719, type: !1740)
!1746 = !DILocalVariable(name: "flags", arg: 2, scope: !1737, file: !23, line: 719, type: !110)
!1747 = !DILocation(line: 719, column: 52, scope: !1737)
!1748 = !DILocation(line: 719, column: 64, scope: !1737)
!1749 = !DILocation(line: 721, column: 17, scope: !1737)
!1750 = !DILocation(line: 721, column: 23, scope: !1737)
!1751 = !DILocation(line: 721, column: 29, scope: !1737)
!1752 = !DILocation(line: 721, column: 9, scope: !1737)
!1753 = !DILocation(line: 721, column: 2, scope: !1737)
!1754 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1755, file: !1755, line: 65, type: !1756, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1755 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!99}
!1758 = !DILocation(line: 67, column: 9, scope: !1754)
!1759 = !DILocation(line: 67, column: 2, scope: !1754)
!1760 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1755, file: !1755, line: 120, type: !1761, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1764)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!1763, !99}
!1763 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1764 = !{!1765}
!1765 = !DILocalVariable(name: "flags", arg: 1, scope: !1760, file: !1755, line: 120, type: !99)
!1766 = !DILocation(line: 120, column: 67, scope: !1760)
!1767 = !DILocation(line: 122, column: 11, scope: !1760)
!1768 = !DILocation(line: 122, column: 17, scope: !1760)
!1769 = !DILocation(line: 122, column: 9, scope: !1760)
!1770 = !DILocation(line: 122, column: 2, scope: !1760)
!1771 = distinct !DISubprogram(name: "kmalloc", scope: !23, file: !23, line: 591, type: !1738, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1772)
!1772 = !{!1773, !1774, !1775}
!1773 = !DILocalVariable(name: "size", arg: 1, scope: !1771, file: !23, line: 591, type: !1740)
!1774 = !DILocalVariable(name: "flags", arg: 2, scope: !1771, file: !23, line: 591, type: !110)
!1775 = !DILocalVariable(name: "index", scope: !1776, file: !23, line: 594, type: !7)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !23, line: 593, column: 42)
!1777 = distinct !DILexicalBlock(scope: !1771, file: !23, line: 593, column: 6)
!1778 = !DILocation(line: 591, column: 61, scope: !1771)
!1779 = !DILocation(line: 591, column: 73, scope: !1771)
!1780 = !DILocation(line: 593, column: 27, scope: !1777)
!1781 = !DILocation(line: 593, column: 6, scope: !1777)
!1782 = !DILocation(line: 593, column: 33, scope: !1777)
!1783 = !DILocation(line: 593, column: 36, scope: !1777)
!1784 = !DILocation(line: 593, column: 6, scope: !1771)
!1785 = !DILocation(line: 594, column: 3, scope: !1776)
!1786 = !DILocation(line: 594, column: 16, scope: !1776)
!1787 = !DILocation(line: 596, column: 7, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1776, file: !23, line: 596, column: 7)
!1789 = !DILocation(line: 596, column: 12, scope: !1788)
!1790 = !DILocation(line: 596, column: 7, scope: !1776)
!1791 = !DILocation(line: 597, column: 25, scope: !1788)
!1792 = !DILocation(line: 597, column: 31, scope: !1788)
!1793 = !DILocation(line: 597, column: 11, scope: !1788)
!1794 = !DILocation(line: 597, column: 4, scope: !1788)
!1795 = !DILocation(line: 599, column: 11, scope: !1776)
!1796 = !DILocation(line: 599, column: 9, scope: !1776)
!1797 = !DILocation(line: 601, column: 33, scope: !1776)
!1798 = !DILocation(line: 601, column: 40, scope: !1776)
!1799 = !DILocation(line: 601, column: 20, scope: !1776)
!1800 = !DILocation(line: 601, column: 5, scope: !1776)
!1801 = !DILocation(line: 601, column: 51, scope: !1776)
!1802 = !DILocation(line: 602, column: 5, scope: !1776)
!1803 = !DILocation(line: 602, column: 12, scope: !1776)
!1804 = !DILocation(line: 600, column: 10, scope: !1776)
!1805 = !DILocation(line: 600, column: 3, scope: !1776)
!1806 = !DILocation(line: 603, column: 2, scope: !1777)
!1807 = !DILocation(line: 604, column: 19, scope: !1771)
!1808 = !DILocation(line: 604, column: 25, scope: !1771)
!1809 = !DILocation(line: 604, column: 9, scope: !1771)
!1810 = !DILocation(line: 604, column: 2, scope: !1771)
!1811 = !DILocation(line: 605, column: 1, scope: !1771)
!1812 = !DISubprogram(name: "kmalloc_large", scope: !23, file: !23, line: 531, type: !1738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1813 = distinct !DISubprogram(name: "__kmalloc_index", scope: !23, file: !23, line: 444, type: !1814, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1818)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!7, !1740, !1816}
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !98, line: 35, baseType: !1817)
!1817 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1818 = !{!1819, !1820}
!1819 = !DILocalVariable(name: "size", arg: 1, scope: !1813, file: !23, line: 444, type: !1740)
!1820 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1813, file: !23, line: 445, type: !1816)
!1821 = !DILocation(line: 444, column: 60, scope: !1813)
!1822 = !DILocation(line: 445, column: 16, scope: !1813)
!1823 = !DILocation(line: 447, column: 7, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 447, column: 6)
!1825 = !DILocation(line: 447, column: 6, scope: !1813)
!1826 = !DILocation(line: 448, column: 3, scope: !1824)
!1827 = !DILocation(line: 450, column: 6, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 450, column: 6)
!1829 = !DILocation(line: 450, column: 11, scope: !1828)
!1830 = !DILocation(line: 450, column: 6, scope: !1813)
!1831 = !DILocation(line: 451, column: 3, scope: !1828)
!1832 = !DILocation(line: 453, column: 32, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 453, column: 6)
!1834 = !DILocation(line: 453, column: 37, scope: !1833)
!1835 = !DILocation(line: 453, column: 42, scope: !1833)
!1836 = !DILocation(line: 453, column: 45, scope: !1833)
!1837 = !DILocation(line: 453, column: 50, scope: !1833)
!1838 = !DILocation(line: 453, column: 6, scope: !1813)
!1839 = !DILocation(line: 454, column: 3, scope: !1833)
!1840 = !DILocation(line: 455, column: 32, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 455, column: 6)
!1842 = !DILocation(line: 455, column: 37, scope: !1841)
!1843 = !DILocation(line: 455, column: 43, scope: !1841)
!1844 = !DILocation(line: 455, column: 46, scope: !1841)
!1845 = !DILocation(line: 455, column: 51, scope: !1841)
!1846 = !DILocation(line: 455, column: 6, scope: !1813)
!1847 = !DILocation(line: 456, column: 3, scope: !1841)
!1848 = !DILocation(line: 457, column: 6, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 457, column: 6)
!1850 = !DILocation(line: 457, column: 11, scope: !1849)
!1851 = !DILocation(line: 457, column: 6, scope: !1813)
!1852 = !DILocation(line: 457, column: 26, scope: !1849)
!1853 = !DILocation(line: 458, column: 6, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 458, column: 6)
!1855 = !DILocation(line: 458, column: 11, scope: !1854)
!1856 = !DILocation(line: 458, column: 6, scope: !1813)
!1857 = !DILocation(line: 458, column: 26, scope: !1854)
!1858 = !DILocation(line: 459, column: 6, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 459, column: 6)
!1860 = !DILocation(line: 459, column: 11, scope: !1859)
!1861 = !DILocation(line: 459, column: 6, scope: !1813)
!1862 = !DILocation(line: 459, column: 26, scope: !1859)
!1863 = !DILocation(line: 460, column: 6, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 460, column: 6)
!1865 = !DILocation(line: 460, column: 11, scope: !1864)
!1866 = !DILocation(line: 460, column: 6, scope: !1813)
!1867 = !DILocation(line: 460, column: 26, scope: !1864)
!1868 = !DILocation(line: 461, column: 6, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 461, column: 6)
!1870 = !DILocation(line: 461, column: 11, scope: !1869)
!1871 = !DILocation(line: 461, column: 6, scope: !1813)
!1872 = !DILocation(line: 461, column: 26, scope: !1869)
!1873 = !DILocation(line: 462, column: 6, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 462, column: 6)
!1875 = !DILocation(line: 462, column: 11, scope: !1874)
!1876 = !DILocation(line: 462, column: 6, scope: !1813)
!1877 = !DILocation(line: 462, column: 26, scope: !1874)
!1878 = !DILocation(line: 463, column: 6, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 463, column: 6)
!1880 = !DILocation(line: 463, column: 11, scope: !1879)
!1881 = !DILocation(line: 463, column: 6, scope: !1813)
!1882 = !DILocation(line: 463, column: 26, scope: !1879)
!1883 = !DILocation(line: 464, column: 6, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 464, column: 6)
!1885 = !DILocation(line: 464, column: 11, scope: !1884)
!1886 = !DILocation(line: 464, column: 6, scope: !1813)
!1887 = !DILocation(line: 464, column: 26, scope: !1884)
!1888 = !DILocation(line: 465, column: 6, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 465, column: 6)
!1890 = !DILocation(line: 465, column: 11, scope: !1889)
!1891 = !DILocation(line: 465, column: 6, scope: !1813)
!1892 = !DILocation(line: 465, column: 26, scope: !1889)
!1893 = !DILocation(line: 466, column: 6, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 466, column: 6)
!1895 = !DILocation(line: 466, column: 11, scope: !1894)
!1896 = !DILocation(line: 466, column: 6, scope: !1813)
!1897 = !DILocation(line: 466, column: 26, scope: !1894)
!1898 = !DILocation(line: 467, column: 6, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 467, column: 6)
!1900 = !DILocation(line: 467, column: 11, scope: !1899)
!1901 = !DILocation(line: 467, column: 6, scope: !1813)
!1902 = !DILocation(line: 467, column: 26, scope: !1899)
!1903 = !DILocation(line: 468, column: 6, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 468, column: 6)
!1905 = !DILocation(line: 468, column: 11, scope: !1904)
!1906 = !DILocation(line: 468, column: 6, scope: !1813)
!1907 = !DILocation(line: 468, column: 26, scope: !1904)
!1908 = !DILocation(line: 469, column: 6, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 469, column: 6)
!1910 = !DILocation(line: 469, column: 11, scope: !1909)
!1911 = !DILocation(line: 469, column: 6, scope: !1813)
!1912 = !DILocation(line: 469, column: 26, scope: !1909)
!1913 = !DILocation(line: 470, column: 6, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 470, column: 6)
!1915 = !DILocation(line: 470, column: 11, scope: !1914)
!1916 = !DILocation(line: 470, column: 6, scope: !1813)
!1917 = !DILocation(line: 470, column: 26, scope: !1914)
!1918 = !DILocation(line: 471, column: 6, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 471, column: 6)
!1920 = !DILocation(line: 471, column: 11, scope: !1919)
!1921 = !DILocation(line: 471, column: 6, scope: !1813)
!1922 = !DILocation(line: 471, column: 26, scope: !1919)
!1923 = !DILocation(line: 472, column: 6, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 472, column: 6)
!1925 = !DILocation(line: 472, column: 11, scope: !1924)
!1926 = !DILocation(line: 472, column: 6, scope: !1813)
!1927 = !DILocation(line: 472, column: 26, scope: !1924)
!1928 = !DILocation(line: 473, column: 6, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 473, column: 6)
!1930 = !DILocation(line: 473, column: 11, scope: !1929)
!1931 = !DILocation(line: 473, column: 6, scope: !1813)
!1932 = !DILocation(line: 473, column: 26, scope: !1929)
!1933 = !DILocation(line: 474, column: 6, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 474, column: 6)
!1935 = !DILocation(line: 474, column: 11, scope: !1934)
!1936 = !DILocation(line: 474, column: 6, scope: !1813)
!1937 = !DILocation(line: 474, column: 27, scope: !1934)
!1938 = !DILocation(line: 475, column: 6, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 475, column: 6)
!1940 = !DILocation(line: 475, column: 11, scope: !1939)
!1941 = !DILocation(line: 475, column: 6, scope: !1813)
!1942 = !DILocation(line: 475, column: 32, scope: !1939)
!1943 = !DILocation(line: 477, column: 50, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1813, file: !23, line: 477, column: 6)
!1945 = !{i8 0, i8 2}
!1946 = !{}
!1947 = !DILocation(line: 477, column: 6, scope: !1813)
!1948 = !DILocation(line: 478, column: 3, scope: !1944)
!1949 = !DILocation(line: 478, column: 3, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !23, line: 478, column: 3)
!1951 = distinct !DILexicalBlock(scope: !1944, file: !23, line: 478, column: 3)
!1952 = !{i32 -2143022928}
!1953 = !DILocation(line: 478, column: 3, scope: !1951)
!1954 = !DILocation(line: 480, column: 3, scope: !1944)
!1955 = !DILocation(line: 480, column: 3, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1944, file: !23, line: 480, column: 3)
!1957 = !DILocation(line: 480, column: 3, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1956, file: !23, line: 480, column: 3)
!1959 = !DILocation(line: 480, column: 3, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !23, line: 480, column: 3)
!1961 = !{i64 2151944571, i64 2151944600, i64 2151944646, i64 2151944704, i64 2151944758, i64 2151944812, i64 2151944867, i64 2151944898}
!1962 = !DILocation(line: 483, column: 2, scope: !1813)
!1963 = !DILocation(line: 484, column: 1, scope: !1813)
!1964 = !DISubprogram(name: "kmalloc_trace", scope: !23, file: !23, line: 525, type: !1965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!82, !1967, !110, !1740}
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1969, line: 11, flags: DIFlagFwdDecl)
!1969 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1970 = distinct !DISubprogram(name: "kmalloc_type", scope: !23, file: !23, line: 401, type: !1971, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1973)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!22, !110, !99}
!1973 = !{!1974, !1975}
!1974 = !DILocalVariable(name: "flags", arg: 1, scope: !1970, file: !23, line: 401, type: !110)
!1975 = !DILocalVariable(name: "caller", arg: 2, scope: !1970, file: !23, line: 401, type: !99)
!1976 = !DILocation(line: 401, column: 67, scope: !1970)
!1977 = !DILocation(line: 401, column: 88, scope: !1970)
!1978 = !DILocation(line: 407, column: 6, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1970, file: !23, line: 407, column: 6)
!1980 = !DILocation(line: 407, column: 6, scope: !1970)
!1981 = !DILocation(line: 413, column: 3, scope: !1979)
!1982 = !DILocation(line: 423, column: 38, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1970, file: !23, line: 423, column: 6)
!1984 = !DILocation(line: 423, column: 44, scope: !1983)
!1985 = !DILocation(line: 423, column: 6, scope: !1970)
!1986 = !DILocation(line: 424, column: 3, scope: !1983)
!1987 = !DILocation(line: 426, column: 3, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1970, file: !23, line: 425, column: 6)
!1989 = !DILocation(line: 429, column: 1, scope: !1970)
!1990 = !DISubprogram(name: "__kmalloc", scope: !23, file: !23, line: 488, type: !1738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1991 = !DISubprogram(name: "__compiletime_assert_173", scope: !23, file: !23, line: 478, type: !1992, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null}
!1994 = distinct !DISubprogram(name: "native_save_fl", scope: !1755, file: !1755, line: 17, type: !1756, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1995)
!1995 = !{!1996}
!1996 = !DILocalVariable(name: "flags", scope: !1994, file: !1755, line: 19, type: !99)
!1997 = !DILocation(line: 19, column: 2, scope: !1994)
!1998 = !DILocation(line: 19, column: 16, scope: !1994)
!1999 = !DILocation(line: 26, column: 2, scope: !1994)
!2000 = !{i64 1534490, i64 1534511}
!2001 = !DILocation(line: 32, column: 9, scope: !1994)
!2002 = !DILocation(line: 33, column: 1, scope: !1994)
!2003 = !DILocation(line: 32, column: 2, scope: !1994)
!2004 = distinct !DISubprogram(name: "acpi_ut_copy_ielement_to_ielement", scope: !3, file: !3, line: 791, type: !1614, scopeLine: 795, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2005)
!2005 = !{!2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014}
!2006 = !DILocalVariable(name: "object_type", arg: 1, scope: !2004, file: !3, line: 791, type: !66)
!2007 = !DILocalVariable(name: "source_object", arg: 2, scope: !2004, file: !3, line: 792, type: !112)
!2008 = !DILocalVariable(name: "state", arg: 3, scope: !2004, file: !3, line: 793, type: !344)
!2009 = !DILocalVariable(name: "context", arg: 4, scope: !2004, file: !3, line: 794, type: !82)
!2010 = !DILocalVariable(name: "status", scope: !2004, file: !3, line: 796, type: !101)
!2011 = !DILocalVariable(name: "this_index", scope: !2004, file: !3, line: 797, type: !39)
!2012 = !DILocalVariable(name: "this_target_ptr", scope: !2004, file: !3, line: 798, type: !111)
!2013 = !DILocalVariable(name: "target_object", scope: !2004, file: !3, line: 799, type: !112)
!2014 = !DILabel(scope: !2004, name: "error_exit", file: !3, line: 867)
!2015 = !DILocation(line: 791, column: 38, scope: !2004)
!2016 = !DILocation(line: 792, column: 34, scope: !2004)
!2017 = !DILocation(line: 793, column: 33, scope: !2004)
!2018 = !DILocation(line: 794, column: 13, scope: !2004)
!2019 = !DILocation(line: 796, column: 2, scope: !2004)
!2020 = !DILocation(line: 796, column: 14, scope: !2004)
!2021 = !DILocation(line: 797, column: 2, scope: !2004)
!2022 = !DILocation(line: 797, column: 6, scope: !2004)
!2023 = !DILocation(line: 798, column: 2, scope: !2004)
!2024 = !DILocation(line: 798, column: 30, scope: !2004)
!2025 = !DILocation(line: 799, column: 2, scope: !2004)
!2026 = !DILocation(line: 799, column: 29, scope: !2004)
!2027 = !DILocation(line: 803, column: 15, scope: !2004)
!2028 = !DILocation(line: 803, column: 26, scope: !2004)
!2029 = !DILocation(line: 803, column: 13, scope: !2004)
!2030 = !DILocation(line: 805, column: 7, scope: !2004)
!2031 = !DILocation(line: 805, column: 18, scope: !2004)
!2032 = !DILocation(line: 805, column: 39, scope: !2004)
!2033 = !DILocation(line: 805, column: 48, scope: !2004)
!2034 = !DILocation(line: 804, column: 18, scope: !2004)
!2035 = !DILocation(line: 807, column: 10, scope: !2004)
!2036 = !DILocation(line: 807, column: 2, scope: !2004)
!2037 = !DILocation(line: 812, column: 7, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 812, column: 7)
!2039 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 807, column: 23)
!2040 = !DILocation(line: 812, column: 7, scope: !2039)
!2041 = !DILocation(line: 817, column: 8, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 812, column: 22)
!2043 = !DILocation(line: 816, column: 18, scope: !2042)
!2044 = !DILocation(line: 819, column: 9, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 819, column: 8)
!2046 = !DILocation(line: 819, column: 8, scope: !2042)
!2047 = !DILocation(line: 820, column: 5, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 819, column: 24)
!2049 = !DILocation(line: 824, column: 35, scope: !2042)
!2050 = !DILocation(line: 825, column: 14, scope: !2042)
!2051 = !DILocation(line: 824, column: 8, scope: !2042)
!2052 = !DILocation(line: 823, column: 11, scope: !2042)
!2053 = !DILocation(line: 826, column: 8, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 826, column: 8)
!2055 = !DILocation(line: 826, column: 8, scope: !2042)
!2056 = !DILocation(line: 827, column: 5, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 826, column: 30)
!2058 = !DILocation(line: 830, column: 23, scope: !2042)
!2059 = !DILocation(line: 830, column: 5, scope: !2042)
!2060 = !DILocation(line: 830, column: 21, scope: !2042)
!2061 = !DILocation(line: 831, column: 3, scope: !2042)
!2062 = !DILocation(line: 834, column: 5, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 831, column: 10)
!2064 = !DILocation(line: 834, column: 21, scope: !2063)
!2065 = !DILocation(line: 836, column: 3, scope: !2039)
!2066 = !DILocation(line: 844, column: 37, scope: !2039)
!2067 = !DILocation(line: 844, column: 60, scope: !2039)
!2068 = !DILocation(line: 844, column: 7, scope: !2039)
!2069 = !DILocation(line: 843, column: 17, scope: !2039)
!2070 = !DILocation(line: 845, column: 8, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 845, column: 7)
!2072 = !DILocation(line: 845, column: 7, scope: !2039)
!2073 = !DILocation(line: 846, column: 4, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 845, column: 23)
!2075 = !DILocation(line: 849, column: 33, scope: !2039)
!2076 = !DILocation(line: 849, column: 55, scope: !2039)
!2077 = !DILocation(line: 849, column: 3, scope: !2039)
!2078 = !DILocation(line: 849, column: 25, scope: !2039)
!2079 = !DILocation(line: 849, column: 31, scope: !2039)
!2080 = !DILocation(line: 853, column: 32, scope: !2039)
!2081 = !DILocation(line: 853, column: 3, scope: !2039)
!2082 = !DILocation(line: 853, column: 14, scope: !2039)
!2083 = !DILocation(line: 853, column: 30, scope: !2039)
!2084 = !DILocation(line: 857, column: 22, scope: !2039)
!2085 = !DILocation(line: 857, column: 4, scope: !2039)
!2086 = !DILocation(line: 857, column: 20, scope: !2039)
!2087 = !DILocation(line: 858, column: 3, scope: !2039)
!2088 = !DILocation(line: 862, column: 3, scope: !2039)
!2089 = !DILocation(line: 865, column: 10, scope: !2004)
!2090 = !DILocation(line: 865, column: 2, scope: !2004)
!2091 = !DILocation(line: 867, column: 1, scope: !2004)
!2092 = !DILocation(line: 868, column: 27, scope: !2004)
!2093 = !DILocation(line: 868, column: 2, scope: !2004)
!2094 = !DILocation(line: 869, column: 10, scope: !2004)
!2095 = !DILocation(line: 869, column: 2, scope: !2004)
!2096 = !DILocation(line: 870, column: 1, scope: !2004)
!2097 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !1712, file: !1712, line: 50, type: !1713, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2098)
!2098 = !{!2099, !2100, !2102, !2105, !2106, !2109}
!2099 = !DILocalVariable(name: "size", arg: 1, scope: !2097, file: !1712, line: 50, type: !100)
!2100 = !DILocalVariable(name: "_flags", scope: !2101, file: !1712, line: 52, type: !99)
!2101 = distinct !DILexicalBlock(scope: !2097, file: !1712, line: 52, column: 23)
!2102 = !DILocalVariable(name: "__dummy", scope: !2103, file: !1712, line: 52, type: !99)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !1712, line: 52, column: 23)
!2104 = distinct !DILexicalBlock(scope: !2101, file: !1712, line: 52, column: 23)
!2105 = !DILocalVariable(name: "__dummy2", scope: !2103, file: !1712, line: 52, type: !99)
!2106 = !DILocalVariable(name: "__dummy", scope: !2107, file: !1712, line: 52, type: !99)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !1712, line: 52, column: 23)
!2108 = distinct !DILexicalBlock(scope: !2101, file: !1712, line: 52, column: 23)
!2109 = !DILocalVariable(name: "__dummy2", scope: !2107, file: !1712, line: 52, type: !99)
!2110 = !DILocation(line: 50, column: 48, scope: !2097)
!2111 = !DILocation(line: 52, column: 17, scope: !2097)
!2112 = !DILocation(line: 52, column: 23, scope: !2101)
!2113 = !DILocation(line: 52, column: 23, scope: !2103)
!2114 = !DILocation(line: 52, column: 23, scope: !2104)
!2115 = !DILocation(line: 52, column: 23, scope: !2107)
!2116 = !DILocation(line: 52, column: 23, scope: !2108)
!2117 = !DILocation(line: 52, column: 23, scope: !2097)
!2118 = !DILocation(line: 52, column: 9, scope: !2097)
!2119 = !DILocation(line: 52, column: 2, scope: !2097)
!2120 = !DISubprogram(name: "acpi_ut_add_reference", scope: !104, file: !104, line: 367, type: !1607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2121 = !DISubprogram(name: "acpi_os_create_semaphore", scope: !2122, file: !2122, line: 126, type: !2123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2122 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!101, !39, !39, !811}
