; ModuleID = 'drivers/acpi/acpica/nsrepair.c'
source_filename = "drivers/acpi/acpica/nsrepair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_simple_repair_info = type { [4 x i8], i32, i32, ptr }
%struct.acpi_evaluate_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i8, i8, i8 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_package = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, i32, i32 }

@_acpi_module_name = internal constant [9 x i8] c"nsrepair\00", align 1, !dbg !0
@.str = private unnamed_addr constant [30 x i8] c"Missing expected return value\00", align 1, !dbg !38
@.str.1 = private unnamed_addr constant [30 x i8] c"During return object analysis\00", align 1, !dbg !44
@.str.2 = private unnamed_addr constant [38 x i8] c"Found unexpected NULL package element\00", align 1, !dbg !46
@acpi_object_repair_info = internal constant [7 x %struct.acpi_simple_repair_info] [%struct.acpi_simple_repair_info { [4 x i8] c"_CRS", i32 15, i32 -1, ptr @acpi_ns_convert_to_resource }, %struct.acpi_simple_repair_info { [4 x i8] c"_DMA", i32 15, i32 -1, ptr @acpi_ns_convert_to_resource }, %struct.acpi_simple_repair_info { [4 x i8] c"_PRS", i32 15, i32 -1, ptr @acpi_ns_convert_to_resource }, %struct.acpi_simple_repair_info { [4 x i8] c"_DEP", i32 4, i32 -2, ptr @acpi_ns_convert_to_reference }, %struct.acpi_simple_repair_info { [4 x i8] c"_MLS", i32 4, i32 1, ptr @acpi_ns_convert_to_unicode }, %struct.acpi_simple_repair_info { [4 x i8] c"_STR", i32 12, i32 -1, ptr @acpi_ns_convert_to_unicode }, %struct.acpi_simple_repair_info zeroinitializer], align 16, !dbg !51

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_simple_repair(ptr noundef %info, i32 noundef %expected_btypes, i32 noundef %package_index, ptr noundef %return_object_ptr) #0 align 16 !dbg !841 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %expected_btypes.addr = alloca i32, align 4
  %package_index.addr = alloca i32, align 4
  %return_object_ptr.addr = alloca ptr, align 8
  %return_object = alloca ptr, align 8
  %new_object = alloca ptr, align 8
  %status = alloca i32, align 4
  %predefined = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !910, metadata !DIExpression()), !dbg !920
  store i32 %expected_btypes, ptr %expected_btypes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %expected_btypes.addr, metadata !911, metadata !DIExpression()), !dbg !921
  store i32 %package_index, ptr %package_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %package_index.addr, metadata !912, metadata !DIExpression()), !dbg !922
  store ptr %return_object_ptr, ptr %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object_ptr.addr, metadata !913, metadata !DIExpression()), !dbg !923
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_object) #4, !dbg !924
  call void @llvm.dbg.declare(metadata ptr %return_object, metadata !914, metadata !DIExpression()), !dbg !925
  %0 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !926
  %1 = load ptr, ptr %0, align 8, !dbg !927
  store ptr %1, ptr %return_object, align 8, !dbg !925
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_object) #4, !dbg !928
  call void @llvm.dbg.declare(metadata ptr %new_object, metadata !915, metadata !DIExpression()), !dbg !929
  store ptr null, ptr %new_object, align 8, !dbg !929
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !930
  call void @llvm.dbg.declare(metadata ptr %status, metadata !916, metadata !DIExpression()), !dbg !931
  call void @llvm.lifetime.start.p0(i64 8, ptr %predefined) #4, !dbg !932
  call void @llvm.dbg.declare(metadata ptr %predefined, metadata !917, metadata !DIExpression()), !dbg !933
  %2 = load ptr, ptr %info.addr, align 8, !dbg !934
  %node = getelementptr inbounds %struct.acpi_evaluate_info, ptr %2, i32 0, i32 3, !dbg !935
  %3 = load ptr, ptr %node, align 8, !dbg !935
  %4 = load ptr, ptr %info.addr, align 8, !dbg !936
  %return_btype = getelementptr inbounds %struct.acpi_evaluate_info, ptr %4, i32 0, i32 10, !dbg !937
  %5 = load i32, ptr %return_btype, align 4, !dbg !937
  %6 = load i32, ptr %package_index.addr, align 4, !dbg !938
  %call = call ptr @acpi_ns_match_simple_repair(ptr noundef %3, i32 noundef %5, i32 noundef %6) #5, !dbg !939
  store ptr %call, ptr %predefined, align 8, !dbg !940
  %7 = load ptr, ptr %predefined, align 8, !dbg !941
  %tobool = icmp ne ptr %7, null, !dbg !941
  br i1 %tobool, label %if.then, label %if.end11, !dbg !943

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %return_object, align 8, !dbg !944
  %tobool1 = icmp ne ptr %8, null, !dbg !944
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !947

if.then2:                                         ; preds = %if.then
  %9 = load ptr, ptr %info.addr, align 8, !dbg !948
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %9, i32 0, i32 5, !dbg !948
  %10 = load ptr, ptr %full_pathname, align 8, !dbg !948
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 141, ptr noundef %10, i16 noundef zeroext 0, ptr noundef @.str) #5, !dbg !948
  br label %if.end, !dbg !950

if.end:                                           ; preds = %if.then2, %if.then
  %11 = load ptr, ptr %predefined, align 8, !dbg !951
  %object_converter = getelementptr inbounds %struct.acpi_simple_repair_info, ptr %11, i32 0, i32 3, !dbg !952
  %12 = load ptr, ptr %object_converter, align 8, !dbg !952
  %13 = load ptr, ptr %info.addr, align 8, !dbg !953
  %node3 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %13, i32 0, i32 3, !dbg !954
  %14 = load ptr, ptr %node3, align 8, !dbg !954
  %15 = load ptr, ptr %return_object, align 8, !dbg !955
  %call4 = call i32 %12(ptr noundef %14, ptr noundef %15, ptr noundef %new_object) #5, !dbg !951
  store i32 %call4, ptr %status, align 4, !dbg !956
  %16 = load i32, ptr %status, align 4, !dbg !957
  %tobool5 = icmp ne i32 %16, 0, !dbg !957
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !959

if.then6:                                         ; preds = %if.end
  %17 = load i32, ptr %status, align 4, !dbg !960
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 152, i32 noundef %17, ptr noundef @.str.1) #5, !dbg !960
  %18 = load i32, ptr %status, align 4, !dbg !962
  store i32 %18, ptr %retval, align 4, !dbg !963
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !963

if.end7:                                          ; preds = %if.end
  %19 = load ptr, ptr %new_object, align 8, !dbg !964
  %tobool8 = icmp ne ptr %19, null, !dbg !964
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !966

if.then9:                                         ; preds = %if.end7
  br label %object_repaired, !dbg !967

if.end10:                                         ; preds = %if.end7
  br label %if.end11, !dbg !969

if.end11:                                         ; preds = %if.end10, %entry
  %20 = load ptr, ptr %info.addr, align 8, !dbg !970
  %return_btype12 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %20, i32 0, i32 10, !dbg !972
  %21 = load i32, ptr %return_btype12, align 4, !dbg !972
  %22 = load i32, ptr %expected_btypes.addr, align 4, !dbg !973
  %and = and i32 %21, %22, !dbg !974
  %tobool13 = icmp ne i32 %and, 0, !dbg !974
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !975

if.then14:                                        ; preds = %if.end11
  store i32 0, ptr %retval, align 4, !dbg !976
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !976

if.end15:                                         ; preds = %if.end11
  %23 = load ptr, ptr %return_object, align 8, !dbg !978
  %tobool16 = icmp ne ptr %23, null, !dbg !978
  br i1 %tobool16, label %if.end34, label %if.then17, !dbg !980

if.then17:                                        ; preds = %if.end15
  %24 = load i32, ptr %expected_btypes.addr, align 4, !dbg !981
  %tobool18 = icmp ne i32 %24, 0, !dbg !981
  br i1 %tobool18, label %if.then19, label %if.end33, !dbg !984

if.then19:                                        ; preds = %if.then17
  %25 = load i32, ptr %expected_btypes.addr, align 4, !dbg !985
  %and20 = and i32 %25, 1, !dbg !988
  %tobool21 = icmp ne i32 %and20, 0, !dbg !988
  br i1 %tobool21, label %if.end28, label %land.lhs.true, !dbg !989

land.lhs.true:                                    ; preds = %if.then19
  %26 = load i32, ptr %package_index.addr, align 4, !dbg !990
  %cmp = icmp ne i32 %26, -1, !dbg !991
  br i1 %cmp, label %if.then22, label %if.end28, !dbg !992

if.then22:                                        ; preds = %land.lhs.true
  %27 = load ptr, ptr %info.addr, align 8, !dbg !993
  %full_pathname23 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %27, i32 0, i32 5, !dbg !993
  %28 = load ptr, ptr %full_pathname23, align 8, !dbg !993
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 187, ptr noundef %28, i16 noundef zeroext 0, ptr noundef @.str.2) #5, !dbg !993
  %29 = load ptr, ptr %info.addr, align 8, !dbg !995
  %30 = load i32, ptr %expected_btypes.addr, align 4, !dbg !996
  %31 = load i32, ptr %package_index.addr, align 4, !dbg !997
  %32 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !998
  %call24 = call i32 @acpi_ns_repair_null_element(ptr noundef %29, i32 noundef %30, i32 noundef %31, ptr noundef %32) #5, !dbg !999
  store i32 %call24, ptr %status, align 4, !dbg !1000
  %33 = load i32, ptr %status, align 4, !dbg !1001
  %tobool25 = icmp ne i32 %33, 0, !dbg !1001
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !1003

if.then26:                                        ; preds = %if.then22
  store i32 0, ptr %retval, align 4, !dbg !1004
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1004

if.end27:                                         ; preds = %if.then22
  br label %if.end28, !dbg !1006

if.end28:                                         ; preds = %if.end27, %land.lhs.true, %if.then19
  %34 = load i32, ptr %expected_btypes.addr, align 4, !dbg !1007
  %cmp29 = icmp ne i32 %34, 1, !dbg !1009
  br i1 %cmp29, label %if.then30, label %if.end32, !dbg !1010

if.then30:                                        ; preds = %if.end28
  %35 = load ptr, ptr %info.addr, align 8, !dbg !1011
  %full_pathname31 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %35, i32 0, i32 5, !dbg !1011
  %36 = load ptr, ptr %full_pathname31, align 8, !dbg !1011
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 203, ptr noundef %36, i16 noundef zeroext 0, ptr noundef @.str) #5, !dbg !1011
  store i32 12306, ptr %retval, align 4, !dbg !1013
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1013

if.end32:                                         ; preds = %if.end28
  br label %if.end33, !dbg !1014

if.end33:                                         ; preds = %if.end32, %if.then17
  br label %if.end34, !dbg !1015

if.end34:                                         ; preds = %if.end33, %if.end15
  %37 = load i32, ptr %expected_btypes.addr, align 4, !dbg !1016
  %and35 = and i32 %37, 2, !dbg !1018
  %tobool36 = icmp ne i32 %and35, 0, !dbg !1018
  br i1 %tobool36, label %if.then37, label %if.end42, !dbg !1019

if.then37:                                        ; preds = %if.end34
  %38 = load ptr, ptr %return_object, align 8, !dbg !1020
  %call38 = call i32 @acpi_ns_convert_to_integer(ptr noundef %38, ptr noundef %new_object) #5, !dbg !1022
  store i32 %call38, ptr %status, align 4, !dbg !1023
  %39 = load i32, ptr %status, align 4, !dbg !1024
  %tobool39 = icmp ne i32 %39, 0, !dbg !1024
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !1026

if.then40:                                        ; preds = %if.then37
  br label %object_repaired, !dbg !1027

if.end41:                                         ; preds = %if.then37
  br label %if.end42, !dbg !1029

if.end42:                                         ; preds = %if.end41, %if.end34
  %40 = load i32, ptr %expected_btypes.addr, align 4, !dbg !1030
  %and43 = and i32 %40, 4, !dbg !1032
  %tobool44 = icmp ne i32 %and43, 0, !dbg !1032
  br i1 %tobool44, label %if.then45, label %if.end50, !dbg !1033

if.then45:                                        ; preds = %if.end42
  %41 = load ptr, ptr %return_object, align 8, !dbg !1034
  %call46 = call i32 @acpi_ns_convert_to_string(ptr noundef %41, ptr noundef %new_object) #5, !dbg !1036
  store i32 %call46, ptr %status, align 4, !dbg !1037
  %42 = load i32, ptr %status, align 4, !dbg !1038
  %tobool47 = icmp ne i32 %42, 0, !dbg !1038
  br i1 %tobool47, label %if.end49, label %if.then48, !dbg !1040

if.then48:                                        ; preds = %if.then45
  br label %object_repaired, !dbg !1041

if.end49:                                         ; preds = %if.then45
  br label %if.end50, !dbg !1043

if.end50:                                         ; preds = %if.end49, %if.end42
  %43 = load i32, ptr %expected_btypes.addr, align 4, !dbg !1044
  %and51 = and i32 %43, 8, !dbg !1046
  %tobool52 = icmp ne i32 %and51, 0, !dbg !1046
  br i1 %tobool52, label %if.then53, label %if.end58, !dbg !1047

if.then53:                                        ; preds = %if.end50
  %44 = load ptr, ptr %return_object, align 8, !dbg !1048
  %call54 = call i32 @acpi_ns_convert_to_buffer(ptr noundef %44, ptr noundef %new_object) #5, !dbg !1050
  store i32 %call54, ptr %status, align 4, !dbg !1051
  %45 = load i32, ptr %status, align 4, !dbg !1052
  %tobool55 = icmp ne i32 %45, 0, !dbg !1052
  br i1 %tobool55, label %if.end57, label %if.then56, !dbg !1054

if.then56:                                        ; preds = %if.then53
  br label %object_repaired, !dbg !1055

if.end57:                                         ; preds = %if.then53
  br label %if.end58, !dbg !1057

if.end58:                                         ; preds = %if.end57, %if.end50
  %46 = load i32, ptr %expected_btypes.addr, align 4, !dbg !1058
  %and59 = and i32 %46, 16, !dbg !1060
  %tobool60 = icmp ne i32 %and59, 0, !dbg !1060
  br i1 %tobool60, label %if.then61, label %if.end66, !dbg !1061

if.then61:                                        ; preds = %if.end58
  %47 = load ptr, ptr %info.addr, align 8, !dbg !1062
  %48 = load ptr, ptr %return_object, align 8, !dbg !1064
  %call62 = call i32 @acpi_ns_wrap_with_package(ptr noundef %47, ptr noundef %48, ptr noundef %new_object) #5, !dbg !1065
  store i32 %call62, ptr %status, align 4, !dbg !1066
  %49 = load i32, ptr %status, align 4, !dbg !1067
  %tobool63 = icmp ne i32 %49, 0, !dbg !1067
  br i1 %tobool63, label %if.end65, label %if.then64, !dbg !1069

