; ModuleID = 'drivers/acpi/acpica/nsrepair2.c'
source_filename = "drivers/acpi/acpica/nsrepair2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_repair_info = type { [4 x i8], ptr }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_package = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, i32, i32 }
%struct.acpi_evaluate_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i8, i8, i8 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }
%struct.acpi_object_string = type { ptr, i8, i8, i16, i8, ptr, i32 }

@acpi_ns_repairable_names = internal constant [10 x %struct.acpi_repair_info] [%struct.acpi_repair_info { [4 x i8] c"_ALR", ptr @acpi_ns_repair_ALR }, %struct.acpi_repair_info { [4 x i8] c"_CID", ptr @acpi_ns_repair_CID }, %struct.acpi_repair_info { [4 x i8] c"_CST", ptr @acpi_ns_repair_CST }, %struct.acpi_repair_info { [4 x i8] c"_FDE", ptr @acpi_ns_repair_FDE }, %struct.acpi_repair_info { [4 x i8] c"_GTM", ptr @acpi_ns_repair_FDE }, %struct.acpi_repair_info { [4 x i8] c"_HID", ptr @acpi_ns_repair_HID }, %struct.acpi_repair_info { [4 x i8] c"_PRT", ptr @acpi_ns_repair_PRT }, %struct.acpi_repair_info { [4 x i8] c"_PSS", ptr @acpi_ns_repair_PSS }, %struct.acpi_repair_info { [4 x i8] c"_TSS", ptr @acpi_ns_repair_TSS }, %struct.acpi_repair_info zeroinitializer], align 16, !dbg !0
@.str = private unnamed_addr constant [19 x i8] c"AmbientIlluminance\00", align 1, !dbg !21
@_acpi_module_name = internal constant [10 x i8] c"nsrepair2\00", align 1, !dbg !41
@.str.1 = private unnamed_addr constant [50 x i8] c"SubPackage[%u] - removing entry due to zero count\00", align 1, !dbg !26
@.str.2 = private unnamed_addr constant [55 x i8] c"SubPackage[%u] - removing entry due to invalid Type(0)\00", align 1, !dbg !31
@.str.3 = private unnamed_addr constant [13 x i8] c"C-State Type\00", align 1, !dbg !36
@.str.4 = private unnamed_addr constant [47 x i8] c"Incorrect return buffer length %u, expected %u\00", align 1, !dbg !47
@.str.5 = private unnamed_addr constant [40 x i8] c"Invalid zero-length _HID or _CID string\00", align 1, !dbg !52
@_ctype = external dso_local constant [0 x i8], align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"PRT[%X]: Fixed reversed SourceName and SourceIndex\00", align 1, !dbg !57
@.str.7 = private unnamed_addr constant [13 x i8] c"CpuFrequency\00", align 1, !dbg !62
@.str.8 = private unnamed_addr constant [56 x i8] c"SubPackage[%u,%u] - suspicious power dissipation values\00", align 1, !dbg !64
@.str.9 = private unnamed_addr constant [6 x i8] c"^_PSS\00", align 1, !dbg !69
@.str.10 = private unnamed_addr constant [17 x i8] c"PowerDissipation\00", align 1, !dbg !74

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_complex_repairs(ptr noundef %info, ptr noundef %node, i32 noundef %validate_status, ptr noundef %return_object_ptr) #0 align 16 !dbg !930 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %validate_status.addr = alloca i32, align 4
  %return_object_ptr.addr = alloca ptr, align 8
  %predefined = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !934, metadata !DIExpression()), !dbg !941
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !935, metadata !DIExpression()), !dbg !942
  store i32 %validate_status, ptr %validate_status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %validate_status.addr, metadata !936, metadata !DIExpression()), !dbg !943
  store ptr %return_object_ptr, ptr %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object_ptr.addr, metadata !937, metadata !DIExpression()), !dbg !944
  call void @llvm.lifetime.start.p0(i64 8, ptr %predefined) #5, !dbg !945
  call void @llvm.dbg.declare(metadata ptr %predefined, metadata !938, metadata !DIExpression()), !dbg !946
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !947
  call void @llvm.dbg.declare(metadata ptr %status, metadata !940, metadata !DIExpression()), !dbg !948
  %0 = load ptr, ptr %node.addr, align 8, !dbg !949
  %call = call ptr @acpi_ns_match_complex_repair(ptr noundef %0) #6, !dbg !950
  store ptr %call, ptr %predefined, align 8, !dbg !951
  %1 = load ptr, ptr %predefined, align 8, !dbg !952
  %tobool = icmp ne ptr %1, null, !dbg !952
  br i1 %tobool, label %if.end, label %if.then, !dbg !954

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %validate_status.addr, align 4, !dbg !955
  store i32 %2, ptr %retval, align 4, !dbg !955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !955

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %predefined, align 8, !dbg !957
  %repair_function = getelementptr inbounds %struct.acpi_repair_info, ptr %3, i32 0, i32 1, !dbg !958
  %4 = load ptr, ptr %repair_function, align 8, !dbg !958
  %5 = load ptr, ptr %info.addr, align 8, !dbg !959
  %6 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !960
  %call1 = call i32 %4(ptr noundef %5, ptr noundef %6) #6, !dbg !957
  store i32 %call1, ptr %status, align 4, !dbg !961
  %7 = load i32, ptr %status, align 4, !dbg !962
  store i32 %7, ptr %retval, align 4, !dbg !962
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !962

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !963
  call void @llvm.lifetime.end.p0(i64 8, ptr %predefined) #5, !dbg !963
  %8 = load i32, ptr %retval, align 4, !dbg !963
  ret i32 %8, !dbg !963
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_ns_match_complex_repair(ptr noundef %node) #0 align 16 !dbg !964 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %this_name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !968, metadata !DIExpression()), !dbg !970
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_name) #5, !dbg !971
  call void @llvm.dbg.declare(metadata ptr %this_name, metadata !969, metadata !DIExpression()), !dbg !972
  store ptr @acpi_ns_repairable_names, ptr %this_name, align 8, !dbg !973
  br label %while.cond, !dbg !974

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %this_name, align 8, !dbg !975
  %repair_function = getelementptr inbounds %struct.acpi_repair_info, ptr %0, i32 0, i32 1, !dbg !976
  %1 = load ptr, ptr %repair_function, align 8, !dbg !976
  %tobool = icmp ne ptr %1, null, !dbg !974
  br i1 %tobool, label %while.body, label %while.end, !dbg !974

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %node.addr, align 8, !dbg !977
  %name = getelementptr inbounds %struct.acpi_namespace_node, ptr %2, i32 0, i32 4, !dbg !977
  %arraydecay = getelementptr inbounds [4 x i8], ptr %name, i64 0, i64 0, !dbg !977
  %3 = ptrtoint ptr %arraydecay to i64, !dbg !977
  %4 = inttoptr i64 %3 to ptr, !dbg !977
  %5 = load i32, ptr %4, align 4, !dbg !977
  %6 = load ptr, ptr %this_name, align 8, !dbg !977
  %name1 = getelementptr inbounds %struct.acpi_repair_info, ptr %6, i32 0, i32 0, !dbg !977
  %arraydecay2 = getelementptr inbounds [4 x i8], ptr %name1, i64 0, i64 0, !dbg !977
  %7 = ptrtoint ptr %arraydecay2 to i64, !dbg !977
  %8 = inttoptr i64 %7 to ptr, !dbg !977
  %9 = load i32, ptr %8, align 4, !dbg !977
  %cmp = icmp eq i32 %5, %9, !dbg !977
  br i1 %cmp, label %if.then, label %if.end, !dbg !980

if.then:                                          ; preds = %while.body
  %10 = load ptr, ptr %this_name, align 8, !dbg !981
  store ptr %10, ptr %retval, align 8, !dbg !983
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !983

if.end:                                           ; preds = %while.body
  %11 = load ptr, ptr %this_name, align 8, !dbg !984
  %incdec.ptr = getelementptr %struct.acpi_repair_info, ptr %11, i32 1, !dbg !984
  store ptr %incdec.ptr, ptr %this_name, align 8, !dbg !984
  br label %while.cond, !dbg !974, !llvm.loop !985

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !989
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !989

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_name) #5, !dbg !990
  %12 = load ptr, ptr %retval, align 8, !dbg !990
  ret ptr %12, !dbg !990
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ns_repair_ALR(ptr noundef %info, ptr noundef %return_object_ptr) #0 align 16 !dbg !991 {
entry:
  %info.addr = alloca ptr, align 8
  %return_object_ptr.addr = alloca ptr, align 8
  %return_object = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !993, metadata !DIExpression()), !dbg !997
  store ptr %return_object_ptr, ptr %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object_ptr.addr, metadata !994, metadata !DIExpression()), !dbg !998
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_object) #5, !dbg !999
  call void @llvm.dbg.declare(metadata ptr %return_object, metadata !995, metadata !DIExpression()), !dbg !1000
  %0 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !1001
  %1 = load ptr, ptr %0, align 8, !dbg !1002
  store ptr %1, ptr %return_object, align 8, !dbg !1000
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1003
  call void @llvm.dbg.declare(metadata ptr %status, metadata !996, metadata !DIExpression()), !dbg !1004
  %2 = load ptr, ptr %info.addr, align 8, !dbg !1005
  %3 = load ptr, ptr %return_object, align 8, !dbg !1006
  %call = call i32 @acpi_ns_check_sorted_list(ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 2, i32 noundef 1, i8 noundef zeroext 0, ptr noundef @.str) #6, !dbg !1007
  store i32 %call, ptr %status, align 4, !dbg !1008
  %4 = load i32, ptr %status, align 4, !dbg !1009
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1010
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_object) #5, !dbg !1010
  ret i32 %4, !dbg !1011
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ns_repair_CID(ptr noundef %info, ptr noundef %return_object_ptr) #0 align 16 !dbg !1012 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %return_object_ptr.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %return_object = alloca ptr, align 8
  %element_ptr = alloca ptr, align 8
  %original_element = alloca ptr, align 8
  %original_ref_count = alloca i16, align 2
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1014, metadata !DIExpression()), !dbg !1022
  store ptr %return_object_ptr, ptr %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object_ptr.addr, metadata !1015, metadata !DIExpression()), !dbg !1023
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1016, metadata !DIExpression()), !dbg !1025
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_object) #5, !dbg !1026
  call void @llvm.dbg.declare(metadata ptr %return_object, metadata !1017, metadata !DIExpression()), !dbg !1027
  %0 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !1028
  %1 = load ptr, ptr %0, align 8, !dbg !1029
  store ptr %1, ptr %return_object, align 8, !dbg !1027
  call void @llvm.lifetime.start.p0(i64 8, ptr %element_ptr) #5, !dbg !1030
  call void @llvm.dbg.declare(metadata ptr %element_ptr, metadata !1018, metadata !DIExpression()), !dbg !1031
  call void @llvm.lifetime.start.p0(i64 8, ptr %original_element) #5, !dbg !1032
  call void @llvm.dbg.declare(metadata ptr %original_element, metadata !1019, metadata !DIExpression()), !dbg !1033
  call void @llvm.lifetime.start.p0(i64 2, ptr %original_ref_count) #5, !dbg !1034
  call void @llvm.dbg.declare(metadata ptr %original_ref_count, metadata !1020, metadata !DIExpression()), !dbg !1035
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !1036
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1021, metadata !DIExpression()), !dbg !1037
  %2 = load ptr, ptr %return_object, align 8, !dbg !1038
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %2, i32 0, i32 2, !dbg !1040
  %3 = load i8, ptr %type, align 1, !dbg !1040
  %conv = zext i8 %3 to i32, !dbg !1038
  %cmp = icmp eq i32 %conv, 2, !dbg !1041
  br i1 %cmp, label %if.then, label %if.end, !dbg !1042

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %info.addr, align 8, !dbg !1043
  %5 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !1045
  %call = call i32 @acpi_ns_repair_HID(ptr noundef %4, ptr noundef %5) #6, !dbg !1046
  store i32 %call, ptr %status, align 4, !dbg !1047
  %6 = load i32, ptr %status, align 4, !dbg !1048
  store i32 %6, ptr %retval, align 4, !dbg !1048
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1048

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %return_object, align 8, !dbg !1049
  %type2 = getelementptr inbounds %struct.acpi_object_common, ptr %7, i32 0, i32 2, !dbg !1051
  %8 = load i8, ptr %type2, align 1, !dbg !1051
  %conv3 = zext i8 %8 to i32, !dbg !1049
  %cmp4 = icmp ne i32 %conv3, 4, !dbg !1052
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !1053

if.then6:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1054
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1054

if.end7:                                          ; preds = %if.end
  %9 = load ptr, ptr %return_object, align 8, !dbg !1056
  %elements = getelementptr inbounds %struct.acpi_object_package, ptr %9, i32 0, i32 6, !dbg !1057
  %10 = load ptr, ptr %elements, align 8, !dbg !1057
  store ptr %10, ptr %element_ptr, align 8, !dbg !1058
  store i32 0, ptr %i, align 4, !dbg !1059
  br label %for.cond, !dbg !1061

for.cond:                                         ; preds = %for.inc, %if.end7
  %11 = load i32, ptr %i, align 4, !dbg !1062
  %12 = load ptr, ptr %return_object, align 8, !dbg !1064
  %count = getelementptr inbounds %struct.acpi_object_package, ptr %12, i32 0, i32 9, !dbg !1065
  %13 = load i32, ptr %count, align 4, !dbg !1065
  %cmp8 = icmp ult i32 %11, %13, !dbg !1066
  br i1 %cmp8, label %for.body, label %for.end, !dbg !1067

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %element_ptr, align 8, !dbg !1068
  %15 = load ptr, ptr %14, align 8, !dbg !1070
  store ptr %15, ptr %original_element, align 8, !dbg !1071
  %16 = load ptr, ptr %original_element, align 8, !dbg !1072
  %reference_count = getelementptr inbounds %struct.acpi_object_common, ptr %16, i32 0, i32 3, !dbg !1073
  %17 = load i16, ptr %reference_count, align 2, !dbg !1073
  store i16 %17, ptr %original_ref_count, align 2, !dbg !1074
  %18 = load ptr, ptr %info.addr, align 8, !dbg !1075
  %19 = load ptr, ptr %element_ptr, align 8, !dbg !1076
  %call10 = call i32 @acpi_ns_repair_HID(ptr noundef %18, ptr noundef %19) #6, !dbg !1077
  store i32 %call10, ptr %status, align 4, !dbg !1078
  %20 = load i32, ptr %status, align 4, !dbg !1079
  %tobool = icmp ne i32 %20, 0, !dbg !1079
  br i1 %tobool, label %if.then11, label %if.end12, !dbg !1081

if.then11:                                        ; preds = %for.body
  %21 = load i32, ptr %status, align 4, !dbg !1082
  store i32 %21, ptr %retval, align 4, !dbg !1082
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1082

if.end12:                                         ; preds = %for.body
  %22 = load ptr, ptr %original_element, align 8, !dbg !1084
  %23 = load ptr, ptr %element_ptr, align 8, !dbg !1086
  %24 = load ptr, ptr %23, align 8, !dbg !1087
  %cmp13 = icmp ne ptr %22, %24, !dbg !1088
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !1089

if.then15:                                        ; preds = %if.end12
  %25 = load i16, ptr %original_ref_count, align 2, !dbg !1090
  %26 = load ptr, ptr %element_ptr, align 8, !dbg !1092
  %27 = load ptr, ptr %26, align 8, !dbg !1093
  %reference_count16 = getelementptr inbounds %struct.acpi_object_common, ptr %27, i32 0, i32 3, !dbg !1094
  store i16 %25, ptr %reference_count16, align 2, !dbg !1095
  br label %if.end17, !dbg !1096

if.end17:                                         ; preds = %if.then15, %if.end12
  %28 = load ptr, ptr %element_ptr, align 8, !dbg !1097
  %incdec.ptr = getelementptr ptr, ptr %28, i32 1, !dbg !1097
  store ptr %incdec.ptr, ptr %element_ptr, align 8, !dbg !1097
  br label %for.inc, !dbg !1098

for.inc:                                          ; preds = %if.end17
  %29 = load i32, ptr %i, align 4, !dbg !1099
  %inc = add i32 %29, 1, !dbg !1099
  store i32 %inc, ptr %i, align 4, !dbg !1099
  br label %for.cond, !dbg !1100, !llvm.loop !1101

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1103

cleanup:                                          ; preds = %for.end, %if.then11, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 2, ptr %original_ref_count) #5, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 8, ptr %original_element) #5, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 8, ptr %element_ptr) #5, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_object) #5, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1104
  %30 = load i32, ptr %retval, align 4, !dbg !1104
  ret i32 %30, !dbg !1104
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ns_repair_CST(ptr noundef %info, ptr noundef %return_object_ptr) #0 align 16 !dbg !1105 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %return_object_ptr.addr = alloca ptr, align 8
  %return_object = alloca ptr, align 8
  %outer_elements = alloca ptr, align 8
  %outer_element_count = alloca i32, align 4
  %obj_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %removing = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1107, metadata !DIExpression()), !dbg !1118
  store ptr %return_object_ptr, ptr %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object_ptr.addr, metadata !1108, metadata !DIExpression()), !dbg !1119
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_object) #5, !dbg !1120
  call void @llvm.dbg.declare(metadata ptr %return_object, metadata !1109, metadata !DIExpression()), !dbg !1121
  %0 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !1122
  %1 = load ptr, ptr %0, align 8, !dbg !1123
  store ptr %1, ptr %return_object, align 8, !dbg !1121
  call void @llvm.lifetime.start.p0(i64 8, ptr %outer_elements) #5, !dbg !1124
  call void @llvm.dbg.declare(metadata ptr %outer_elements, metadata !1110, metadata !DIExpression()), !dbg !1125
  call void @llvm.lifetime.start.p0(i64 4, ptr %outer_element_count) #5, !dbg !1126
  call void @llvm.dbg.declare(metadata ptr %outer_element_count, metadata !1111, metadata !DIExpression()), !dbg !1127
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #5, !dbg !1128
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1112, metadata !DIExpression()), !dbg !1129
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1130
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1113, metadata !DIExpression()), !dbg !1131
  call void @llvm.lifetime.start.p0(i64 1, ptr %removing) #5, !dbg !1132
  call void @llvm.dbg.declare(metadata ptr %removing, metadata !1114, metadata !DIExpression()), !dbg !1133
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !1134
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1115, metadata !DIExpression()), !dbg !1135
  %2 = load ptr, ptr %return_object, align 8, !dbg !1136
  %count = getelementptr inbounds %struct.acpi_object_package, ptr %2, i32 0, i32 9, !dbg !1137
  %3 = load i32, ptr %count, align 4, !dbg !1137
  %sub = sub i32 %3, 1, !dbg !1138
  store i32 %sub, ptr %outer_element_count, align 4, !dbg !1139
  store i32 0, ptr %i, align 4, !dbg !1140
  br label %while.cond, !dbg !1141

while.cond:                                       ; preds = %if.end13, %entry
  %4 = load i32, ptr %i, align 4, !dbg !1142
  %5 = load i32, ptr %outer_element_count, align 4, !dbg !1143
  %cmp = icmp ult i32 %4, %5, !dbg !1144
  br i1 %cmp, label %while.body, label %while.end, !dbg !1141

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %return_object, align 8, !dbg !1145
  %elements = getelementptr inbounds %struct.acpi_object_package, ptr %6, i32 0, i32 6, !dbg !1146
  %7 = load ptr, ptr %elements, align 8, !dbg !1146
  %8 = load i32, ptr %i, align 4, !dbg !1147
  %add = add i32 %8, 1, !dbg !1148
  %idxprom = zext i32 %add to i64, !dbg !1145
  %arrayidx = getelementptr ptr, ptr %7, i64 %idxprom, !dbg !1145
  store ptr %arrayidx, ptr %outer_elements, align 8, !dbg !1149
  store i8 0, ptr %removing, align 1, !dbg !1150
  %9 = load ptr, ptr %outer_elements, align 8, !dbg !1151
  %10 = load ptr, ptr %9, align 8, !dbg !1153
  %count1 = getelementptr inbounds %struct.acpi_object_package, ptr %10, i32 0, i32 9, !dbg !1154
  %11 = load i32, ptr %count1, align 4, !dbg !1154
  %cmp2 = icmp eq i32 %11, 0, !dbg !1155
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1156

if.then:                                          ; preds = %while.body
  %12 = load ptr, ptr %info.addr, align 8, !dbg !1157
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %12, i32 0, i32 5, !dbg !1157
  %13 = load ptr, ptr %full_pathname, align 8, !dbg !1157
  %14 = load ptr, ptr %info.addr, align 8, !dbg !1157
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, ptr %14, i32 0, i32 12, !dbg !1157
  %15 = load i16, ptr %node_flags, align 2, !dbg !1157
  %16 = load i32, ptr %i, align 4, !dbg !1157
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 432, ptr noundef %13, i16 noundef zeroext %15, ptr noundef @.str.1, i32 noundef %16) #6, !dbg !1157
  store i8 1, ptr %removing, align 1, !dbg !1159
  br label %remove_element, !dbg !1160

if.end:                                           ; preds = %while.body
  %17 = load ptr, ptr %outer_elements, align 8, !dbg !1161
  %18 = load ptr, ptr %17, align 8, !dbg !1162
  %elements3 = getelementptr inbounds %struct.acpi_object_package, ptr %18, i32 0, i32 6, !dbg !1163
  %19 = load ptr, ptr %elements3, align 8, !dbg !1163
  %arrayidx4 = getelementptr ptr, ptr %19, i64 1, !dbg !1164
  %20 = load ptr, ptr %arrayidx4, align 8, !dbg !1164
  store ptr %20, ptr %obj_desc, align 8, !dbg !1165
  %21 = load ptr, ptr %obj_desc, align 8, !dbg !1166
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %21, i32 0, i32 6, !dbg !1168
  %22 = load i64, ptr %value, align 8, !dbg !1168
  %conv = trunc i64 %22 to i32, !dbg !1169
  %cmp5 = icmp eq i32 %conv, 0, !dbg !1170
  br i1 %cmp5, label %if.then7, label %if.end10, !dbg !1171

if.then7:                                         ; preds = %if.end
  %23 = load ptr, ptr %info.addr, align 8, !dbg !1172
  %full_pathname8 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %23, i32 0, i32 5, !dbg !1172
  %24 = load ptr, ptr %full_pathname8, align 8, !dbg !1172
  %25 = load ptr, ptr %info.addr, align 8, !dbg !1172
  %node_flags9 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %25, i32 0, i32 12, !dbg !1172
  %26 = load i16, ptr %node_flags9, align 2, !dbg !1172
  %27 = load i32, ptr %i, align 4, !dbg !1172
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 443, ptr noundef %24, i16 noundef zeroext %26, ptr noundef @.str.2, i32 noundef %27) #6, !dbg !1172
  store i8 1, ptr %removing, align 1, !dbg !1174
  br label %if.end10, !dbg !1175

if.end10:                                         ; preds = %if.then7, %if.end
  br label %remove_element, !dbg !1176

remove_element:                                   ; preds = %if.end10, %if.then
  call void @llvm.dbg.label(metadata !1116), !dbg !1177
  %28 = load i8, ptr %removing, align 1, !dbg !1178
  %tobool = icmp ne i8 %28, 0, !dbg !1178
  br i1 %tobool, label %if.then11, label %if.else, !dbg !1180

if.then11:                                        ; preds = %remove_element
  %29 = load ptr, ptr %return_object, align 8, !dbg !1181
  %30 = load i32, ptr %i, align 4, !dbg !1183
  %add12 = add i32 %30, 1, !dbg !1184
  call void @acpi_ns_remove_element(ptr noundef %29, i32 noundef %add12) #6, !dbg !1185
  %31 = load i32, ptr %outer_element_count, align 4, !dbg !1186
  %dec = add i32 %31, -1, !dbg !1186
  store i32 %dec, ptr %outer_element_count, align 4, !dbg !1186
  br label %if.end13, !dbg !1187

if.else:                                          ; preds = %remove_element
  %32 = load i32, ptr %i, align 4, !dbg !1188
  %inc = add i32 %32, 1, !dbg !1188
  store i32 %inc, ptr %i, align 4, !dbg !1188
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  br label %while.cond, !dbg !1141, !llvm.loop !1190

while.end:                                        ; preds = %while.cond
  %33 = load ptr, ptr %return_object, align 8, !dbg !1192
  %elements14 = getelementptr inbounds %struct.acpi_object_package, ptr %33, i32 0, i32 6, !dbg !1193
  %34 = load ptr, ptr %elements14, align 8, !dbg !1193
  %arrayidx15 = getelementptr ptr, ptr %34, i64 0, !dbg !1192
  %35 = load ptr, ptr %arrayidx15, align 8, !dbg !1192
  store ptr %35, ptr %obj_desc, align 8, !dbg !1194
  %36 = load i32, ptr %outer_element_count, align 4, !dbg !1195
  %conv16 = zext i32 %36 to i64, !dbg !1195
  %37 = load ptr, ptr %obj_desc, align 8, !dbg !1196
  %value17 = getelementptr inbounds %struct.acpi_object_integer, ptr %37, i32 0, i32 6, !dbg !1197
  store i64 %conv16, ptr %value17, align 8, !dbg !1198
  %38 = load ptr, ptr %info.addr, align 8, !dbg !1199
  %39 = load ptr, ptr %return_object, align 8, !dbg !1200
  %call = call i32 @acpi_ns_check_sorted_list(ptr noundef %38, ptr noundef %39, i32 noundef 1, i32 noundef 4, i32 noundef 1, i8 noundef zeroext 0, ptr noundef @.str.3) #6, !dbg !1201
  store i32 %call, ptr %status, align 4, !dbg !1202
  %40 = load i32, ptr %status, align 4, !dbg !1203
  %tobool18 = icmp ne i32 %40, 0, !dbg !1203
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !1205

if.then19:                                        ; preds = %while.end
  %41 = load i32, ptr %status, align 4, !dbg !1206
  store i32 %41, ptr %retval, align 4, !dbg !1208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1208

if.end20:                                         ; preds = %while.end
  store i32 0, ptr %retval, align 4, !dbg !1209
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1209