if.then64:                                        ; preds = %if.then61
  %50 = load ptr, ptr %new_object, align 8, !dbg !1070
  %51 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !1072
  store ptr %50, ptr %51, align 8, !dbg !1073
  %52 = load ptr, ptr %info.addr, align 8, !dbg !1074
  %return_flags = getelementptr inbounds %struct.acpi_evaluate_info, ptr %52, i32 0, i32 9, !dbg !1075
  %53 = load i32, ptr %return_flags, align 8, !dbg !1076
  %or = or i32 %53, 1, !dbg !1076
  store i32 %or, ptr %return_flags, align 8, !dbg !1076
  store i32 0, ptr %retval, align 4, !dbg !1077
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1077

if.end65:                                         ; preds = %if.then61
  br label %if.end66, !dbg !1078

if.end66:                                         ; preds = %if.end65, %if.end58
  store i32 12291, ptr %retval, align 4, !dbg !1079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1079

object_repaired:                                  ; preds = %if.then56, %if.then48, %if.then40, %if.then9
  call void @llvm.dbg.label(metadata !919), !dbg !1080
  %54 = load i32, ptr %package_index.addr, align 4, !dbg !1081
  %cmp67 = icmp ne i32 %54, -1, !dbg !1083
  br i1 %cmp67, label %if.then68, label %if.else, !dbg !1084

if.then68:                                        ; preds = %object_repaired
  %55 = load ptr, ptr %info.addr, align 8, !dbg !1085
  %return_flags69 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %55, i32 0, i32 9, !dbg !1088
  %56 = load i32, ptr %return_flags69, align 8, !dbg !1088
  %and70 = and i32 %56, 2, !dbg !1089
  %tobool71 = icmp ne i32 %and70, 0, !dbg !1089
  br i1 %tobool71, label %if.end74, label %if.then72, !dbg !1090

if.then72:                                        ; preds = %if.then68
  %57 = load ptr, ptr %return_object, align 8, !dbg !1091
  %reference_count = getelementptr inbounds %struct.acpi_object_common, ptr %57, i32 0, i32 3, !dbg !1093
  %58 = load i16, ptr %reference_count, align 2, !dbg !1093
  %59 = load ptr, ptr %new_object, align 8, !dbg !1094
  %reference_count73 = getelementptr inbounds %struct.acpi_object_common, ptr %59, i32 0, i32 3, !dbg !1095
  store i16 %58, ptr %reference_count73, align 2, !dbg !1096
  br label %if.end74, !dbg !1097

if.end74:                                         ; preds = %if.then72, %if.then68
  br label %if.end75, !dbg !1098

if.else:                                          ; preds = %object_repaired
  br label %if.end75

if.end75:                                         ; preds = %if.else, %if.end74
  %60 = load ptr, ptr %return_object, align 8, !dbg !1099
  call void @acpi_ut_remove_reference(ptr noundef %60) #5, !dbg !1100
  %61 = load ptr, ptr %new_object, align 8, !dbg !1101
  %62 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !1102
  store ptr %61, ptr %62, align 8, !dbg !1103
  %63 = load ptr, ptr %info.addr, align 8, !dbg !1104
  %return_flags76 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %63, i32 0, i32 9, !dbg !1105
  %64 = load i32, ptr %return_flags76, align 8, !dbg !1106
  %or77 = or i32 %64, 1, !dbg !1106
  store i32 %or77, ptr %return_flags76, align 8, !dbg !1106
  store i32 0, ptr %retval, align 4, !dbg !1107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1107

cleanup:                                          ; preds = %if.end75, %if.end66, %if.then64, %if.then30, %if.then26, %if.then14, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %predefined) #4, !dbg !1108
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1108
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_object) #4, !dbg !1108
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_object) #4, !dbg !1108
  %65 = load i32, ptr %retval, align 4, !dbg !1108
  ret i32 %65, !dbg !1108
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_ns_match_simple_repair(ptr noundef %node, i32 noundef %return_btype, i32 noundef %package_index) #0 align 16 !dbg !1109 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %return_btype.addr = alloca i32, align 4
  %package_index.addr = alloca i32, align 4
  %this_name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1113, metadata !DIExpression()), !dbg !1117
  store i32 %return_btype, ptr %return_btype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %return_btype.addr, metadata !1114, metadata !DIExpression()), !dbg !1118
  store i32 %package_index, ptr %package_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %package_index.addr, metadata !1115, metadata !DIExpression()), !dbg !1119
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_name) #4, !dbg !1120
  call void @llvm.dbg.declare(metadata ptr %this_name, metadata !1116, metadata !DIExpression()), !dbg !1121
  store ptr @acpi_object_repair_info, ptr %this_name, align 8, !dbg !1122
  br label %while.cond, !dbg !1123

while.cond:                                       ; preds = %if.end9, %entry
  %0 = load ptr, ptr %this_name, align 8, !dbg !1124
  %object_converter = getelementptr inbounds %struct.acpi_simple_repair_info, ptr %0, i32 0, i32 3, !dbg !1125
  %1 = load ptr, ptr %object_converter, align 8, !dbg !1125
  %tobool = icmp ne ptr %1, null, !dbg !1123
  br i1 %tobool, label %while.body, label %while.end, !dbg !1123

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %node.addr, align 8, !dbg !1126
  %name = getelementptr inbounds %struct.acpi_namespace_node, ptr %2, i32 0, i32 4, !dbg !1126
  %arraydecay = getelementptr inbounds [4 x i8], ptr %name, i64 0, i64 0, !dbg !1126
  %3 = ptrtoint ptr %arraydecay to i64, !dbg !1126
  %4 = inttoptr i64 %3 to ptr, !dbg !1126
  %5 = load i32, ptr %4, align 4, !dbg !1126
  %6 = load ptr, ptr %this_name, align 8, !dbg !1126
  %name1 = getelementptr inbounds %struct.acpi_simple_repair_info, ptr %6, i32 0, i32 0, !dbg !1126
  %arraydecay2 = getelementptr inbounds [4 x i8], ptr %name1, i64 0, i64 0, !dbg !1126
  %7 = ptrtoint ptr %arraydecay2 to i64, !dbg !1126
  %8 = inttoptr i64 %7 to ptr, !dbg !1126
  %9 = load i32, ptr %8, align 4, !dbg !1126
  %cmp = icmp eq i32 %5, %9, !dbg !1126
  br i1 %cmp, label %if.then, label %if.end9, !dbg !1129

if.then:                                          ; preds = %while.body
  %10 = load i32, ptr %return_btype.addr, align 4, !dbg !1130
  %11 = load ptr, ptr %this_name, align 8, !dbg !1133
  %unexpected_btypes = getelementptr inbounds %struct.acpi_simple_repair_info, ptr %11, i32 0, i32 1, !dbg !1134
  %12 = load i32, ptr %unexpected_btypes, align 4, !dbg !1134
  %and = and i32 %10, %12, !dbg !1135
  %tobool3 = icmp ne i32 %and, 0, !dbg !1135
  br i1 %tobool3, label %land.lhs.true, label %if.end, !dbg !1136

land.lhs.true:                                    ; preds = %if.then
  %13 = load ptr, ptr %this_name, align 8, !dbg !1137
  %package_index4 = getelementptr inbounds %struct.acpi_simple_repair_info, ptr %13, i32 0, i32 2, !dbg !1138
  %14 = load i32, ptr %package_index4, align 8, !dbg !1138
  %cmp5 = icmp eq i32 %14, -2, !dbg !1139
  br i1 %cmp5, label %if.then8, label %lor.lhs.false, !dbg !1140

lor.lhs.false:                                    ; preds = %land.lhs.true
  %15 = load i32, ptr %package_index.addr, align 4, !dbg !1141
  %16 = load ptr, ptr %this_name, align 8, !dbg !1142
  %package_index6 = getelementptr inbounds %struct.acpi_simple_repair_info, ptr %16, i32 0, i32 2, !dbg !1143
  %17 = load i32, ptr %package_index6, align 8, !dbg !1143
  %cmp7 = icmp eq i32 %15, %17, !dbg !1144
  br i1 %cmp7, label %if.then8, label %if.end, !dbg !1145

if.then8:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %18 = load ptr, ptr %this_name, align 8, !dbg !1146
  store ptr %18, ptr %retval, align 8, !dbg !1148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1148

if.end:                                           ; preds = %lor.lhs.false, %if.then
  store ptr null, ptr %retval, align 8, !dbg !1149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1149

if.end9:                                          ; preds = %while.body
  %19 = load ptr, ptr %this_name, align 8, !dbg !1150
  %incdec.ptr = getelementptr %struct.acpi_simple_repair_info, ptr %19, i32 1, !dbg !1150
  store ptr %incdec.ptr, ptr %this_name, align 8, !dbg !1150
  br label %while.cond, !dbg !1123, !llvm.loop !1151

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !1155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1155

cleanup:                                          ; preds = %while.end, %if.end, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_name) #4, !dbg !1156
  %20 = load ptr, ptr %retval, align 8, !dbg !1156
  ret ptr %20, !dbg !1156
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1157 dso_local void @acpi_ut_predefined_warning(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1161 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_repair_null_element(ptr noundef %info, i32 noundef %expected_btypes, i32 noundef %package_index, ptr noundef %return_object_ptr) #0 align 16 !dbg !1165 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %expected_btypes.addr = alloca i32, align 4
  %package_index.addr = alloca i32, align 4
  %return_object_ptr.addr = alloca ptr, align 8
  %return_object = alloca ptr, align 8
  %new_object = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1167, metadata !DIExpression()), !dbg !1173
  store i32 %expected_btypes, ptr %expected_btypes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %expected_btypes.addr, metadata !1168, metadata !DIExpression()), !dbg !1174
  store i32 %package_index, ptr %package_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %package_index.addr, metadata !1169, metadata !DIExpression()), !dbg !1175
  store ptr %return_object_ptr, ptr %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object_ptr.addr, metadata !1170, metadata !DIExpression()), !dbg !1176
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_object) #4, !dbg !1177
  call void @llvm.dbg.declare(metadata ptr %return_object, metadata !1171, metadata !DIExpression()), !dbg !1178
  %0 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !1179
  %1 = load ptr, ptr %0, align 8, !dbg !1180
  store ptr %1, ptr %return_object, align 8, !dbg !1178
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_object) #4, !dbg !1181
  call void @llvm.dbg.declare(metadata ptr %new_object, metadata !1172, metadata !DIExpression()), !dbg !1182
  %2 = load ptr, ptr %return_object, align 8, !dbg !1183
  %tobool = icmp ne ptr %2, null, !dbg !1183
  br i1 %tobool, label %if.then, label %if.end, !dbg !1185

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1186
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1186

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %expected_btypes.addr, align 4, !dbg !1188
  %and = and i32 %3, 2, !dbg !1190
  %tobool1 = icmp ne i32 %and, 0, !dbg !1190
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !1191

if.then2:                                         ; preds = %if.end
  %call = call ptr @acpi_ut_create_integer_object(i64 noundef 0) #5, !dbg !1192
  store ptr %call, ptr %new_object, align 8, !dbg !1194
  br label %if.end15, !dbg !1195

if.else:                                          ; preds = %if.end
  %4 = load i32, ptr %expected_btypes.addr, align 4, !dbg !1196
  %and3 = and i32 %4, 4, !dbg !1198
  %tobool4 = icmp ne i32 %and3, 0, !dbg !1198
  br i1 %tobool4, label %if.then5, label %if.else7, !dbg !1199

if.then5:                                         ; preds = %if.else
  %call6 = call ptr @acpi_ut_create_string_object(i64 noundef 0) #5, !dbg !1200
  store ptr %call6, ptr %new_object, align 8, !dbg !1202
  br label %if.end14, !dbg !1203

if.else7:                                         ; preds = %if.else
  %5 = load i32, ptr %expected_btypes.addr, align 4, !dbg !1204
  %and8 = and i32 %5, 8, !dbg !1206
  %tobool9 = icmp ne i32 %and8, 0, !dbg !1206
  br i1 %tobool9, label %if.then10, label %if.else12, !dbg !1207

if.then10:                                        ; preds = %if.else7
  %call11 = call ptr @acpi_ut_create_buffer_object(i64 noundef 0) #5, !dbg !1208
  store ptr %call11, ptr %new_object, align 8, !dbg !1210
  br label %if.end13, !dbg !1211

if.else12:                                        ; preds = %if.else7
  store i32 12291, ptr %retval, align 4, !dbg !1212
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1212

if.end13:                                         ; preds = %if.then10
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then5
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then2
  %6 = load ptr, ptr %new_object, align 8, !dbg !1214
  %tobool16 = icmp ne ptr %6, null, !dbg !1214
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !1216

if.then17:                                        ; preds = %if.end15
  store i32 4, ptr %retval, align 4, !dbg !1217
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1217

if.end18:                                         ; preds = %if.end15
  %7 = load ptr, ptr %info.addr, align 8, !dbg !1219
  %parent_package = getelementptr inbounds %struct.acpi_evaluate_info, ptr %7, i32 0, i32 8, !dbg !1220
  %8 = load ptr, ptr %parent_package, align 8, !dbg !1220
  %reference_count = getelementptr inbounds %struct.acpi_object_common, ptr %8, i32 0, i32 3, !dbg !1221
  %9 = load i16, ptr %reference_count, align 2, !dbg !1221
  %10 = load ptr, ptr %new_object, align 8, !dbg !1222
  %reference_count19 = getelementptr inbounds %struct.acpi_object_common, ptr %10, i32 0, i32 3, !dbg !1223
  store i16 %9, ptr %reference_count19, align 2, !dbg !1224
  %11 = load ptr, ptr %new_object, align 8, !dbg !1225
  %12 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !1226
  store ptr %11, ptr %12, align 8, !dbg !1227
  %13 = load ptr, ptr %info.addr, align 8, !dbg !1228
  %return_flags = getelementptr inbounds %struct.acpi_evaluate_info, ptr %13, i32 0, i32 9, !dbg !1229
  %14 = load i32, ptr %return_flags, align 8, !dbg !1230
  %or = or i32 %14, 1, !dbg !1230
  store i32 %or, ptr %return_flags, align 8, !dbg !1230
  store i32 0, ptr %retval, align 4, !dbg !1231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1231