cleanup:                                          ; preds = %if.end20, %if.then19
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !1210
  call void @llvm.lifetime.end.p0(i64 1, ptr %removing) #5, !dbg !1210
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1210
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #5, !dbg !1210
  call void @llvm.lifetime.end.p0(i64 4, ptr %outer_element_count) #5, !dbg !1210
  call void @llvm.lifetime.end.p0(i64 8, ptr %outer_elements) #5, !dbg !1210
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_object) #5, !dbg !1210
  %42 = load i32, ptr %retval, align 4, !dbg !1210
  ret i32 %42, !dbg !1210
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ns_repair_FDE(ptr noundef %info, ptr noundef %return_object_ptr) #0 align 16 !dbg !1211 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %return_object_ptr.addr = alloca ptr, align 8
  %return_object = alloca ptr, align 8
  %buffer_object = alloca ptr, align 8
  %byte_buffer = alloca ptr, align 8
  %dword_buffer = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1213, metadata !DIExpression()), !dbg !1220
  store ptr %return_object_ptr, ptr %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object_ptr.addr, metadata !1214, metadata !DIExpression()), !dbg !1221
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_object) #5, !dbg !1222
  call void @llvm.dbg.declare(metadata ptr %return_object, metadata !1215, metadata !DIExpression()), !dbg !1223
  %0 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !1224
  %1 = load ptr, ptr %0, align 8, !dbg !1225
  store ptr %1, ptr %return_object, align 8, !dbg !1223
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer_object) #5, !dbg !1226
  call void @llvm.dbg.declare(metadata ptr %buffer_object, metadata !1216, metadata !DIExpression()), !dbg !1227
  call void @llvm.lifetime.start.p0(i64 8, ptr %byte_buffer) #5, !dbg !1228
  call void @llvm.dbg.declare(metadata ptr %byte_buffer, metadata !1217, metadata !DIExpression()), !dbg !1229
  call void @llvm.lifetime.start.p0(i64 8, ptr %dword_buffer) #5, !dbg !1230
  call void @llvm.dbg.declare(metadata ptr %dword_buffer, metadata !1218, metadata !DIExpression()), !dbg !1231
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !1232
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1219, metadata !DIExpression()), !dbg !1233
  %2 = load ptr, ptr %return_object, align 8, !dbg !1234
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %2, i32 0, i32 2, !dbg !1235
  %3 = load i8, ptr %type, align 1, !dbg !1235
  %conv = zext i8 %3 to i32, !dbg !1234
  switch i32 %conv, label %sw.default [
    i32 3, label %sw.bb
  ], !dbg !1236

sw.bb:                                            ; preds = %entry
  %4 = load ptr, ptr %return_object, align 8, !dbg !1237
  %length = getelementptr inbounds %struct.acpi_object_buffer, ptr %4, i32 0, i32 6, !dbg !1240
  %5 = load i32, ptr %length, align 8, !dbg !1240
  %cmp = icmp uge i32 %5, 20, !dbg !1241
  br i1 %cmp, label %if.then, label %if.end, !dbg !1242

if.then:                                          ; preds = %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !1243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1243

if.end:                                           ; preds = %sw.bb
  %6 = load ptr, ptr %return_object, align 8, !dbg !1245
  %length2 = getelementptr inbounds %struct.acpi_object_buffer, ptr %6, i32 0, i32 6, !dbg !1247
  %7 = load i32, ptr %length2, align 8, !dbg !1247
  %cmp3 = icmp ne i32 %7, 5, !dbg !1248
  br i1 %cmp3, label %if.then5, label %if.end7, !dbg !1249

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr %info.addr, align 8, !dbg !1250
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %8, i32 0, i32 5, !dbg !1250
  %9 = load ptr, ptr %full_pathname, align 8, !dbg !1250
  %10 = load ptr, ptr %info.addr, align 8, !dbg !1250
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, ptr %10, i32 0, i32 12, !dbg !1250
  %11 = load i16, ptr %node_flags, align 2, !dbg !1250
  %12 = load ptr, ptr %return_object, align 8, !dbg !1250
  %length6 = getelementptr inbounds %struct.acpi_object_buffer, ptr %12, i32 0, i32 6, !dbg !1250
  %13 = load i32, ptr %length6, align 8, !dbg !1250
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 273, ptr noundef %9, i16 noundef zeroext %11, ptr noundef @.str.4, i32 noundef %13, i32 noundef 20) #6, !dbg !1250
  store i32 12291, ptr %retval, align 4, !dbg !1252
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1252

if.end7:                                          ; preds = %if.end
  %call = call ptr @acpi_ut_create_buffer_object(i64 noundef 20) #6, !dbg !1253
  store ptr %call, ptr %buffer_object, align 8, !dbg !1254
  %14 = load ptr, ptr %buffer_object, align 8, !dbg !1255
  %tobool = icmp ne ptr %14, null, !dbg !1255
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !1257

if.then8:                                         ; preds = %if.end7
  store i32 4, ptr %retval, align 4, !dbg !1258
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1258

if.end9:                                          ; preds = %if.end7
  %15 = load ptr, ptr %return_object, align 8, !dbg !1260
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %15, i32 0, i32 5, !dbg !1261
  %16 = load ptr, ptr %pointer, align 8, !dbg !1261
  store ptr %16, ptr %byte_buffer, align 8, !dbg !1262
  %17 = load ptr, ptr %buffer_object, align 8, !dbg !1263
  %pointer10 = getelementptr inbounds %struct.acpi_object_buffer, ptr %17, i32 0, i32 5, !dbg !1263
  %18 = load ptr, ptr %pointer10, align 8, !dbg !1263
  %19 = ptrtoint ptr %18 to i64, !dbg !1263
  %20 = inttoptr i64 %19 to ptr, !dbg !1263
  store ptr %20, ptr %dword_buffer, align 8, !dbg !1264
  store i32 0, ptr %i, align 4, !dbg !1265
  br label %for.cond, !dbg !1267

for.cond:                                         ; preds = %for.inc, %if.end9
  %21 = load i32, ptr %i, align 4, !dbg !1268
  %cmp11 = icmp ult i32 %21, 5, !dbg !1270
  br i1 %cmp11, label %for.body, label %for.end, !dbg !1271

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %byte_buffer, align 8, !dbg !1272
  %23 = load i8, ptr %22, align 1, !dbg !1274
  %conv13 = zext i8 %23 to i32, !dbg !1275
  %24 = load ptr, ptr %dword_buffer, align 8, !dbg !1276
  store i32 %conv13, ptr %24, align 4, !dbg !1277
  %25 = load ptr, ptr %dword_buffer, align 8, !dbg !1278
  %incdec.ptr = getelementptr i32, ptr %25, i32 1, !dbg !1278
  store ptr %incdec.ptr, ptr %dword_buffer, align 8, !dbg !1278
  %26 = load ptr, ptr %byte_buffer, align 8, !dbg !1279
  %incdec.ptr14 = getelementptr i8, ptr %26, i32 1, !dbg !1279
  store ptr %incdec.ptr14, ptr %byte_buffer, align 8, !dbg !1279
  br label %for.inc, !dbg !1280

for.inc:                                          ; preds = %for.body
  %27 = load i32, ptr %i, align 4, !dbg !1281
  %inc = add i32 %27, 1, !dbg !1281
  store i32 %inc, ptr %i, align 4, !dbg !1281
  br label %for.cond, !dbg !1282, !llvm.loop !1283

for.end:                                          ; preds = %for.cond
  br label %sw.epilog, !dbg !1285

sw.default:                                       ; preds = %entry
  store i32 12291, ptr %retval, align 4, !dbg !1286
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1286

sw.epilog:                                        ; preds = %for.end
  %28 = load ptr, ptr %return_object, align 8, !dbg !1287
  call void @acpi_ut_remove_reference(ptr noundef %28) #6, !dbg !1288
  %29 = load ptr, ptr %buffer_object, align 8, !dbg !1289
  %30 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !1290
  store ptr %29, ptr %30, align 8, !dbg !1291
  %31 = load ptr, ptr %info.addr, align 8, !dbg !1292
  %return_flags = getelementptr inbounds %struct.acpi_evaluate_info, ptr %31, i32 0, i32 9, !dbg !1293
  %32 = load i32, ptr %return_flags, align 8, !dbg !1294
  %or = or i32 %32, 1, !dbg !1294
  store i32 %or, ptr %return_flags, align 8, !dbg !1294
  store i32 0, ptr %retval, align 4, !dbg !1295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1295

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then8, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !1296
  call void @llvm.lifetime.end.p0(i64 8, ptr %dword_buffer) #5, !dbg !1296
  call void @llvm.lifetime.end.p0(i64 8, ptr %byte_buffer) #5, !dbg !1296
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer_object) #5, !dbg !1296
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_object) #5, !dbg !1296
  %33 = load i32, ptr %retval, align 4, !dbg !1296
  ret i32 %33, !dbg !1296
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ns_repair_HID(ptr noundef %info, ptr noundef %return_object_ptr) #0 align 16 !dbg !1297 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %return_object_ptr.addr = alloca ptr, align 8
  %return_object = alloca ptr, align 8
  %new_string = alloca ptr, align 8
  %source = alloca ptr, align 8
  %dest = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1299, metadata !DIExpression()), !dbg !1305
  store ptr %return_object_ptr, ptr %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object_ptr.addr, metadata !1300, metadata !DIExpression()), !dbg !1306
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_object) #5, !dbg !1307
  call void @llvm.dbg.declare(metadata ptr %return_object, metadata !1301, metadata !DIExpression()), !dbg !1308
  %0 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !1309
  %1 = load ptr, ptr %0, align 8, !dbg !1310
  store ptr %1, ptr %return_object, align 8, !dbg !1308
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_string) #5, !dbg !1311
  call void @llvm.dbg.declare(metadata ptr %new_string, metadata !1302, metadata !DIExpression()), !dbg !1312
  call void @llvm.lifetime.start.p0(i64 8, ptr %source) #5, !dbg !1313
  call void @llvm.dbg.declare(metadata ptr %source, metadata !1303, metadata !DIExpression()), !dbg !1314
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest) #5, !dbg !1315
  call void @llvm.dbg.declare(metadata ptr %dest, metadata !1304, metadata !DIExpression()), !dbg !1316
  %2 = load ptr, ptr %return_object, align 8, !dbg !1317
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %2, i32 0, i32 2, !dbg !1319
  %3 = load i8, ptr %type, align 1, !dbg !1319
  %conv = zext i8 %3 to i32, !dbg !1317
  %cmp = icmp ne i32 %conv, 2, !dbg !1320
  br i1 %cmp, label %if.then, label %if.end, !dbg !1321

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1322
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1322

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %return_object, align 8, !dbg !1324
  %length = getelementptr inbounds %struct.acpi_object_string, ptr %4, i32 0, i32 6, !dbg !1326
  %5 = load i32, ptr %length, align 8, !dbg !1326
  %cmp2 = icmp eq i32 %5, 0, !dbg !1327
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !1328

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %info.addr, align 8, !dbg !1329
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %6, i32 0, i32 5, !dbg !1329
  %7 = load ptr, ptr %full_pathname, align 8, !dbg !1329
  %8 = load ptr, ptr %info.addr, align 8, !dbg !1329
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, ptr %8, i32 0, i32 12, !dbg !1329
  %9 = load i16, ptr %node_flags, align 2, !dbg !1329
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 511, ptr noundef %7, i16 noundef zeroext %9, ptr noundef @.str.5) #6, !dbg !1329
  %10 = load ptr, ptr %info.addr, align 8, !dbg !1331
  %return_flags = getelementptr inbounds %struct.acpi_evaluate_info, ptr %10, i32 0, i32 9, !dbg !1332
  %11 = load i32, ptr %return_flags, align 8, !dbg !1333
  %or = or i32 %11, 1, !dbg !1333
  store i32 %or, ptr %return_flags, align 8, !dbg !1333
  store i32 0, ptr %retval, align 4, !dbg !1334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1334

if.end5:                                          ; preds = %if.end
  %12 = load ptr, ptr %return_object, align 8, !dbg !1335
  %length6 = getelementptr inbounds %struct.acpi_object_string, ptr %12, i32 0, i32 6, !dbg !1336
  %13 = load i32, ptr %length6, align 8, !dbg !1336
  %conv7 = zext i32 %13 to i64, !dbg !1335
  %call = call ptr @acpi_ut_create_string_object(i64 noundef %conv7) #6, !dbg !1337
  store ptr %call, ptr %new_string, align 8, !dbg !1338
  %14 = load ptr, ptr %new_string, align 8, !dbg !1339
  %tobool = icmp ne ptr %14, null, !dbg !1339
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !1341

if.then8:                                         ; preds = %if.end5
  store i32 4, ptr %retval, align 4, !dbg !1342
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1342

if.end9:                                          ; preds = %if.end5
  %15 = load ptr, ptr %return_object, align 8, !dbg !1344
  %pointer = getelementptr inbounds %struct.acpi_object_string, ptr %15, i32 0, i32 5, !dbg !1345
  %16 = load ptr, ptr %pointer, align 8, !dbg !1345
  store ptr %16, ptr %source, align 8, !dbg !1346
  %17 = load ptr, ptr %source, align 8, !dbg !1347
  %18 = load i8, ptr %17, align 1, !dbg !1349
  %conv10 = zext i8 %18 to i32, !dbg !1349
  %cmp11 = icmp eq i32 %conv10, 42, !dbg !1350
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !1351

if.then13:                                        ; preds = %if.end9
  %19 = load ptr, ptr %source, align 8, !dbg !1352
  %incdec.ptr = getelementptr i8, ptr %19, i32 1, !dbg !1352
  store ptr %incdec.ptr, ptr %source, align 8, !dbg !1352
  %20 = load ptr, ptr %new_string, align 8, !dbg !1354
  %length14 = getelementptr inbounds %struct.acpi_object_string, ptr %20, i32 0, i32 6, !dbg !1355
  %21 = load i32, ptr %length14, align 8, !dbg !1356
  %dec = add i32 %21, -1, !dbg !1356
  store i32 %dec, ptr %length14, align 8, !dbg !1356
  br label %if.end15, !dbg !1357

if.end15:                                         ; preds = %if.then13, %if.end9
  %22 = load ptr, ptr %new_string, align 8, !dbg !1358
  %pointer16 = getelementptr inbounds %struct.acpi_object_string, ptr %22, i32 0, i32 5, !dbg !1360
  %23 = load ptr, ptr %pointer16, align 8, !dbg !1360
  store ptr %23, ptr %dest, align 8, !dbg !1361
  br label %for.cond, !dbg !1362

for.cond:                                         ; preds = %for.inc, %if.end15
  %24 = load ptr, ptr %source, align 8, !dbg !1363
  %25 = load i8, ptr %24, align 1, !dbg !1365
  %tobool17 = icmp ne i8 %25, 0, !dbg !1366
  br i1 %tobool17, label %for.body, label %for.end, !dbg !1366

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %source, align 8, !dbg !1367
  %27 = load i8, ptr %26, align 1, !dbg !1367
  %conv18 = zext i8 %27 to i32, !dbg !1367
  %conv19 = trunc i32 %conv18 to i8, !dbg !1367
  %call20 = call zeroext i8 @__toupper(i8 noundef zeroext %conv19) #6, !dbg !1367
  %28 = load ptr, ptr %dest, align 8, !dbg !1369
  store i8 %call20, ptr %28, align 1, !dbg !1370
  br label %for.inc, !dbg !1371

for.inc:                                          ; preds = %for.body
  %29 = load ptr, ptr %dest, align 8, !dbg !1372
  %incdec.ptr21 = getelementptr i8, ptr %29, i32 1, !dbg !1372
  store ptr %incdec.ptr21, ptr %dest, align 8, !dbg !1372
  %30 = load ptr, ptr %source, align 8, !dbg !1373
  %incdec.ptr22 = getelementptr i8, ptr %30, i32 1, !dbg !1373
  store ptr %incdec.ptr22, ptr %source, align 8, !dbg !1373
  br label %for.cond, !dbg !1374, !llvm.loop !1375

for.end:                                          ; preds = %for.cond
  %31 = load ptr, ptr %return_object, align 8, !dbg !1377
  call void @acpi_ut_remove_reference(ptr noundef %31) #6, !dbg !1378
  %32 = load ptr, ptr %new_string, align 8, !dbg !1379
  %33 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !1380
  store ptr %32, ptr %33, align 8, !dbg !1381
  store i32 0, ptr %retval, align 4, !dbg !1382
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1382

cleanup:                                          ; preds = %for.end, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest) #5, !dbg !1383
  call void @llvm.lifetime.end.p0(i64 8, ptr %source) #5, !dbg !1383
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_string) #5, !dbg !1383
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_object) #5, !dbg !1383
  %34 = load i32, ptr %retval, align 4, !dbg !1383
  ret i32 %34, !dbg !1383
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ns_repair_PRT(ptr noundef %info, ptr noundef %return_object_ptr) #0 align 16 !dbg !1384 {
entry:
  %info.addr = alloca ptr, align 8
  %return_object_ptr.addr = alloca ptr, align 8
  %package_object = alloca ptr, align 8
  %top_object_list = alloca ptr, align 8
  %sub_object_list = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %sub_package = alloca ptr, align 8
  %element_count = alloca i32, align 4
  %index = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1386, metadata !DIExpression()), !dbg !1395
  store ptr %return_object_ptr, ptr %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object_ptr.addr, metadata !1387, metadata !DIExpression()), !dbg !1396
  call void @llvm.lifetime.start.p0(i64 8, ptr %package_object) #5, !dbg !1397
  call void @llvm.dbg.declare(metadata ptr %package_object, metadata !1388, metadata !DIExpression()), !dbg !1398
  %0 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !1399
  %1 = load ptr, ptr %0, align 8, !dbg !1400
  store ptr %1, ptr %package_object, align 8, !dbg !1398
  call void @llvm.lifetime.start.p0(i64 8, ptr %top_object_list) #5, !dbg !1401
  call void @llvm.dbg.declare(metadata ptr %top_object_list, metadata !1389, metadata !DIExpression()), !dbg !1402
  call void @llvm.lifetime.start.p0(i64 8, ptr %sub_object_list) #5, !dbg !1403
  call void @llvm.dbg.declare(metadata ptr %sub_object_list, metadata !1390, metadata !DIExpression()), !dbg !1404
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #5, !dbg !1405
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1391, metadata !DIExpression()), !dbg !1406
  call void @llvm.lifetime.start.p0(i64 8, ptr %sub_package) #5, !dbg !1407
  call void @llvm.dbg.declare(metadata ptr %sub_package, metadata !1392, metadata !DIExpression()), !dbg !1408
  call void @llvm.lifetime.start.p0(i64 4, ptr %element_count) #5, !dbg !1409
  call void @llvm.dbg.declare(metadata ptr %element_count, metadata !1393, metadata !DIExpression()), !dbg !1410
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #5, !dbg !1411
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1394, metadata !DIExpression()), !dbg !1412
  %2 = load ptr, ptr %package_object, align 8, !dbg !1413
  %elements = getelementptr inbounds %struct.acpi_object_package, ptr %2, i32 0, i32 6, !dbg !1414
  %3 = load ptr, ptr %elements, align 8, !dbg !1414
  store ptr %3, ptr %top_object_list, align 8, !dbg !1415
  %4 = load ptr, ptr %package_object, align 8, !dbg !1416
  %count = getelementptr inbounds %struct.acpi_object_package, ptr %4, i32 0, i32 9, !dbg !1417
  %5 = load i32, ptr %count, align 4, !dbg !1417
  store i32 %5, ptr %element_count, align 4, !dbg !1418
  store i32 0, ptr %index, align 4, !dbg !1419
  br label %for.cond, !dbg !1421

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %index, align 4, !dbg !1422
  %7 = load i32, ptr %element_count, align 4, !dbg !1424
  %cmp = icmp ult i32 %6, %7, !dbg !1425
  br i1 %cmp, label %for.body, label %for.end, !dbg !1426

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %top_object_list, align 8, !dbg !1427
  %9 = load ptr, ptr %8, align 8, !dbg !1429
  store ptr %9, ptr %sub_package, align 8, !dbg !1430
  %10 = load ptr, ptr %sub_package, align 8, !dbg !1431
  %elements1 = getelementptr inbounds %struct.acpi_object_package, ptr %10, i32 0, i32 6, !dbg !1432
  %11 = load ptr, ptr %elements1, align 8, !dbg !1432
  store ptr %11, ptr %sub_object_list, align 8, !dbg !1433
  %12 = load ptr, ptr %sub_package, align 8, !dbg !1434
  %count2 = getelementptr inbounds %struct.acpi_object_package, ptr %12, i32 0, i32 9, !dbg !1436
  %13 = load i32, ptr %count2, align 4, !dbg !1436
  %cmp3 = icmp ult i32 %13, 4, !dbg !1437
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1438

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !1439

if.end:                                           ; preds = %for.body
  %14 = load ptr, ptr %sub_object_list, align 8, !dbg !1441
  %arrayidx = getelementptr ptr, ptr %14, i64 3, !dbg !1441
  %15 = load ptr, ptr %arrayidx, align 8, !dbg !1441
  store ptr %15, ptr %obj_desc, align 8, !dbg !1442
  %16 = load ptr, ptr %obj_desc, align 8, !dbg !1443
  %tobool = icmp ne ptr %16, null, !dbg !1443
  br i1 %tobool, label %lor.lhs.false, label %if.then6, !dbg !1445

lor.lhs.false:                                    ; preds = %if.end
  %17 = load ptr, ptr %obj_desc, align 8, !dbg !1446
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %17, i32 0, i32 2, !dbg !1447
  %18 = load i8, ptr %type, align 1, !dbg !1447
  %conv = zext i8 %18 to i32, !dbg !1446
  %cmp4 = icmp ne i32 %conv, 1, !dbg !1448
  br i1 %cmp4, label %if.then6, label %if.end10, !dbg !1449

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  %19 = load ptr, ptr %sub_object_list, align 8, !dbg !1450
  %arrayidx7 = getelementptr ptr, ptr %19, i64 2, !dbg !1450
  %20 = load ptr, ptr %arrayidx7, align 8, !dbg !1450
  %21 = load ptr, ptr %sub_object_list, align 8, !dbg !1452
  %arrayidx8 = getelementptr ptr, ptr %21, i64 3, !dbg !1452
  store ptr %20, ptr %arrayidx8, align 8, !dbg !1453
  %22 = load ptr, ptr %obj_desc, align 8, !dbg !1454
  %23 = load ptr, ptr %sub_object_list, align 8, !dbg !1455
  %arrayidx9 = getelementptr ptr, ptr %23, i64 2, !dbg !1455
  store ptr %22, ptr %arrayidx9, align 8, !dbg !1456
  %24 = load ptr, ptr %info.addr, align 8, !dbg !1457
  %return_flags = getelementptr inbounds %struct.acpi_evaluate_info, ptr %24, i32 0, i32 9, !dbg !1458
  %25 = load i32, ptr %return_flags, align 8, !dbg !1459
  %or = or i32 %25, 1, !dbg !1459
  store i32 %or, ptr %return_flags, align 8, !dbg !1459
  %26 = load ptr, ptr %info.addr, align 8, !dbg !1460
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %26, i32 0, i32 5, !dbg !1460
  %27 = load ptr, ptr %full_pathname, align 8, !dbg !1460
  %28 = load ptr, ptr %info.addr, align 8, !dbg !1460
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, ptr %28, i32 0, i32 12, !dbg !1460
  %29 = load i16, ptr %node_flags, align 2, !dbg !1460
  %30 = load i32, ptr %index, align 4, !dbg !1460
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 617, ptr noundef %27, i16 noundef zeroext %29, ptr noundef @.str.6, i32 noundef %30) #6, !dbg !1460
  br label %if.end10, !dbg !1461

if.end10:                                         ; preds = %if.then6, %lor.lhs.false
  br label %for.inc, !dbg !1462

for.inc:                                          ; preds = %if.end10, %if.then
  %31 = load i32, ptr %index, align 4, !dbg !1463
  %inc = add i32 %31, 1, !dbg !1463
  store i32 %inc, ptr %index, align 4, !dbg !1463
  %32 = load ptr, ptr %top_object_list, align 8, !dbg !1464
  %incdec.ptr = getelementptr ptr, ptr %32, i32 1, !dbg !1464
  store ptr %incdec.ptr, ptr %top_object_list, align 8, !dbg !1464
  br label %for.cond, !dbg !1465, !llvm.loop !1466

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #5, !dbg !1468
  call void @llvm.lifetime.end.p0(i64 4, ptr %element_count) #5, !dbg !1468
  call void @llvm.lifetime.end.p0(i64 8, ptr %sub_package) #5, !dbg !1468
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #5, !dbg !1468
  call void @llvm.lifetime.end.p0(i64 8, ptr %sub_object_list) #5, !dbg !1468
  call void @llvm.lifetime.end.p0(i64 8, ptr %top_object_list) #5, !dbg !1468
  call void @llvm.lifetime.end.p0(i64 8, ptr %package_object) #5, !dbg !1468
  ret i32 0, !dbg !1469
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ns_repair_PSS(ptr noundef %info, ptr noundef %return_object_ptr) #0 align 16 !dbg !1470 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %return_object_ptr.addr = alloca ptr, align 8
  %return_object = alloca ptr, align 8
  %outer_elements = alloca ptr, align 8
  %outer_element_count = alloca i32, align 4
  %elements = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %previous_value = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1472, metadata !DIExpression()), !dbg !1482
  store ptr %return_object_ptr, ptr %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object_ptr.addr, metadata !1473, metadata !DIExpression()), !dbg !1483
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_object) #5, !dbg !1484
  call void @llvm.dbg.declare(metadata ptr %return_object, metadata !1474, metadata !DIExpression()), !dbg !1485
  %0 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !1486
  %1 = load ptr, ptr %0, align 8, !dbg !1487
  store ptr %1, ptr %return_object, align 8, !dbg !1485
  call void @llvm.lifetime.start.p0(i64 8, ptr %outer_elements) #5, !dbg !1488
  call void @llvm.dbg.declare(metadata ptr %outer_elements, metadata !1475, metadata !DIExpression()), !dbg !1489
  call void @llvm.lifetime.start.p0(i64 4, ptr %outer_element_count) #5, !dbg !1490
  call void @llvm.dbg.declare(metadata ptr %outer_element_count, metadata !1476, metadata !DIExpression()), !dbg !1491
  call void @llvm.lifetime.start.p0(i64 8, ptr %elements) #5, !dbg !1492
  call void @llvm.dbg.declare(metadata ptr %elements, metadata !1477, metadata !DIExpression()), !dbg !1493
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #5, !dbg !1494
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1478, metadata !DIExpression()), !dbg !1495
  call void @llvm.lifetime.start.p0(i64 4, ptr %previous_value) #5, !dbg !1496
  call void @llvm.dbg.declare(metadata ptr %previous_value, metadata !1479, metadata !DIExpression()), !dbg !1497
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1498
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1480, metadata !DIExpression()), !dbg !1499
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !1500
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1481, metadata !DIExpression()), !dbg !1501
  %2 = load ptr, ptr %info.addr, align 8, !dbg !1502
  %3 = load ptr, ptr %return_object, align 8, !dbg !1503
  %call = call i32 @acpi_ns_check_sorted_list(ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 6, i32 noundef 0, i8 noundef zeroext 1, ptr noundef @.str.7) #6, !dbg !1504
  store i32 %call, ptr %status, align 4, !dbg !1505
  %4 = load i32, ptr %status, align 4, !dbg !1506
  %tobool = icmp ne i32 %4, 0, !dbg !1506
  br i1 %tobool, label %if.then, label %if.end, !dbg !1508

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %status, align 4, !dbg !1509
  store i32 %5, ptr %retval, align 4, !dbg !1511
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1511

if.end:                                           ; preds = %entry
  store i32 -1, ptr %previous_value, align 4, !dbg !1512
  %6 = load ptr, ptr %return_object, align 8, !dbg !1513
  %elements1 = getelementptr inbounds %struct.acpi_object_package, ptr %6, i32 0, i32 6, !dbg !1514
  %7 = load ptr, ptr %elements1, align 8, !dbg !1514
  store ptr %7, ptr %outer_elements, align 8, !dbg !1515
  %8 = load ptr, ptr %return_object, align 8, !dbg !1516
  %count = getelementptr inbounds %struct.acpi_object_package, ptr %8, i32 0, i32 9, !dbg !1517
  %9 = load i32, ptr %count, align 4, !dbg !1517
  store i32 %9, ptr %outer_element_count, align 4, !dbg !1518
  store i32 0, ptr %i, align 4, !dbg !1519
  br label %for.cond, !dbg !1521

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, ptr %i, align 4, !dbg !1522
  %11 = load i32, ptr %outer_element_count, align 4, !dbg !1524
  %cmp = icmp ult i32 %10, %11, !dbg !1525
  br i1 %cmp, label %for.body, label %for.end, !dbg !1526

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %outer_elements, align 8, !dbg !1527
  %13 = load ptr, ptr %12, align 8, !dbg !1529
  %elements2 = getelementptr inbounds %struct.acpi_object_package, ptr %13, i32 0, i32 6, !dbg !1530
  %14 = load ptr, ptr %elements2, align 8, !dbg !1530
  store ptr %14, ptr %elements, align 8, !dbg !1531
  %15 = load ptr, ptr %elements, align 8, !dbg !1532
  %arrayidx = getelementptr ptr, ptr %15, i64 1, !dbg !1532
  %16 = load ptr, ptr %arrayidx, align 8, !dbg !1532
  store ptr %16, ptr %obj_desc, align 8, !dbg !1533
  %17 = load ptr, ptr %obj_desc, align 8, !dbg !1534
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %17, i32 0, i32 6, !dbg !1536
  %18 = load i64, ptr %value, align 8, !dbg !1536
  %conv = trunc i64 %18 to i32, !dbg !1537
  %19 = load i32, ptr %previous_value, align 4, !dbg !1538
  %cmp3 = icmp ugt i32 %conv, %19, !dbg !1539
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !1540

if.then5:                                         ; preds = %for.body
  %20 = load ptr, ptr %info.addr, align 8, !dbg !1541
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %20, i32 0, i32 5, !dbg !1541
  %21 = load ptr, ptr %full_pathname, align 8, !dbg !1541
  %22 = load ptr, ptr %info.addr, align 8, !dbg !1541
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, ptr %22, i32 0, i32 12, !dbg !1541
  %23 = load i16, ptr %node_flags, align 2, !dbg !1541
  %24 = load i32, ptr %i, align 4, !dbg !1541
  %sub = sub i32 %24, 1, !dbg !1541
  %25 = load i32, ptr %i, align 4, !dbg !1541
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 684, ptr noundef %21, i16 noundef zeroext %23, ptr noundef @.str.8, i32 noundef %sub, i32 noundef %25) #6, !dbg !1541
  br label %if.end6, !dbg !1543

if.end6:                                          ; preds = %if.then5, %for.body
  %26 = load ptr, ptr %obj_desc, align 8, !dbg !1544
  %value7 = getelementptr inbounds %struct.acpi_object_integer, ptr %26, i32 0, i32 6, !dbg !1545
  %27 = load i64, ptr %value7, align 8, !dbg !1545
  %conv8 = trunc i64 %27 to i32, !dbg !1546
  store i32 %conv8, ptr %previous_value, align 4, !dbg !1547
  %28 = load ptr, ptr %outer_elements, align 8, !dbg !1548
  %incdec.ptr = getelementptr ptr, ptr %28, i32 1, !dbg !1548
  store ptr %incdec.ptr, ptr %outer_elements, align 8, !dbg !1548
  br label %for.inc, !dbg !1549

for.inc:                                          ; preds = %if.end6
  %29 = load i32, ptr %i, align 4, !dbg !1550
  %inc = add i32 %29, 1, !dbg !1550
  store i32 %inc, ptr %i, align 4, !dbg !1550
  br label %for.cond, !dbg !1551, !llvm.loop !1552

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1554
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1554

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !1555
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1555
  call void @llvm.lifetime.end.p0(i64 4, ptr %previous_value) #5, !dbg !1555
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #5, !dbg !1555
  call void @llvm.lifetime.end.p0(i64 8, ptr %elements) #5, !dbg !1555
  call void @llvm.lifetime.end.p0(i64 4, ptr %outer_element_count) #5, !dbg !1555
  call void @llvm.lifetime.end.p0(i64 8, ptr %outer_elements) #5, !dbg !1555
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_object) #5, !dbg !1555
  %30 = load i32, ptr %retval, align 4, !dbg !1555
  ret i32 %30, !dbg !1555
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ns_repair_TSS(ptr noundef %info, ptr noundef %return_object_ptr) #0 align 16 !dbg !1556 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %return_object_ptr.addr = alloca ptr, align 8
  %return_object = alloca ptr, align 8
  %status = alloca i32, align 4
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1558, metadata !DIExpression()), !dbg !1563
  store ptr %return_object_ptr, ptr %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object_ptr.addr, metadata !1559, metadata !DIExpression()), !dbg !1564
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_object) #5, !dbg !1565
  call void @llvm.dbg.declare(metadata ptr %return_object, metadata !1560, metadata !DIExpression()), !dbg !1566
  %0 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !1567
  %1 = load ptr, ptr %0, align 8, !dbg !1568
  store ptr %1, ptr %return_object, align 8, !dbg !1566
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1569
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1561, metadata !DIExpression()), !dbg !1570
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #5, !dbg !1571
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1562, metadata !DIExpression()), !dbg !1572
  %2 = load ptr, ptr %info.addr, align 8, !dbg !1573
  %node1 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %2, i32 0, i32 3, !dbg !1574
  %3 = load ptr, ptr %node1, align 8, !dbg !1574
  %call = call i32 @acpi_ns_get_node(ptr noundef %3, ptr noundef @.str.9, i32 noundef 0, ptr noundef %node) #6, !dbg !1575
  store i32 %call, ptr %status, align 4, !dbg !1576
  %4 = load i32, ptr %status, align 4, !dbg !1577
  %tobool = icmp ne i32 %4, 0, !dbg !1577
  br i1 %tobool, label %if.end, label %if.then, !dbg !1579

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1580
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1580

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %info.addr, align 8, !dbg !1582
  %6 = load ptr, ptr %return_object, align 8, !dbg !1583
  %call2 = call i32 @acpi_ns_check_sorted_list(ptr noundef %5, ptr noundef %6, i32 noundef 0, i32 noundef 5, i32 noundef 1, i8 noundef zeroext 1, ptr noundef @.str.10) #6, !dbg !1584
  store i32 %call2, ptr %status, align 4, !dbg !1585
  %7 = load i32, ptr %status, align 4, !dbg !1586
  store i32 %7, ptr %retval, align 4, !dbg !1587
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1587

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #5, !dbg !1588
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1588
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_object) #5, !dbg !1588
  %8 = load i32, ptr %retval, align 4, !dbg !1588
  ret i32 %8, !dbg !1588
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ns_check_sorted_list(ptr noundef %info, ptr noundef %return_object, i32 noundef %start_index, i32 noundef %expected_count, i32 noundef %sort_index, i8 noundef zeroext %sort_direction, ptr noundef %sort_key_name) #0 align 16 !dbg !1589 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %return_object.addr = alloca ptr, align 8
  %start_index.addr = alloca i32, align 4
  %expected_count.addr = alloca i32, align 4
  %sort_index.addr = alloca i32, align 4
  %sort_direction.addr = alloca i8, align 1
  %sort_key_name.addr = alloca ptr, align 8
  %outer_element_count = alloca i32, align 4
  %outer_elements = alloca ptr, align 8
  %elements = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %i = alloca i32, align 4
  %previous_value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1593, metadata !DIExpression()), !dbg !1606
  store ptr %return_object, ptr %return_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object.addr, metadata !1594, metadata !DIExpression()), !dbg !1607
  store i32 %start_index, ptr %start_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start_index.addr, metadata !1595, metadata !DIExpression()), !dbg !1608
  store i32 %expected_count, ptr %expected_count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %expected_count.addr, metadata !1596, metadata !DIExpression()), !dbg !1609
  store i32 %sort_index, ptr %sort_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sort_index.addr, metadata !1597, metadata !DIExpression()), !dbg !1610
  store i8 %sort_direction, ptr %sort_direction.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %sort_direction.addr, metadata !1598, metadata !DIExpression()), !dbg !1611
  store ptr %sort_key_name, ptr %sort_key_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sort_key_name.addr, metadata !1599, metadata !DIExpression()), !dbg !1612
  call void @llvm.lifetime.start.p0(i64 4, ptr %outer_element_count) #5, !dbg !1613
  call void @llvm.dbg.declare(metadata ptr %outer_element_count, metadata !1600, metadata !DIExpression()), !dbg !1614
  call void @llvm.lifetime.start.p0(i64 8, ptr %outer_elements) #5, !dbg !1615
  call void @llvm.dbg.declare(metadata ptr %outer_elements, metadata !1601, metadata !DIExpression()), !dbg !1616
  call void @llvm.lifetime.start.p0(i64 8, ptr %elements) #5, !dbg !1617
  call void @llvm.dbg.declare(metadata ptr %elements, metadata !1602, metadata !DIExpression()), !dbg !1618
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #5, !dbg !1619
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1603, metadata !DIExpression()), !dbg !1620
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !1621
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1604, metadata !DIExpression()), !dbg !1622
  call void @llvm.lifetime.start.p0(i64 4, ptr %previous_value) #5, !dbg !1623
  call void @llvm.dbg.declare(metadata ptr %previous_value, metadata !1605, metadata !DIExpression()), !dbg !1624
  %0 = load ptr, ptr %return_object.addr, align 8, !dbg !1625
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %0, i32 0, i32 2, !dbg !1627
  %1 = load i8, ptr %type, align 1, !dbg !1627
  %conv = zext i8 %1 to i32, !dbg !1625
  %cmp = icmp ne i32 %conv, 4, !dbg !1628
  br i1 %cmp, label %if.then, label %if.end, !dbg !1629

if.then:                                          ; preds = %entry
  store i32 12291, ptr %retval, align 4, !dbg !1630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1630

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %return_object.addr, align 8, !dbg !1632
  %count = getelementptr inbounds %struct.acpi_object_package, ptr %2, i32 0, i32 9, !dbg !1633
  %3 = load i32, ptr %count, align 4, !dbg !1633
  store i32 %3, ptr %outer_element_count, align 4, !dbg !1634
  %4 = load i32, ptr %outer_element_count, align 4, !dbg !1635
  %tobool = icmp ne i32 %4, 0, !dbg !1635
  br i1 %tobool, label %lor.lhs.false, label %if.then4, !dbg !1637

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, ptr %start_index.addr, align 4, !dbg !1638
  %6 = load i32, ptr %outer_element_count, align 4, !dbg !1639
  %cmp2 = icmp uge i32 %5, %6, !dbg !1640
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !1641

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 12299, ptr %retval, align 4, !dbg !1642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1642

if.end5:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr %return_object.addr, align 8, !dbg !1644
  %elements6 = getelementptr inbounds %struct.acpi_object_package, ptr %7, i32 0, i32 6, !dbg !1645
  %8 = load ptr, ptr %elements6, align 8, !dbg !1645
  %9 = load i32, ptr %start_index.addr, align 4, !dbg !1646
  %idxprom = zext i32 %9 to i64, !dbg !1644
  %arrayidx = getelementptr ptr, ptr %8, i64 %idxprom, !dbg !1644
  store ptr %arrayidx, ptr %outer_elements, align 8, !dbg !1647
  %10 = load i32, ptr %start_index.addr, align 4, !dbg !1648
  %11 = load i32, ptr %outer_element_count, align 4, !dbg !1649
  %sub = sub i32 %11, %10, !dbg !1649
  store i32 %sub, ptr %outer_element_count, align 4, !dbg !1649
  store i32 0, ptr %previous_value, align 4, !dbg !1650
  %12 = load i8, ptr %sort_direction.addr, align 1, !dbg !1651
  %conv7 = zext i8 %12 to i32, !dbg !1651
  %cmp8 = icmp eq i32 %conv7, 1, !dbg !1653
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !1654

if.then10:                                        ; preds = %if.end5
  store i32 -1, ptr %previous_value, align 4, !dbg !1655
  br label %if.end11, !dbg !1657

if.end11:                                         ; preds = %if.then10, %if.end5
  store i32 0, ptr %i, align 4, !dbg !1658
  br label %for.cond, !dbg !1660

for.cond:                                         ; preds = %for.inc, %if.end11
  %13 = load i32, ptr %i, align 4, !dbg !1661
  %14 = load i32, ptr %outer_element_count, align 4, !dbg !1663
  %cmp12 = icmp ult i32 %13, %14, !dbg !1664
  br i1 %cmp12, label %for.body, label %for.end, !dbg !1665

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %outer_elements, align 8, !dbg !1666
  %16 = load ptr, ptr %15, align 8, !dbg !1669
  %type14 = getelementptr inbounds %struct.acpi_object_common, ptr %16, i32 0, i32 2, !dbg !1670
  %17 = load i8, ptr %type14, align 1, !dbg !1670
  %conv15 = zext i8 %17 to i32, !dbg !1671
  %cmp16 = icmp ne i32 %conv15, 4, !dbg !1672
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !1673

if.then18:                                        ; preds = %for.body
  store i32 12291, ptr %retval, align 4, !dbg !1674
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1674

if.end19:                                         ; preds = %for.body
  %18 = load ptr, ptr %outer_elements, align 8, !dbg !1676
  %19 = load ptr, ptr %18, align 8, !dbg !1678
  %count20 = getelementptr inbounds %struct.acpi_object_package, ptr %19, i32 0, i32 9, !dbg !1679
  %20 = load i32, ptr %count20, align 4, !dbg !1679
  %21 = load i32, ptr %expected_count.addr, align 4, !dbg !1680
  %cmp21 = icmp ult i32 %20, %21, !dbg !1681
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !1682

if.then23:                                        ; preds = %if.end19
  store i32 12299, ptr %retval, align 4, !dbg !1683
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1683

if.end24:                                         ; preds = %if.end19
  %22 = load ptr, ptr %outer_elements, align 8, !dbg !1685
  %23 = load ptr, ptr %22, align 8, !dbg !1686
  %elements25 = getelementptr inbounds %struct.acpi_object_package, ptr %23, i32 0, i32 6, !dbg !1687
  %24 = load ptr, ptr %elements25, align 8, !dbg !1687
  store ptr %24, ptr %elements, align 8, !dbg !1688
  %25 = load ptr, ptr %elements, align 8, !dbg !1689
  %26 = load i32, ptr %sort_index.addr, align 4, !dbg !1690
  %idxprom26 = zext i32 %26 to i64, !dbg !1689
  %arrayidx27 = getelementptr ptr, ptr %25, i64 %idxprom26, !dbg !1689
  %27 = load ptr, ptr %arrayidx27, align 8, !dbg !1689
  store ptr %27, ptr %obj_desc, align 8, !dbg !1691
  %28 = load ptr, ptr %obj_desc, align 8, !dbg !1692
  %type28 = getelementptr inbounds %struct.acpi_object_common, ptr %28, i32 0, i32 2, !dbg !1694
  %29 = load i8, ptr %type28, align 1, !dbg !1694
  %conv29 = zext i8 %29 to i32, !dbg !1692
  %cmp30 = icmp ne i32 %conv29, 1, !dbg !1695
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !1696

if.then32:                                        ; preds = %if.end24
  store i32 12291, ptr %retval, align 4, !dbg !1697
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1697

if.end33:                                         ; preds = %if.end24
  %30 = load i8, ptr %sort_direction.addr, align 1, !dbg !1699
  %conv34 = zext i8 %30 to i32, !dbg !1699
  %cmp35 = icmp eq i32 %conv34, 0, !dbg !1701
  br i1 %cmp35, label %land.lhs.true, label %lor.lhs.false40, !dbg !1702

land.lhs.true:                                    ; preds = %if.end33
  %31 = load ptr, ptr %obj_desc, align 8, !dbg !1703
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %31, i32 0, i32 6, !dbg !1704
  %32 = load i64, ptr %value, align 8, !dbg !1704
  %33 = load i32, ptr %previous_value, align 4, !dbg !1705
  %conv37 = zext i32 %33 to i64, !dbg !1705
  %cmp38 = icmp ult i64 %32, %conv37, !dbg !1706
  br i1 %cmp38, label %if.then49, label %lor.lhs.false40, !dbg !1707

lor.lhs.false40:                                  ; preds = %land.lhs.true, %if.end33
  %34 = load i8, ptr %sort_direction.addr, align 1, !dbg !1708
  %conv41 = zext i8 %34 to i32, !dbg !1708
  %cmp42 = icmp eq i32 %conv41, 1, !dbg !1709
  br i1 %cmp42, label %land.lhs.true44, label %if.end53, !dbg !1710

land.lhs.true44:                                  ; preds = %lor.lhs.false40
  %35 = load ptr, ptr %obj_desc, align 8, !dbg !1711
  %value45 = getelementptr inbounds %struct.acpi_object_integer, ptr %35, i32 0, i32 6, !dbg !1712
  %36 = load i64, ptr %value45, align 8, !dbg !1712
  %37 = load i32, ptr %previous_value, align 4, !dbg !1713
  %conv46 = zext i32 %37 to i64, !dbg !1713
  %cmp47 = icmp ugt i64 %36, %conv46, !dbg !1714
  br i1 %cmp47, label %if.then49, label %if.end53, !dbg !1715

if.then49:                                        ; preds = %land.lhs.true44, %land.lhs.true
  %38 = load ptr, ptr %return_object.addr, align 8, !dbg !1716
  %elements50 = getelementptr inbounds %struct.acpi_object_package, ptr %38, i32 0, i32 6, !dbg !1718
  %39 = load ptr, ptr %elements50, align 8, !dbg !1718
  %40 = load i32, ptr %start_index.addr, align 4, !dbg !1719
  %idxprom51 = zext i32 %40 to i64, !dbg !1716
  %arrayidx52 = getelementptr ptr, ptr %39, i64 %idxprom51, !dbg !1716
  %41 = load i32, ptr %outer_element_count, align 4, !dbg !1720
  %42 = load i32, ptr %sort_index.addr, align 4, !dbg !1721
  %43 = load i8, ptr %sort_direction.addr, align 1, !dbg !1722
  call void @acpi_ns_sort_list(ptr noundef %arrayidx52, i32 noundef %41, i32 noundef %42, i8 noundef zeroext %43) #6, !dbg !1723
  %44 = load ptr, ptr %info.addr, align 8, !dbg !1724
  %return_flags = getelementptr inbounds %struct.acpi_evaluate_info, ptr %44, i32 0, i32 9, !dbg !1725
  %45 = load i32, ptr %return_flags, align 8, !dbg !1726
  %or = or i32 %45, 1, !dbg !1726
  store i32 %or, ptr %return_flags, align 8, !dbg !1726
  store i32 0, ptr %retval, align 4, !dbg !1727
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1727

if.end53:                                         ; preds = %land.lhs.true44, %lor.lhs.false40
  %46 = load ptr, ptr %obj_desc, align 8, !dbg !1728
  %value54 = getelementptr inbounds %struct.acpi_object_integer, ptr %46, i32 0, i32 6, !dbg !1729
  %47 = load i64, ptr %value54, align 8, !dbg !1729
  %conv55 = trunc i64 %47 to i32, !dbg !1730
  store i32 %conv55, ptr %previous_value, align 4, !dbg !1731
  %48 = load ptr, ptr %outer_elements, align 8, !dbg !1732
  %incdec.ptr = getelementptr ptr, ptr %48, i32 1, !dbg !1732
  store ptr %incdec.ptr, ptr %outer_elements, align 8, !dbg !1732
  br label %for.inc, !dbg !1733

for.inc:                                          ; preds = %if.end53
  %49 = load i32, ptr %i, align 4, !dbg !1734
  %inc = add i32 %49, 1, !dbg !1734
  store i32 %inc, ptr %i, align 4, !dbg !1734
  br label %for.cond, !dbg !1735, !llvm.loop !1736

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1738
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1738

cleanup:                                          ; preds = %for.end, %if.then49, %if.then32, %if.then23, %if.then18, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %previous_value) #5, !dbg !1739
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !1739
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #5, !dbg !1739
  call void @llvm.lifetime.end.p0(i64 8, ptr %elements) #5, !dbg !1739
  call void @llvm.lifetime.end.p0(i64 8, ptr %outer_elements) #5, !dbg !1739
  call void @llvm.lifetime.end.p0(i64 4, ptr %outer_element_count) #5, !dbg !1739
  %50 = load i32, ptr %retval, align 4, !dbg !1739
  ret i32 %50, !dbg !1739
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_ns_sort_list(ptr noundef %elements, i32 noundef %count, i32 noundef %index, i8 noundef zeroext %sort_direction) #0 align 16 !dbg !1740 {
entry:
  %elements.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %sort_direction.addr = alloca i8, align 1
  %obj_desc1 = alloca ptr, align 8
  %obj_desc2 = alloca ptr, align 8
  %temp_obj = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %elements, ptr %elements.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %elements.addr, metadata !1744, metadata !DIExpression()), !dbg !1753
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1745, metadata !DIExpression()), !dbg !1754
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !1746, metadata !DIExpression()), !dbg !1755
  store i8 %sort_direction, ptr %sort_direction.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %sort_direction.addr, metadata !1747, metadata !DIExpression()), !dbg !1756
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc1) #5, !dbg !1757
  call void @llvm.dbg.declare(metadata ptr %obj_desc1, metadata !1748, metadata !DIExpression()), !dbg !1758
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc2) #5, !dbg !1759
  call void @llvm.dbg.declare(metadata ptr %obj_desc2, metadata !1749, metadata !DIExpression()), !dbg !1760
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp_obj) #5, !dbg !1761
  call void @llvm.dbg.declare(metadata ptr %temp_obj, metadata !1750, metadata !DIExpression()), !dbg !1762
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !1763
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1751, metadata !DIExpression()), !dbg !1764
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5, !dbg !1765
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1752, metadata !DIExpression()), !dbg !1766
  store i32 1, ptr %i, align 4, !dbg !1767
  br label %for.cond, !dbg !1769

for.cond:                                         ; preds = %for.inc36, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1770
  %1 = load i32, ptr %count.addr, align 4, !dbg !1772
  %cmp = icmp ult i32 %0, %1, !dbg !1773
  br i1 %cmp, label %for.body, label %for.end37, !dbg !1774

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %count.addr, align 4, !dbg !1775
  %sub = sub i32 %2, 1, !dbg !1778
  store i32 %sub, ptr %j, align 4, !dbg !1779
  br label %for.cond1, !dbg !1780

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4, !dbg !1781
  %4 = load i32, ptr %i, align 4, !dbg !1783
  %cmp2 = icmp uge i32 %3, %4, !dbg !1784
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !1785

for.body3:                                        ; preds = %for.cond1
  %5 = load ptr, ptr %elements.addr, align 8, !dbg !1786
  %6 = load i32, ptr %j, align 4, !dbg !1788
  %sub4 = sub i32 %6, 1, !dbg !1789
  %idxprom = zext i32 %sub4 to i64, !dbg !1786
  %arrayidx = getelementptr ptr, ptr %5, i64 %idxprom, !dbg !1786
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !1786
  %elements5 = getelementptr inbounds %struct.acpi_object_package, ptr %7, i32 0, i32 6, !dbg !1790
  %8 = load ptr, ptr %elements5, align 8, !dbg !1790
  %9 = load i32, ptr %index.addr, align 4, !dbg !1791
  %idxprom6 = zext i32 %9 to i64, !dbg !1786
  %arrayidx7 = getelementptr ptr, ptr %8, i64 %idxprom6, !dbg !1786
  %10 = load ptr, ptr %arrayidx7, align 8, !dbg !1786
  store ptr %10, ptr %obj_desc1, align 8, !dbg !1792
  %11 = load ptr, ptr %elements.addr, align 8, !dbg !1793
  %12 = load i32, ptr %j, align 4, !dbg !1794
  %idxprom8 = zext i32 %12 to i64, !dbg !1793
  %arrayidx9 = getelementptr ptr, ptr %11, i64 %idxprom8, !dbg !1793
  %13 = load ptr, ptr %arrayidx9, align 8, !dbg !1793
  %elements10 = getelementptr inbounds %struct.acpi_object_package, ptr %13, i32 0, i32 6, !dbg !1795
  %14 = load ptr, ptr %elements10, align 8, !dbg !1795
  %15 = load i32, ptr %index.addr, align 4, !dbg !1796
  %idxprom11 = zext i32 %15 to i64, !dbg !1793
  %arrayidx12 = getelementptr ptr, ptr %14, i64 %idxprom11, !dbg !1793
  %16 = load ptr, ptr %arrayidx12, align 8, !dbg !1793
  store ptr %16, ptr %obj_desc2, align 8, !dbg !1797
  %17 = load i8, ptr %sort_direction.addr, align 1, !dbg !1798
  %conv = zext i8 %17 to i32, !dbg !1798
  %cmp13 = icmp eq i32 %conv, 0, !dbg !1800
  br i1 %cmp13, label %land.lhs.true, label %lor.lhs.false, !dbg !1801