cleanup:                                          ; preds = %if.end18, %if.then17, %if.else12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_object) #4, !dbg !1232
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_object) #4, !dbg !1232
  %15 = load i32, ptr %retval, align 4, !dbg !1232
  ret i32 %15, !dbg !1232
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1233 dso_local i32 @acpi_ns_convert_to_integer(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1237 dso_local i32 @acpi_ns_convert_to_string(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1238 dso_local i32 @acpi_ns_convert_to_buffer(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_wrap_with_package(ptr noundef %info, ptr noundef %original_object, ptr noundef %obj_desc_ptr) #0 align 16 !dbg !1239 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %original_object.addr = alloca ptr, align 8
  %obj_desc_ptr.addr = alloca ptr, align 8
  %pkg_obj_desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1243, metadata !DIExpression()), !dbg !1247
  store ptr %original_object, ptr %original_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %original_object.addr, metadata !1244, metadata !DIExpression()), !dbg !1248
  store ptr %obj_desc_ptr, ptr %obj_desc_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc_ptr.addr, metadata !1245, metadata !DIExpression()), !dbg !1249
  call void @llvm.lifetime.start.p0(i64 8, ptr %pkg_obj_desc) #4, !dbg !1250
  call void @llvm.dbg.declare(metadata ptr %pkg_obj_desc, metadata !1246, metadata !DIExpression()), !dbg !1251
  %call = call ptr @acpi_ut_create_package_object(i32 noundef 1) #5, !dbg !1252
  store ptr %call, ptr %pkg_obj_desc, align 8, !dbg !1253
  %0 = load ptr, ptr %pkg_obj_desc, align 8, !dbg !1254
  %tobool = icmp ne ptr %0, null, !dbg !1254
  br i1 %tobool, label %if.end, label %if.then, !dbg !1256

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !1257
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1257

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %original_object.addr, align 8, !dbg !1259
  %2 = load ptr, ptr %pkg_obj_desc, align 8, !dbg !1260
  %elements = getelementptr inbounds %struct.acpi_object_package, ptr %2, i32 0, i32 6, !dbg !1261
  %3 = load ptr, ptr %elements, align 8, !dbg !1261
  %arrayidx = getelementptr ptr, ptr %3, i64 0, !dbg !1260
  store ptr %1, ptr %arrayidx, align 8, !dbg !1262
  %4 = load ptr, ptr %pkg_obj_desc, align 8, !dbg !1263
  %5 = load ptr, ptr %obj_desc_ptr.addr, align 8, !dbg !1264
  store ptr %4, ptr %5, align 8, !dbg !1265
  %6 = load ptr, ptr %info.addr, align 8, !dbg !1266
  %return_flags = getelementptr inbounds %struct.acpi_evaluate_info, ptr %6, i32 0, i32 9, !dbg !1267
  %7 = load i32, ptr %return_flags, align 8, !dbg !1268
  %or = or i32 %7, 3, !dbg !1268
  store i32 %or, ptr %return_flags, align 8, !dbg !1268
  store i32 0, ptr %retval, align 4, !dbg !1269
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1269

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pkg_obj_desc) #4, !dbg !1270
  %8 = load i32, ptr %retval, align 4, !dbg !1270
  ret i32 %8, !dbg !1270
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1271 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1274 dso_local ptr @acpi_ut_create_integer_object(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1277 dso_local ptr @acpi_ut_create_string_object(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1281 dso_local ptr @acpi_ut_create_buffer_object(i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ns_remove_null_elements(ptr noundef %info, i8 noundef zeroext %package_type, ptr noundef %obj_desc) #0 align 16 !dbg !1282 {
entry:
  %info.addr = alloca ptr, align 8
  %package_type.addr = alloca i8, align 1
  %obj_desc.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %dest = alloca ptr, align 8
  %count = alloca i32, align 4
  %new_count = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1286, metadata !DIExpression()), !dbg !1294
  store i8 %package_type, ptr %package_type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %package_type.addr, metadata !1287, metadata !DIExpression()), !dbg !1295
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1288, metadata !DIExpression()), !dbg !1296
  call void @llvm.lifetime.start.p0(i64 8, ptr %source) #4, !dbg !1297
  call void @llvm.dbg.declare(metadata ptr %source, metadata !1289, metadata !DIExpression()), !dbg !1298
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest) #4, !dbg !1299
  call void @llvm.dbg.declare(metadata ptr %dest, metadata !1290, metadata !DIExpression()), !dbg !1300
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #4, !dbg !1301
  call void @llvm.dbg.declare(metadata ptr %count, metadata !1291, metadata !DIExpression()), !dbg !1302
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_count) #4, !dbg !1303
  call void @llvm.dbg.declare(metadata ptr %new_count, metadata !1292, metadata !DIExpression()), !dbg !1304
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !1305
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1293, metadata !DIExpression()), !dbg !1306
  %0 = load i8, ptr %package_type.addr, align 1, !dbg !1307
  %conv = zext i8 %0 to i32, !dbg !1307
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb1
    i32 1, label %sw.bb1
    i32 3, label %sw.bb1
  ], !dbg !1308

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %sw.epilog, !dbg !1309

sw.default:                                       ; preds = %entry
  br label %sw.bb1, !dbg !1309

sw.bb1:                                           ; preds = %entry, %entry, %entry, %sw.default
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1311

sw.epilog:                                        ; preds = %sw.bb
  %1 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1312
  %count2 = getelementptr inbounds %struct.acpi_object_package, ptr %1, i32 0, i32 9, !dbg !1313
  %2 = load i32, ptr %count2, align 4, !dbg !1313
  store i32 %2, ptr %count, align 4, !dbg !1314
  %3 = load i32, ptr %count, align 4, !dbg !1315
  store i32 %3, ptr %new_count, align 4, !dbg !1316
  %4 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1317
  %elements = getelementptr inbounds %struct.acpi_object_package, ptr %4, i32 0, i32 6, !dbg !1318
  %5 = load ptr, ptr %elements, align 8, !dbg !1318
  store ptr %5, ptr %source, align 8, !dbg !1319
  %6 = load ptr, ptr %source, align 8, !dbg !1320
  store ptr %6, ptr %dest, align 8, !dbg !1321
  store i32 0, ptr %i, align 4, !dbg !1322
  br label %for.cond, !dbg !1324

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %7 = load i32, ptr %i, align 4, !dbg !1325
  %8 = load i32, ptr %count, align 4, !dbg !1327
  %cmp = icmp ult i32 %7, %8, !dbg !1328
  br i1 %cmp, label %for.body, label %for.end, !dbg !1329

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %source, align 8, !dbg !1330
  %10 = load ptr, ptr %9, align 8, !dbg !1333
  %tobool = icmp ne ptr %10, null, !dbg !1333
  br i1 %tobool, label %if.else, label %if.then, !dbg !1334

if.then:                                          ; preds = %for.body
  %11 = load i32, ptr %new_count, align 4, !dbg !1335
  %dec = add i32 %11, -1, !dbg !1335
  store i32 %dec, ptr %new_count, align 4, !dbg !1335
  br label %if.end, !dbg !1337

if.else:                                          ; preds = %for.body
  %12 = load ptr, ptr %source, align 8, !dbg !1338
  %13 = load ptr, ptr %12, align 8, !dbg !1340
  %14 = load ptr, ptr %dest, align 8, !dbg !1341
  store ptr %13, ptr %14, align 8, !dbg !1342
  %15 = load ptr, ptr %dest, align 8, !dbg !1343
  %incdec.ptr = getelementptr ptr, ptr %15, i32 1, !dbg !1343
  store ptr %incdec.ptr, ptr %dest, align 8, !dbg !1343
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load ptr, ptr %source, align 8, !dbg !1344
  %incdec.ptr4 = getelementptr ptr, ptr %16, i32 1, !dbg !1344
  store ptr %incdec.ptr4, ptr %source, align 8, !dbg !1344
  br label %for.inc, !dbg !1345

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %i, align 4, !dbg !1346
  %inc = add i32 %17, 1, !dbg !1346
  store i32 %inc, ptr %i, align 4, !dbg !1346
  br label %for.cond, !dbg !1347, !llvm.loop !1348

for.end:                                          ; preds = %for.cond
  %18 = load i32, ptr %new_count, align 4, !dbg !1350
  %19 = load i32, ptr %count, align 4, !dbg !1352
  %cmp5 = icmp ult i32 %18, %19, !dbg !1353
  br i1 %cmp5, label %if.then7, label %if.end9, !dbg !1354

if.then7:                                         ; preds = %for.end
  %20 = load ptr, ptr %dest, align 8, !dbg !1355
  store ptr null, ptr %20, align 8, !dbg !1357
  %21 = load i32, ptr %new_count, align 4, !dbg !1358
  %22 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1359
  %count8 = getelementptr inbounds %struct.acpi_object_package, ptr %22, i32 0, i32 9, !dbg !1360
  store i32 %21, ptr %count8, align 4, !dbg !1361
  br label %if.end9, !dbg !1362

if.end9:                                          ; preds = %if.then7, %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1363
  br label %cleanup, !dbg !1363