land.lhs.true:                                    ; preds = %for.body3
  %18 = load ptr, ptr %obj_desc1, align 8, !dbg !1802
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %18, i32 0, i32 6, !dbg !1803
  %19 = load i64, ptr %value, align 8, !dbg !1803
  %20 = load ptr, ptr %obj_desc2, align 8, !dbg !1804
  %value15 = getelementptr inbounds %struct.acpi_object_integer, ptr %20, i32 0, i32 6, !dbg !1805
  %21 = load i64, ptr %value15, align 8, !dbg !1805
  %cmp16 = icmp ugt i64 %19, %21, !dbg !1806
  br i1 %cmp16, label %if.then, label %lor.lhs.false, !dbg !1807

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body3
  %22 = load i8, ptr %sort_direction.addr, align 1, !dbg !1808
  %conv18 = zext i8 %22 to i32, !dbg !1808
  %cmp19 = icmp eq i32 %conv18, 1, !dbg !1809
  br i1 %cmp19, label %land.lhs.true21, label %if.end, !dbg !1810

land.lhs.true21:                                  ; preds = %lor.lhs.false
  %23 = load ptr, ptr %obj_desc1, align 8, !dbg !1811
  %value22 = getelementptr inbounds %struct.acpi_object_integer, ptr %23, i32 0, i32 6, !dbg !1812
  %24 = load i64, ptr %value22, align 8, !dbg !1812
  %25 = load ptr, ptr %obj_desc2, align 8, !dbg !1813
  %value23 = getelementptr inbounds %struct.acpi_object_integer, ptr %25, i32 0, i32 6, !dbg !1814
  %26 = load i64, ptr %value23, align 8, !dbg !1814
  %cmp24 = icmp ult i64 %24, %26, !dbg !1815
  br i1 %cmp24, label %if.then, label %if.end, !dbg !1816

if.then:                                          ; preds = %land.lhs.true21, %land.lhs.true
  %27 = load ptr, ptr %elements.addr, align 8, !dbg !1817
  %28 = load i32, ptr %j, align 4, !dbg !1819
  %sub26 = sub i32 %28, 1, !dbg !1820
  %idxprom27 = zext i32 %sub26 to i64, !dbg !1817
  %arrayidx28 = getelementptr ptr, ptr %27, i64 %idxprom27, !dbg !1817
  %29 = load ptr, ptr %arrayidx28, align 8, !dbg !1817
  store ptr %29, ptr %temp_obj, align 8, !dbg !1821
  %30 = load ptr, ptr %elements.addr, align 8, !dbg !1822
  %31 = load i32, ptr %j, align 4, !dbg !1823
  %idxprom29 = zext i32 %31 to i64, !dbg !1822
  %arrayidx30 = getelementptr ptr, ptr %30, i64 %idxprom29, !dbg !1822
  %32 = load ptr, ptr %arrayidx30, align 8, !dbg !1822
  %33 = load ptr, ptr %elements.addr, align 8, !dbg !1824
  %34 = load i32, ptr %j, align 4, !dbg !1825
  %sub31 = sub i32 %34, 1, !dbg !1826
  %idxprom32 = zext i32 %sub31 to i64, !dbg !1824
  %arrayidx33 = getelementptr ptr, ptr %33, i64 %idxprom32, !dbg !1824
  store ptr %32, ptr %arrayidx33, align 8, !dbg !1827
  %35 = load ptr, ptr %temp_obj, align 8, !dbg !1828
  %36 = load ptr, ptr %elements.addr, align 8, !dbg !1829
  %37 = load i32, ptr %j, align 4, !dbg !1830
  %idxprom34 = zext i32 %37 to i64, !dbg !1829
  %arrayidx35 = getelementptr ptr, ptr %36, i64 %idxprom34, !dbg !1829
  store ptr %35, ptr %arrayidx35, align 8, !dbg !1831
  br label %if.end, !dbg !1832

if.end:                                           ; preds = %if.then, %land.lhs.true21, %lor.lhs.false
  br label %for.inc, !dbg !1833

for.inc:                                          ; preds = %if.end
  %38 = load i32, ptr %j, align 4, !dbg !1834
  %dec = add i32 %38, -1, !dbg !1834
  store i32 %dec, ptr %j, align 4, !dbg !1834
  br label %for.cond1, !dbg !1835, !llvm.loop !1836

for.end:                                          ; preds = %for.cond1
  br label %for.inc36, !dbg !1838

for.inc36:                                        ; preds = %for.end
  %39 = load i32, ptr %i, align 4, !dbg !1839
  %inc = add i32 %39, 1, !dbg !1839
  store i32 %inc, ptr %i, align 4, !dbg !1839
  br label %for.cond, !dbg !1840, !llvm.loop !1841

for.end37:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5, !dbg !1843
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !1843
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp_obj) #5, !dbg !1843
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc2) #5, !dbg !1843
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc1) #5, !dbg !1843
  ret void, !dbg !1843
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1844 dso_local void @acpi_ut_predefined_warning(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_ns_remove_element(ptr noundef %obj_desc, i32 noundef %index) #0 align 16 !dbg !1848 {
entry:
  %obj_desc.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %source = alloca ptr, align 8
  %dest = alloca ptr, align 8
  %count = alloca i32, align 4
  %new_count = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1852, metadata !DIExpression()), !dbg !1859
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !1853, metadata !DIExpression()), !dbg !1860
  call void @llvm.lifetime.start.p0(i64 8, ptr %source) #5, !dbg !1861
  call void @llvm.dbg.declare(metadata ptr %source, metadata !1854, metadata !DIExpression()), !dbg !1862
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest) #5, !dbg !1863
  call void @llvm.dbg.declare(metadata ptr %dest, metadata !1855, metadata !DIExpression()), !dbg !1864
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #5, !dbg !1865
  call void @llvm.dbg.declare(metadata ptr %count, metadata !1856, metadata !DIExpression()), !dbg !1866
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_count) #5, !dbg !1867
  call void @llvm.dbg.declare(metadata ptr %new_count, metadata !1857, metadata !DIExpression()), !dbg !1868
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !1869
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1858, metadata !DIExpression()), !dbg !1870
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1871
  %count1 = getelementptr inbounds %struct.acpi_object_package, ptr %0, i32 0, i32 9, !dbg !1872
  %1 = load i32, ptr %count1, align 4, !dbg !1872
  store i32 %1, ptr %count, align 4, !dbg !1873
  %2 = load i32, ptr %count, align 4, !dbg !1874
  %sub = sub i32 %2, 1, !dbg !1875
  store i32 %sub, ptr %new_count, align 4, !dbg !1876
  %3 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1877
  %elements = getelementptr inbounds %struct.acpi_object_package, ptr %3, i32 0, i32 6, !dbg !1878
  %4 = load ptr, ptr %elements, align 8, !dbg !1878
  store ptr %4, ptr %source, align 8, !dbg !1879
  %5 = load ptr, ptr %source, align 8, !dbg !1880
  store ptr %5, ptr %dest, align 8, !dbg !1881
  store i32 0, ptr %i, align 4, !dbg !1882
  br label %for.cond, !dbg !1884

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %i, align 4, !dbg !1885
  %7 = load i32, ptr %count, align 4, !dbg !1887
  %cmp = icmp ult i32 %6, %7, !dbg !1888
  br i1 %cmp, label %for.body, label %for.end, !dbg !1889

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %i, align 4, !dbg !1890
  %9 = load i32, ptr %index.addr, align 4, !dbg !1893
  %cmp2 = icmp eq i32 %8, %9, !dbg !1894
  br i1 %cmp2, label %if.then, label %if.else, !dbg !1895

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %source, align 8, !dbg !1896
  %11 = load ptr, ptr %10, align 8, !dbg !1898
  call void @acpi_ut_remove_reference(ptr noundef %11) #6, !dbg !1899
  %12 = load ptr, ptr %source, align 8, !dbg !1900
  %13 = load ptr, ptr %12, align 8, !dbg !1901
  call void @acpi_ut_remove_reference(ptr noundef %13) #6, !dbg !1902
  br label %if.end, !dbg !1903

if.else:                                          ; preds = %for.body
  %14 = load ptr, ptr %source, align 8, !dbg !1904
  %15 = load ptr, ptr %14, align 8, !dbg !1906
  %16 = load ptr, ptr %dest, align 8, !dbg !1907
  store ptr %15, ptr %16, align 8, !dbg !1908
  %17 = load ptr, ptr %dest, align 8, !dbg !1909
  %incdec.ptr = getelementptr ptr, ptr %17, i32 1, !dbg !1909
  store ptr %incdec.ptr, ptr %dest, align 8, !dbg !1909
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load ptr, ptr %source, align 8, !dbg !1910
  %incdec.ptr3 = getelementptr ptr, ptr %18, i32 1, !dbg !1910
  store ptr %incdec.ptr3, ptr %source, align 8, !dbg !1910
  br label %for.inc, !dbg !1911

for.inc:                                          ; preds = %if.end
  %19 = load i32, ptr %i, align 4, !dbg !1912
  %inc = add i32 %19, 1, !dbg !1912
  store i32 %inc, ptr %i, align 4, !dbg !1912
  br label %for.cond, !dbg !1913, !llvm.loop !1914

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %dest, align 8, !dbg !1916
  store ptr null, ptr %20, align 8, !dbg !1917
  %21 = load i32, ptr %new_count, align 4, !dbg !1918
  %22 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1919
  %count4 = getelementptr inbounds %struct.acpi_object_package, ptr %22, i32 0, i32 9, !dbg !1920
  store i32 %21, ptr %count4, align 4, !dbg !1921
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_count) #5, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #5, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest) #5, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 8, ptr %source) #5, !dbg !1922
  ret void, !dbg !1922
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1923 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1926 dso_local ptr @acpi_ut_create_buffer_object(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1930 dso_local ptr @acpi_ut_create_string_object(i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__toupper(i8 noundef zeroext %c) #4 align 16 !dbg !1931 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1936, metadata !DIExpression()), !dbg !1937
  %0 = load i8, ptr %c.addr, align 1, !dbg !1938
  %conv = zext i8 %0 to i32, !dbg !1938
  %idxprom = sext i32 %conv to i64, !dbg !1938
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !1938
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1938
  %conv1 = zext i8 %1 to i32, !dbg !1938
  %and = and i32 %conv1, 2, !dbg !1938
  %cmp = icmp ne i32 %and, 0, !dbg !1938
  br i1 %cmp, label %if.then, label %if.end, !dbg !1940

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %c.addr, align 1, !dbg !1941
  %conv3 = zext i8 %2 to i32, !dbg !1941
  %sub = sub i32 %conv3, 32, !dbg !1941
  %conv4 = trunc i32 %sub to i8, !dbg !1941
  store i8 %conv4, ptr %c.addr, align 1, !dbg !1941
  br label %if.end, !dbg !1942

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, ptr %c.addr, align 1, !dbg !1943
  ret i8 %3, !dbg !1944
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1945 dso_local i32 @acpi_ns_get_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!921, !922, !923, !924, !925, !926, !927, !928}
!llvm.ident = !{!929}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_ns_repairable_names", scope: !2, file: !3, line: 114, type: !79, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.nsrepair2.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22nsrepair2\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/nsrepair2.ll drivers/acpi/acpica/nsrepair2.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !20, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsrepair2.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "87498787225ef4cfff8b0fe261b59612")
!4 = !{!5, !11, !14, !15, !6, !17, !18, !19}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !12, line: 42, baseType: !13)
!12 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!13 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !16, line: 421, baseType: !6)
!16 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !{!0, !21, !26, !31, !36, !41, !47, !52, !57, !62, !64, !69, !74}
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !3, line: 227, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 152, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 19)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !3, line: 432, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 400, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 50)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !3, line: 443, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 440, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 55)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !3, line: 470, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 104, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 13)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 80, elements: !45)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!45 = !{!46}
!46 = !DISubrange(count: 10)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !3, line: 273, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 376, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 47)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !3, line: 511, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 320, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 40)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !3, line: 617, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 408, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 51)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !3, line: 666, type: !38, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !3, line: 684, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 448, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 56)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !3, line: 729, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 48, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 6)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !3, line: 737, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 136, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 17)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 1280, elements: !45)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_repair_info", file: !3, line: 27, size: 128, elements: !82)
!82 = !{!83, !87}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !81, file: !3, line: 28, baseType: !84, size: 32)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 32, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 4)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "repair_function", scope: !81, file: !3, line: 29, baseType: !88, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_repair_function", file: !3, line: 23, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{!15, !92, !170}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !94, line: 152, size: 704, elements: !95)
!94 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!95 = !{!96, !860, !862, !863, !864, !865, !866, !912, !913, !914, !915, !916, !917, !918, !919, !920}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !93, file: !94, line: 155, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !99, line: 133, size: 384, elements: !100)
!99 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!100 = !{!101, !847, !848, !849, !850, !856, !857, !858, !859}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !98, file: !99, line: 134, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !104, line: 369, size: 576, elements: !105)
!104 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!105 = !{!106, !119, !135, !146, !160, !174, !183, !496, !513, !529, !542, !620, !632, !646, !656, !674, !696, !715, !734, !753, !766, !793, !810, !823, !837, !846}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !103, file: !104, line: 370, baseType: !107, size: 128)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !104, line: 73, size: 128, elements: !108)
!108 = !{!109, !110, !113, !114, !118}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !107, file: !104, line: 74, baseType: !102, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !107, file: !104, line: 74, baseType: !111, size: 8, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 17, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !19)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !107, file: !104, line: 74, baseType: !111, size: 8, offset: 72)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !107, file: !104, line: 74, baseType: !115, size: 16, offset: 80)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !7, line: 19, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !9, line: 24, baseType: !117)
!117 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !107, file: !104, line: 74, baseType: !111, size: 8, offset: 96)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !103, file: !104, line: 371, baseType: !120, size: 192)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !104, line: 76, size: 192, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127, !131}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !120, file: !104, line: 77, baseType: !102, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !120, file: !104, line: 77, baseType: !111, size: 8, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !120, file: !104, line: 77, baseType: !111, size: 8, offset: 72)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !120, file: !104, line: 77, baseType: !115, size: 16, offset: 80)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !104, line: 77, baseType: !111, size: 8, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !120, file: !104, line: 77, baseType: !128, size: 24, offset: 104)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 24, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 3)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !120, file: !104, line: 78, baseType: !132, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !7, line: 23, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !9, line: 31, baseType: !134)
!134 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !103, file: !104, line: 372, baseType: !136, size: 256)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !104, line: 93, size: 256, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143, !145}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !136, file: !104, line: 94, baseType: !102, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !136, file: !104, line: 94, baseType: !111, size: 8, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !136, file: !104, line: 94, baseType: !111, size: 8, offset: 72)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !136, file: !104, line: 94, baseType: !115, size: 16, offset: 80)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !136, file: !104, line: 94, baseType: !111, size: 8, offset: 96)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !136, file: !104, line: 94, baseType: !144, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !136, file: !104, line: 94, baseType: !6, size: 32, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !103, file: !104, line: 373, baseType: !147, size: 384)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !104, line: 97, size: 384, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !156, !157, !158, !159}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !147, file: !104, line: 98, baseType: !102, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !147, file: !104, line: 98, baseType: !111, size: 8, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !104, line: 98, baseType: !111, size: 8, offset: 72)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !147, file: !104, line: 98, baseType: !115, size: 16, offset: 80)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !104, line: 98, baseType: !111, size: 8, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !147, file: !104, line: 98, baseType: !155, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !147, file: !104, line: 98, baseType: !6, size: 32, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !147, file: !104, line: 99, baseType: !6, size: 32, offset: 224)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !147, file: !104, line: 100, baseType: !155, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !147, file: !104, line: 101, baseType: !97, size: 64, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !103, file: !104, line: 374, baseType: !161, size: 384)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !104, line: 104, size: 384, elements: !162)
!162 = !{!163, !164, !165, !166, !167, !168, !169, !171, !172, !173}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !161, file: !104, line: 105, baseType: !102, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !161, file: !104, line: 105, baseType: !111, size: 8, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !161, file: !104, line: 105, baseType: !111, size: 8, offset: 72)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !161, file: !104, line: 105, baseType: !115, size: 16, offset: 80)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !161, file: !104, line: 105, baseType: !111, size: 8, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !161, file: !104, line: 105, baseType: !97, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !161, file: !104, line: 106, baseType: !170, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !161, file: !104, line: 107, baseType: !155, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !161, file: !104, line: 108, baseType: !6, size: 32, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !161, file: !104, line: 109, baseType: !6, size: 32, offset: 352)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !103, file: !104, line: 375, baseType: !175, size: 192)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !104, line: 118, size: 192, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !175, file: !104, line: 119, baseType: !102, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !175, file: !104, line: 119, baseType: !111, size: 8, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !175, file: !104, line: 119, baseType: !111, size: 8, offset: 72)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !175, file: !104, line: 119, baseType: !115, size: 16, offset: 80)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !175, file: !104, line: 119, baseType: !111, size: 8, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !175, file: !104, line: 119, baseType: !14, size: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !103, file: !104, line: 376, baseType: !184, size: 448)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !104, line: 144, size: 448, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !493, !494, !495}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !184, file: !104, line: 145, baseType: !102, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !184, file: !104, line: 145, baseType: !111, size: 8, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !184, file: !104, line: 145, baseType: !111, size: 8, offset: 72)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !184, file: !104, line: 145, baseType: !115, size: 16, offset: 80)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !184, file: !104, line: 145, baseType: !111, size: 8, offset: 96)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !184, file: !104, line: 145, baseType: !111, size: 8, offset: 104)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !184, file: !104, line: 146, baseType: !111, size: 8, offset: 112)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !184, file: !104, line: 147, baseType: !111, size: 8, offset: 120)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !184, file: !104, line: 148, baseType: !102, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !184, file: !104, line: 149, baseType: !102, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !184, file: !104, line: 150, baseType: !155, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !184, file: !104, line: 154, baseType: !198, size: 64, offset: 320)
!198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !184, file: !104, line: 151, size: 64, elements: !199)
!199 = !{!200, !492}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !198, file: !104, line: 152, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !99, line: 248, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!15, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !94, line: 37, size: 9024, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !438, !439, !440, !441, !442, !446, !448, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !475, !476, !477, !478, !479, !480, !481, !482, !484, !490}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !94, line: 38, baseType: !205, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !206, file: !94, line: 39, baseType: !111, size: 8, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !206, file: !94, line: 40, baseType: !111, size: 8, offset: 72)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !206, file: !94, line: 41, baseType: !115, size: 16, offset: 80)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !206, file: !94, line: 42, baseType: !111, size: 8, offset: 96)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !206, file: !94, line: 43, baseType: !111, size: 8, offset: 104)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !206, file: !94, line: 44, baseType: !111, size: 8, offset: 112)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !206, file: !94, line: 45, baseType: !216, size: 16, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !16, line: 445, baseType: !115)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !206, file: !94, line: 46, baseType: !111, size: 8, offset: 144)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !206, file: !94, line: 47, baseType: !111, size: 8, offset: 152)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !206, file: !94, line: 48, baseType: !111, size: 8, offset: 160)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !206, file: !94, line: 49, baseType: !111, size: 8, offset: 168)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !206, file: !94, line: 50, baseType: !111, size: 8, offset: 176)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !206, file: !94, line: 51, baseType: !111, size: 8, offset: 184)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !206, file: !94, line: 52, baseType: !111, size: 8, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !206, file: !94, line: 53, baseType: !111, size: 8, offset: 200)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !206, file: !94, line: 54, baseType: !155, size: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !206, file: !94, line: 55, baseType: !6, size: 32, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !206, file: !94, line: 56, baseType: !6, size: 32, offset: 352)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !206, file: !94, line: 57, baseType: !6, size: 32, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !206, file: !94, line: 58, baseType: !6, size: 32, offset: 416)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !206, file: !94, line: 60, baseType: !231, size: 640, offset: 448)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !99, line: 909, size: 640, elements: !232)
!232 = !{!233, !234, !235, !236, !237, !238, !319, !320, !436, !437}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !231, file: !99, line: 910, baseType: !155, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !231, file: !99, line: 911, baseType: !155, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !231, file: !99, line: 912, baseType: !155, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !231, file: !99, line: 913, baseType: !155, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !231, file: !99, line: 914, baseType: !155, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !231, file: !99, line: 915, baseType: !239, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !99, line: 891, size: 1600, elements: !241)
!241 = !{!242, !262, !278}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !240, file: !99, line: 892, baseType: !243, size: 448)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !99, line: 844, size: 448, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !261}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !243, file: !99, line: 845, baseType: !239, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !243, file: !99, line: 845, baseType: !111, size: 8, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !243, file: !99, line: 845, baseType: !111, size: 8, offset: 72)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !243, file: !99, line: 845, baseType: !115, size: 16, offset: 80)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !243, file: !99, line: 845, baseType: !155, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !243, file: !99, line: 845, baseType: !239, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !243, file: !99, line: 845, baseType: !97, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !243, file: !99, line: 845, baseType: !253, size: 64, offset: 320)
!253 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !99, line: 732, size: 64, elements: !254)
!254 = !{!255, !256, !257, !258, !259, !260}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !253, file: !99, line: 733, baseType: !132, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !253, file: !99, line: 734, baseType: !6, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !253, file: !99, line: 735, baseType: !144, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !253, file: !99, line: 736, baseType: !155, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !253, file: !99, line: 737, baseType: !144, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !253, file: !99, line: 738, baseType: !239, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !243, file: !99, line: 845, baseType: !111, size: 8, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !240, file: !99, line: 893, baseType: !263, size: 640)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !99, line: 851, size: 640, elements: !264)
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !263, file: !99, line: 852, baseType: !239, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !263, file: !99, line: 852, baseType: !111, size: 8, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !263, file: !99, line: 852, baseType: !111, size: 8, offset: 72)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !263, file: !99, line: 852, baseType: !115, size: 16, offset: 80)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !263, file: !99, line: 852, baseType: !155, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !263, file: !99, line: 852, baseType: !239, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !263, file: !99, line: 852, baseType: !97, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !263, file: !99, line: 852, baseType: !253, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !263, file: !99, line: 852, baseType: !111, size: 8, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !263, file: !99, line: 852, baseType: !144, size: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !263, file: !99, line: 853, baseType: !155, size: 64, offset: 512)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !263, file: !99, line: 854, baseType: !6, size: 32, offset: 576)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !263, file: !99, line: 855, baseType: !6, size: 32, offset: 608)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !240, file: !99, line: 894, baseType: !279, size: 1600)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !99, line: 862, size: 1600, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !279, file: !99, line: 863, baseType: !239, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !279, file: !99, line: 863, baseType: !111, size: 8, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !99, line: 863, baseType: !111, size: 8, offset: 72)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !279, file: !99, line: 863, baseType: !115, size: 16, offset: 80)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !279, file: !99, line: 863, baseType: !155, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !99, line: 863, baseType: !239, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !279, file: !99, line: 863, baseType: !97, size: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !279, file: !99, line: 863, baseType: !253, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !279, file: !99, line: 863, baseType: !111, size: 8, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !279, file: !99, line: 863, baseType: !239, size: 64, offset: 448)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !279, file: !99, line: 864, baseType: !239, size: 64, offset: 512)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !279, file: !99, line: 865, baseType: !144, size: 64, offset: 576)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !279, file: !99, line: 866, baseType: !111, size: 8, offset: 640)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !279, file: !99, line: 867, baseType: !144, size: 64, offset: 704)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !279, file: !99, line: 868, baseType: !144, size: 64, offset: 768)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !279, file: !99, line: 869, baseType: !144, size: 64, offset: 832)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !279, file: !99, line: 870, baseType: !84, size: 32, offset: 896)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !279, file: !99, line: 871, baseType: !6, size: 32, offset: 928)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !279, file: !99, line: 872, baseType: !6, size: 32, offset: 960)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !279, file: !99, line: 873, baseType: !6, size: 32, offset: 992)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !279, file: !99, line: 874, baseType: !6, size: 32, offset: 1024)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !279, file: !99, line: 875, baseType: !6, size: 32, offset: 1056)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !279, file: !99, line: 876, baseType: !6, size: 32, offset: 1088)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !279, file: !99, line: 877, baseType: !6, size: 32, offset: 1120)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !279, file: !99, line: 878, baseType: !6, size: 32, offset: 1152)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !279, file: !99, line: 879, baseType: !6, size: 32, offset: 1184)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !279, file: !99, line: 880, baseType: !6, size: 32, offset: 1216)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !279, file: !99, line: 881, baseType: !6, size: 32, offset: 1248)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !279, file: !99, line: 882, baseType: !6, size: 32, offset: 1280)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !279, file: !99, line: 883, baseType: !6, size: 32, offset: 1312)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !279, file: !99, line: 884, baseType: !115, size: 16, offset: 1344)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !279, file: !99, line: 885, baseType: !111, size: 8, offset: 1360)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !279, file: !99, line: 886, baseType: !111, size: 8, offset: 1368)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !279, file: !99, line: 887, baseType: !111, size: 8, offset: 1376)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !279, file: !99, line: 888, baseType: !316, size: 160, offset: 1384)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 160, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 20)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !231, file: !99, line: 916, baseType: !97, size: 64, offset: 384)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !231, file: !99, line: 917, baseType: !321, size: 64, offset: 448)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !99, line: 679, size: 640, elements: !323)
!323 = !{!324, !332, !345, !354, !363, !376, !390, !402, !414}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !322, file: !99, line: 680, baseType: !325, size: 128)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !99, line: 575, size: 128, elements: !326)
!326 = !{!327, !328, !329, !330, !331}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !325, file: !99, line: 576, baseType: !14, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !325, file: !99, line: 576, baseType: !111, size: 8, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !325, file: !99, line: 576, baseType: !111, size: 8, offset: 72)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !325, file: !99, line: 576, baseType: !115, size: 16, offset: 80)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !325, file: !99, line: 576, baseType: !115, size: 16, offset: 96)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !322, file: !99, line: 681, baseType: !333, size: 384)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !99, line: 604, size: 384, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342, !343, !344}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !99, line: 605, baseType: !14, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !333, file: !99, line: 605, baseType: !111, size: 8, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !99, line: 605, baseType: !111, size: 8, offset: 72)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !333, file: !99, line: 605, baseType: !115, size: 16, offset: 80)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !333, file: !99, line: 605, baseType: !115, size: 16, offset: 96)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !333, file: !99, line: 606, baseType: !115, size: 16, offset: 112)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !333, file: !99, line: 607, baseType: !239, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !333, file: !99, line: 608, baseType: !155, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !333, file: !99, line: 609, baseType: !155, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !333, file: !99, line: 610, baseType: !132, size: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !322, file: !99, line: 682, baseType: !346, size: 192)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !99, line: 582, size: 192, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !99, line: 583, baseType: !14, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !346, file: !99, line: 583, baseType: !111, size: 8, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !99, line: 583, baseType: !111, size: 8, offset: 72)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !346, file: !99, line: 583, baseType: !115, size: 16, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !99, line: 583, baseType: !115, size: 16, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !346, file: !99, line: 584, baseType: !102, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !322, file: !99, line: 683, baseType: !355, size: 192)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !99, line: 616, size: 192, elements: !356)
!356 = !{!357, !358, !359, !360, !361, !362}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !355, file: !99, line: 617, baseType: !14, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !355, file: !99, line: 617, baseType: !111, size: 8, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !355, file: !99, line: 617, baseType: !111, size: 8, offset: 72)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !355, file: !99, line: 617, baseType: !115, size: 16, offset: 80)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !355, file: !99, line: 617, baseType: !115, size: 16, offset: 96)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !355, file: !99, line: 618, baseType: !97, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !322, file: !99, line: 684, baseType: !364, size: 448)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !99, line: 621, size: 448, elements: !365)
!365 = !{!366, !367, !368, !369, !370, !371, !372, !373, !374, !375}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !364, file: !99, line: 622, baseType: !14, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !364, file: !99, line: 622, baseType: !111, size: 8, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !364, file: !99, line: 622, baseType: !111, size: 8, offset: 72)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !364, file: !99, line: 622, baseType: !115, size: 16, offset: 80)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !364, file: !99, line: 622, baseType: !115, size: 16, offset: 96)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !364, file: !99, line: 623, baseType: !6, size: 32, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !364, file: !99, line: 624, baseType: !239, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !364, file: !99, line: 625, baseType: !155, size: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !364, file: !99, line: 626, baseType: !155, size: 64, offset: 320)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !364, file: !99, line: 627, baseType: !6, size: 32, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !322, file: !99, line: 685, baseType: !377, size: 512)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !99, line: 590, size: 512, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !99, line: 591, baseType: !14, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !377, file: !99, line: 591, baseType: !111, size: 8, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !377, file: !99, line: 591, baseType: !111, size: 8, offset: 72)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !377, file: !99, line: 591, baseType: !115, size: 16, offset: 80)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !377, file: !99, line: 591, baseType: !115, size: 16, offset: 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !377, file: !99, line: 592, baseType: !6, size: 32, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !377, file: !99, line: 593, baseType: !102, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !377, file: !99, line: 594, baseType: !102, size: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !377, file: !99, line: 595, baseType: !205, size: 64, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !377, file: !99, line: 596, baseType: !14, size: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !377, file: !99, line: 597, baseType: !6, size: 32, offset: 448)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !322, file: !99, line: 686, baseType: !391, size: 320)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !99, line: 634, size: 320, elements: !392)
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400, !401}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !391, file: !99, line: 635, baseType: !14, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !391, file: !99, line: 635, baseType: !111, size: 8, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !391, file: !99, line: 635, baseType: !111, size: 8, offset: 72)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !391, file: !99, line: 635, baseType: !115, size: 16, offset: 80)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !391, file: !99, line: 635, baseType: !115, size: 16, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !391, file: !99, line: 636, baseType: !111, size: 8, offset: 112)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !391, file: !99, line: 637, baseType: !205, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !391, file: !99, line: 638, baseType: !102, size: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !391, file: !99, line: 639, baseType: !132, size: 64, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !322, file: !99, line: 687, baseType: !403, size: 640)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !99, line: 646, size: 640, elements: !404)
!404 = !{!405, !406, !407, !408, !409, !410}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !403, file: !99, line: 647, baseType: !14, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !403, file: !99, line: 647, baseType: !111, size: 8, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !403, file: !99, line: 647, baseType: !111, size: 8, offset: 72)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !403, file: !99, line: 647, baseType: !115, size: 16, offset: 80)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !403, file: !99, line: 647, baseType: !115, size: 16, offset: 96)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !403, file: !99, line: 648, baseType: !411, size: 512, offset: 128)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 512, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 8)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !322, file: !99, line: 688, baseType: !415, size: 320)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !99, line: 669, size: 320, elements: !416)
!416 = !{!417, !418, !419, !420, !421, !422, !423, !424, !425}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !415, file: !99, line: 670, baseType: !14, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !415, file: !99, line: 670, baseType: !111, size: 8, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !415, file: !99, line: 670, baseType: !111, size: 8, offset: 72)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !415, file: !99, line: 670, baseType: !115, size: 16, offset: 80)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !415, file: !99, line: 670, baseType: !115, size: 16, offset: 96)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !415, file: !99, line: 671, baseType: !111, size: 8, offset: 112)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !415, file: !99, line: 672, baseType: !97, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !415, file: !99, line: 673, baseType: !102, size: 64, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !415, file: !99, line: 674, baseType: !426, size: 64, offset: 256)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !99, line: 660, size: 128, elements: !428)
!428 = !{!429, !435}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !427, file: !99, line: 661, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !16, line: 1061, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !434, !6, !14}
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !16, line: 424, baseType: !14)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !427, file: !99, line: 662, baseType: !14, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !231, file: !99, line: 918, baseType: !239, size: 64, offset: 512)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !231, file: !99, line: 919, baseType: !6, size: 32, offset: 576)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !206, file: !94, line: 61, baseType: !6, size: 32, offset: 1088)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !206, file: !94, line: 62, baseType: !6, size: 32, offset: 1120)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !206, file: !94, line: 63, baseType: !115, size: 16, offset: 1152)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !206, file: !94, line: 64, baseType: !111, size: 8, offset: 1168)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !206, file: !94, line: 66, baseType: !443, size: 2688, offset: 1216)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 2688, elements: !444)
!444 = !{!445}
!445 = !DISubrange(count: 7)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !206, file: !94, line: 67, baseType: !447, size: 3072, offset: 3904)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 3072, elements: !412)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !206, file: !94, line: 68, baseType: !449, size: 576, offset: 6976)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 576, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 9)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !206, file: !94, line: 69, baseType: !170, size: 64, offset: 7552)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !206, file: !94, line: 71, baseType: !155, size: 64, offset: 7616)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !206, file: !94, line: 72, baseType: !170, size: 64, offset: 7680)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !206, file: !94, line: 73, baseType: !321, size: 64, offset: 7744)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !206, file: !94, line: 74, baseType: !97, size: 64, offset: 7808)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !206, file: !94, line: 75, baseType: !102, size: 64, offset: 7872)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !206, file: !94, line: 76, baseType: !97, size: 64, offset: 7936)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !206, file: !94, line: 77, baseType: !239, size: 64, offset: 8000)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !206, file: !94, line: 78, baseType: !102, size: 64, offset: 8064)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !206, file: !94, line: 79, baseType: !97, size: 64, offset: 8128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !206, file: !94, line: 80, baseType: !144, size: 64, offset: 8192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !206, file: !94, line: 81, baseType: !239, size: 64, offset: 8256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !206, file: !94, line: 82, baseType: !465, size: 64, offset: 8320)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !99, line: 718, size: 128, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !474}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !467, file: !99, line: 722, baseType: !6, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !467, file: !99, line: 723, baseType: !6, size: 32, offset: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !467, file: !99, line: 724, baseType: !115, size: 16, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !467, file: !99, line: 725, baseType: !111, size: 8, offset: 80)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !467, file: !99, line: 726, baseType: !111, size: 8, offset: 88)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !467, file: !99, line: 727, baseType: !111, size: 8, offset: 96)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !206, file: !94, line: 83, baseType: !239, size: 64, offset: 8384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !206, file: !94, line: 84, baseType: !102, size: 64, offset: 8448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !206, file: !94, line: 85, baseType: !321, size: 64, offset: 8512)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !206, file: !94, line: 86, baseType: !102, size: 64, offset: 8576)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !206, file: !94, line: 87, baseType: !321, size: 64, offset: 8640)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !206, file: !94, line: 88, baseType: !239, size: 64, offset: 8704)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !206, file: !94, line: 89, baseType: !239, size: 64, offset: 8768)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !206, file: !94, line: 90, baseType: !483, size: 64, offset: 8832)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !206, file: !94, line: 91, baseType: !485, size: 64, offset: 8896)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !99, line: 652, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!15, !205, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !206, file: !94, line: 92, baseType: !491, size: 64, offset: 8960)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !99, line: 656, baseType: !202)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !198, file: !104, line: 153, baseType: !102, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !184, file: !104, line: 156, baseType: !6, size: 32, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !184, file: !104, line: 157, baseType: !216, size: 16, offset: 416)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !184, file: !104, line: 158, baseType: !111, size: 8, offset: 432)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !103, file: !104, line: 377, baseType: !497, size: 576)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !104, line: 122, size: 576, elements: !498)
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !497, file: !104, line: 123, baseType: !102, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !497, file: !104, line: 123, baseType: !111, size: 8, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !497, file: !104, line: 123, baseType: !111, size: 8, offset: 72)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !497, file: !104, line: 123, baseType: !115, size: 16, offset: 80)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !497, file: !104, line: 123, baseType: !111, size: 8, offset: 96)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !497, file: !104, line: 123, baseType: !111, size: 8, offset: 104)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !497, file: !104, line: 124, baseType: !115, size: 16, offset: 112)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !497, file: !104, line: 125, baseType: !14, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !497, file: !104, line: 126, baseType: !132, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !497, file: !104, line: 127, baseType: !483, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !497, file: !104, line: 128, baseType: !102, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !497, file: !104, line: 129, baseType: !102, size: 64, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !497, file: !104, line: 130, baseType: !97, size: 64, offset: 448)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !497, file: !104, line: 131, baseType: !111, size: 8, offset: 512)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !103, file: !104, line: 378, baseType: !514, size: 512)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !104, line: 134, size: 512, elements: !515)
!515 = !{!516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !527, !528}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !514, file: !104, line: 135, baseType: !102, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !514, file: !104, line: 135, baseType: !111, size: 8, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !514, file: !104, line: 135, baseType: !111, size: 8, offset: 72)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !514, file: !104, line: 135, baseType: !115, size: 16, offset: 80)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !514, file: !104, line: 135, baseType: !111, size: 8, offset: 96)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !514, file: !104, line: 135, baseType: !111, size: 8, offset: 104)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !514, file: !104, line: 136, baseType: !97, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !514, file: !104, line: 137, baseType: !102, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !514, file: !104, line: 138, baseType: !102, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !514, file: !104, line: 139, baseType: !526, size: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !16, line: 129, baseType: !132)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !514, file: !104, line: 140, baseType: !6, size: 32, offset: 384)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !514, file: !104, line: 141, baseType: !14, size: 64, offset: 448)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !103, file: !104, line: 379, baseType: !530, size: 320)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !104, line: 185, size: 320, elements: !531)
!531 = !{!532, !533, !534, !535, !536, !537, !541}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !530, file: !104, line: 186, baseType: !102, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !530, file: !104, line: 186, baseType: !111, size: 8, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !530, file: !104, line: 186, baseType: !111, size: 8, offset: 72)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !530, file: !104, line: 186, baseType: !115, size: 16, offset: 80)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !530, file: !104, line: 186, baseType: !111, size: 8, offset: 96)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !530, file: !104, line: 186, baseType: !538, size: 128, offset: 128)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 128, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 2)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !530, file: !104, line: 186, baseType: !102, size: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !103, file: !104, line: 380, baseType: !543, size: 384)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !104, line: 188, size: 384, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !543, file: !104, line: 189, baseType: !102, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !543, file: !104, line: 189, baseType: !111, size: 8, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !543, file: !104, line: 189, baseType: !111, size: 8, offset: 72)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !543, file: !104, line: 189, baseType: !115, size: 16, offset: 80)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !104, line: 189, baseType: !111, size: 8, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !543, file: !104, line: 190, baseType: !538, size: 128, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !543, file: !104, line: 190, baseType: !102, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !543, file: !104, line: 190, baseType: !553, size: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !99, line: 480, size: 576, elements: !555)
!555 = !{!556, !557, !558, !559, !567, !582, !614, !615, !616, !617, !618, !619}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !554, file: !99, line: 481, baseType: !97, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !554, file: !99, line: 482, baseType: !553, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !554, file: !99, line: 483, baseType: !553, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !554, file: !99, line: 484, baseType: !560, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !99, line: 497, size: 256, elements: !562)
!562 = !{!563, !564, !565, !566}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !561, file: !99, line: 498, baseType: !560, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !561, file: !99, line: 499, baseType: !560, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !561, file: !99, line: 500, baseType: !553, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !561, file: !99, line: 501, baseType: !6, size: 32, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !554, file: !99, line: 485, baseType: !568, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !99, line: 466, size: 320, elements: !570)
!570 = !{!571, !576, !577, !578, !579, !580, !581}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !569, file: !99, line: 467, baseType: !572, size: 128)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !99, line: 459, size: 128, elements: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !572, file: !99, line: 460, baseType: !111, size: 8)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !572, file: !99, line: 461, baseType: !132, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !569, file: !99, line: 468, baseType: !572, size: 128, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !569, file: !99, line: 469, baseType: !115, size: 16, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !569, file: !99, line: 470, baseType: !111, size: 8, offset: 272)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !569, file: !99, line: 471, baseType: !111, size: 8, offset: 280)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !569, file: !99, line: 472, baseType: !111, size: 8, offset: 288)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !569, file: !99, line: 473, baseType: !111, size: 8, offset: 296)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !554, file: !99, line: 486, baseType: !583, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !99, line: 448, size: 192, elements: !585)
!585 = !{!586, !609, !610, !611, !612, !613}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !584, file: !99, line: 449, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !99, line: 438, size: 64, elements: !588)
!588 = !{!589, !590, !603}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !587, file: !99, line: 439, baseType: !97, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !587, file: !99, line: 440, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !99, line: 419, size: 256, elements: !593)
!593 = !{!594, !599, !600, !601, !602}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !592, file: !99, line: 420, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !16, line: 1058, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!6, !434, !6, !14}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !592, file: !99, line: 421, baseType: !14, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !592, file: !99, line: 422, baseType: !97, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !592, file: !99, line: 423, baseType: !111, size: 8, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !592, file: !99, line: 424, baseType: !111, size: 8, offset: 200)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !587, file: !99, line: 441, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !99, line: 429, size: 128, elements: !606)
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !605, file: !99, line: 430, baseType: !97, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !605, file: !99, line: 431, baseType: !604, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !584, file: !99, line: 450, baseType: !568, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !584, file: !99, line: 451, baseType: !111, size: 8, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !584, file: !99, line: 452, baseType: !111, size: 8, offset: 136)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !584, file: !99, line: 453, baseType: !111, size: 8, offset: 144)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !584, file: !99, line: 454, baseType: !111, size: 8, offset: 152)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !554, file: !99, line: 487, baseType: !132, size: 64, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !554, file: !99, line: 488, baseType: !6, size: 32, offset: 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !554, file: !99, line: 489, baseType: !115, size: 16, offset: 480)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !554, file: !99, line: 490, baseType: !115, size: 16, offset: 496)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !554, file: !99, line: 491, baseType: !111, size: 8, offset: 512)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !554, file: !99, line: 492, baseType: !111, size: 8, offset: 520)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !103, file: !104, line: 381, baseType: !621, size: 384)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !104, line: 193, size: 384, elements: !622)
!622 = !{!623, !624, !625, !626, !627, !628, !629, !630, !631}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !621, file: !104, line: 194, baseType: !102, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !621, file: !104, line: 194, baseType: !111, size: 8, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !621, file: !104, line: 194, baseType: !111, size: 8, offset: 72)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !621, file: !104, line: 194, baseType: !115, size: 16, offset: 80)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !621, file: !104, line: 194, baseType: !111, size: 8, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !621, file: !104, line: 194, baseType: !538, size: 128, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !621, file: !104, line: 194, baseType: !102, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !621, file: !104, line: 194, baseType: !6, size: 32, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !621, file: !104, line: 195, baseType: !6, size: 32, offset: 352)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !103, file: !104, line: 382, baseType: !633, size: 384)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !104, line: 198, size: 384, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !640, !641, !642, !643, !644}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !633, file: !104, line: 199, baseType: !102, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !633, file: !104, line: 199, baseType: !111, size: 8, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !633, file: !104, line: 199, baseType: !111, size: 8, offset: 72)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !633, file: !104, line: 199, baseType: !115, size: 16, offset: 80)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !104, line: 199, baseType: !111, size: 8, offset: 96)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !633, file: !104, line: 201, baseType: !111, size: 8, offset: 104)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !633, file: !104, line: 202, baseType: !111, size: 8, offset: 112)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !633, file: !104, line: 203, baseType: !538, size: 128, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !633, file: !104, line: 203, baseType: !102, size: 64, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !633, file: !104, line: 203, baseType: !645, size: 64, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !16, line: 128, baseType: !132)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !103, file: !104, line: 383, baseType: !647, size: 320)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !104, line: 206, size: 320, elements: !648)
!648 = !{!649, !650, !651, !652, !653, !654, !655}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !647, file: !104, line: 207, baseType: !102, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !647, file: !104, line: 207, baseType: !111, size: 8, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !647, file: !104, line: 207, baseType: !111, size: 8, offset: 72)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !647, file: !104, line: 207, baseType: !115, size: 16, offset: 80)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !647, file: !104, line: 207, baseType: !111, size: 8, offset: 96)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !647, file: !104, line: 207, baseType: !538, size: 128, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !647, file: !104, line: 207, baseType: !102, size: 64, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !103, file: !104, line: 384, baseType: !657, size: 384)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !104, line: 234, size: 384, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !657, file: !104, line: 235, baseType: !102, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !657, file: !104, line: 235, baseType: !111, size: 8, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !657, file: !104, line: 235, baseType: !111, size: 8, offset: 72)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !657, file: !104, line: 235, baseType: !115, size: 16, offset: 80)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !104, line: 235, baseType: !111, size: 8, offset: 96)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !657, file: !104, line: 235, baseType: !111, size: 8, offset: 104)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !657, file: !104, line: 235, baseType: !111, size: 8, offset: 112)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !657, file: !104, line: 235, baseType: !111, size: 8, offset: 120)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !657, file: !104, line: 235, baseType: !97, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !657, file: !104, line: 235, baseType: !6, size: 32, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !657, file: !104, line: 235, baseType: !6, size: 32, offset: 224)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !657, file: !104, line: 235, baseType: !6, size: 32, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !657, file: !104, line: 235, baseType: !111, size: 8, offset: 288)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !657, file: !104, line: 235, baseType: !111, size: 8, offset: 296)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !657, file: !104, line: 235, baseType: !102, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !103, file: !104, line: 385, baseType: !675, size: 576)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !104, line: 238, size: 576, elements: !676)
!676 = !{!677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !675, file: !104, line: 239, baseType: !102, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !675, file: !104, line: 239, baseType: !111, size: 8, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !675, file: !104, line: 239, baseType: !111, size: 8, offset: 72)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !675, file: !104, line: 239, baseType: !115, size: 16, offset: 80)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !104, line: 239, baseType: !111, size: 8, offset: 96)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !675, file: !104, line: 239, baseType: !111, size: 8, offset: 104)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !675, file: !104, line: 239, baseType: !111, size: 8, offset: 112)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !675, file: !104, line: 239, baseType: !111, size: 8, offset: 120)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !675, file: !104, line: 239, baseType: !97, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !675, file: !104, line: 239, baseType: !6, size: 32, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !675, file: !104, line: 239, baseType: !6, size: 32, offset: 224)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !675, file: !104, line: 239, baseType: !6, size: 32, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !675, file: !104, line: 239, baseType: !111, size: 8, offset: 288)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !675, file: !104, line: 239, baseType: !111, size: 8, offset: 296)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !675, file: !104, line: 239, baseType: !115, size: 16, offset: 304)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !675, file: !104, line: 240, baseType: !102, size: 64, offset: 320)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !675, file: !104, line: 241, baseType: !155, size: 64, offset: 384)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !675, file: !104, line: 242, baseType: !115, size: 16, offset: 448)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !675, file: !104, line: 243, baseType: !155, size: 64, offset: 512)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !103, file: !104, line: 386, baseType: !697, size: 384)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !104, line: 263, size: 384, elements: !698)
!698 = !{!699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !697, file: !104, line: 264, baseType: !102, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !697, file: !104, line: 264, baseType: !111, size: 8, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !697, file: !104, line: 264, baseType: !111, size: 8, offset: 72)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !697, file: !104, line: 264, baseType: !115, size: 16, offset: 80)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !697, file: !104, line: 264, baseType: !111, size: 8, offset: 96)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !697, file: !104, line: 264, baseType: !111, size: 8, offset: 104)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !697, file: !104, line: 264, baseType: !111, size: 8, offset: 112)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !697, file: !104, line: 264, baseType: !111, size: 8, offset: 120)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !697, file: !104, line: 264, baseType: !97, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !697, file: !104, line: 264, baseType: !6, size: 32, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !697, file: !104, line: 264, baseType: !6, size: 32, offset: 224)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !697, file: !104, line: 264, baseType: !6, size: 32, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !697, file: !104, line: 264, baseType: !111, size: 8, offset: 288)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !697, file: !104, line: 264, baseType: !111, size: 8, offset: 296)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !697, file: !104, line: 264, baseType: !111, size: 8, offset: 304)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !697, file: !104, line: 265, baseType: !102, size: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !103, file: !104, line: 387, baseType: !716, size: 448)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !104, line: 246, size: 448, elements: !717)
!717 = !{!718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !716, file: !104, line: 247, baseType: !102, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !716, file: !104, line: 247, baseType: !111, size: 8, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !716, file: !104, line: 247, baseType: !111, size: 8, offset: 72)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !716, file: !104, line: 247, baseType: !115, size: 16, offset: 80)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !716, file: !104, line: 247, baseType: !111, size: 8, offset: 96)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !716, file: !104, line: 247, baseType: !111, size: 8, offset: 104)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !716, file: !104, line: 247, baseType: !111, size: 8, offset: 112)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !716, file: !104, line: 247, baseType: !111, size: 8, offset: 120)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !716, file: !104, line: 247, baseType: !97, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !716, file: !104, line: 247, baseType: !6, size: 32, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !716, file: !104, line: 247, baseType: !6, size: 32, offset: 224)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !716, file: !104, line: 247, baseType: !6, size: 32, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !716, file: !104, line: 247, baseType: !111, size: 8, offset: 288)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !716, file: !104, line: 247, baseType: !111, size: 8, offset: 296)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !716, file: !104, line: 247, baseType: !102, size: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !716, file: !104, line: 248, baseType: !102, size: 64, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !103, file: !104, line: 388, baseType: !735, size: 448)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !104, line: 251, size: 448, elements: !736)
!736 = !{!737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !735, file: !104, line: 252, baseType: !102, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !735, file: !104, line: 252, baseType: !111, size: 8, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !735, file: !104, line: 252, baseType: !111, size: 8, offset: 72)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !735, file: !104, line: 252, baseType: !115, size: 16, offset: 80)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !735, file: !104, line: 252, baseType: !111, size: 8, offset: 96)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !735, file: !104, line: 252, baseType: !111, size: 8, offset: 104)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !735, file: !104, line: 252, baseType: !111, size: 8, offset: 112)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !735, file: !104, line: 252, baseType: !111, size: 8, offset: 120)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !735, file: !104, line: 252, baseType: !97, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !735, file: !104, line: 252, baseType: !6, size: 32, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !735, file: !104, line: 252, baseType: !6, size: 32, offset: 224)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !735, file: !104, line: 252, baseType: !6, size: 32, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !735, file: !104, line: 252, baseType: !111, size: 8, offset: 288)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !735, file: !104, line: 252, baseType: !111, size: 8, offset: 296)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !735, file: !104, line: 257, baseType: !102, size: 64, offset: 320)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !735, file: !104, line: 258, baseType: !102, size: 64, offset: 384)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !103, file: !104, line: 389, baseType: !754, size: 512)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !104, line: 274, size: 512, elements: !755)
!755 = !{!756, !757, !758, !759, !760, !761, !762, !763, !764, !765}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !754, file: !104, line: 275, baseType: !102, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !754, file: !104, line: 275, baseType: !111, size: 8, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !754, file: !104, line: 275, baseType: !111, size: 8, offset: 72)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !754, file: !104, line: 275, baseType: !115, size: 16, offset: 80)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !754, file: !104, line: 275, baseType: !111, size: 8, offset: 96)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !754, file: !104, line: 275, baseType: !97, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !754, file: !104, line: 276, baseType: !6, size: 32, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !754, file: !104, line: 277, baseType: !430, size: 64, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !754, file: !104, line: 278, baseType: !14, size: 64, offset: 320)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !754, file: !104, line: 279, baseType: !538, size: 128, offset: 384)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !103, file: !104, line: 390, baseType: !767, size: 576)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !104, line: 282, size: 576, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !774, !775, !776, !782, !783, !784, !785, !791, !792}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !767, file: !104, line: 283, baseType: !102, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !767, file: !104, line: 283, baseType: !111, size: 8, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !767, file: !104, line: 283, baseType: !111, size: 8, offset: 72)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !767, file: !104, line: 283, baseType: !115, size: 16, offset: 80)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !104, line: 283, baseType: !111, size: 8, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !767, file: !104, line: 283, baseType: !111, size: 8, offset: 104)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !767, file: !104, line: 284, baseType: !111, size: 8, offset: 112)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !767, file: !104, line: 285, baseType: !777, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !16, line: 1093, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!15, !6, !526, !6, !781, !14, !14}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !767, file: !104, line: 286, baseType: !97, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !767, file: !104, line: 287, baseType: !14, size: 64, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !767, file: !104, line: 288, baseType: !14, size: 64, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !767, file: !104, line: 289, baseType: !786, size: 64, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !16, line: 1126, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!15, !434, !6, !14, !790}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !767, file: !104, line: 290, baseType: !102, size: 64, offset: 448)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !767, file: !104, line: 291, baseType: !102, size: 64, offset: 512)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !103, file: !104, line: 391, baseType: !794, size: 512)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !104, line: 309, size: 512, elements: !795)
!795 = !{!796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !794, file: !104, line: 310, baseType: !102, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !794, file: !104, line: 310, baseType: !111, size: 8, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !794, file: !104, line: 310, baseType: !111, size: 8, offset: 72)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !794, file: !104, line: 310, baseType: !115, size: 16, offset: 80)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !794, file: !104, line: 310, baseType: !111, size: 8, offset: 96)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !794, file: !104, line: 310, baseType: !111, size: 8, offset: 104)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !794, file: !104, line: 311, baseType: !111, size: 8, offset: 112)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !794, file: !104, line: 312, baseType: !111, size: 8, offset: 120)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !794, file: !104, line: 313, baseType: !14, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !794, file: !104, line: 314, baseType: !97, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !794, file: !104, line: 315, baseType: !170, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !794, file: !104, line: 316, baseType: !155, size: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !794, file: !104, line: 317, baseType: !155, size: 64, offset: 384)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !794, file: !104, line: 318, baseType: !6, size: 32, offset: 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !103, file: !104, line: 392, baseType: !811, size: 448)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !104, line: 342, size: 448, elements: !812)
!812 = !{!813, !814, !815, !816, !817, !818, !819, !820, !821, !822}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !811, file: !104, line: 343, baseType: !102, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !811, file: !104, line: 343, baseType: !111, size: 8, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !811, file: !104, line: 343, baseType: !111, size: 8, offset: 72)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !811, file: !104, line: 343, baseType: !115, size: 16, offset: 80)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !811, file: !104, line: 343, baseType: !111, size: 8, offset: 96)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !811, file: !104, line: 343, baseType: !97, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !811, file: !104, line: 344, baseType: !97, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !811, file: !104, line: 345, baseType: !14, size: 64, offset: 256)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !811, file: !104, line: 346, baseType: !155, size: 64, offset: 320)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !811, file: !104, line: 347, baseType: !6, size: 32, offset: 384)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !103, file: !104, line: 393, baseType: !824, size: 256)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !104, line: 352, size: 256, elements: !825)
!825 = !{!826, !827, !828, !829, !830, !831, !836}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !824, file: !104, line: 353, baseType: !102, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !824, file: !104, line: 353, baseType: !111, size: 8, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !824, file: !104, line: 353, baseType: !111, size: 8, offset: 72)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !824, file: !104, line: 353, baseType: !115, size: 16, offset: 80)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !824, file: !104, line: 353, baseType: !111, size: 8, offset: 96)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !824, file: !104, line: 353, baseType: !832, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !16, line: 1064, baseType: !833)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !434, !14}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !824, file: !104, line: 354, baseType: !14, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !103, file: !104, line: 394, baseType: !838, size: 192)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !104, line: 359, size: 192, elements: !839)
!839 = !{!840, !841, !842, !843, !844, !845}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !838, file: !104, line: 360, baseType: !102, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !838, file: !104, line: 360, baseType: !111, size: 8, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !838, file: !104, line: 360, baseType: !111, size: 8, offset: 72)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !838, file: !104, line: 360, baseType: !115, size: 16, offset: 80)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !838, file: !104, line: 360, baseType: !111, size: 8, offset: 96)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !838, file: !104, line: 360, baseType: !102, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !103, file: !104, line: 401, baseType: !98, size: 384)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !98, file: !99, line: 135, baseType: !111, size: 8, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !98, file: !99, line: 136, baseType: !111, size: 8, offset: 72)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !98, file: !99, line: 137, baseType: !115, size: 16, offset: 80)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !98, file: !99, line: 138, baseType: !851, size: 32, offset: 96)
!851 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !852, line: 328, size: 32, elements: !853)
!852 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !851, file: !852, line: 329, baseType: !6, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !851, file: !852, line: 330, baseType: !84, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !98, file: !99, line: 139, baseType: !97, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !98, file: !99, line: 140, baseType: !97, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !98, file: !99, line: 141, baseType: !97, size: 64, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !98, file: !99, line: 142, baseType: !216, size: 16, offset: 320)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !93, file: !94, line: 156, baseType: !861, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !93, file: !94, line: 157, baseType: !170, size: 64, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !93, file: !94, line: 159, baseType: !97, size: 64, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !93, file: !94, line: 160, baseType: !102, size: 64, offset: 256)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !93, file: !94, line: 161, baseType: !144, size: 64, offset: 320)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !93, file: !94, line: 163, baseType: !867, size: 64, offset: 384)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !869)
!869 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !99, line: 351, size: 56, elements: !870)
!870 = !{!871, !877, !886, !894, !903}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !869, file: !99, line: 352, baseType: !872, size: 56)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !99, line: 295, size: 56, elements: !873)
!873 = !{!874, !875, !876}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !872, file: !99, line: 296, baseType: !84, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !872, file: !99, line: 297, baseType: !115, size: 16, offset: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !872, file: !99, line: 298, baseType: !111, size: 8, offset: 48)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !869, file: !99, line: 353, baseType: !878, size: 56)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !99, line: 314, size: 56, elements: !879)
!879 = !{!880, !881, !882, !883, !884, !885}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !878, file: !99, line: 315, baseType: !111, size: 8)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !878, file: !99, line: 316, baseType: !111, size: 8, offset: 8)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !878, file: !99, line: 317, baseType: !111, size: 8, offset: 16)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !878, file: !99, line: 318, baseType: !111, size: 8, offset: 24)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !878, file: !99, line: 319, baseType: !111, size: 8, offset: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !878, file: !99, line: 320, baseType: !115, size: 16, offset: 40)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !869, file: !99, line: 354, baseType: !887, size: 56)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !99, line: 325, size: 56, elements: !888)
!888 = !{!889, !890, !891, !893}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !887, file: !99, line: 326, baseType: !111, size: 8)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !887, file: !99, line: 327, baseType: !111, size: 8, offset: 8)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !887, file: !99, line: 328, baseType: !892, size: 32, offset: 16)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 32, elements: !85)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !887, file: !99, line: 329, baseType: !111, size: 8, offset: 48)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !869, file: !99, line: 355, baseType: !895, size: 56)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !99, line: 334, size: 56, elements: !896)
!896 = !{!897, !898, !899, !901, !902}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !895, file: !99, line: 335, baseType: !111, size: 8)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !895, file: !99, line: 336, baseType: !111, size: 8, offset: 8)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !895, file: !99, line: 337, baseType: !900, size: 16, offset: 16)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 16, elements: !539)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !895, file: !99, line: 338, baseType: !111, size: 8, offset: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !895, file: !99, line: 339, baseType: !115, size: 16, offset: 40)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !869, file: !99, line: 356, baseType: !904, size: 56)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !99, line: 342, size: 56, elements: !905)
!905 = !{!906, !907, !908, !909, !910, !911}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !904, file: !99, line: 343, baseType: !111, size: 8)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !904, file: !99, line: 344, baseType: !111, size: 8, offset: 8)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !904, file: !99, line: 345, baseType: !111, size: 8, offset: 16)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !904, file: !99, line: 346, baseType: !111, size: 8, offset: 24)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !904, file: !99, line: 347, baseType: !111, size: 8, offset: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !904, file: !99, line: 348, baseType: !115, size: 16, offset: 40)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !93, file: !94, line: 164, baseType: !102, size: 64, offset: 448)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !93, file: !94, line: 165, baseType: !102, size: 64, offset: 512)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !93, file: !94, line: 167, baseType: !6, size: 32, offset: 576)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !93, file: !94, line: 168, baseType: !6, size: 32, offset: 608)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !93, file: !94, line: 169, baseType: !115, size: 16, offset: 640)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !93, file: !94, line: 170, baseType: !115, size: 16, offset: 656)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !93, file: !94, line: 171, baseType: !111, size: 8, offset: 672)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !93, file: !94, line: 172, baseType: !111, size: 8, offset: 680)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !93, file: !94, line: 173, baseType: !111, size: 8, offset: 688)
!921 = !{i32 7, !"Dwarf Version", i32 5}
!922 = !{i32 2, !"Debug Info Version", i32 3}
!923 = !{i32 1, !"wchar_size", i32 2}
!924 = !{i32 8, !"cf-protection-branch", i32 1}
!925 = !{i32 4, !"function_return_thunk_extern", i32 1}
!926 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!927 = !{i32 1, !"Code Model", i32 2}
!928 = !{i32 1, !"override-stack-alignment", i32 8}
!929 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!930 = distinct !DISubprogram(name: "acpi_ns_complex_repairs", scope: !3, file: !3, line: 150, type: !931, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !933)
!931 = !DISubroutineType(types: !932)
!932 = !{!15, !92, !97, !15, !170}
!933 = !{!934, !935, !936, !937, !938, !940}
!934 = !DILocalVariable(name: "info", arg: 1, scope: !930, file: !3, line: 150, type: !92)
!935 = !DILocalVariable(name: "node", arg: 2, scope: !930, file: !3, line: 151, type: !97)
!936 = !DILocalVariable(name: "validate_status", arg: 3, scope: !930, file: !3, line: 152, type: !15)
!937 = !DILocalVariable(name: "return_object_ptr", arg: 4, scope: !930, file: !3, line: 153, type: !170)
!938 = !DILocalVariable(name: "predefined", scope: !930, file: !3, line: 155, type: !939)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!940 = !DILocalVariable(name: "status", scope: !930, file: !3, line: 156, type: !15)
!941 = !DILocation(line: 150, column: 52, scope: !930)
!942 = !DILocation(line: 151, column: 32, scope: !930)
!943 = !DILocation(line: 152, column: 16, scope: !930)
!944 = !DILocation(line: 153, column: 32, scope: !930)
!945 = !DILocation(line: 155, column: 2, scope: !930)
!946 = !DILocation(line: 155, column: 33, scope: !930)
!947 = !DILocation(line: 156, column: 2, scope: !930)
!948 = !DILocation(line: 156, column: 14, scope: !930)
!949 = !DILocation(line: 162, column: 44, scope: !930)
!950 = !DILocation(line: 162, column: 15, scope: !930)
!951 = !DILocation(line: 162, column: 13, scope: !930)
!952 = !DILocation(line: 163, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !930, file: !3, line: 163, column: 6)
!954 = !DILocation(line: 163, column: 6, scope: !930)
!955 = !DILocation(line: 164, column: 3, scope: !956)
!956 = distinct !DILexicalBlock(scope: !953, file: !3, line: 163, column: 19)
!957 = !DILocation(line: 167, column: 11, scope: !930)
!958 = !DILocation(line: 167, column: 23, scope: !930)
!959 = !DILocation(line: 167, column: 39, scope: !930)
!960 = !DILocation(line: 167, column: 45, scope: !930)
!961 = !DILocation(line: 167, column: 9, scope: !930)
!962 = !DILocation(line: 168, column: 2, scope: !930)
!963 = !DILocation(line: 169, column: 1, scope: !930)
!964 = distinct !DISubprogram(name: "acpi_ns_match_complex_repair", scope: !3, file: !3, line: 183, type: !965, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !967)
!965 = !DISubroutineType(types: !966)
!966 = !{!939, !97}
!967 = !{!968, !969}
!968 = !DILocalVariable(name: "node", arg: 1, scope: !964, file: !3, line: 185, type: !97)
!969 = !DILocalVariable(name: "this_name", scope: !964, file: !3, line: 187, type: !939)
!970 = !DILocation(line: 185, column: 13, scope: !964)
!971 = !DILocation(line: 187, column: 2, scope: !964)
!972 = !DILocation(line: 187, column: 33, scope: !964)
!973 = !DILocation(line: 191, column: 12, scope: !964)
!974 = !DILocation(line: 192, column: 2, scope: !964)
!975 = !DILocation(line: 192, column: 9, scope: !964)
!976 = !DILocation(line: 192, column: 20, scope: !964)
!977 = !DILocation(line: 193, column: 7, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !3, line: 193, column: 7)
!979 = distinct !DILexicalBlock(scope: !964, file: !3, line: 192, column: 37)
!980 = !DILocation(line: 193, column: 7, scope: !979)
!981 = !DILocation(line: 194, column: 12, scope: !982)
!982 = distinct !DILexicalBlock(scope: !978, file: !3, line: 193, column: 64)
!983 = !DILocation(line: 194, column: 4, scope: !982)
!984 = !DILocation(line: 197, column: 12, scope: !979)
!985 = distinct !{!985, !974, !986, !987, !988}
!986 = !DILocation(line: 198, column: 2, scope: !964)
!987 = !{!"llvm.loop.mustprogress"}
!988 = !{!"llvm.loop.unroll.disable"}
!989 = !DILocation(line: 200, column: 2, scope: !964)
!990 = !DILocation(line: 201, column: 1, scope: !964)
!991 = distinct !DISubprogram(name: "acpi_ns_repair_ALR", scope: !3, file: !3, line: 219, type: !90, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !992)
!992 = !{!993, !994, !995, !996}
!993 = !DILocalVariable(name: "info", arg: 1, scope: !991, file: !3, line: 219, type: !92)
!994 = !DILocalVariable(name: "return_object_ptr", arg: 2, scope: !991, file: !3, line: 220, type: !170)
!995 = !DILocalVariable(name: "return_object", scope: !991, file: !3, line: 222, type: !102)
!996 = !DILocalVariable(name: "status", scope: !991, file: !3, line: 223, type: !15)
!997 = !DILocation(line: 219, column: 47, scope: !991)
!998 = !DILocation(line: 220, column: 34, scope: !991)
!999 = !DILocation(line: 222, column: 2, scope: !991)
!1000 = !DILocation(line: 222, column: 29, scope: !991)
!1001 = !DILocation(line: 222, column: 46, scope: !991)
!1002 = !DILocation(line: 222, column: 45, scope: !991)
!1003 = !DILocation(line: 223, column: 2, scope: !991)
!1004 = !DILocation(line: 223, column: 14, scope: !991)
!1005 = !DILocation(line: 225, column: 37, scope: !991)
!1006 = !DILocation(line: 225, column: 43, scope: !991)
!1007 = !DILocation(line: 225, column: 11, scope: !991)
!1008 = !DILocation(line: 225, column: 9, scope: !991)
!1009 = !DILocation(line: 229, column: 10, scope: !991)
!1010 = !DILocation(line: 230, column: 1, scope: !991)
!1011 = !DILocation(line: 229, column: 2, scope: !991)
!1012 = distinct !DISubprogram(name: "acpi_ns_repair_CID", scope: !3, file: !3, line: 339, type: !90, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1013)
!1013 = !{!1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021}
!1014 = !DILocalVariable(name: "info", arg: 1, scope: !1012, file: !3, line: 339, type: !92)
!1015 = !DILocalVariable(name: "return_object_ptr", arg: 2, scope: !1012, file: !3, line: 340, type: !170)
!1016 = !DILocalVariable(name: "status", scope: !1012, file: !3, line: 342, type: !15)
!1017 = !DILocalVariable(name: "return_object", scope: !1012, file: !3, line: 343, type: !102)
!1018 = !DILocalVariable(name: "element_ptr", scope: !1012, file: !3, line: 344, type: !170)
!1019 = !DILocalVariable(name: "original_element", scope: !1012, file: !3, line: 345, type: !102)
!1020 = !DILocalVariable(name: "original_ref_count", scope: !1012, file: !3, line: 346, type: !115)
!1021 = !DILocalVariable(name: "i", scope: !1012, file: !3, line: 347, type: !6)
!1022 = !DILocation(line: 339, column: 47, scope: !1012)
!1023 = !DILocation(line: 340, column: 34, scope: !1012)
!1024 = !DILocation(line: 342, column: 2, scope: !1012)
!1025 = !DILocation(line: 342, column: 14, scope: !1012)
!1026 = !DILocation(line: 343, column: 2, scope: !1012)
!1027 = !DILocation(line: 343, column: 29, scope: !1012)
!1028 = !DILocation(line: 343, column: 46, scope: !1012)
!1029 = !DILocation(line: 343, column: 45, scope: !1012)
!1030 = !DILocation(line: 344, column: 2, scope: !1012)
!1031 = !DILocation(line: 344, column: 30, scope: !1012)
!1032 = !DILocation(line: 345, column: 2, scope: !1012)
!1033 = !DILocation(line: 345, column: 29, scope: !1012)
!1034 = !DILocation(line: 346, column: 2, scope: !1012)
!1035 = !DILocation(line: 346, column: 6, scope: !1012)
!1036 = !DILocation(line: 347, column: 2, scope: !1012)
!1037 = !DILocation(line: 347, column: 6, scope: !1012)
!1038 = !DILocation(line: 353, column: 6, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 353, column: 6)
!1040 = !DILocation(line: 353, column: 28, scope: !1039)
!1041 = !DILocation(line: 353, column: 33, scope: !1039)
!1042 = !DILocation(line: 353, column: 6, scope: !1012)
!1043 = !DILocation(line: 354, column: 31, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 353, column: 54)
!1045 = !DILocation(line: 354, column: 37, scope: !1044)
!1046 = !DILocation(line: 354, column: 12, scope: !1044)
!1047 = !DILocation(line: 354, column: 10, scope: !1044)
!1048 = !DILocation(line: 355, column: 3, scope: !1044)
!1049 = !DILocation(line: 360, column: 6, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 360, column: 6)
!1051 = !DILocation(line: 360, column: 28, scope: !1050)
!1052 = !DILocation(line: 360, column: 33, scope: !1050)
!1053 = !DILocation(line: 360, column: 6, scope: !1012)
!1054 = !DILocation(line: 361, column: 3, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 360, column: 55)
!1056 = !DILocation(line: 366, column: 16, scope: !1012)
!1057 = !DILocation(line: 366, column: 39, scope: !1012)
!1058 = !DILocation(line: 366, column: 14, scope: !1012)
!1059 = !DILocation(line: 367, column: 9, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 367, column: 2)
!1061 = !DILocation(line: 367, column: 7, scope: !1060)
!1062 = !DILocation(line: 367, column: 14, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 367, column: 2)
!1064 = !DILocation(line: 367, column: 18, scope: !1063)
!1065 = !DILocation(line: 367, column: 41, scope: !1063)
!1066 = !DILocation(line: 367, column: 16, scope: !1063)
!1067 = !DILocation(line: 367, column: 2, scope: !1060)
!1068 = !DILocation(line: 368, column: 23, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 367, column: 53)
!1070 = !DILocation(line: 368, column: 22, scope: !1069)
!1071 = !DILocation(line: 368, column: 20, scope: !1069)
!1072 = !DILocation(line: 369, column: 24, scope: !1069)
!1073 = !DILocation(line: 369, column: 49, scope: !1069)
!1074 = !DILocation(line: 369, column: 22, scope: !1069)
!1075 = !DILocation(line: 371, column: 31, scope: !1069)
!1076 = !DILocation(line: 371, column: 37, scope: !1069)
!1077 = !DILocation(line: 371, column: 12, scope: !1069)
!1078 = !DILocation(line: 371, column: 10, scope: !1069)
!1079 = !DILocation(line: 372, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 372, column: 7)
!1081 = !DILocation(line: 372, column: 7, scope: !1069)
!1082 = !DILocation(line: 373, column: 4, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 372, column: 29)
!1084 = !DILocation(line: 376, column: 7, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 376, column: 7)
!1086 = !DILocation(line: 376, column: 28, scope: !1085)
!1087 = !DILocation(line: 376, column: 27, scope: !1085)
!1088 = !DILocation(line: 376, column: 24, scope: !1085)
!1089 = !DILocation(line: 376, column: 7, scope: !1069)
!1090 = !DILocation(line: 381, column: 8, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 376, column: 41)
!1092 = !DILocation(line: 380, column: 6, scope: !1091)
!1093 = !DILocation(line: 380, column: 5, scope: !1091)
!1094 = !DILocation(line: 380, column: 27, scope: !1091)
!1095 = !DILocation(line: 380, column: 43, scope: !1091)
!1096 = !DILocation(line: 382, column: 3, scope: !1091)
!1097 = !DILocation(line: 384, column: 14, scope: !1069)
!1098 = !DILocation(line: 385, column: 2, scope: !1069)
!1099 = !DILocation(line: 367, column: 49, scope: !1063)
!1100 = !DILocation(line: 367, column: 2, scope: !1063)
!1101 = distinct !{!1101, !1067, !1102, !987, !988}
!1102 = !DILocation(line: 385, column: 2, scope: !1060)
!1103 = !DILocation(line: 387, column: 2, scope: !1012)
!1104 = !DILocation(line: 388, column: 1, scope: !1012)
!1105 = distinct !DISubprogram(name: "acpi_ns_repair_CST", scope: !3, file: !3, line: 409, type: !90, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1106)
!1106 = !{!1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116}
!1107 = !DILocalVariable(name: "info", arg: 1, scope: !1105, file: !3, line: 409, type: !92)
!1108 = !DILocalVariable(name: "return_object_ptr", arg: 2, scope: !1105, file: !3, line: 410, type: !170)
!1109 = !DILocalVariable(name: "return_object", scope: !1105, file: !3, line: 412, type: !102)
!1110 = !DILocalVariable(name: "outer_elements", scope: !1105, file: !3, line: 413, type: !170)
!1111 = !DILocalVariable(name: "outer_element_count", scope: !1105, file: !3, line: 414, type: !6)
!1112 = !DILocalVariable(name: "obj_desc", scope: !1105, file: !3, line: 415, type: !102)
!1113 = !DILocalVariable(name: "status", scope: !1105, file: !3, line: 416, type: !15)
!1114 = !DILocalVariable(name: "removing", scope: !1105, file: !3, line: 417, type: !111)
!1115 = !DILocalVariable(name: "i", scope: !1105, file: !3, line: 418, type: !6)
!1116 = !DILabel(scope: !1117, name: "remove_element", file: !3, line: 451)
!1117 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 427, column: 34)
!1118 = !DILocation(line: 409, column: 47, scope: !1105)
!1119 = !DILocation(line: 410, column: 34, scope: !1105)
!1120 = !DILocation(line: 412, column: 2, scope: !1105)
!1121 = !DILocation(line: 412, column: 29, scope: !1105)
!1122 = !DILocation(line: 412, column: 46, scope: !1105)
!1123 = !DILocation(line: 412, column: 45, scope: !1105)
!1124 = !DILocation(line: 413, column: 2, scope: !1105)
!1125 = !DILocation(line: 413, column: 30, scope: !1105)
!1126 = !DILocation(line: 414, column: 2, scope: !1105)
!1127 = !DILocation(line: 414, column: 6, scope: !1105)
!1128 = !DILocation(line: 415, column: 2, scope: !1105)
!1129 = !DILocation(line: 415, column: 29, scope: !1105)
!1130 = !DILocation(line: 416, column: 2, scope: !1105)
!1131 = !DILocation(line: 416, column: 14, scope: !1105)
!1132 = !DILocation(line: 417, column: 2, scope: !1105)
!1133 = !DILocation(line: 417, column: 5, scope: !1105)
!1134 = !DILocation(line: 418, column: 2, scope: !1105)
!1135 = !DILocation(line: 418, column: 6, scope: !1105)
!1136 = !DILocation(line: 425, column: 24, scope: !1105)
!1137 = !DILocation(line: 425, column: 47, scope: !1105)
!1138 = !DILocation(line: 425, column: 53, scope: !1105)
!1139 = !DILocation(line: 425, column: 22, scope: !1105)
!1140 = !DILocation(line: 426, column: 4, scope: !1105)
!1141 = !DILocation(line: 427, column: 2, scope: !1105)
!1142 = !DILocation(line: 427, column: 9, scope: !1105)
!1143 = !DILocation(line: 427, column: 13, scope: !1105)
!1144 = !DILocation(line: 427, column: 11, scope: !1105)
!1145 = !DILocation(line: 428, column: 21, scope: !1117)
!1146 = !DILocation(line: 428, column: 44, scope: !1117)
!1147 = !DILocation(line: 428, column: 53, scope: !1117)
!1148 = !DILocation(line: 428, column: 55, scope: !1117)
!1149 = !DILocation(line: 428, column: 18, scope: !1117)
!1150 = !DILocation(line: 429, column: 12, scope: !1117)
!1151 = !DILocation(line: 431, column: 9, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 431, column: 7)
!1153 = !DILocation(line: 431, column: 8, scope: !1152)
!1154 = !DILocation(line: 431, column: 34, scope: !1152)
!1155 = !DILocation(line: 431, column: 40, scope: !1152)
!1156 = !DILocation(line: 431, column: 7, scope: !1117)
!1157 = !DILocation(line: 432, column: 4, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 431, column: 46)
!1159 = !DILocation(line: 437, column: 13, scope: !1158)
!1160 = !DILocation(line: 438, column: 4, scope: !1158)
!1161 = !DILocation(line: 441, column: 16, scope: !1117)
!1162 = !DILocation(line: 441, column: 15, scope: !1117)
!1163 = !DILocation(line: 441, column: 41, scope: !1117)
!1164 = !DILocation(line: 441, column: 14, scope: !1117)
!1165 = !DILocation(line: 441, column: 12, scope: !1117)
!1166 = !DILocation(line: 442, column: 12, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 442, column: 7)
!1168 = !DILocation(line: 442, column: 30, scope: !1167)
!1169 = !DILocation(line: 442, column: 7, scope: !1167)
!1170 = !DILocation(line: 442, column: 36, scope: !1167)
!1171 = !DILocation(line: 442, column: 7, scope: !1117)
!1172 = !DILocation(line: 443, column: 4, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 442, column: 42)
!1174 = !DILocation(line: 448, column: 13, scope: !1173)
!1175 = !DILocation(line: 449, column: 3, scope: !1173)
!1176 = !DILocation(line: 442, column: 39, scope: !1167)
!1177 = !DILocation(line: 451, column: 1, scope: !1117)
!1178 = !DILocation(line: 452, column: 7, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 452, column: 7)
!1180 = !DILocation(line: 452, column: 7, scope: !1117)
!1181 = !DILocation(line: 453, column: 27, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 452, column: 17)
!1183 = !DILocation(line: 453, column: 42, scope: !1182)
!1184 = !DILocation(line: 453, column: 44, scope: !1182)
!1185 = !DILocation(line: 453, column: 4, scope: !1182)
!1186 = !DILocation(line: 454, column: 23, scope: !1182)
!1187 = !DILocation(line: 455, column: 3, scope: !1182)
!1188 = !DILocation(line: 456, column: 5, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 455, column: 10)
!1190 = distinct !{!1190, !1141, !1191, !987, !988}
!1191 = !DILocation(line: 458, column: 2, scope: !1105)
!1192 = !DILocation(line: 462, column: 13, scope: !1105)
!1193 = !DILocation(line: 462, column: 36, scope: !1105)
!1194 = !DILocation(line: 462, column: 11, scope: !1105)
!1195 = !DILocation(line: 463, column: 28, scope: !1105)
!1196 = !DILocation(line: 463, column: 2, scope: !1105)
!1197 = !DILocation(line: 463, column: 20, scope: !1105)
!1198 = !DILocation(line: 463, column: 26, scope: !1105)
!1199 = !DILocation(line: 469, column: 37, scope: !1105)
!1200 = !DILocation(line: 469, column: 43, scope: !1105)
!1201 = !DILocation(line: 469, column: 11, scope: !1105)
!1202 = !DILocation(line: 469, column: 9, scope: !1105)
!1203 = !DILocation(line: 471, column: 6, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 471, column: 6)
!1205 = !DILocation(line: 471, column: 6, scope: !1105)
!1206 = !DILocation(line: 472, column: 11, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 471, column: 28)
!1208 = !DILocation(line: 472, column: 3, scope: !1207)
!1209 = !DILocation(line: 475, column: 2, scope: !1105)
!1210 = !DILocation(line: 476, column: 1, scope: !1105)
!1211 = distinct !DISubprogram(name: "acpi_ns_repair_FDE", scope: !3, file: !3, line: 250, type: !90, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1212)
!1212 = !{!1213, !1214, !1215, !1216, !1217, !1218, !1219}
!1213 = !DILocalVariable(name: "info", arg: 1, scope: !1211, file: !3, line: 250, type: !92)
!1214 = !DILocalVariable(name: "return_object_ptr", arg: 2, scope: !1211, file: !3, line: 251, type: !170)
!1215 = !DILocalVariable(name: "return_object", scope: !1211, file: !3, line: 253, type: !102)
!1216 = !DILocalVariable(name: "buffer_object", scope: !1211, file: !3, line: 254, type: !102)
!1217 = !DILocalVariable(name: "byte_buffer", scope: !1211, file: !3, line: 255, type: !155)
!1218 = !DILocalVariable(name: "dword_buffer", scope: !1211, file: !3, line: 256, type: !5)
!1219 = !DILocalVariable(name: "i", scope: !1211, file: !3, line: 257, type: !6)
!1220 = !DILocation(line: 250, column: 47, scope: !1211)
!1221 = !DILocation(line: 251, column: 34, scope: !1211)
!1222 = !DILocation(line: 253, column: 2, scope: !1211)
!1223 = !DILocation(line: 253, column: 29, scope: !1211)
!1224 = !DILocation(line: 253, column: 46, scope: !1211)
!1225 = !DILocation(line: 253, column: 45, scope: !1211)
!1226 = !DILocation(line: 254, column: 2, scope: !1211)
!1227 = !DILocation(line: 254, column: 29, scope: !1211)
!1228 = !DILocation(line: 255, column: 2, scope: !1211)
!1229 = !DILocation(line: 255, column: 6, scope: !1211)
!1230 = !DILocation(line: 256, column: 2, scope: !1211)
!1231 = !DILocation(line: 256, column: 7, scope: !1211)
!1232 = !DILocation(line: 257, column: 2, scope: !1211)
!1233 = !DILocation(line: 257, column: 6, scope: !1211)
!1234 = !DILocation(line: 261, column: 10, scope: !1211)
!1235 = !DILocation(line: 261, column: 32, scope: !1211)
!1236 = !DILocation(line: 261, column: 2, scope: !1211)
!1237 = !DILocation(line: 266, column: 7, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 266, column: 7)
!1239 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 261, column: 38)
!1240 = !DILocation(line: 266, column: 29, scope: !1238)
!1241 = !DILocation(line: 266, column: 36, scope: !1238)
!1242 = !DILocation(line: 266, column: 7, scope: !1239)
!1243 = !DILocation(line: 267, column: 4, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 266, column: 67)
!1245 = !DILocation(line: 272, column: 7, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 272, column: 7)
!1247 = !DILocation(line: 272, column: 29, scope: !1246)
!1248 = !DILocation(line: 272, column: 36, scope: !1246)
!1249 = !DILocation(line: 272, column: 7, scope: !1239)
!1250 = !DILocation(line: 273, column: 4, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 272, column: 66)
!1252 = !DILocation(line: 280, column: 4, scope: !1251)
!1253 = !DILocation(line: 286, column: 7, scope: !1239)
!1254 = !DILocation(line: 285, column: 17, scope: !1239)
!1255 = !DILocation(line: 287, column: 8, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 287, column: 7)
!1257 = !DILocation(line: 287, column: 7, scope: !1239)
!1258 = !DILocation(line: 288, column: 4, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 287, column: 23)
!1260 = !DILocation(line: 293, column: 17, scope: !1239)
!1261 = !DILocation(line: 293, column: 39, scope: !1239)
!1262 = !DILocation(line: 293, column: 15, scope: !1239)
!1263 = !DILocation(line: 294, column: 18, scope: !1239)
!1264 = !DILocation(line: 294, column: 16, scope: !1239)
!1265 = !DILocation(line: 297, column: 10, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 297, column: 3)
!1267 = !DILocation(line: 297, column: 8, scope: !1266)
!1268 = !DILocation(line: 297, column: 15, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 297, column: 3)
!1270 = !DILocation(line: 297, column: 17, scope: !1269)
!1271 = !DILocation(line: 297, column: 3, scope: !1266)
!1272 = !DILocation(line: 298, column: 27, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 297, column: 46)
!1274 = !DILocation(line: 298, column: 26, scope: !1273)
!1275 = !DILocation(line: 298, column: 20, scope: !1273)
!1276 = !DILocation(line: 298, column: 5, scope: !1273)
!1277 = !DILocation(line: 298, column: 18, scope: !1273)
!1278 = !DILocation(line: 299, column: 16, scope: !1273)
!1279 = !DILocation(line: 300, column: 15, scope: !1273)
!1280 = !DILocation(line: 301, column: 3, scope: !1273)
!1281 = !DILocation(line: 297, column: 42, scope: !1269)
!1282 = !DILocation(line: 297, column: 3, scope: !1269)
!1283 = distinct !{!1283, !1271, !1284, !987, !988}
!1284 = !DILocation(line: 301, column: 3, scope: !1266)
!1285 = !DILocation(line: 306, column: 3, scope: !1239)
!1286 = !DILocation(line: 310, column: 3, scope: !1239)
!1287 = !DILocation(line: 315, column: 27, scope: !1211)
!1288 = !DILocation(line: 315, column: 2, scope: !1211)
!1289 = !DILocation(line: 316, column: 23, scope: !1211)
!1290 = !DILocation(line: 316, column: 3, scope: !1211)
!1291 = !DILocation(line: 316, column: 21, scope: !1211)
!1292 = !DILocation(line: 318, column: 2, scope: !1211)
!1293 = !DILocation(line: 318, column: 8, scope: !1211)
!1294 = !DILocation(line: 318, column: 21, scope: !1211)
!1295 = !DILocation(line: 319, column: 2, scope: !1211)
!1296 = !DILocation(line: 320, column: 1, scope: !1211)
!1297 = distinct !DISubprogram(name: "acpi_ns_repair_HID", scope: !3, file: !3, line: 494, type: !90, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1298)
!1298 = !{!1299, !1300, !1301, !1302, !1303, !1304}
!1299 = !DILocalVariable(name: "info", arg: 1, scope: !1297, file: !3, line: 494, type: !92)
!1300 = !DILocalVariable(name: "return_object_ptr", arg: 2, scope: !1297, file: !3, line: 495, type: !170)
!1301 = !DILocalVariable(name: "return_object", scope: !1297, file: !3, line: 497, type: !102)
!1302 = !DILocalVariable(name: "new_string", scope: !1297, file: !3, line: 498, type: !102)
!1303 = !DILocalVariable(name: "source", scope: !1297, file: !3, line: 499, type: !144)
!1304 = !DILocalVariable(name: "dest", scope: !1297, file: !3, line: 500, type: !144)
!1305 = !DILocation(line: 494, column: 47, scope: !1297)
!1306 = !DILocation(line: 495, column: 34, scope: !1297)
!1307 = !DILocation(line: 497, column: 2, scope: !1297)
!1308 = !DILocation(line: 497, column: 29, scope: !1297)
!1309 = !DILocation(line: 497, column: 46, scope: !1297)
!1310 = !DILocation(line: 497, column: 45, scope: !1297)
!1311 = !DILocation(line: 498, column: 2, scope: !1297)
!1312 = !DILocation(line: 498, column: 29, scope: !1297)
!1313 = !DILocation(line: 499, column: 2, scope: !1297)
!1314 = !DILocation(line: 499, column: 8, scope: !1297)
!1315 = !DILocation(line: 500, column: 2, scope: !1297)
!1316 = !DILocation(line: 500, column: 8, scope: !1297)
!1317 = !DILocation(line: 506, column: 6, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 506, column: 6)
!1319 = !DILocation(line: 506, column: 28, scope: !1318)
!1320 = !DILocation(line: 506, column: 33, scope: !1318)
!1321 = !DILocation(line: 506, column: 6, scope: !1297)
!1322 = !DILocation(line: 507, column: 3, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 506, column: 54)
!1324 = !DILocation(line: 510, column: 6, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 510, column: 6)
!1326 = !DILocation(line: 510, column: 28, scope: !1325)
!1327 = !DILocation(line: 510, column: 35, scope: !1325)
!1328 = !DILocation(line: 510, column: 6, scope: !1297)
!1329 = !DILocation(line: 511, column: 3, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 510, column: 41)
!1331 = !DILocation(line: 517, column: 3, scope: !1330)
!1332 = !DILocation(line: 517, column: 9, scope: !1330)
!1333 = !DILocation(line: 517, column: 22, scope: !1330)
!1334 = !DILocation(line: 518, column: 3, scope: !1330)
!1335 = !DILocation(line: 523, column: 44, scope: !1297)
!1336 = !DILocation(line: 523, column: 66, scope: !1297)
!1337 = !DILocation(line: 523, column: 15, scope: !1297)
!1338 = !DILocation(line: 523, column: 13, scope: !1297)
!1339 = !DILocation(line: 524, column: 7, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 524, column: 6)
!1341 = !DILocation(line: 524, column: 6, scope: !1297)
!1342 = !DILocation(line: 525, column: 3, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 524, column: 19)
!1344 = !DILocation(line: 534, column: 11, scope: !1297)
!1345 = !DILocation(line: 534, column: 33, scope: !1297)
!1346 = !DILocation(line: 534, column: 9, scope: !1297)
!1347 = !DILocation(line: 535, column: 7, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 535, column: 6)
!1349 = !DILocation(line: 535, column: 6, scope: !1348)
!1350 = !DILocation(line: 535, column: 14, scope: !1348)
!1351 = !DILocation(line: 535, column: 6, scope: !1297)
!1352 = !DILocation(line: 536, column: 9, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 535, column: 22)
!1354 = !DILocation(line: 537, column: 3, scope: !1353)
!1355 = !DILocation(line: 537, column: 22, scope: !1353)
!1356 = !DILocation(line: 537, column: 28, scope: !1353)
!1357 = !DILocation(line: 542, column: 2, scope: !1353)
!1358 = !DILocation(line: 552, column: 14, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 552, column: 2)
!1360 = !DILocation(line: 552, column: 33, scope: !1359)
!1361 = !DILocation(line: 552, column: 12, scope: !1359)
!1362 = !DILocation(line: 552, column: 7, scope: !1359)
!1363 = !DILocation(line: 552, column: 43, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 552, column: 2)
!1365 = !DILocation(line: 552, column: 42, scope: !1364)
!1366 = !DILocation(line: 552, column: 2, scope: !1359)
!1367 = !DILocation(line: 553, column: 17, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 552, column: 69)
!1369 = !DILocation(line: 553, column: 4, scope: !1368)
!1370 = !DILocation(line: 553, column: 9, scope: !1368)
!1371 = !DILocation(line: 554, column: 2, scope: !1368)
!1372 = !DILocation(line: 552, column: 55, scope: !1364)
!1373 = !DILocation(line: 552, column: 65, scope: !1364)
!1374 = !DILocation(line: 552, column: 2, scope: !1364)
!1375 = distinct !{!1375, !1366, !1376, !987, !988}
!1376 = !DILocation(line: 554, column: 2, scope: !1359)
!1377 = !DILocation(line: 556, column: 27, scope: !1297)
!1378 = !DILocation(line: 556, column: 2, scope: !1297)
!1379 = !DILocation(line: 557, column: 23, scope: !1297)
!1380 = !DILocation(line: 557, column: 3, scope: !1297)
!1381 = !DILocation(line: 557, column: 21, scope: !1297)
!1382 = !DILocation(line: 558, column: 2, scope: !1297)
!1383 = !DILocation(line: 559, column: 1, scope: !1297)
!1384 = distinct !DISubprogram(name: "acpi_ns_repair_PRT", scope: !3, file: !3, line: 577, type: !90, scopeLine: 579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1385)
!1385 = !{!1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394}
!1386 = !DILocalVariable(name: "info", arg: 1, scope: !1384, file: !3, line: 577, type: !92)
!1387 = !DILocalVariable(name: "return_object_ptr", arg: 2, scope: !1384, file: !3, line: 578, type: !170)
!1388 = !DILocalVariable(name: "package_object", scope: !1384, file: !3, line: 580, type: !102)
!1389 = !DILocalVariable(name: "top_object_list", scope: !1384, file: !3, line: 581, type: !170)
!1390 = !DILocalVariable(name: "sub_object_list", scope: !1384, file: !3, line: 582, type: !170)
!1391 = !DILocalVariable(name: "obj_desc", scope: !1384, file: !3, line: 583, type: !102)
!1392 = !DILocalVariable(name: "sub_package", scope: !1384, file: !3, line: 584, type: !102)
!1393 = !DILocalVariable(name: "element_count", scope: !1384, file: !3, line: 585, type: !6)
!1394 = !DILocalVariable(name: "index", scope: !1384, file: !3, line: 586, type: !6)
!1395 = !DILocation(line: 577, column: 47, scope: !1384)
!1396 = !DILocation(line: 578, column: 34, scope: !1384)
!1397 = !DILocation(line: 580, column: 2, scope: !1384)
!1398 = !DILocation(line: 580, column: 29, scope: !1384)
!1399 = !DILocation(line: 580, column: 47, scope: !1384)
!1400 = !DILocation(line: 580, column: 46, scope: !1384)
!1401 = !DILocation(line: 581, column: 2, scope: !1384)
!1402 = !DILocation(line: 581, column: 30, scope: !1384)
!1403 = !DILocation(line: 582, column: 2, scope: !1384)
!1404 = !DILocation(line: 582, column: 30, scope: !1384)
!1405 = !DILocation(line: 583, column: 2, scope: !1384)
!1406 = !DILocation(line: 583, column: 29, scope: !1384)
!1407 = !DILocation(line: 584, column: 2, scope: !1384)
!1408 = !DILocation(line: 584, column: 29, scope: !1384)
!1409 = !DILocation(line: 585, column: 2, scope: !1384)
!1410 = !DILocation(line: 585, column: 6, scope: !1384)
!1411 = !DILocation(line: 586, column: 2, scope: !1384)
!1412 = !DILocation(line: 586, column: 6, scope: !1384)
!1413 = !DILocation(line: 590, column: 20, scope: !1384)
!1414 = !DILocation(line: 590, column: 44, scope: !1384)
!1415 = !DILocation(line: 590, column: 18, scope: !1384)
!1416 = !DILocation(line: 591, column: 18, scope: !1384)
!1417 = !DILocation(line: 591, column: 42, scope: !1384)
!1418 = !DILocation(line: 591, column: 16, scope: !1384)
!1419 = !DILocation(line: 595, column: 13, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 595, column: 2)
!1421 = !DILocation(line: 595, column: 7, scope: !1420)
!1422 = !DILocation(line: 595, column: 18, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 595, column: 2)
!1424 = !DILocation(line: 595, column: 26, scope: !1423)
!1425 = !DILocation(line: 595, column: 24, scope: !1423)
!1426 = !DILocation(line: 595, column: 2, scope: !1420)
!1427 = !DILocation(line: 596, column: 18, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 595, column: 69)
!1429 = !DILocation(line: 596, column: 17, scope: !1428)
!1430 = !DILocation(line: 596, column: 15, scope: !1428)
!1431 = !DILocation(line: 597, column: 21, scope: !1428)
!1432 = !DILocation(line: 597, column: 42, scope: !1428)
!1433 = !DILocation(line: 597, column: 19, scope: !1428)
!1434 = !DILocation(line: 601, column: 7, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 601, column: 7)
!1436 = !DILocation(line: 601, column: 28, scope: !1435)
!1437 = !DILocation(line: 601, column: 34, scope: !1435)
!1438 = !DILocation(line: 601, column: 7, scope: !1428)
!1439 = !DILocation(line: 602, column: 4, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 601, column: 39)
!1441 = !DILocation(line: 611, column: 14, scope: !1428)
!1442 = !DILocation(line: 611, column: 12, scope: !1428)
!1443 = !DILocation(line: 612, column: 8, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 612, column: 7)
!1445 = !DILocation(line: 612, column: 17, scope: !1444)
!1446 = !DILocation(line: 612, column: 21, scope: !1444)
!1447 = !DILocation(line: 612, column: 38, scope: !1444)
!1448 = !DILocation(line: 612, column: 43, scope: !1444)
!1449 = !DILocation(line: 612, column: 7, scope: !1428)
!1450 = !DILocation(line: 613, column: 25, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 612, column: 66)
!1452 = !DILocation(line: 613, column: 4, scope: !1451)
!1453 = !DILocation(line: 613, column: 23, scope: !1451)
!1454 = !DILocation(line: 614, column: 25, scope: !1451)
!1455 = !DILocation(line: 614, column: 4, scope: !1451)
!1456 = !DILocation(line: 614, column: 23, scope: !1451)
!1457 = !DILocation(line: 615, column: 4, scope: !1451)
!1458 = !DILocation(line: 615, column: 10, scope: !1451)
!1459 = !DILocation(line: 615, column: 23, scope: !1451)
!1460 = !DILocation(line: 617, column: 4, scope: !1451)
!1461 = !DILocation(line: 622, column: 3, scope: !1451)
!1462 = !DILocation(line: 623, column: 2, scope: !1428)
!1463 = !DILocation(line: 595, column: 46, scope: !1423)
!1464 = !DILocation(line: 595, column: 65, scope: !1423)
!1465 = !DILocation(line: 595, column: 2, scope: !1423)
!1466 = distinct !{!1466, !1426, !1467, !987, !988}
!1467 = !DILocation(line: 623, column: 2, scope: !1420)
!1468 = !DILocation(line: 626, column: 1, scope: !1384)
!1469 = !DILocation(line: 625, column: 2, scope: !1384)
!1470 = distinct !DISubprogram(name: "acpi_ns_repair_PSS", scope: !3, file: !3, line: 646, type: !90, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1471)
!1471 = !{!1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481}
!1472 = !DILocalVariable(name: "info", arg: 1, scope: !1470, file: !3, line: 646, type: !92)
!1473 = !DILocalVariable(name: "return_object_ptr", arg: 2, scope: !1470, file: !3, line: 647, type: !170)
!1474 = !DILocalVariable(name: "return_object", scope: !1470, file: !3, line: 649, type: !102)
!1475 = !DILocalVariable(name: "outer_elements", scope: !1470, file: !3, line: 650, type: !170)
!1476 = !DILocalVariable(name: "outer_element_count", scope: !1470, file: !3, line: 651, type: !6)
!1477 = !DILocalVariable(name: "elements", scope: !1470, file: !3, line: 652, type: !170)
!1478 = !DILocalVariable(name: "obj_desc", scope: !1470, file: !3, line: 653, type: !102)
!1479 = !DILocalVariable(name: "previous_value", scope: !1470, file: !3, line: 654, type: !6)
!1480 = !DILocalVariable(name: "status", scope: !1470, file: !3, line: 655, type: !15)
!1481 = !DILocalVariable(name: "i", scope: !1470, file: !3, line: 656, type: !6)
!1482 = !DILocation(line: 646, column: 47, scope: !1470)
!1483 = !DILocation(line: 647, column: 34, scope: !1470)
!1484 = !DILocation(line: 649, column: 2, scope: !1470)
!1485 = !DILocation(line: 649, column: 29, scope: !1470)
!1486 = !DILocation(line: 649, column: 46, scope: !1470)
!1487 = !DILocation(line: 649, column: 45, scope: !1470)
!1488 = !DILocation(line: 650, column: 2, scope: !1470)
!1489 = !DILocation(line: 650, column: 30, scope: !1470)
!1490 = !DILocation(line: 651, column: 2, scope: !1470)
!1491 = !DILocation(line: 651, column: 6, scope: !1470)
!1492 = !DILocation(line: 652, column: 2, scope: !1470)
!1493 = !DILocation(line: 652, column: 30, scope: !1470)
!1494 = !DILocation(line: 653, column: 2, scope: !1470)
!1495 = !DILocation(line: 653, column: 29, scope: !1470)
!1496 = !DILocation(line: 654, column: 2, scope: !1470)
!1497 = !DILocation(line: 654, column: 6, scope: !1470)
!1498 = !DILocation(line: 655, column: 2, scope: !1470)
!1499 = !DILocation(line: 655, column: 14, scope: !1470)
!1500 = !DILocation(line: 656, column: 2, scope: !1470)
!1501 = !DILocation(line: 656, column: 6, scope: !1470)
!1502 = !DILocation(line: 664, column: 37, scope: !1470)
!1503 = !DILocation(line: 664, column: 43, scope: !1470)
!1504 = !DILocation(line: 664, column: 11, scope: !1470)
!1505 = !DILocation(line: 664, column: 9, scope: !1470)
!1506 = !DILocation(line: 667, column: 6, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 667, column: 6)
!1508 = !DILocation(line: 667, column: 6, scope: !1470)
!1509 = !DILocation(line: 668, column: 11, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 667, column: 28)
!1511 = !DILocation(line: 668, column: 3, scope: !1510)
!1512 = !DILocation(line: 675, column: 17, scope: !1470)
!1513 = !DILocation(line: 676, column: 19, scope: !1470)
!1514 = !DILocation(line: 676, column: 42, scope: !1470)
!1515 = !DILocation(line: 676, column: 17, scope: !1470)
!1516 = !DILocation(line: 677, column: 24, scope: !1470)
!1517 = !DILocation(line: 677, column: 47, scope: !1470)
!1518 = !DILocation(line: 677, column: 22, scope: !1470)
!1519 = !DILocation(line: 679, column: 9, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 679, column: 2)
!1521 = !DILocation(line: 679, column: 7, scope: !1520)
!1522 = !DILocation(line: 679, column: 14, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 679, column: 2)
!1524 = !DILocation(line: 679, column: 18, scope: !1523)
!1525 = !DILocation(line: 679, column: 16, scope: !1523)
!1526 = !DILocation(line: 679, column: 2, scope: !1520)
!1527 = !DILocation(line: 680, column: 16, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 679, column: 44)
!1529 = !DILocation(line: 680, column: 15, scope: !1528)
!1530 = !DILocation(line: 680, column: 41, scope: !1528)
!1531 = !DILocation(line: 680, column: 12, scope: !1528)
!1532 = !DILocation(line: 681, column: 14, scope: !1528)
!1533 = !DILocation(line: 681, column: 12, scope: !1528)
!1534 = !DILocation(line: 683, column: 12, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 683, column: 7)
!1536 = !DILocation(line: 683, column: 30, scope: !1535)
!1537 = !DILocation(line: 683, column: 7, scope: !1535)
!1538 = !DILocation(line: 683, column: 38, scope: !1535)
!1539 = !DILocation(line: 683, column: 36, scope: !1535)
!1540 = !DILocation(line: 683, column: 7, scope: !1528)
!1541 = !DILocation(line: 684, column: 4, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 683, column: 54)
!1543 = !DILocation(line: 689, column: 3, scope: !1542)
!1544 = !DILocation(line: 691, column: 26, scope: !1528)
!1545 = !DILocation(line: 691, column: 44, scope: !1528)
!1546 = !DILocation(line: 691, column: 20, scope: !1528)
!1547 = !DILocation(line: 691, column: 18, scope: !1528)
!1548 = !DILocation(line: 692, column: 17, scope: !1528)
!1549 = !DILocation(line: 693, column: 2, scope: !1528)
!1550 = !DILocation(line: 679, column: 40, scope: !1523)
!1551 = !DILocation(line: 679, column: 2, scope: !1523)
!1552 = distinct !{!1552, !1526, !1553, !987, !988}
!1553 = !DILocation(line: 693, column: 2, scope: !1520)
!1554 = !DILocation(line: 695, column: 2, scope: !1470)
!1555 = !DILocation(line: 696, column: 1, scope: !1470)
!1556 = distinct !DISubprogram(name: "acpi_ns_repair_TSS", scope: !3, file: !3, line: 714, type: !90, scopeLine: 716, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1557)
!1557 = !{!1558, !1559, !1560, !1561, !1562}
!1558 = !DILocalVariable(name: "info", arg: 1, scope: !1556, file: !3, line: 714, type: !92)
!1559 = !DILocalVariable(name: "return_object_ptr", arg: 2, scope: !1556, file: !3, line: 715, type: !170)
!1560 = !DILocalVariable(name: "return_object", scope: !1556, file: !3, line: 717, type: !102)
!1561 = !DILocalVariable(name: "status", scope: !1556, file: !3, line: 718, type: !15)
!1562 = !DILocalVariable(name: "node", scope: !1556, file: !3, line: 719, type: !97)
!1563 = !DILocation(line: 714, column: 47, scope: !1556)
!1564 = !DILocation(line: 715, column: 34, scope: !1556)
!1565 = !DILocation(line: 717, column: 2, scope: !1556)
!1566 = !DILocation(line: 717, column: 29, scope: !1556)
!1567 = !DILocation(line: 717, column: 46, scope: !1556)
!1568 = !DILocation(line: 717, column: 45, scope: !1556)
!1569 = !DILocation(line: 718, column: 2, scope: !1556)
!1570 = !DILocation(line: 718, column: 14, scope: !1556)
!1571 = !DILocation(line: 719, column: 2, scope: !1556)
!1572 = !DILocation(line: 719, column: 30, scope: !1556)
!1573 = !DILocation(line: 729, column: 28, scope: !1556)
!1574 = !DILocation(line: 729, column: 34, scope: !1556)
!1575 = !DILocation(line: 729, column: 11, scope: !1556)
!1576 = !DILocation(line: 729, column: 9, scope: !1556)
!1577 = !DILocation(line: 731, column: 6, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 731, column: 6)
!1579 = !DILocation(line: 731, column: 6, scope: !1556)
!1580 = !DILocation(line: 732, column: 3, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 731, column: 28)
!1582 = !DILocation(line: 735, column: 37, scope: !1556)
!1583 = !DILocation(line: 735, column: 43, scope: !1556)
!1584 = !DILocation(line: 735, column: 11, scope: !1556)
!1585 = !DILocation(line: 735, column: 9, scope: !1556)
!1586 = !DILocation(line: 739, column: 10, scope: !1556)
!1587 = !DILocation(line: 739, column: 2, scope: !1556)
!1588 = !DILocation(line: 740, column: 1, scope: !1556)
!1589 = distinct !DISubprogram(name: "acpi_ns_check_sorted_list", scope: !3, file: !3, line: 763, type: !1590, scopeLine: 769, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1592)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!15, !92, !102, !6, !6, !6, !111, !144}
!1592 = !{!1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605}
!1593 = !DILocalVariable(name: "info", arg: 1, scope: !1589, file: !3, line: 763, type: !92)
!1594 = !DILocalVariable(name: "return_object", arg: 2, scope: !1589, file: !3, line: 764, type: !102)
!1595 = !DILocalVariable(name: "start_index", arg: 3, scope: !1589, file: !3, line: 765, type: !6)
!1596 = !DILocalVariable(name: "expected_count", arg: 4, scope: !1589, file: !3, line: 766, type: !6)
!1597 = !DILocalVariable(name: "sort_index", arg: 5, scope: !1589, file: !3, line: 767, type: !6)
!1598 = !DILocalVariable(name: "sort_direction", arg: 6, scope: !1589, file: !3, line: 768, type: !111)
!1599 = !DILocalVariable(name: "sort_key_name", arg: 7, scope: !1589, file: !3, line: 768, type: !144)
!1600 = !DILocalVariable(name: "outer_element_count", scope: !1589, file: !3, line: 770, type: !6)
!1601 = !DILocalVariable(name: "outer_elements", scope: !1589, file: !3, line: 771, type: !170)
!1602 = !DILocalVariable(name: "elements", scope: !1589, file: !3, line: 772, type: !170)
!1603 = !DILocalVariable(name: "obj_desc", scope: !1589, file: !3, line: 773, type: !102)
!1604 = !DILocalVariable(name: "i", scope: !1589, file: !3, line: 774, type: !6)
!1605 = !DILocalVariable(name: "previous_value", scope: !1589, file: !3, line: 775, type: !6)
!1606 = !DILocation(line: 763, column: 54, scope: !1589)
!1607 = !DILocation(line: 764, column: 33, scope: !1589)
!1608 = !DILocation(line: 765, column: 10, scope: !1589)
!1609 = !DILocation(line: 766, column: 10, scope: !1589)
!1610 = !DILocation(line: 767, column: 10, scope: !1589)
!1611 = !DILocation(line: 768, column: 9, scope: !1589)
!1612 = !DILocation(line: 768, column: 31, scope: !1589)
!1613 = !DILocation(line: 770, column: 2, scope: !1589)
!1614 = !DILocation(line: 770, column: 6, scope: !1589)
!1615 = !DILocation(line: 771, column: 2, scope: !1589)
!1616 = !DILocation(line: 771, column: 30, scope: !1589)
!1617 = !DILocation(line: 772, column: 2, scope: !1589)
!1618 = !DILocation(line: 772, column: 30, scope: !1589)
!1619 = !DILocation(line: 773, column: 2, scope: !1589)
!1620 = !DILocation(line: 773, column: 29, scope: !1589)
!1621 = !DILocation(line: 774, column: 2, scope: !1589)
!1622 = !DILocation(line: 774, column: 6, scope: !1589)
!1623 = !DILocation(line: 775, column: 2, scope: !1589)
!1624 = !DILocation(line: 775, column: 6, scope: !1589)
!1625 = !DILocation(line: 781, column: 6, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 781, column: 6)
!1627 = !DILocation(line: 781, column: 28, scope: !1626)
!1628 = !DILocation(line: 781, column: 33, scope: !1626)
!1629 = !DILocation(line: 781, column: 6, scope: !1589)
!1630 = !DILocation(line: 782, column: 3, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 781, column: 55)
!1632 = !DILocation(line: 790, column: 24, scope: !1589)
!1633 = !DILocation(line: 790, column: 47, scope: !1589)
!1634 = !DILocation(line: 790, column: 22, scope: !1589)
!1635 = !DILocation(line: 791, column: 7, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 791, column: 6)
!1637 = !DILocation(line: 791, column: 27, scope: !1636)
!1638 = !DILocation(line: 791, column: 30, scope: !1636)
!1639 = !DILocation(line: 791, column: 45, scope: !1636)
!1640 = !DILocation(line: 791, column: 42, scope: !1636)
!1641 = !DILocation(line: 791, column: 6, scope: !1589)
!1642 = !DILocation(line: 792, column: 3, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 791, column: 66)
!1644 = !DILocation(line: 795, column: 20, scope: !1589)
!1645 = !DILocation(line: 795, column: 43, scope: !1589)
!1646 = !DILocation(line: 795, column: 52, scope: !1589)
!1647 = !DILocation(line: 795, column: 17, scope: !1589)
!1648 = !DILocation(line: 796, column: 25, scope: !1589)
!1649 = !DILocation(line: 796, column: 22, scope: !1589)
!1650 = !DILocation(line: 798, column: 17, scope: !1589)
!1651 = !DILocation(line: 799, column: 6, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 799, column: 6)
!1653 = !DILocation(line: 799, column: 21, scope: !1652)
!1654 = !DILocation(line: 799, column: 6, scope: !1589)
!1655 = !DILocation(line: 800, column: 18, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 799, column: 46)
!1657 = !DILocation(line: 801, column: 2, scope: !1656)
!1658 = !DILocation(line: 805, column: 9, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 805, column: 2)
!1660 = !DILocation(line: 805, column: 7, scope: !1659)
!1661 = !DILocation(line: 805, column: 14, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 805, column: 2)
!1663 = !DILocation(line: 805, column: 18, scope: !1662)
!1664 = !DILocation(line: 805, column: 16, scope: !1662)
!1665 = !DILocation(line: 805, column: 2, scope: !1659)
!1666 = !DILocation(line: 809, column: 9, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 809, column: 7)
!1668 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 805, column: 44)
!1669 = !DILocation(line: 809, column: 8, scope: !1667)
!1670 = !DILocation(line: 809, column: 33, scope: !1667)
!1671 = !DILocation(line: 809, column: 7, scope: !1667)
!1672 = !DILocation(line: 809, column: 38, scope: !1667)
!1673 = !DILocation(line: 809, column: 7, scope: !1668)
!1674 = !DILocation(line: 810, column: 4, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 809, column: 60)
!1676 = !DILocation(line: 815, column: 9, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 815, column: 7)
!1678 = !DILocation(line: 815, column: 8, scope: !1677)
!1679 = !DILocation(line: 815, column: 34, scope: !1677)
!1680 = !DILocation(line: 815, column: 42, scope: !1677)
!1681 = !DILocation(line: 815, column: 40, scope: !1677)
!1682 = !DILocation(line: 815, column: 7, scope: !1668)
!1683 = !DILocation(line: 816, column: 4, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 815, column: 58)
!1685 = !DILocation(line: 819, column: 16, scope: !1668)
!1686 = !DILocation(line: 819, column: 15, scope: !1668)
!1687 = !DILocation(line: 819, column: 41, scope: !1668)
!1688 = !DILocation(line: 819, column: 12, scope: !1668)
!1689 = !DILocation(line: 820, column: 14, scope: !1668)
!1690 = !DILocation(line: 820, column: 23, scope: !1668)
!1691 = !DILocation(line: 820, column: 12, scope: !1668)
!1692 = !DILocation(line: 822, column: 7, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 822, column: 7)
!1694 = !DILocation(line: 822, column: 24, scope: !1693)
!1695 = !DILocation(line: 822, column: 29, scope: !1693)
!1696 = !DILocation(line: 822, column: 7, scope: !1668)
!1697 = !DILocation(line: 823, column: 4, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 822, column: 51)
!1699 = !DILocation(line: 830, column: 9, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 830, column: 7)
!1701 = !DILocation(line: 830, column: 24, scope: !1700)
!1702 = !DILocation(line: 830, column: 48, scope: !1700)
!1703 = !DILocation(line: 831, column: 9, scope: !1700)
!1704 = !DILocation(line: 831, column: 27, scope: !1700)
!1705 = !DILocation(line: 831, column: 35, scope: !1700)
!1706 = !DILocation(line: 831, column: 33, scope: !1700)
!1707 = !DILocation(line: 831, column: 52, scope: !1700)
!1708 = !DILocation(line: 832, column: 9, scope: !1700)
!1709 = !DILocation(line: 832, column: 24, scope: !1700)
!1710 = !DILocation(line: 832, column: 49, scope: !1700)
!1711 = !DILocation(line: 833, column: 9, scope: !1700)
!1712 = !DILocation(line: 833, column: 27, scope: !1700)
!1713 = !DILocation(line: 833, column: 35, scope: !1700)
!1714 = !DILocation(line: 833, column: 33, scope: !1700)
!1715 = !DILocation(line: 830, column: 7, scope: !1668)
!1716 = !DILocation(line: 834, column: 23, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 833, column: 53)
!1718 = !DILocation(line: 835, column: 8, scope: !1717)
!1719 = !DILocation(line: 835, column: 17, scope: !1717)
!1720 = !DILocation(line: 836, column: 8, scope: !1717)
!1721 = !DILocation(line: 836, column: 29, scope: !1717)
!1722 = !DILocation(line: 837, column: 8, scope: !1717)
!1723 = !DILocation(line: 834, column: 4, scope: !1717)
!1724 = !DILocation(line: 839, column: 4, scope: !1717)
!1725 = !DILocation(line: 839, column: 10, scope: !1717)
!1726 = !DILocation(line: 839, column: 23, scope: !1717)
!1727 = !DILocation(line: 844, column: 4, scope: !1717)
!1728 = !DILocation(line: 847, column: 26, scope: !1668)
!1729 = !DILocation(line: 847, column: 44, scope: !1668)
!1730 = !DILocation(line: 847, column: 20, scope: !1668)
!1731 = !DILocation(line: 847, column: 18, scope: !1668)
!1732 = !DILocation(line: 848, column: 17, scope: !1668)
!1733 = !DILocation(line: 849, column: 2, scope: !1668)
!1734 = !DILocation(line: 805, column: 40, scope: !1662)
!1735 = !DILocation(line: 805, column: 2, scope: !1662)
!1736 = distinct !{!1736, !1665, !1737, !987, !988}
!1737 = !DILocation(line: 849, column: 2, scope: !1659)
!1738 = !DILocation(line: 851, column: 2, scope: !1589)
!1739 = !DILocation(line: 852, column: 1, scope: !1589)
!1740 = distinct !DISubprogram(name: "acpi_ns_sort_list", scope: !3, file: !3, line: 873, type: !1741, scopeLine: 875, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1743)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{null, !170, !6, !6, !111}
!1743 = !{!1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752}
!1744 = !DILocalVariable(name: "elements", arg: 1, scope: !1740, file: !3, line: 873, type: !170)
!1745 = !DILocalVariable(name: "count", arg: 2, scope: !1740, file: !3, line: 874, type: !6)
!1746 = !DILocalVariable(name: "index", arg: 3, scope: !1740, file: !3, line: 874, type: !6)
!1747 = !DILocalVariable(name: "sort_direction", arg: 4, scope: !1740, file: !3, line: 874, type: !111)
!1748 = !DILocalVariable(name: "obj_desc1", scope: !1740, file: !3, line: 876, type: !102)
!1749 = !DILocalVariable(name: "obj_desc2", scope: !1740, file: !3, line: 877, type: !102)
!1750 = !DILocalVariable(name: "temp_obj", scope: !1740, file: !3, line: 878, type: !102)
!1751 = !DILocalVariable(name: "i", scope: !1740, file: !3, line: 879, type: !6)
!1752 = !DILocalVariable(name: "j", scope: !1740, file: !3, line: 880, type: !6)
!1753 = !DILocation(line: 873, column: 47, scope: !1740)
!1754 = !DILocation(line: 874, column: 9, scope: !1740)
!1755 = !DILocation(line: 874, column: 20, scope: !1740)
!1756 = !DILocation(line: 874, column: 30, scope: !1740)
!1757 = !DILocation(line: 876, column: 2, scope: !1740)
!1758 = !DILocation(line: 876, column: 29, scope: !1740)
!1759 = !DILocation(line: 877, column: 2, scope: !1740)
!1760 = !DILocation(line: 877, column: 29, scope: !1740)
!1761 = !DILocation(line: 878, column: 2, scope: !1740)
!1762 = !DILocation(line: 878, column: 29, scope: !1740)
!1763 = !DILocation(line: 879, column: 2, scope: !1740)
!1764 = !DILocation(line: 879, column: 6, scope: !1740)
!1765 = !DILocation(line: 880, column: 2, scope: !1740)
!1766 = !DILocation(line: 880, column: 6, scope: !1740)
!1767 = !DILocation(line: 884, column: 9, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 884, column: 2)
!1769 = !DILocation(line: 884, column: 7, scope: !1768)
!1770 = !DILocation(line: 884, column: 14, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1768, file: !3, line: 884, column: 2)
!1772 = !DILocation(line: 884, column: 18, scope: !1771)
!1773 = !DILocation(line: 884, column: 16, scope: !1771)
!1774 = !DILocation(line: 884, column: 2, scope: !1768)
!1775 = !DILocation(line: 885, column: 13, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 885, column: 3)
!1777 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 884, column: 30)
!1778 = !DILocation(line: 885, column: 19, scope: !1776)
!1779 = !DILocation(line: 885, column: 10, scope: !1776)
!1780 = !DILocation(line: 885, column: 8, scope: !1776)
!1781 = !DILocation(line: 885, column: 25, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 885, column: 3)
!1783 = !DILocation(line: 885, column: 30, scope: !1782)
!1784 = !DILocation(line: 885, column: 27, scope: !1782)
!1785 = !DILocation(line: 885, column: 3, scope: !1776)
!1786 = !DILocation(line: 886, column: 16, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 885, column: 38)
!1788 = !DILocation(line: 886, column: 25, scope: !1787)
!1789 = !DILocation(line: 886, column: 27, scope: !1787)
!1790 = !DILocation(line: 886, column: 41, scope: !1787)
!1791 = !DILocation(line: 886, column: 50, scope: !1787)
!1792 = !DILocation(line: 886, column: 14, scope: !1787)
!1793 = !DILocation(line: 887, column: 16, scope: !1787)
!1794 = !DILocation(line: 887, column: 25, scope: !1787)
!1795 = !DILocation(line: 887, column: 37, scope: !1787)
!1796 = !DILocation(line: 887, column: 46, scope: !1787)
!1797 = !DILocation(line: 887, column: 14, scope: !1787)
!1798 = !DILocation(line: 889, column: 10, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 889, column: 8)
!1800 = !DILocation(line: 889, column: 25, scope: !1799)
!1801 = !DILocation(line: 889, column: 49, scope: !1799)
!1802 = !DILocation(line: 890, column: 10, scope: !1799)
!1803 = !DILocation(line: 890, column: 29, scope: !1799)
!1804 = !DILocation(line: 891, column: 10, scope: !1799)
!1805 = !DILocation(line: 891, column: 29, scope: !1799)
!1806 = !DILocation(line: 890, column: 35, scope: !1799)
!1807 = !DILocation(line: 892, column: 8, scope: !1799)
!1808 = !DILocation(line: 892, column: 13, scope: !1799)
!1809 = !DILocation(line: 892, column: 28, scope: !1799)
!1810 = !DILocation(line: 893, column: 5, scope: !1799)
!1811 = !DILocation(line: 893, column: 9, scope: !1799)
!1812 = !DILocation(line: 893, column: 28, scope: !1799)
!1813 = !DILocation(line: 894, column: 9, scope: !1799)
!1814 = !DILocation(line: 894, column: 28, scope: !1799)
!1815 = !DILocation(line: 893, column: 34, scope: !1799)
!1816 = !DILocation(line: 889, column: 8, scope: !1787)
!1817 = !DILocation(line: 895, column: 16, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 894, column: 37)
!1819 = !DILocation(line: 895, column: 25, scope: !1818)
!1820 = !DILocation(line: 895, column: 27, scope: !1818)
!1821 = !DILocation(line: 895, column: 14, scope: !1818)
!1822 = !DILocation(line: 896, column: 23, scope: !1818)
!1823 = !DILocation(line: 896, column: 32, scope: !1818)
!1824 = !DILocation(line: 896, column: 5, scope: !1818)
!1825 = !DILocation(line: 896, column: 14, scope: !1818)
!1826 = !DILocation(line: 896, column: 16, scope: !1818)
!1827 = !DILocation(line: 896, column: 21, scope: !1818)
!1828 = !DILocation(line: 897, column: 19, scope: !1818)
!1829 = !DILocation(line: 897, column: 5, scope: !1818)
!1830 = !DILocation(line: 897, column: 14, scope: !1818)
!1831 = !DILocation(line: 897, column: 17, scope: !1818)
!1832 = !DILocation(line: 898, column: 4, scope: !1818)
!1833 = !DILocation(line: 899, column: 3, scope: !1787)
!1834 = !DILocation(line: 885, column: 34, scope: !1782)
!1835 = !DILocation(line: 885, column: 3, scope: !1782)
!1836 = distinct !{!1836, !1785, !1837, !987, !988}
!1837 = !DILocation(line: 899, column: 3, scope: !1776)
!1838 = !DILocation(line: 900, column: 2, scope: !1777)
!1839 = !DILocation(line: 884, column: 26, scope: !1771)
!1840 = !DILocation(line: 884, column: 2, scope: !1771)
!1841 = distinct !{!1841, !1774, !1842, !987, !988}
!1842 = !DILocation(line: 900, column: 2, scope: !1768)
!1843 = !DILocation(line: 901, column: 1, scope: !1740)
!1844 = !DISubprogram(name: "acpi_ut_predefined_warning", scope: !1845, file: !1845, line: 708, type: !1846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1845 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1846 = !DISubroutineType(types: !1847)
!1847 = !{null, !861, !6, !144, !115, !861, null}
!1848 = distinct !DISubprogram(name: "acpi_ns_remove_element", scope: !3, file: !3, line: 917, type: !1849, scopeLine: 918, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1851)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !102, !6}
!1851 = !{!1852, !1853, !1854, !1855, !1856, !1857, !1858}
!1852 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1848, file: !3, line: 917, type: !102)
!1853 = !DILocalVariable(name: "index", arg: 2, scope: !1848, file: !3, line: 917, type: !6)
!1854 = !DILocalVariable(name: "source", scope: !1848, file: !3, line: 919, type: !170)
!1855 = !DILocalVariable(name: "dest", scope: !1848, file: !3, line: 920, type: !170)
!1856 = !DILocalVariable(name: "count", scope: !1848, file: !3, line: 921, type: !6)
!1857 = !DILocalVariable(name: "new_count", scope: !1848, file: !3, line: 922, type: !6)
!1858 = !DILocalVariable(name: "i", scope: !1848, file: !3, line: 923, type: !6)
!1859 = !DILocation(line: 917, column: 51, scope: !1848)
!1860 = !DILocation(line: 917, column: 65, scope: !1848)
!1861 = !DILocation(line: 919, column: 2, scope: !1848)
!1862 = !DILocation(line: 919, column: 30, scope: !1848)
!1863 = !DILocation(line: 920, column: 2, scope: !1848)
!1864 = !DILocation(line: 920, column: 30, scope: !1848)
!1865 = !DILocation(line: 921, column: 2, scope: !1848)
!1866 = !DILocation(line: 921, column: 6, scope: !1848)
!1867 = !DILocation(line: 922, column: 2, scope: !1848)
!1868 = !DILocation(line: 922, column: 6, scope: !1848)
!1869 = !DILocation(line: 923, column: 2, scope: !1848)
!1870 = !DILocation(line: 923, column: 6, scope: !1848)
!1871 = !DILocation(line: 927, column: 10, scope: !1848)
!1872 = !DILocation(line: 927, column: 28, scope: !1848)
!1873 = !DILocation(line: 927, column: 8, scope: !1848)
!1874 = !DILocation(line: 928, column: 14, scope: !1848)
!1875 = !DILocation(line: 928, column: 20, scope: !1848)
!1876 = !DILocation(line: 928, column: 12, scope: !1848)
!1877 = !DILocation(line: 930, column: 11, scope: !1848)
!1878 = !DILocation(line: 930, column: 29, scope: !1848)
!1879 = !DILocation(line: 930, column: 9, scope: !1848)
!1880 = !DILocation(line: 931, column: 9, scope: !1848)
!1881 = !DILocation(line: 931, column: 7, scope: !1848)
!1882 = !DILocation(line: 935, column: 9, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 935, column: 2)
!1884 = !DILocation(line: 935, column: 7, scope: !1883)
!1885 = !DILocation(line: 935, column: 14, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 935, column: 2)
!1887 = !DILocation(line: 935, column: 18, scope: !1886)
!1888 = !DILocation(line: 935, column: 16, scope: !1886)
!1889 = !DILocation(line: 935, column: 2, scope: !1883)
!1890 = !DILocation(line: 936, column: 7, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 936, column: 7)
!1892 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 935, column: 30)
!1893 = !DILocation(line: 936, column: 12, scope: !1891)
!1894 = !DILocation(line: 936, column: 9, scope: !1891)
!1895 = !DILocation(line: 936, column: 7, scope: !1892)
!1896 = !DILocation(line: 937, column: 30, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 936, column: 19)
!1898 = !DILocation(line: 937, column: 29, scope: !1897)
!1899 = !DILocation(line: 937, column: 4, scope: !1897)
!1900 = !DILocation(line: 938, column: 30, scope: !1897)
!1901 = !DILocation(line: 938, column: 29, scope: !1897)
!1902 = !DILocation(line: 938, column: 4, scope: !1897)
!1903 = !DILocation(line: 939, column: 3, scope: !1897)
!1904 = !DILocation(line: 940, column: 13, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 939, column: 10)
!1906 = !DILocation(line: 940, column: 12, scope: !1905)
!1907 = !DILocation(line: 940, column: 5, scope: !1905)
!1908 = !DILocation(line: 940, column: 10, scope: !1905)
!1909 = !DILocation(line: 941, column: 8, scope: !1905)
!1910 = !DILocation(line: 944, column: 9, scope: !1892)
!1911 = !DILocation(line: 945, column: 2, scope: !1892)
!1912 = !DILocation(line: 935, column: 26, scope: !1886)
!1913 = !DILocation(line: 935, column: 2, scope: !1886)
!1914 = distinct !{!1914, !1889, !1915, !987, !988}
!1915 = !DILocation(line: 945, column: 2, scope: !1883)
!1916 = !DILocation(line: 949, column: 3, scope: !1848)
!1917 = !DILocation(line: 949, column: 8, scope: !1848)
!1918 = !DILocation(line: 950, column: 28, scope: !1848)
!1919 = !DILocation(line: 950, column: 2, scope: !1848)
!1920 = !DILocation(line: 950, column: 20, scope: !1848)
!1921 = !DILocation(line: 950, column: 26, scope: !1848)
!1922 = !DILocation(line: 951, column: 1, scope: !1848)
!1923 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1845, file: !1845, line: 369, type: !1924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{null, !102}
!1926 = !DISubprogram(name: "acpi_ut_create_buffer_object", scope: !1845, file: !1845, line: 457, type: !1927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!102, !1929}
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !16, line: 127, baseType: !132)
!1930 = !DISubprogram(name: "acpi_ut_create_string_object", scope: !1845, file: !1845, line: 459, type: !1927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1931 = distinct !DISubprogram(name: "__toupper", scope: !1932, file: !1932, line: 56, type: !1933, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1935)
!1932 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16ff466080305de3b83767ab84129dc0")
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!19, !19}
!1935 = !{!1936}
!1936 = !DILocalVariable(name: "c", arg: 1, scope: !1931, file: !1932, line: 56, type: !19)
!1937 = !DILocation(line: 56, column: 53, scope: !1931)
!1938 = !DILocation(line: 58, column: 6, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1931, file: !1932, line: 58, column: 6)
!1940 = !DILocation(line: 58, column: 6, scope: !1931)
!1941 = !DILocation(line: 59, column: 5, scope: !1939)
!1942 = !DILocation(line: 59, column: 3, scope: !1939)
!1943 = !DILocation(line: 60, column: 9, scope: !1931)
!1944 = !DILocation(line: 60, column: 2, scope: !1931)
!1945 = !DISubprogram(name: "acpi_ns_get_node", scope: !1946, file: !1946, line: 285, type: !1947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1946 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!15, !97, !861, !6, !1949}
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