cleanup:                                          ; preds = %if.end9, %sw.bb1
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !1363
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_count) #4, !dbg !1363
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #4, !dbg !1363
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest) #4, !dbg !1363
  call void @llvm.lifetime.end.p0(i64 8, ptr %source) #4, !dbg !1363
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1363

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1364 dso_local ptr @acpi_ut_create_package_object(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ns_convert_to_resource(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ns_convert_to_reference(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ns_convert_to_unicode(ptr noundef, ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!832, !833, !834, !835, !836, !837, !838, !839}
!llvm.ident = !{!840}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !830, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.nsrepair.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22nsrepair\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/nsrepair.ll drivers/acpi/acpica/nsrepair.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !22, globals: !37, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsrepair.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28962f21b701611d8306ae51eb1e4f6f")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_return_package_types", file: !6, line: 86, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/acpredef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90908fe130010c7f826d1acdada19b8f")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21}
!9 = !DIEnumerator(name: "ACPI_PTYPE1_FIXED", value: 1)
!10 = !DIEnumerator(name: "ACPI_PTYPE1_VAR", value: 2)
!11 = !DIEnumerator(name: "ACPI_PTYPE1_OPTION", value: 3)
!12 = !DIEnumerator(name: "ACPI_PTYPE2", value: 4)
!13 = !DIEnumerator(name: "ACPI_PTYPE2_COUNT", value: 5)
!14 = !DIEnumerator(name: "ACPI_PTYPE2_PKG_COUNT", value: 6)
!15 = !DIEnumerator(name: "ACPI_PTYPE2_FIXED", value: 7)
!16 = !DIEnumerator(name: "ACPI_PTYPE2_MIN", value: 8)
!17 = !DIEnumerator(name: "ACPI_PTYPE2_REV_FIXED", value: 9)
!18 = !DIEnumerator(name: "ACPI_PTYPE2_FIX_VAR", value: 10)
!19 = !DIEnumerator(name: "ACPI_PTYPE2_VAR_VAR", value: 11)
!20 = !DIEnumerator(name: "ACPI_PTYPE2_UUID_PAIR", value: 12)
!21 = !DIEnumerator(name: "ACPI_PTYPE_CUSTOM", value: 13)
!22 = !{!23, !25, !29, !32, !33, !36}
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !24, line: 421, baseType: !25)
!24 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !26, line: 21, baseType: !27)
!26 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !28, line: 27, baseType: !7)
!28 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !26, line: 23, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !28, line: 31, baseType: !31)
!31 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !34, line: 42, baseType: !35)
!34 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !{!38, !44, !46, !0, !51}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !3, line: 141, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 240, elements: !42)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !{!43}
!43 = !DISubrange(count: 30)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !3, line: 152, type: !40, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !3, line: 187, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 304, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 38)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "acpi_object_repair_info", scope: !2, file: !3, line: 66, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1344, elements: !414)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_simple_repair_info", file: !56, line: 372, size: 192, elements: !57)
!56 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!57 = !{!58, !62, !63, !64}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !55, file: !56, line: 373, baseType: !59, size: 32)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 32, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 4)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "unexpected_btypes", scope: !55, file: !56, line: 374, baseType: !25, size: 32, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "package_index", scope: !55, file: !56, line: 375, baseType: !25, size: 32, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "object_converter", scope: !55, file: !56, line: 376, baseType: !65, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_converter", file: !56, line: 365, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!23, !69, !73, !139}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !56, line: 133, size: 384, elements: !71)
!71 = !{!72, !817, !818, !819, !820, !826, !827, !828, !829}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !70, file: !56, line: 134, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !75, line: 369, size: 576, elements: !76)
!75 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!76 = !{!77, !91, !104, !115, !129, !143, !152, !466, !483, !499, !512, !590, !602, !616, !626, !644, !666, !685, !704, !723, !736, !763, !780, !793, !807, !816}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !74, file: !75, line: 370, baseType: !78, size: 128)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !75, line: 73, size: 128, elements: !79)
!79 = !{!80, !81, !85, !86, !90}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !78, file: !75, line: 74, baseType: !73, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !78, file: !75, line: 74, baseType: !82, size: 8, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !26, line: 17, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !28, line: 21, baseType: !84)
!84 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !78, file: !75, line: 74, baseType: !82, size: 8, offset: 72)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !78, file: !75, line: 74, baseType: !87, size: 16, offset: 80)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !26, line: 19, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !28, line: 24, baseType: !89)
!89 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !78, file: !75, line: 74, baseType: !82, size: 8, offset: 96)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !74, file: !75, line: 371, baseType: !92, size: 192)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !75, line: 76, size: 192, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !103}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !92, file: !75, line: 77, baseType: !73, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !92, file: !75, line: 77, baseType: !82, size: 8, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !92, file: !75, line: 77, baseType: !82, size: 8, offset: 72)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !92, file: !75, line: 77, baseType: !87, size: 16, offset: 80)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !92, file: !75, line: 77, baseType: !82, size: 8, offset: 96)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !92, file: !75, line: 77, baseType: !100, size: 24, offset: 104)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 24, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 3)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !92, file: !75, line: 78, baseType: !29, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !74, file: !75, line: 372, baseType: !105, size: 256)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !75, line: 93, size: 256, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !112, !114}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !105, file: !75, line: 94, baseType: !73, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !105, file: !75, line: 94, baseType: !82, size: 8, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !105, file: !75, line: 94, baseType: !82, size: 8, offset: 72)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !105, file: !75, line: 94, baseType: !87, size: 16, offset: 80)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !75, line: 94, baseType: !82, size: 8, offset: 96)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !105, file: !75, line: 94, baseType: !113, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !105, file: !75, line: 94, baseType: !25, size: 32, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !74, file: !75, line: 373, baseType: !116, size: 384)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !75, line: 97, size: 384, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !125, !126, !127, !128}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !116, file: !75, line: 98, baseType: !73, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !116, file: !75, line: 98, baseType: !82, size: 8, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !75, line: 98, baseType: !82, size: 8, offset: 72)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !116, file: !75, line: 98, baseType: !87, size: 16, offset: 80)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !75, line: 98, baseType: !82, size: 8, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !116, file: !75, line: 98, baseType: !124, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !116, file: !75, line: 98, baseType: !25, size: 32, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !116, file: !75, line: 99, baseType: !25, size: 32, offset: 224)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !116, file: !75, line: 100, baseType: !124, size: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !116, file: !75, line: 101, baseType: !69, size: 64, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !74, file: !75, line: 374, baseType: !130, size: 384)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !75, line: 104, size: 384, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137, !138, !140, !141, !142}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !130, file: !75, line: 105, baseType: !73, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !130, file: !75, line: 105, baseType: !82, size: 8, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !75, line: 105, baseType: !82, size: 8, offset: 72)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !130, file: !75, line: 105, baseType: !87, size: 16, offset: 80)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !75, line: 105, baseType: !82, size: 8, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !130, file: !75, line: 105, baseType: !69, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !130, file: !75, line: 106, baseType: !139, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !130, file: !75, line: 107, baseType: !124, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !130, file: !75, line: 108, baseType: !25, size: 32, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !130, file: !75, line: 109, baseType: !25, size: 32, offset: 352)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !74, file: !75, line: 375, baseType: !144, size: 192)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !75, line: 118, size: 192, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !144, file: !75, line: 119, baseType: !73, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !144, file: !75, line: 119, baseType: !82, size: 8, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !144, file: !75, line: 119, baseType: !82, size: 8, offset: 72)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !144, file: !75, line: 119, baseType: !87, size: 16, offset: 80)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !144, file: !75, line: 119, baseType: !82, size: 8, offset: 96)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !144, file: !75, line: 119, baseType: !36, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !74, file: !75, line: 376, baseType: !153, size: 448)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !75, line: 144, size: 448, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !463, !464, !465}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !153, file: !75, line: 145, baseType: !73, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !153, file: !75, line: 145, baseType: !82, size: 8, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !153, file: !75, line: 145, baseType: !82, size: 8, offset: 72)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !153, file: !75, line: 145, baseType: !87, size: 16, offset: 80)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !75, line: 145, baseType: !82, size: 8, offset: 96)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !153, file: !75, line: 145, baseType: !82, size: 8, offset: 104)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !153, file: !75, line: 146, baseType: !82, size: 8, offset: 112)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !153, file: !75, line: 147, baseType: !82, size: 8, offset: 120)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !153, file: !75, line: 148, baseType: !73, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !153, file: !75, line: 149, baseType: !73, size: 64, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !153, file: !75, line: 150, baseType: !124, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !153, file: !75, line: 154, baseType: !167, size: 64, offset: 320)
!167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !75, line: 151, size: 64, elements: !168)
!168 = !{!169, !462}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !167, file: !75, line: 152, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !56, line: 248, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!23, !174}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !176, line: 37, size: 9024, elements: !177)
!176 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !408, !409, !410, !411, !412, !416, !418, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !445, !446, !447, !448, !449, !450, !451, !452, !454, !460}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !175, file: !176, line: 38, baseType: !174, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !175, file: !176, line: 39, baseType: !82, size: 8, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !175, file: !176, line: 40, baseType: !82, size: 8, offset: 72)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !175, file: !176, line: 41, baseType: !87, size: 16, offset: 80)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !175, file: !176, line: 42, baseType: !82, size: 8, offset: 96)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !175, file: !176, line: 43, baseType: !82, size: 8, offset: 104)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !175, file: !176, line: 44, baseType: !82, size: 8, offset: 112)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !175, file: !176, line: 45, baseType: !186, size: 16, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !24, line: 445, baseType: !87)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !175, file: !176, line: 46, baseType: !82, size: 8, offset: 144)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !175, file: !176, line: 47, baseType: !82, size: 8, offset: 152)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !175, file: !176, line: 48, baseType: !82, size: 8, offset: 160)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !175, file: !176, line: 49, baseType: !82, size: 8, offset: 168)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !175, file: !176, line: 50, baseType: !82, size: 8, offset: 176)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !175, file: !176, line: 51, baseType: !82, size: 8, offset: 184)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !175, file: !176, line: 52, baseType: !82, size: 8, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !175, file: !176, line: 53, baseType: !82, size: 8, offset: 200)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !175, file: !176, line: 54, baseType: !124, size: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !175, file: !176, line: 55, baseType: !25, size: 32, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !175, file: !176, line: 56, baseType: !25, size: 32, offset: 352)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !175, file: !176, line: 57, baseType: !25, size: 32, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !175, file: !176, line: 58, baseType: !25, size: 32, offset: 416)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !175, file: !176, line: 60, baseType: !201, size: 640, offset: 448)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !56, line: 909, size: 640, elements: !202)
!202 = !{!203, !204, !205, !206, !207, !208, !289, !290, !406, !407}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !201, file: !56, line: 910, baseType: !124, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !201, file: !56, line: 911, baseType: !124, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !201, file: !56, line: 912, baseType: !124, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !201, file: !56, line: 913, baseType: !124, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !201, file: !56, line: 914, baseType: !124, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !201, file: !56, line: 915, baseType: !209, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !56, line: 891, size: 1600, elements: !211)
!211 = !{!212, !232, !248}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !210, file: !56, line: 892, baseType: !213, size: 448)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !56, line: 844, size: 448, elements: !214)
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !231}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !213, file: !56, line: 845, baseType: !209, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !213, file: !56, line: 845, baseType: !82, size: 8, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !213, file: !56, line: 845, baseType: !82, size: 8, offset: 72)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !213, file: !56, line: 845, baseType: !87, size: 16, offset: 80)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !213, file: !56, line: 845, baseType: !124, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !56, line: 845, baseType: !209, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !213, file: !56, line: 845, baseType: !69, size: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !213, file: !56, line: 845, baseType: !223, size: 64, offset: 320)
!223 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !56, line: 732, size: 64, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !223, file: !56, line: 733, baseType: !29, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !223, file: !56, line: 734, baseType: !25, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !223, file: !56, line: 735, baseType: !113, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !223, file: !56, line: 736, baseType: !124, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !223, file: !56, line: 737, baseType: !113, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !223, file: !56, line: 738, baseType: !209, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !213, file: !56, line: 845, baseType: !82, size: 8, offset: 384)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !210, file: !56, line: 893, baseType: !233, size: 640)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !56, line: 851, size: 640, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !233, file: !56, line: 852, baseType: !209, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !233, file: !56, line: 852, baseType: !82, size: 8, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !233, file: !56, line: 852, baseType: !82, size: 8, offset: 72)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !233, file: !56, line: 852, baseType: !87, size: 16, offset: 80)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !233, file: !56, line: 852, baseType: !124, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !233, file: !56, line: 852, baseType: !209, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !233, file: !56, line: 852, baseType: !69, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !233, file: !56, line: 852, baseType: !223, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !233, file: !56, line: 852, baseType: !82, size: 8, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !233, file: !56, line: 852, baseType: !113, size: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !233, file: !56, line: 853, baseType: !124, size: 64, offset: 512)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !233, file: !56, line: 854, baseType: !25, size: 32, offset: 576)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !233, file: !56, line: 855, baseType: !25, size: 32, offset: 608)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !210, file: !56, line: 894, baseType: !249, size: 1600)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !56, line: 862, size: 1600, elements: !250)
!250 = !{!251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !249, file: !56, line: 863, baseType: !209, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !249, file: !56, line: 863, baseType: !82, size: 8, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !249, file: !56, line: 863, baseType: !82, size: 8, offset: 72)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !249, file: !56, line: 863, baseType: !87, size: 16, offset: 80)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !249, file: !56, line: 863, baseType: !124, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !249, file: !56, line: 863, baseType: !209, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !249, file: !56, line: 863, baseType: !69, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !249, file: !56, line: 863, baseType: !223, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !249, file: !56, line: 863, baseType: !82, size: 8, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !249, file: !56, line: 863, baseType: !209, size: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !249, file: !56, line: 864, baseType: !209, size: 64, offset: 512)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !249, file: !56, line: 865, baseType: !113, size: 64, offset: 576)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !249, file: !56, line: 866, baseType: !82, size: 8, offset: 640)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !249, file: !56, line: 867, baseType: !113, size: 64, offset: 704)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !249, file: !56, line: 868, baseType: !113, size: 64, offset: 768)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !249, file: !56, line: 869, baseType: !113, size: 64, offset: 832)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !249, file: !56, line: 870, baseType: !59, size: 32, offset: 896)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !249, file: !56, line: 871, baseType: !25, size: 32, offset: 928)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !249, file: !56, line: 872, baseType: !25, size: 32, offset: 960)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !249, file: !56, line: 873, baseType: !25, size: 32, offset: 992)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !249, file: !56, line: 874, baseType: !25, size: 32, offset: 1024)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !249, file: !56, line: 875, baseType: !25, size: 32, offset: 1056)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !249, file: !56, line: 876, baseType: !25, size: 32, offset: 1088)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !249, file: !56, line: 877, baseType: !25, size: 32, offset: 1120)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !249, file: !56, line: 878, baseType: !25, size: 32, offset: 1152)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !249, file: !56, line: 879, baseType: !25, size: 32, offset: 1184)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !249, file: !56, line: 880, baseType: !25, size: 32, offset: 1216)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !249, file: !56, line: 881, baseType: !25, size: 32, offset: 1248)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !249, file: !56, line: 882, baseType: !25, size: 32, offset: 1280)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !249, file: !56, line: 883, baseType: !25, size: 32, offset: 1312)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !249, file: !56, line: 884, baseType: !87, size: 16, offset: 1344)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !249, file: !56, line: 885, baseType: !82, size: 8, offset: 1360)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !249, file: !56, line: 886, baseType: !82, size: 8, offset: 1368)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !249, file: !56, line: 887, baseType: !82, size: 8, offset: 1376)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !249, file: !56, line: 888, baseType: !286, size: 160, offset: 1384)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 160, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 20)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !201, file: !56, line: 916, baseType: !69, size: 64, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !201, file: !56, line: 917, baseType: !291, size: 64, offset: 448)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !56, line: 679, size: 640, elements: !293)
!293 = !{!294, !302, !315, !324, !333, !346, !360, !372, !384}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !292, file: !56, line: 680, baseType: !295, size: 128)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !56, line: 575, size: 128, elements: !296)
!296 = !{!297, !298, !299, !300, !301}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !56, line: 576, baseType: !36, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !295, file: !56, line: 576, baseType: !82, size: 8, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !56, line: 576, baseType: !82, size: 8, offset: 72)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !295, file: !56, line: 576, baseType: !87, size: 16, offset: 80)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !295, file: !56, line: 576, baseType: !87, size: 16, offset: 96)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !292, file: !56, line: 681, baseType: !303, size: 384)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !56, line: 604, size: 384, elements: !304)
!304 = !{!305, !306, !307, !308, !309, !310, !311, !312, !313, !314}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !303, file: !56, line: 605, baseType: !36, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !303, file: !56, line: 605, baseType: !82, size: 8, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !56, line: 605, baseType: !82, size: 8, offset: 72)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !303, file: !56, line: 605, baseType: !87, size: 16, offset: 80)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !303, file: !56, line: 605, baseType: !87, size: 16, offset: 96)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !303, file: !56, line: 606, baseType: !87, size: 16, offset: 112)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !303, file: !56, line: 607, baseType: !209, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !303, file: !56, line: 608, baseType: !124, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !303, file: !56, line: 609, baseType: !124, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !303, file: !56, line: 610, baseType: !29, size: 64, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !292, file: !56, line: 682, baseType: !316, size: 192)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !56, line: 582, size: 192, elements: !317)
!317 = !{!318, !319, !320, !321, !322, !323}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !316, file: !56, line: 583, baseType: !36, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !316, file: !56, line: 583, baseType: !82, size: 8, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !316, file: !56, line: 583, baseType: !82, size: 8, offset: 72)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !316, file: !56, line: 583, baseType: !87, size: 16, offset: 80)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !316, file: !56, line: 583, baseType: !87, size: 16, offset: 96)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !316, file: !56, line: 584, baseType: !73, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !292, file: !56, line: 683, baseType: !325, size: 192)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !56, line: 616, size: 192, elements: !326)
!326 = !{!327, !328, !329, !330, !331, !332}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !325, file: !56, line: 617, baseType: !36, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !325, file: !56, line: 617, baseType: !82, size: 8, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !325, file: !56, line: 617, baseType: !82, size: 8, offset: 72)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !325, file: !56, line: 617, baseType: !87, size: 16, offset: 80)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !325, file: !56, line: 617, baseType: !87, size: 16, offset: 96)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !325, file: !56, line: 618, baseType: !69, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !292, file: !56, line: 684, baseType: !334, size: 448)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !56, line: 621, size: 448, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !56, line: 622, baseType: !36, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !334, file: !56, line: 622, baseType: !82, size: 8, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !56, line: 622, baseType: !82, size: 8, offset: 72)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !334, file: !56, line: 622, baseType: !87, size: 16, offset: 80)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !334, file: !56, line: 622, baseType: !87, size: 16, offset: 96)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !334, file: !56, line: 623, baseType: !25, size: 32, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !334, file: !56, line: 624, baseType: !209, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !334, file: !56, line: 625, baseType: !124, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !334, file: !56, line: 626, baseType: !124, size: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !334, file: !56, line: 627, baseType: !25, size: 32, offset: 384)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !292, file: !56, line: 685, baseType: !347, size: 512)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !56, line: 590, size: 512, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !56, line: 591, baseType: !36, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !347, file: !56, line: 591, baseType: !82, size: 8, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !347, file: !56, line: 591, baseType: !82, size: 8, offset: 72)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !347, file: !56, line: 591, baseType: !87, size: 16, offset: 80)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !347, file: !56, line: 591, baseType: !87, size: 16, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !347, file: !56, line: 592, baseType: !25, size: 32, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !347, file: !56, line: 593, baseType: !73, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !347, file: !56, line: 594, baseType: !73, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !347, file: !56, line: 595, baseType: !174, size: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !347, file: !56, line: 596, baseType: !36, size: 64, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !347, file: !56, line: 597, baseType: !25, size: 32, offset: 448)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !292, file: !56, line: 686, baseType: !361, size: 320)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !56, line: 634, size: 320, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !368, !369, !370, !371}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !361, file: !56, line: 635, baseType: !36, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !361, file: !56, line: 635, baseType: !82, size: 8, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !361, file: !56, line: 635, baseType: !82, size: 8, offset: 72)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !361, file: !56, line: 635, baseType: !87, size: 16, offset: 80)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !361, file: !56, line: 635, baseType: !87, size: 16, offset: 96)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !361, file: !56, line: 636, baseType: !82, size: 8, offset: 112)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !361, file: !56, line: 637, baseType: !174, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !361, file: !56, line: 638, baseType: !73, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !361, file: !56, line: 639, baseType: !29, size: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !292, file: !56, line: 687, baseType: !373, size: 640)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !56, line: 646, size: 640, elements: !374)
!374 = !{!375, !376, !377, !378, !379, !380}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !373, file: !56, line: 647, baseType: !36, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !373, file: !56, line: 647, baseType: !82, size: 8, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !373, file: !56, line: 647, baseType: !82, size: 8, offset: 72)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !373, file: !56, line: 647, baseType: !87, size: 16, offset: 80)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !373, file: !56, line: 647, baseType: !87, size: 16, offset: 96)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !373, file: !56, line: 648, baseType: !381, size: 512, offset: 128)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 512, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 8)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !292, file: !56, line: 688, baseType: !385, size: 320)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !56, line: 669, size: 320, elements: !386)
!386 = !{!387, !388, !389, !390, !391, !392, !393, !394, !395}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !385, file: !56, line: 670, baseType: !36, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !385, file: !56, line: 670, baseType: !82, size: 8, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !385, file: !56, line: 670, baseType: !82, size: 8, offset: 72)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !385, file: !56, line: 670, baseType: !87, size: 16, offset: 80)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !385, file: !56, line: 670, baseType: !87, size: 16, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !385, file: !56, line: 671, baseType: !82, size: 8, offset: 112)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !385, file: !56, line: 672, baseType: !69, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !385, file: !56, line: 673, baseType: !73, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !385, file: !56, line: 674, baseType: !396, size: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !56, line: 660, size: 128, elements: !398)
!398 = !{!399, !405}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !397, file: !56, line: 661, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !24, line: 1061, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !404, !25, !36}
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !24, line: 424, baseType: !36)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !397, file: !56, line: 662, baseType: !36, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !201, file: !56, line: 918, baseType: !209, size: 64, offset: 512)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !201, file: !56, line: 919, baseType: !25, size: 32, offset: 576)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !175, file: !176, line: 61, baseType: !25, size: 32, offset: 1088)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !175, file: !176, line: 62, baseType: !25, size: 32, offset: 1120)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !175, file: !176, line: 63, baseType: !87, size: 16, offset: 1152)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !175, file: !176, line: 64, baseType: !82, size: 8, offset: 1168)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !175, file: !176, line: 66, baseType: !413, size: 2688, offset: 1216)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 2688, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 7)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !175, file: !176, line: 67, baseType: !417, size: 3072, offset: 3904)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 3072, elements: !382)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !175, file: !176, line: 68, baseType: !419, size: 576, offset: 6976)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 576, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 9)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !175, file: !176, line: 69, baseType: !139, size: 64, offset: 7552)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !175, file: !176, line: 71, baseType: !124, size: 64, offset: 7616)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !175, file: !176, line: 72, baseType: !139, size: 64, offset: 7680)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !175, file: !176, line: 73, baseType: !291, size: 64, offset: 7744)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !175, file: !176, line: 74, baseType: !69, size: 64, offset: 7808)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !175, file: !176, line: 75, baseType: !73, size: 64, offset: 7872)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !175, file: !176, line: 76, baseType: !69, size: 64, offset: 7936)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !175, file: !176, line: 77, baseType: !209, size: 64, offset: 8000)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !175, file: !176, line: 78, baseType: !73, size: 64, offset: 8064)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !175, file: !176, line: 79, baseType: !69, size: 64, offset: 8128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !175, file: !176, line: 80, baseType: !113, size: 64, offset: 8192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !175, file: !176, line: 81, baseType: !209, size: 64, offset: 8256)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !175, file: !176, line: 82, baseType: !435, size: 64, offset: 8320)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !56, line: 718, size: 128, elements: !438)
!438 = !{!439, !440, !441, !442, !443, !444}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !437, file: !56, line: 722, baseType: !25, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !437, file: !56, line: 723, baseType: !25, size: 32, offset: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !437, file: !56, line: 724, baseType: !87, size: 16, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !437, file: !56, line: 725, baseType: !82, size: 8, offset: 80)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !437, file: !56, line: 726, baseType: !82, size: 8, offset: 88)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !437, file: !56, line: 727, baseType: !82, size: 8, offset: 96)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !175, file: !176, line: 83, baseType: !209, size: 64, offset: 8384)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !175, file: !176, line: 84, baseType: !73, size: 64, offset: 8448)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !175, file: !176, line: 85, baseType: !291, size: 64, offset: 8512)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !175, file: !176, line: 86, baseType: !73, size: 64, offset: 8576)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !175, file: !176, line: 87, baseType: !291, size: 64, offset: 8640)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !175, file: !176, line: 88, baseType: !209, size: 64, offset: 8704)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !175, file: !176, line: 89, baseType: !209, size: 64, offset: 8768)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !175, file: !176, line: 90, baseType: !453, size: 64, offset: 8832)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !175, file: !176, line: 91, baseType: !455, size: 64, offset: 8896)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !56, line: 652, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!23, !174, !459}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !175, file: !176, line: 92, baseType: !461, size: 64, offset: 8960)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !56, line: 656, baseType: !171)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !167, file: !75, line: 153, baseType: !73, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !153, file: !75, line: 156, baseType: !25, size: 32, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !153, file: !75, line: 157, baseType: !186, size: 16, offset: 416)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !153, file: !75, line: 158, baseType: !82, size: 8, offset: 432)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !74, file: !75, line: 377, baseType: !467, size: 576)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !75, line: 122, size: 576, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !467, file: !75, line: 123, baseType: !73, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !467, file: !75, line: 123, baseType: !82, size: 8, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !467, file: !75, line: 123, baseType: !82, size: 8, offset: 72)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !467, file: !75, line: 123, baseType: !87, size: 16, offset: 80)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !467, file: !75, line: 123, baseType: !82, size: 8, offset: 96)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !467, file: !75, line: 123, baseType: !82, size: 8, offset: 104)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !467, file: !75, line: 124, baseType: !87, size: 16, offset: 112)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !467, file: !75, line: 125, baseType: !36, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !467, file: !75, line: 126, baseType: !29, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !467, file: !75, line: 127, baseType: !453, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !467, file: !75, line: 128, baseType: !73, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !467, file: !75, line: 129, baseType: !73, size: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !467, file: !75, line: 130, baseType: !69, size: 64, offset: 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !467, file: !75, line: 131, baseType: !82, size: 8, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !74, file: !75, line: 378, baseType: !484, size: 512)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !75, line: 134, size: 512, elements: !485)
!485 = !{!486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !497, !498}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !484, file: !75, line: 135, baseType: !73, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !484, file: !75, line: 135, baseType: !82, size: 8, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !484, file: !75, line: 135, baseType: !82, size: 8, offset: 72)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !484, file: !75, line: 135, baseType: !87, size: 16, offset: 80)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !484, file: !75, line: 135, baseType: !82, size: 8, offset: 96)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !484, file: !75, line: 135, baseType: !82, size: 8, offset: 104)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !484, file: !75, line: 136, baseType: !69, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !484, file: !75, line: 137, baseType: !73, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !484, file: !75, line: 138, baseType: !73, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !484, file: !75, line: 139, baseType: !496, size: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !24, line: 129, baseType: !29)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !484, file: !75, line: 140, baseType: !25, size: 32, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !484, file: !75, line: 141, baseType: !36, size: 64, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !74, file: !75, line: 379, baseType: !500, size: 320)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !75, line: 185, size: 320, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507, !511}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !500, file: !75, line: 186, baseType: !73, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !500, file: !75, line: 186, baseType: !82, size: 8, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !500, file: !75, line: 186, baseType: !82, size: 8, offset: 72)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !500, file: !75, line: 186, baseType: !87, size: 16, offset: 80)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !75, line: 186, baseType: !82, size: 8, offset: 96)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !500, file: !75, line: 186, baseType: !508, size: 128, offset: 128)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 128, elements: !509)
!509 = !{!510}
!510 = !DISubrange(count: 2)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !500, file: !75, line: 186, baseType: !73, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !74, file: !75, line: 380, baseType: !513, size: 384)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !75, line: 188, size: 384, elements: !514)
!514 = !{!515, !516, !517, !518, !519, !520, !521, !522}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !513, file: !75, line: 189, baseType: !73, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !513, file: !75, line: 189, baseType: !82, size: 8, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !513, file: !75, line: 189, baseType: !82, size: 8, offset: 72)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !513, file: !75, line: 189, baseType: !87, size: 16, offset: 80)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !513, file: !75, line: 189, baseType: !82, size: 8, offset: 96)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !513, file: !75, line: 190, baseType: !508, size: 128, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !513, file: !75, line: 190, baseType: !73, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !513, file: !75, line: 190, baseType: !523, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !56, line: 480, size: 576, elements: !525)
!525 = !{!526, !527, !528, !529, !537, !552, !584, !585, !586, !587, !588, !589}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !524, file: !56, line: 481, baseType: !69, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !524, file: !56, line: 482, baseType: !523, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !524, file: !56, line: 483, baseType: !523, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !524, file: !56, line: 484, baseType: !530, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !56, line: 497, size: 256, elements: !532)
!532 = !{!533, !534, !535, !536}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !531, file: !56, line: 498, baseType: !530, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !531, file: !56, line: 499, baseType: !530, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !531, file: !56, line: 500, baseType: !523, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !531, file: !56, line: 501, baseType: !25, size: 32, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !524, file: !56, line: 485, baseType: !538, size: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !56, line: 466, size: 320, elements: !540)
!540 = !{!541, !546, !547, !548, !549, !550, !551}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !539, file: !56, line: 467, baseType: !542, size: 128)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !56, line: 459, size: 128, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !542, file: !56, line: 460, baseType: !82, size: 8)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !542, file: !56, line: 461, baseType: !29, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !539, file: !56, line: 468, baseType: !542, size: 128, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !539, file: !56, line: 469, baseType: !87, size: 16, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !539, file: !56, line: 470, baseType: !82, size: 8, offset: 272)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !539, file: !56, line: 471, baseType: !82, size: 8, offset: 280)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !539, file: !56, line: 472, baseType: !82, size: 8, offset: 288)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !539, file: !56, line: 473, baseType: !82, size: 8, offset: 296)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !524, file: !56, line: 486, baseType: !553, size: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !56, line: 448, size: 192, elements: !555)
!555 = !{!556, !579, !580, !581, !582, !583}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !554, file: !56, line: 449, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !56, line: 438, size: 64, elements: !558)
!558 = !{!559, !560, !573}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !557, file: !56, line: 439, baseType: !69, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !557, file: !56, line: 440, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !56, line: 419, size: 256, elements: !563)
!563 = !{!564, !569, !570, !571, !572}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !562, file: !56, line: 420, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !24, line: 1058, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!25, !404, !25, !36}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !562, file: !56, line: 421, baseType: !36, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !562, file: !56, line: 422, baseType: !69, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !562, file: !56, line: 423, baseType: !82, size: 8, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !562, file: !56, line: 424, baseType: !82, size: 8, offset: 200)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !557, file: !56, line: 441, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !56, line: 429, size: 128, elements: !576)
!576 = !{!577, !578}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !575, file: !56, line: 430, baseType: !69, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !575, file: !56, line: 431, baseType: !574, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !554, file: !56, line: 450, baseType: !538, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !554, file: !56, line: 451, baseType: !82, size: 8, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !554, file: !56, line: 452, baseType: !82, size: 8, offset: 136)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !554, file: !56, line: 453, baseType: !82, size: 8, offset: 144)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !554, file: !56, line: 454, baseType: !82, size: 8, offset: 152)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !524, file: !56, line: 487, baseType: !29, size: 64, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !524, file: !56, line: 488, baseType: !25, size: 32, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !524, file: !56, line: 489, baseType: !87, size: 16, offset: 480)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !524, file: !56, line: 490, baseType: !87, size: 16, offset: 496)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !524, file: !56, line: 491, baseType: !82, size: 8, offset: 512)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !524, file: !56, line: 492, baseType: !82, size: 8, offset: 520)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !74, file: !75, line: 381, baseType: !591, size: 384)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !75, line: 193, size: 384, elements: !592)
!592 = !{!593, !594, !595, !596, !597, !598, !599, !600, !601}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !591, file: !75, line: 194, baseType: !73, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !591, file: !75, line: 194, baseType: !82, size: 8, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !591, file: !75, line: 194, baseType: !82, size: 8, offset: 72)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !591, file: !75, line: 194, baseType: !87, size: 16, offset: 80)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !591, file: !75, line: 194, baseType: !82, size: 8, offset: 96)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !591, file: !75, line: 194, baseType: !508, size: 128, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !591, file: !75, line: 194, baseType: !73, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !591, file: !75, line: 194, baseType: !25, size: 32, offset: 320)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !591, file: !75, line: 195, baseType: !25, size: 32, offset: 352)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !74, file: !75, line: 382, baseType: !603, size: 384)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !75, line: 198, size: 384, elements: !604)
!604 = !{!605, !606, !607, !608, !609, !610, !611, !612, !613, !614}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !603, file: !75, line: 199, baseType: !73, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !603, file: !75, line: 199, baseType: !82, size: 8, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !603, file: !75, line: 199, baseType: !82, size: 8, offset: 72)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !603, file: !75, line: 199, baseType: !87, size: 16, offset: 80)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !603, file: !75, line: 199, baseType: !82, size: 8, offset: 96)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !603, file: !75, line: 201, baseType: !82, size: 8, offset: 104)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !603, file: !75, line: 202, baseType: !82, size: 8, offset: 112)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !603, file: !75, line: 203, baseType: !508, size: 128, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !603, file: !75, line: 203, baseType: !73, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !603, file: !75, line: 203, baseType: !615, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !24, line: 128, baseType: !29)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !74, file: !75, line: 383, baseType: !617, size: 320)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !75, line: 206, size: 320, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !617, file: !75, line: 207, baseType: !73, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !617, file: !75, line: 207, baseType: !82, size: 8, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !617, file: !75, line: 207, baseType: !82, size: 8, offset: 72)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !617, file: !75, line: 207, baseType: !87, size: 16, offset: 80)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !617, file: !75, line: 207, baseType: !82, size: 8, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !617, file: !75, line: 207, baseType: !508, size: 128, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !617, file: !75, line: 207, baseType: !73, size: 64, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !74, file: !75, line: 384, baseType: !627, size: 384)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !75, line: 234, size: 384, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !627, file: !75, line: 235, baseType: !73, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !627, file: !75, line: 235, baseType: !82, size: 8, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !627, file: !75, line: 235, baseType: !82, size: 8, offset: 72)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !627, file: !75, line: 235, baseType: !87, size: 16, offset: 80)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !627, file: !75, line: 235, baseType: !82, size: 8, offset: 96)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !627, file: !75, line: 235, baseType: !82, size: 8, offset: 104)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !627, file: !75, line: 235, baseType: !82, size: 8, offset: 112)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !627, file: !75, line: 235, baseType: !82, size: 8, offset: 120)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !627, file: !75, line: 235, baseType: !69, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !627, file: !75, line: 235, baseType: !25, size: 32, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !627, file: !75, line: 235, baseType: !25, size: 32, offset: 224)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !627, file: !75, line: 235, baseType: !25, size: 32, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !627, file: !75, line: 235, baseType: !82, size: 8, offset: 288)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !627, file: !75, line: 235, baseType: !82, size: 8, offset: 296)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !627, file: !75, line: 235, baseType: !73, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !74, file: !75, line: 385, baseType: !645, size: 576)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !75, line: 238, size: 576, elements: !646)
!646 = !{!647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !645, file: !75, line: 239, baseType: !73, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !645, file: !75, line: 239, baseType: !82, size: 8, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !645, file: !75, line: 239, baseType: !82, size: 8, offset: 72)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !645, file: !75, line: 239, baseType: !87, size: 16, offset: 80)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !645, file: !75, line: 239, baseType: !82, size: 8, offset: 96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !645, file: !75, line: 239, baseType: !82, size: 8, offset: 104)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !645, file: !75, line: 239, baseType: !82, size: 8, offset: 112)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !645, file: !75, line: 239, baseType: !82, size: 8, offset: 120)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !645, file: !75, line: 239, baseType: !69, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !645, file: !75, line: 239, baseType: !25, size: 32, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !645, file: !75, line: 239, baseType: !25, size: 32, offset: 224)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !645, file: !75, line: 239, baseType: !25, size: 32, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !645, file: !75, line: 239, baseType: !82, size: 8, offset: 288)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !645, file: !75, line: 239, baseType: !82, size: 8, offset: 296)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !645, file: !75, line: 239, baseType: !87, size: 16, offset: 304)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !645, file: !75, line: 240, baseType: !73, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !645, file: !75, line: 241, baseType: !124, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !645, file: !75, line: 242, baseType: !87, size: 16, offset: 448)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !645, file: !75, line: 243, baseType: !124, size: 64, offset: 512)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !74, file: !75, line: 386, baseType: !667, size: 384)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !75, line: 263, size: 384, elements: !668)
!668 = !{!669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !667, file: !75, line: 264, baseType: !73, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !667, file: !75, line: 264, baseType: !82, size: 8, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !667, file: !75, line: 264, baseType: !82, size: 8, offset: 72)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !667, file: !75, line: 264, baseType: !87, size: 16, offset: 80)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !667, file: !75, line: 264, baseType: !82, size: 8, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !667, file: !75, line: 264, baseType: !82, size: 8, offset: 104)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !667, file: !75, line: 264, baseType: !82, size: 8, offset: 112)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !667, file: !75, line: 264, baseType: !82, size: 8, offset: 120)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !667, file: !75, line: 264, baseType: !69, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !667, file: !75, line: 264, baseType: !25, size: 32, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !667, file: !75, line: 264, baseType: !25, size: 32, offset: 224)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !667, file: !75, line: 264, baseType: !25, size: 32, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !667, file: !75, line: 264, baseType: !82, size: 8, offset: 288)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !667, file: !75, line: 264, baseType: !82, size: 8, offset: 296)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !667, file: !75, line: 264, baseType: !82, size: 8, offset: 304)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !667, file: !75, line: 265, baseType: !73, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !74, file: !75, line: 387, baseType: !686, size: 448)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !75, line: 246, size: 448, elements: !687)
!687 = !{!688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !686, file: !75, line: 247, baseType: !73, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !686, file: !75, line: 247, baseType: !82, size: 8, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !686, file: !75, line: 247, baseType: !82, size: 8, offset: 72)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !686, file: !75, line: 247, baseType: !87, size: 16, offset: 80)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !75, line: 247, baseType: !82, size: 8, offset: 96)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !686, file: !75, line: 247, baseType: !82, size: 8, offset: 104)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !686, file: !75, line: 247, baseType: !82, size: 8, offset: 112)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !686, file: !75, line: 247, baseType: !82, size: 8, offset: 120)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !686, file: !75, line: 247, baseType: !69, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !686, file: !75, line: 247, baseType: !25, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !686, file: !75, line: 247, baseType: !25, size: 32, offset: 224)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !686, file: !75, line: 247, baseType: !25, size: 32, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !686, file: !75, line: 247, baseType: !82, size: 8, offset: 288)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !686, file: !75, line: 247, baseType: !82, size: 8, offset: 296)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !686, file: !75, line: 247, baseType: !73, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !686, file: !75, line: 248, baseType: !73, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !74, file: !75, line: 388, baseType: !705, size: 448)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !75, line: 251, size: 448, elements: !706)
!706 = !{!707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !705, file: !75, line: 252, baseType: !73, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !705, file: !75, line: 252, baseType: !82, size: 8, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !705, file: !75, line: 252, baseType: !82, size: 8, offset: 72)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !705, file: !75, line: 252, baseType: !87, size: 16, offset: 80)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !705, file: !75, line: 252, baseType: !82, size: 8, offset: 96)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !705, file: !75, line: 252, baseType: !82, size: 8, offset: 104)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !705, file: !75, line: 252, baseType: !82, size: 8, offset: 112)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !705, file: !75, line: 252, baseType: !82, size: 8, offset: 120)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !705, file: !75, line: 252, baseType: !69, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !705, file: !75, line: 252, baseType: !25, size: 32, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !705, file: !75, line: 252, baseType: !25, size: 32, offset: 224)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !705, file: !75, line: 252, baseType: !25, size: 32, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !705, file: !75, line: 252, baseType: !82, size: 8, offset: 288)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !705, file: !75, line: 252, baseType: !82, size: 8, offset: 296)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !705, file: !75, line: 257, baseType: !73, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !705, file: !75, line: 258, baseType: !73, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !74, file: !75, line: 389, baseType: !724, size: 512)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !75, line: 274, size: 512, elements: !725)
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734, !735}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !724, file: !75, line: 275, baseType: !73, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !724, file: !75, line: 275, baseType: !82, size: 8, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !724, file: !75, line: 275, baseType: !82, size: 8, offset: 72)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !724, file: !75, line: 275, baseType: !87, size: 16, offset: 80)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !724, file: !75, line: 275, baseType: !82, size: 8, offset: 96)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !724, file: !75, line: 275, baseType: !69, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !724, file: !75, line: 276, baseType: !25, size: 32, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !724, file: !75, line: 277, baseType: !400, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !724, file: !75, line: 278, baseType: !36, size: 64, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !724, file: !75, line: 279, baseType: !508, size: 128, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !74, file: !75, line: 390, baseType: !737, size: 576)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !75, line: 282, size: 576, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !752, !753, !754, !755, !761, !762}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !737, file: !75, line: 283, baseType: !73, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !737, file: !75, line: 283, baseType: !82, size: 8, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !737, file: !75, line: 283, baseType: !82, size: 8, offset: 72)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !737, file: !75, line: 283, baseType: !87, size: 16, offset: 80)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !737, file: !75, line: 283, baseType: !82, size: 8, offset: 96)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !737, file: !75, line: 283, baseType: !82, size: 8, offset: 104)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !737, file: !75, line: 284, baseType: !82, size: 8, offset: 112)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !737, file: !75, line: 285, baseType: !747, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !24, line: 1093, baseType: !748)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!23, !25, !496, !25, !751, !36, !36}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !737, file: !75, line: 286, baseType: !69, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !737, file: !75, line: 287, baseType: !36, size: 64, offset: 256)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !737, file: !75, line: 288, baseType: !36, size: 64, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !737, file: !75, line: 289, baseType: !756, size: 64, offset: 384)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !24, line: 1126, baseType: !757)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!23, !404, !25, !36, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !737, file: !75, line: 290, baseType: !73, size: 64, offset: 448)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !737, file: !75, line: 291, baseType: !73, size: 64, offset: 512)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !74, file: !75, line: 391, baseType: !764, size: 512)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !75, line: 309, size: 512, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !764, file: !75, line: 310, baseType: !73, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !764, file: !75, line: 310, baseType: !82, size: 8, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !75, line: 310, baseType: !82, size: 8, offset: 72)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !764, file: !75, line: 310, baseType: !87, size: 16, offset: 80)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !75, line: 310, baseType: !82, size: 8, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !764, file: !75, line: 310, baseType: !82, size: 8, offset: 104)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !764, file: !75, line: 311, baseType: !82, size: 8, offset: 112)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !764, file: !75, line: 312, baseType: !82, size: 8, offset: 120)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !764, file: !75, line: 313, baseType: !36, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !764, file: !75, line: 314, baseType: !69, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !764, file: !75, line: 315, baseType: !139, size: 64, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !764, file: !75, line: 316, baseType: !124, size: 64, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !764, file: !75, line: 317, baseType: !124, size: 64, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !764, file: !75, line: 318, baseType: !25, size: 32, offset: 448)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !74, file: !75, line: 392, baseType: !781, size: 448)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !75, line: 342, size: 448, elements: !782)
!782 = !{!783, !784, !785, !786, !787, !788, !789, !790, !791, !792}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !781, file: !75, line: 343, baseType: !73, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !781, file: !75, line: 343, baseType: !82, size: 8, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !781, file: !75, line: 343, baseType: !82, size: 8, offset: 72)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !781, file: !75, line: 343, baseType: !87, size: 16, offset: 80)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !75, line: 343, baseType: !82, size: 8, offset: 96)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !781, file: !75, line: 343, baseType: !69, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !781, file: !75, line: 344, baseType: !69, size: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !781, file: !75, line: 345, baseType: !36, size: 64, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !781, file: !75, line: 346, baseType: !124, size: 64, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !781, file: !75, line: 347, baseType: !25, size: 32, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !74, file: !75, line: 393, baseType: !794, size: 256)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !75, line: 352, size: 256, elements: !795)
!795 = !{!796, !797, !798, !799, !800, !801, !806}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !794, file: !75, line: 353, baseType: !73, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !794, file: !75, line: 353, baseType: !82, size: 8, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !794, file: !75, line: 353, baseType: !82, size: 8, offset: 72)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !794, file: !75, line: 353, baseType: !87, size: 16, offset: 80)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !794, file: !75, line: 353, baseType: !82, size: 8, offset: 96)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !794, file: !75, line: 353, baseType: !802, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !24, line: 1064, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !404, !36}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !794, file: !75, line: 354, baseType: !36, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !74, file: !75, line: 394, baseType: !808, size: 192)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !75, line: 359, size: 192, elements: !809)
!809 = !{!810, !811, !812, !813, !814, !815}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !808, file: !75, line: 360, baseType: !73, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !808, file: !75, line: 360, baseType: !82, size: 8, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !808, file: !75, line: 360, baseType: !82, size: 8, offset: 72)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !808, file: !75, line: 360, baseType: !87, size: 16, offset: 80)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !808, file: !75, line: 360, baseType: !82, size: 8, offset: 96)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !808, file: !75, line: 360, baseType: !73, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !74, file: !75, line: 401, baseType: !70, size: 384)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !70, file: !56, line: 135, baseType: !82, size: 8, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !56, line: 136, baseType: !82, size: 8, offset: 72)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !70, file: !56, line: 137, baseType: !87, size: 16, offset: 80)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !70, file: !56, line: 138, baseType: !821, size: 32, offset: 96)
!821 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !822, line: 328, size: 32, elements: !823)
!822 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !821, file: !822, line: 329, baseType: !25, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !821, file: !822, line: 330, baseType: !59, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !70, file: !56, line: 139, baseType: !69, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !70, file: !56, line: 140, baseType: !69, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !70, file: !56, line: 141, baseType: !69, size: 64, offset: 256)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !70, file: !56, line: 142, baseType: !186, size: 16, offset: 320)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !831, size: 72, elements: !420)
!831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!832 = !{i32 7, !"Dwarf Version", i32 5}
!833 = !{i32 2, !"Debug Info Version", i32 3}
!834 = !{i32 1, !"wchar_size", i32 2}
!835 = !{i32 8, !"cf-protection-branch", i32 1}
!836 = !{i32 4, !"function_return_thunk_extern", i32 1}
!837 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!838 = !{i32 1, !"Code Model", i32 2}
!839 = !{i32 1, !"override-stack-alignment", i32 8}
!840 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!841 = distinct !DISubprogram(name: "acpi_ns_simple_repair", scope: !3, file: !3, line: 120, type: !842, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !909)
!842 = !DISubroutineType(types: !843)
!843 = !{!23, !844, !25, !25, !139}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !176, line: 152, size: 704, elements: !846)
!846 = !{!847, !848, !850, !851, !852, !853, !854, !900, !901, !902, !903, !904, !905, !906, !907, !908}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !845, file: !176, line: 155, baseType: !69, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !845, file: !176, line: 156, baseType: !849, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !845, file: !176, line: 157, baseType: !139, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !845, file: !176, line: 159, baseType: !69, size: 64, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !845, file: !176, line: 160, baseType: !73, size: 64, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !845, file: !176, line: 161, baseType: !113, size: 64, offset: 320)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !845, file: !176, line: 163, baseType: !855, size: 64, offset: 384)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !857)
!857 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !56, line: 351, size: 56, elements: !858)
!858 = !{!859, !865, !874, !882, !891}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !857, file: !56, line: 352, baseType: !860, size: 56)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !56, line: 295, size: 56, elements: !861)
!861 = !{!862, !863, !864}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !860, file: !56, line: 296, baseType: !59, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !860, file: !56, line: 297, baseType: !87, size: 16, offset: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !860, file: !56, line: 298, baseType: !82, size: 8, offset: 48)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !857, file: !56, line: 353, baseType: !866, size: 56)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !56, line: 314, size: 56, elements: !867)
!867 = !{!868, !869, !870, !871, !872, !873}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !866, file: !56, line: 315, baseType: !82, size: 8)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !866, file: !56, line: 316, baseType: !82, size: 8, offset: 8)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !866, file: !56, line: 317, baseType: !82, size: 8, offset: 16)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !866, file: !56, line: 318, baseType: !82, size: 8, offset: 24)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !866, file: !56, line: 319, baseType: !82, size: 8, offset: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !866, file: !56, line: 320, baseType: !87, size: 16, offset: 40)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !857, file: !56, line: 354, baseType: !875, size: 56)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !56, line: 325, size: 56, elements: !876)
!876 = !{!877, !878, !879, !881}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !875, file: !56, line: 326, baseType: !82, size: 8)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !875, file: !56, line: 327, baseType: !82, size: 8, offset: 8)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !875, file: !56, line: 328, baseType: !880, size: 32, offset: 16)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 32, elements: !60)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !875, file: !56, line: 329, baseType: !82, size: 8, offset: 48)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !857, file: !56, line: 355, baseType: !883, size: 56)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !56, line: 334, size: 56, elements: !884)
!884 = !{!885, !886, !887, !889, !890}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !883, file: !56, line: 335, baseType: !82, size: 8)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !883, file: !56, line: 336, baseType: !82, size: 8, offset: 8)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !883, file: !56, line: 337, baseType: !888, size: 16, offset: 16)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 16, elements: !509)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !883, file: !56, line: 338, baseType: !82, size: 8, offset: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !883, file: !56, line: 339, baseType: !87, size: 16, offset: 40)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !857, file: !56, line: 356, baseType: !892, size: 56)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !56, line: 342, size: 56, elements: !893)
!893 = !{!894, !895, !896, !897, !898, !899}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !892, file: !56, line: 343, baseType: !82, size: 8)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !892, file: !56, line: 344, baseType: !82, size: 8, offset: 8)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !892, file: !56, line: 345, baseType: !82, size: 8, offset: 16)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !892, file: !56, line: 346, baseType: !82, size: 8, offset: 24)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !892, file: !56, line: 347, baseType: !82, size: 8, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !892, file: !56, line: 348, baseType: !87, size: 16, offset: 40)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !845, file: !176, line: 164, baseType: !73, size: 64, offset: 448)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !845, file: !176, line: 165, baseType: !73, size: 64, offset: 512)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !845, file: !176, line: 167, baseType: !25, size: 32, offset: 576)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !845, file: !176, line: 168, baseType: !25, size: 32, offset: 608)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !845, file: !176, line: 169, baseType: !87, size: 16, offset: 640)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !845, file: !176, line: 170, baseType: !87, size: 16, offset: 656)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !845, file: !176, line: 171, baseType: !82, size: 8, offset: 672)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !845, file: !176, line: 172, baseType: !82, size: 8, offset: 680)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !845, file: !176, line: 173, baseType: !82, size: 8, offset: 688)
!909 = !{!910, !911, !912, !913, !914, !915, !916, !917, !919}
!910 = !DILocalVariable(name: "info", arg: 1, scope: !841, file: !3, line: 120, type: !844)
!911 = !DILocalVariable(name: "expected_btypes", arg: 2, scope: !841, file: !3, line: 121, type: !25)
!912 = !DILocalVariable(name: "package_index", arg: 3, scope: !841, file: !3, line: 122, type: !25)
!913 = !DILocalVariable(name: "return_object_ptr", arg: 4, scope: !841, file: !3, line: 123, type: !139)
!914 = !DILocalVariable(name: "return_object", scope: !841, file: !3, line: 125, type: !73)
!915 = !DILocalVariable(name: "new_object", scope: !841, file: !3, line: 126, type: !73)
!916 = !DILocalVariable(name: "status", scope: !841, file: !3, line: 127, type: !23)
!917 = !DILocalVariable(name: "predefined", scope: !841, file: !3, line: 128, type: !918)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!919 = !DILabel(scope: !841, name: "object_repaired", file: !3, line: 256)
!920 = !DILocation(line: 120, column: 50, scope: !841)
!921 = !DILocation(line: 121, column: 13, scope: !841)
!922 = !DILocation(line: 122, column: 13, scope: !841)
!923 = !DILocation(line: 123, column: 37, scope: !841)
!924 = !DILocation(line: 125, column: 2, scope: !841)
!925 = !DILocation(line: 125, column: 29, scope: !841)
!926 = !DILocation(line: 125, column: 46, scope: !841)
!927 = !DILocation(line: 125, column: 45, scope: !841)
!928 = !DILocation(line: 126, column: 2, scope: !841)
!929 = !DILocation(line: 126, column: 29, scope: !841)
!930 = !DILocation(line: 127, column: 2, scope: !841)
!931 = !DILocation(line: 127, column: 14, scope: !841)
!932 = !DILocation(line: 128, column: 2, scope: !841)
!933 = !DILocation(line: 128, column: 40, scope: !841)
!934 = !DILocation(line: 136, column: 43, scope: !841)
!935 = !DILocation(line: 136, column: 49, scope: !841)
!936 = !DILocation(line: 137, column: 8, scope: !841)
!937 = !DILocation(line: 137, column: 14, scope: !841)
!938 = !DILocation(line: 138, column: 8, scope: !841)
!939 = !DILocation(line: 136, column: 15, scope: !841)
!940 = !DILocation(line: 136, column: 13, scope: !841)
!941 = !DILocation(line: 139, column: 6, scope: !942)
!942 = distinct !DILexicalBlock(scope: !841, file: !3, line: 139, column: 6)
!943 = !DILocation(line: 139, column: 6, scope: !841)
!944 = !DILocation(line: 140, column: 8, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !3, line: 140, column: 7)
!946 = distinct !DILexicalBlock(scope: !942, file: !3, line: 139, column: 18)
!947 = !DILocation(line: 140, column: 7, scope: !946)
!948 = !DILocation(line: 141, column: 4, scope: !949)
!949 = distinct !DILexicalBlock(scope: !945, file: !3, line: 140, column: 23)
!950 = !DILocation(line: 144, column: 3, scope: !949)
!951 = !DILocation(line: 146, column: 12, scope: !946)
!952 = !DILocation(line: 146, column: 24, scope: !946)
!953 = !DILocation(line: 146, column: 41, scope: !946)
!954 = !DILocation(line: 146, column: 47, scope: !946)
!955 = !DILocation(line: 146, column: 53, scope: !946)
!956 = !DILocation(line: 146, column: 10, scope: !946)
!957 = !DILocation(line: 148, column: 7, scope: !958)
!958 = distinct !DILexicalBlock(scope: !946, file: !3, line: 148, column: 7)
!959 = !DILocation(line: 148, column: 7, scope: !946)
!960 = !DILocation(line: 152, column: 4, scope: !961)
!961 = distinct !DILexicalBlock(scope: !958, file: !3, line: 148, column: 29)
!962 = !DILocation(line: 154, column: 12, scope: !961)
!963 = !DILocation(line: 154, column: 4, scope: !961)
!964 = !DILocation(line: 156, column: 7, scope: !965)
!965 = distinct !DILexicalBlock(scope: !946, file: !3, line: 156, column: 7)
!966 = !DILocation(line: 156, column: 7, scope: !946)
!967 = !DILocation(line: 157, column: 4, scope: !968)
!968 = distinct !DILexicalBlock(scope: !965, file: !3, line: 156, column: 19)
!969 = !DILocation(line: 159, column: 2, scope: !946)
!970 = !DILocation(line: 165, column: 6, scope: !971)
!971 = distinct !DILexicalBlock(scope: !841, file: !3, line: 165, column: 6)
!972 = !DILocation(line: 165, column: 12, scope: !971)
!973 = !DILocation(line: 165, column: 27, scope: !971)
!974 = !DILocation(line: 165, column: 25, scope: !971)
!975 = !DILocation(line: 165, column: 6, scope: !841)
!976 = !DILocation(line: 166, column: 3, scope: !977)
!977 = distinct !DILexicalBlock(scope: !971, file: !3, line: 165, column: 44)
!978 = !DILocation(line: 183, column: 7, scope: !979)
!979 = distinct !DILexicalBlock(scope: !841, file: !3, line: 183, column: 6)
!980 = !DILocation(line: 183, column: 6, scope: !841)
!981 = !DILocation(line: 184, column: 7, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !3, line: 184, column: 7)
!983 = distinct !DILexicalBlock(scope: !979, file: !3, line: 183, column: 22)
!984 = !DILocation(line: 184, column: 7, scope: !983)
!985 = !DILocation(line: 185, column: 10, scope: !986)
!986 = distinct !DILexicalBlock(scope: !987, file: !3, line: 185, column: 8)
!987 = distinct !DILexicalBlock(scope: !982, file: !3, line: 184, column: 24)
!988 = !DILocation(line: 185, column: 26, scope: !986)
!989 = !DILocation(line: 185, column: 45, scope: !986)
!990 = !DILocation(line: 186, column: 8, scope: !986)
!991 = !DILocation(line: 186, column: 22, scope: !986)
!992 = !DILocation(line: 185, column: 8, scope: !987)
!993 = !DILocation(line: 187, column: 5, scope: !994)
!994 = distinct !DILexicalBlock(scope: !986, file: !3, line: 186, column: 51)
!995 = !DILocation(line: 193, column: 37, scope: !994)
!996 = !DILocation(line: 194, column: 9, scope: !994)
!997 = !DILocation(line: 195, column: 9, scope: !994)
!998 = !DILocation(line: 196, column: 9, scope: !994)
!999 = !DILocation(line: 193, column: 9, scope: !994)
!1000 = !DILocation(line: 192, column: 12, scope: !994)
!1001 = !DILocation(line: 197, column: 9, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !994, file: !3, line: 197, column: 9)
!1003 = !DILocation(line: 197, column: 9, scope: !994)
!1004 = !DILocation(line: 198, column: 6, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 197, column: 31)
!1006 = !DILocation(line: 200, column: 4, scope: !994)
!1007 = !DILocation(line: 202, column: 8, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !987, file: !3, line: 202, column: 8)
!1009 = !DILocation(line: 202, column: 24, scope: !1008)
!1010 = !DILocation(line: 202, column: 8, scope: !987)
!1011 = !DILocation(line: 203, column: 5, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 202, column: 44)
!1013 = !DILocation(line: 207, column: 5, scope: !1012)
!1014 = !DILocation(line: 209, column: 3, scope: !987)
!1015 = !DILocation(line: 210, column: 2, scope: !983)
!1016 = !DILocation(line: 212, column: 6, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !841, file: !3, line: 212, column: 6)
!1018 = !DILocation(line: 212, column: 22, scope: !1017)
!1019 = !DILocation(line: 212, column: 6, scope: !841)
!1020 = !DILocation(line: 213, column: 39, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 212, column: 44)
!1022 = !DILocation(line: 213, column: 12, scope: !1021)
!1023 = !DILocation(line: 213, column: 10, scope: !1021)
!1024 = !DILocation(line: 214, column: 7, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 214, column: 7)
!1026 = !DILocation(line: 214, column: 7, scope: !1021)
!1027 = !DILocation(line: 215, column: 4, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 214, column: 29)
!1029 = !DILocation(line: 217, column: 2, scope: !1021)
!1030 = !DILocation(line: 218, column: 6, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !841, file: !3, line: 218, column: 6)
!1032 = !DILocation(line: 218, column: 22, scope: !1031)
!1033 = !DILocation(line: 218, column: 6, scope: !841)
!1034 = !DILocation(line: 219, column: 38, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 218, column: 43)
!1036 = !DILocation(line: 219, column: 12, scope: !1035)
!1037 = !DILocation(line: 219, column: 10, scope: !1035)
!1038 = !DILocation(line: 220, column: 7, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 220, column: 7)
!1040 = !DILocation(line: 220, column: 7, scope: !1035)
!1041 = !DILocation(line: 221, column: 4, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 220, column: 29)
!1043 = !DILocation(line: 223, column: 2, scope: !1035)
!1044 = !DILocation(line: 224, column: 6, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !841, file: !3, line: 224, column: 6)
!1046 = !DILocation(line: 224, column: 22, scope: !1045)
!1047 = !DILocation(line: 224, column: 6, scope: !841)
!1048 = !DILocation(line: 225, column: 38, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 224, column: 43)
!1050 = !DILocation(line: 225, column: 12, scope: !1049)
!1051 = !DILocation(line: 225, column: 10, scope: !1049)
!1052 = !DILocation(line: 226, column: 7, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 226, column: 7)
!1054 = !DILocation(line: 226, column: 7, scope: !1049)
!1055 = !DILocation(line: 227, column: 4, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 226, column: 29)
!1057 = !DILocation(line: 229, column: 2, scope: !1049)
!1058 = !DILocation(line: 230, column: 6, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !841, file: !3, line: 230, column: 6)
!1060 = !DILocation(line: 230, column: 22, scope: !1059)
!1061 = !DILocation(line: 230, column: 6, scope: !841)
!1062 = !DILocation(line: 240, column: 33, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 230, column: 44)
!1064 = !DILocation(line: 240, column: 39, scope: !1063)
!1065 = !DILocation(line: 240, column: 7, scope: !1063)
!1066 = !DILocation(line: 239, column: 10, scope: !1063)
!1067 = !DILocation(line: 241, column: 7, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 241, column: 7)
!1069 = !DILocation(line: 241, column: 7, scope: !1063)
!1070 = !DILocation(line: 246, column: 25, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 241, column: 29)
!1072 = !DILocation(line: 246, column: 5, scope: !1071)
!1073 = !DILocation(line: 246, column: 23, scope: !1071)
!1074 = !DILocation(line: 247, column: 4, scope: !1071)
!1075 = !DILocation(line: 247, column: 10, scope: !1071)
!1076 = !DILocation(line: 247, column: 23, scope: !1071)
!1077 = !DILocation(line: 248, column: 4, scope: !1071)
!1078 = !DILocation(line: 250, column: 2, scope: !1063)
!1079 = !DILocation(line: 254, column: 2, scope: !841)
!1080 = !DILocation(line: 256, column: 1, scope: !841)
!1081 = !DILocation(line: 260, column: 6, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !841, file: !3, line: 260, column: 6)
!1083 = !DILocation(line: 260, column: 20, scope: !1082)
!1084 = !DILocation(line: 260, column: 6, scope: !841)
!1085 = !DILocation(line: 264, column: 9, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 264, column: 7)
!1087 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 260, column: 49)
!1088 = !DILocation(line: 264, column: 15, scope: !1086)
!1089 = !DILocation(line: 264, column: 28, scope: !1086)
!1090 = !DILocation(line: 264, column: 7, scope: !1087)
!1091 = !DILocation(line: 266, column: 8, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 264, column: 52)
!1093 = !DILocation(line: 266, column: 30, scope: !1092)
!1094 = !DILocation(line: 265, column: 4, scope: !1092)
!1095 = !DILocation(line: 265, column: 23, scope: !1092)
!1096 = !DILocation(line: 265, column: 39, scope: !1092)
!1097 = !DILocation(line: 267, column: 3, scope: !1092)
!1098 = !DILocation(line: 275, column: 2, scope: !1087)
!1099 = !DILocation(line: 285, column: 27, scope: !841)
!1100 = !DILocation(line: 285, column: 2, scope: !841)
!1101 = !DILocation(line: 286, column: 23, scope: !841)
!1102 = !DILocation(line: 286, column: 3, scope: !841)
!1103 = !DILocation(line: 286, column: 21, scope: !841)
!1104 = !DILocation(line: 287, column: 2, scope: !841)
!1105 = !DILocation(line: 287, column: 8, scope: !841)
!1106 = !DILocation(line: 287, column: 21, scope: !841)
!1107 = !DILocation(line: 288, column: 2, scope: !841)
!1108 = !DILocation(line: 289, column: 1, scope: !841)
!1109 = distinct !DISubprogram(name: "acpi_ns_match_simple_repair", scope: !3, file: !3, line: 307, type: !1110, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1112)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!918, !69, !25, !25}
!1112 = !{!1113, !1114, !1115, !1116}
!1113 = !DILocalVariable(name: "node", arg: 1, scope: !1109, file: !3, line: 309, type: !69)
!1114 = !DILocalVariable(name: "return_btype", arg: 2, scope: !1109, file: !3, line: 311, type: !25)
!1115 = !DILocalVariable(name: "package_index", arg: 3, scope: !1109, file: !3, line: 313, type: !25)
!1116 = !DILocalVariable(name: "this_name", scope: !1109, file: !3, line: 315, type: !918)
!1117 = !DILocation(line: 309, column: 12, scope: !1109)
!1118 = !DILocation(line: 311, column: 11, scope: !1109)
!1119 = !DILocation(line: 313, column: 11, scope: !1109)
!1120 = !DILocation(line: 315, column: 2, scope: !1109)
!1121 = !DILocation(line: 315, column: 40, scope: !1109)
!1122 = !DILocation(line: 319, column: 12, scope: !1109)
!1123 = !DILocation(line: 320, column: 2, scope: !1109)
!1124 = !DILocation(line: 320, column: 9, scope: !1109)
!1125 = !DILocation(line: 320, column: 20, scope: !1109)
!1126 = !DILocation(line: 321, column: 7, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 321, column: 7)
!1128 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 320, column: 38)
!1129 = !DILocation(line: 321, column: 7, scope: !1128)
!1130 = !DILocation(line: 325, column: 9, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 325, column: 8)
!1132 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 321, column: 64)
!1133 = !DILocation(line: 325, column: 24, scope: !1131)
!1134 = !DILocation(line: 325, column: 35, scope: !1131)
!1135 = !DILocation(line: 325, column: 22, scope: !1131)
!1136 = !DILocation(line: 325, column: 54, scope: !1131)
!1137 = !DILocation(line: 326, column: 9, scope: !1131)
!1138 = !DILocation(line: 326, column: 20, scope: !1131)
!1139 = !DILocation(line: 326, column: 34, scope: !1131)
!1140 = !DILocation(line: 328, column: 9, scope: !1131)
!1141 = !DILocation(line: 328, column: 12, scope: !1131)
!1142 = !DILocation(line: 328, column: 29, scope: !1131)
!1143 = !DILocation(line: 328, column: 40, scope: !1131)
!1144 = !DILocation(line: 328, column: 26, scope: !1131)
!1145 = !DILocation(line: 325, column: 8, scope: !1132)
!1146 = !DILocation(line: 329, column: 13, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 328, column: 56)
!1148 = !DILocation(line: 329, column: 5, scope: !1147)
!1149 = !DILocation(line: 332, column: 4, scope: !1132)
!1150 = !DILocation(line: 335, column: 12, scope: !1128)
!1151 = distinct !{!1151, !1123, !1152, !1153, !1154}
!1152 = !DILocation(line: 336, column: 2, scope: !1109)
!1153 = !{!"llvm.loop.mustprogress"}
!1154 = !{!"llvm.loop.unroll.disable"}
!1155 = !DILocation(line: 338, column: 2, scope: !1109)
!1156 = !DILocation(line: 339, column: 1, scope: !1109)
!1157 = !DISubprogram(name: "acpi_ut_predefined_warning", scope: !1158, file: !1158, line: 708, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1158 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !849, !25, !113, !87, !849, null}
!1161 = !DISubprogram(name: "acpi_exception", scope: !1162, file: !1162, line: 906, type: !1163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1162 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1163 = !DISubroutineType(types: !1164)
!1164 = !{null, !849, !25, !23, !849, null}
!1165 = distinct !DISubprogram(name: "acpi_ns_repair_null_element", scope: !3, file: !3, line: 360, type: !842, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1166)
!1166 = !{!1167, !1168, !1169, !1170, !1171, !1172}
!1167 = !DILocalVariable(name: "info", arg: 1, scope: !1165, file: !3, line: 360, type: !844)
!1168 = !DILocalVariable(name: "expected_btypes", arg: 2, scope: !1165, file: !3, line: 361, type: !25)
!1169 = !DILocalVariable(name: "package_index", arg: 3, scope: !1165, file: !3, line: 362, type: !25)
!1170 = !DILocalVariable(name: "return_object_ptr", arg: 4, scope: !1165, file: !3, line: 363, type: !139)
!1171 = !DILocalVariable(name: "return_object", scope: !1165, file: !3, line: 365, type: !73)
!1172 = !DILocalVariable(name: "new_object", scope: !1165, file: !3, line: 366, type: !73)
!1173 = !DILocation(line: 360, column: 56, scope: !1165)
!1174 = !DILocation(line: 361, column: 12, scope: !1165)
!1175 = !DILocation(line: 362, column: 12, scope: !1165)
!1176 = !DILocation(line: 363, column: 36, scope: !1165)
!1177 = !DILocation(line: 365, column: 2, scope: !1165)
!1178 = !DILocation(line: 365, column: 29, scope: !1165)
!1179 = !DILocation(line: 365, column: 46, scope: !1165)
!1180 = !DILocation(line: 365, column: 45, scope: !1165)
!1181 = !DILocation(line: 366, column: 2, scope: !1165)
!1182 = !DILocation(line: 366, column: 29, scope: !1165)
!1183 = !DILocation(line: 372, column: 6, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 372, column: 6)
!1185 = !DILocation(line: 372, column: 6, scope: !1165)
!1186 = !DILocation(line: 373, column: 3, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 372, column: 21)
!1188 = !DILocation(line: 382, column: 6, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 382, column: 6)
!1190 = !DILocation(line: 382, column: 22, scope: !1189)
!1191 = !DILocation(line: 382, column: 6, scope: !1165)
!1192 = !DILocation(line: 386, column: 16, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 382, column: 44)
!1194 = !DILocation(line: 386, column: 14, scope: !1193)
!1195 = !DILocation(line: 387, column: 2, scope: !1193)
!1196 = !DILocation(line: 387, column: 13, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 387, column: 13)
!1198 = !DILocation(line: 387, column: 29, scope: !1197)
!1199 = !DILocation(line: 387, column: 13, scope: !1189)
!1200 = !DILocation(line: 391, column: 16, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 387, column: 50)
!1202 = !DILocation(line: 391, column: 14, scope: !1201)
!1203 = !DILocation(line: 392, column: 2, scope: !1201)
!1204 = !DILocation(line: 392, column: 13, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 392, column: 13)
!1206 = !DILocation(line: 392, column: 29, scope: !1205)
!1207 = !DILocation(line: 392, column: 13, scope: !1197)
!1208 = !DILocation(line: 396, column: 16, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 392, column: 50)
!1210 = !DILocation(line: 396, column: 14, scope: !1209)
!1211 = !DILocation(line: 397, column: 2, scope: !1209)
!1212 = !DILocation(line: 400, column: 3, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 397, column: 9)
!1214 = !DILocation(line: 403, column: 7, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 403, column: 6)
!1216 = !DILocation(line: 403, column: 6, scope: !1165)
!1217 = !DILocation(line: 404, column: 3, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 403, column: 19)
!1219 = !DILocation(line: 410, column: 6, scope: !1165)
!1220 = !DILocation(line: 410, column: 12, scope: !1165)
!1221 = !DILocation(line: 410, column: 35, scope: !1165)
!1222 = !DILocation(line: 409, column: 2, scope: !1165)
!1223 = !DILocation(line: 409, column: 21, scope: !1165)
!1224 = !DILocation(line: 409, column: 37, scope: !1165)
!1225 = !DILocation(line: 418, column: 23, scope: !1165)
!1226 = !DILocation(line: 418, column: 3, scope: !1165)
!1227 = !DILocation(line: 418, column: 21, scope: !1165)
!1228 = !DILocation(line: 419, column: 2, scope: !1165)
!1229 = !DILocation(line: 419, column: 8, scope: !1165)
!1230 = !DILocation(line: 419, column: 21, scope: !1165)
!1231 = !DILocation(line: 420, column: 2, scope: !1165)
!1232 = !DILocation(line: 421, column: 1, scope: !1165)
!1233 = !DISubprogram(name: "acpi_ns_convert_to_integer", scope: !1234, file: !1234, line: 150, type: !1235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1234 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!23, !73, !139}
!1237 = !DISubprogram(name: "acpi_ns_convert_to_string", scope: !1234, file: !1234, line: 154, type: !1235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1238 = !DISubprogram(name: "acpi_ns_convert_to_buffer", scope: !1234, file: !1234, line: 158, type: !1235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1239 = distinct !DISubprogram(name: "acpi_ns_wrap_with_package", scope: !3, file: !3, line: 533, type: !1240, scopeLine: 536, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1242)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!23, !844, !73, !139}
!1242 = !{!1243, !1244, !1245, !1246}
!1243 = !DILocalVariable(name: "info", arg: 1, scope: !1239, file: !3, line: 533, type: !844)
!1244 = !DILocalVariable(name: "original_object", arg: 2, scope: !1239, file: !3, line: 534, type: !73)
!1245 = !DILocalVariable(name: "obj_desc_ptr", arg: 3, scope: !1239, file: !3, line: 535, type: !139)
!1246 = !DILocalVariable(name: "pkg_obj_desc", scope: !1239, file: !3, line: 537, type: !73)
!1247 = !DILocation(line: 533, column: 54, scope: !1239)
!1248 = !DILocation(line: 534, column: 33, scope: !1239)
!1249 = !DILocation(line: 535, column: 34, scope: !1239)
!1250 = !DILocation(line: 537, column: 2, scope: !1239)
!1251 = !DILocation(line: 537, column: 29, scope: !1239)
!1252 = !DILocation(line: 545, column: 17, scope: !1239)
!1253 = !DILocation(line: 545, column: 15, scope: !1239)
!1254 = !DILocation(line: 546, column: 7, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 546, column: 6)
!1256 = !DILocation(line: 546, column: 6, scope: !1239)
!1257 = !DILocation(line: 547, column: 3, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 546, column: 21)
!1259 = !DILocation(line: 550, column: 38, scope: !1239)
!1260 = !DILocation(line: 550, column: 2, scope: !1239)
!1261 = !DILocation(line: 550, column: 24, scope: !1239)
!1262 = !DILocation(line: 550, column: 36, scope: !1239)
!1263 = !DILocation(line: 559, column: 18, scope: !1239)
!1264 = !DILocation(line: 559, column: 3, scope: !1239)
!1265 = !DILocation(line: 559, column: 16, scope: !1239)
!1266 = !DILocation(line: 560, column: 2, scope: !1239)
!1267 = !DILocation(line: 560, column: 8, scope: !1239)
!1268 = !DILocation(line: 560, column: 21, scope: !1239)
!1269 = !DILocation(line: 561, column: 2, scope: !1239)
!1270 = !DILocation(line: 562, column: 1, scope: !1239)
!1271 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1158, file: !1158, line: 369, type: !1272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !73}
!1274 = !DISubprogram(name: "acpi_ut_create_integer_object", scope: !1158, file: !1158, line: 455, type: !1275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!73, !29}
!1277 = !DISubprogram(name: "acpi_ut_create_string_object", scope: !1158, file: !1158, line: 459, type: !1278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!73, !1280}
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !24, line: 127, baseType: !29)
!1281 = !DISubprogram(name: "acpi_ut_create_buffer_object", scope: !1158, file: !1158, line: 457, type: !1278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1282 = distinct !DISubprogram(name: "acpi_ns_remove_null_elements", scope: !3, file: !3, line: 440, type: !1283, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1285)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{null, !844, !82, !73}
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293}
!1286 = !DILocalVariable(name: "info", arg: 1, scope: !1282, file: !3, line: 440, type: !844)
!1287 = !DILocalVariable(name: "package_type", arg: 2, scope: !1282, file: !3, line: 441, type: !82)
!1288 = !DILocalVariable(name: "obj_desc", arg: 3, scope: !1282, file: !3, line: 442, type: !73)
!1289 = !DILocalVariable(name: "source", scope: !1282, file: !3, line: 444, type: !139)
!1290 = !DILocalVariable(name: "dest", scope: !1282, file: !3, line: 445, type: !139)
!1291 = !DILocalVariable(name: "count", scope: !1282, file: !3, line: 446, type: !25)
!1292 = !DILocalVariable(name: "new_count", scope: !1282, file: !3, line: 447, type: !25)
!1293 = !DILocalVariable(name: "i", scope: !1282, file: !3, line: 448, type: !25)
!1294 = !DILocation(line: 440, column: 57, scope: !1282)
!1295 = !DILocation(line: 441, column: 12, scope: !1282)
!1296 = !DILocation(line: 442, column: 36, scope: !1282)
!1297 = !DILocation(line: 444, column: 2, scope: !1282)
!1298 = !DILocation(line: 444, column: 30, scope: !1282)
!1299 = !DILocation(line: 445, column: 2, scope: !1282)
!1300 = !DILocation(line: 445, column: 30, scope: !1282)
!1301 = !DILocation(line: 446, column: 2, scope: !1282)
!1302 = !DILocation(line: 446, column: 6, scope: !1282)
!1303 = !DILocation(line: 447, column: 2, scope: !1282)
!1304 = !DILocation(line: 447, column: 6, scope: !1282)
!1305 = !DILocation(line: 448, column: 2, scope: !1282)
!1306 = !DILocation(line: 448, column: 6, scope: !1282)
!1307 = !DILocation(line: 457, column: 10, scope: !1282)
!1308 = !DILocation(line: 457, column: 2, scope: !1282)
!1309 = !DILocation(line: 466, column: 3, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 457, column: 24)
!1311 = !DILocation(line: 472, column: 3, scope: !1310)
!1312 = !DILocation(line: 475, column: 10, scope: !1282)
!1313 = !DILocation(line: 475, column: 28, scope: !1282)
!1314 = !DILocation(line: 475, column: 8, scope: !1282)
!1315 = !DILocation(line: 476, column: 14, scope: !1282)
!1316 = !DILocation(line: 476, column: 12, scope: !1282)
!1317 = !DILocation(line: 478, column: 11, scope: !1282)
!1318 = !DILocation(line: 478, column: 29, scope: !1282)
!1319 = !DILocation(line: 478, column: 9, scope: !1282)
!1320 = !DILocation(line: 479, column: 9, scope: !1282)
!1321 = !DILocation(line: 479, column: 7, scope: !1282)
!1322 = !DILocation(line: 483, column: 9, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 483, column: 2)
!1324 = !DILocation(line: 483, column: 7, scope: !1323)
!1325 = !DILocation(line: 483, column: 14, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 483, column: 2)
!1327 = !DILocation(line: 483, column: 18, scope: !1326)
!1328 = !DILocation(line: 483, column: 16, scope: !1326)
!1329 = !DILocation(line: 483, column: 2, scope: !1323)
!1330 = !DILocation(line: 484, column: 9, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 484, column: 7)
!1332 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 483, column: 30)
!1333 = !DILocation(line: 484, column: 8, scope: !1331)
!1334 = !DILocation(line: 484, column: 7, scope: !1332)
!1335 = !DILocation(line: 485, column: 13, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 484, column: 17)
!1337 = !DILocation(line: 486, column: 3, scope: !1336)
!1338 = !DILocation(line: 487, column: 13, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 486, column: 10)
!1340 = !DILocation(line: 487, column: 12, scope: !1339)
!1341 = !DILocation(line: 487, column: 5, scope: !1339)
!1342 = !DILocation(line: 487, column: 10, scope: !1339)
!1343 = !DILocation(line: 488, column: 8, scope: !1339)
!1344 = !DILocation(line: 491, column: 9, scope: !1332)
!1345 = !DILocation(line: 492, column: 2, scope: !1332)
!1346 = !DILocation(line: 483, column: 26, scope: !1326)
!1347 = !DILocation(line: 483, column: 2, scope: !1326)
!1348 = distinct !{!1348, !1329, !1349, !1153, !1154}
!1349 = !DILocation(line: 492, column: 2, scope: !1323)
!1350 = !DILocation(line: 496, column: 6, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 496, column: 6)
!1352 = !DILocation(line: 496, column: 18, scope: !1351)
!1353 = !DILocation(line: 496, column: 16, scope: !1351)
!1354 = !DILocation(line: 496, column: 6, scope: !1282)
!1355 = !DILocation(line: 503, column: 4, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 496, column: 25)
!1357 = !DILocation(line: 503, column: 9, scope: !1356)
!1358 = !DILocation(line: 504, column: 29, scope: !1356)
!1359 = !DILocation(line: 504, column: 3, scope: !1356)
!1360 = !DILocation(line: 504, column: 21, scope: !1356)
!1361 = !DILocation(line: 504, column: 27, scope: !1356)
!1362 = !DILocation(line: 505, column: 2, scope: !1356)
!1363 = !DILocation(line: 506, column: 1, scope: !1282)
!1364 = !DISubprogram(name: "acpi_ut_create_package_object", scope: !1158, file: !1158, line: 453, type: !1365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!73, !25}
