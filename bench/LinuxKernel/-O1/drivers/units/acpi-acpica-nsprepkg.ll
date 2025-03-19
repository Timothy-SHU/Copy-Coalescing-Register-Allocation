; ModuleID = 'drivers/acpi/acpica/nsprepkg.c'
source_filename = "drivers/acpi/acpica/nsprepkg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i8, i8, i8 }
%union.acpi_predefined_info = type { %struct.acpi_name_info }
%struct.acpi_name_info = type <{ [4 x i8], i16, i8 }>
%struct.acpi_package_info = type <{ i8, i8, i8, i8, i8, i16 }>
%struct.acpi_object_package = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, i32, i32 }
%struct.acpi_package_info3 = type <{ i8, i8, [2 x i8], i8, i16 }>
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }
%struct.acpi_package_info2 = type { i8, i8, [4 x i8], i8 }

@_acpi_module_name = internal constant [9 x i8] c"nsprepkg\00", align 1, !dbg !0
@.str = private unnamed_addr constant [39 x i8] c"Return Package has no elements (empty)\00", align 1, !dbg !30
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid length for UUID Buffer\00", align 1, !dbg !36
@.str.2 = private unnamed_addr constant [48 x i8] c"Invalid internal return type in table entry: %X\00", align 1, !dbg !41
@.str.3 = private unnamed_addr constant [61 x i8] c"Return Package is too small - found %u elements, expected %u\00", align 1, !dbg !46
@.str.4 = private unnamed_addr constant [25 x i8] c"Invalid Package type: %X\00", align 1, !dbg !51
@.str.5 = private unnamed_addr constant [68 x i8] c"Return SubPackage[%u] is too small - found %u elements, expected %u\00", align 1, !dbg !56
@.str.6 = private unnamed_addr constant [58 x i8] c"Return Package has invalid object type for version number\00", align 1, !dbg !61

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_check_package(ptr noundef %info, ptr noundef %return_object_ptr) #0 align 16 !dbg !79 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %return_object_ptr.addr = alloca ptr, align 8
  %return_object = alloca ptr, align 8
  %package = alloca ptr, align 8
  %elements = alloca ptr, align 8
  %status = alloca i32, align 4
  %expected_count = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !915, metadata !DIExpression()), !dbg !925
  store ptr %return_object_ptr, ptr %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object_ptr.addr, metadata !916, metadata !DIExpression()), !dbg !926
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_object) #4, !dbg !927
  call void @llvm.dbg.declare(metadata ptr %return_object, metadata !917, metadata !DIExpression()), !dbg !928
  %0 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !929
  %1 = load ptr, ptr %0, align 8, !dbg !930
  store ptr %1, ptr %return_object, align 8, !dbg !928
  call void @llvm.lifetime.start.p0(i64 8, ptr %package) #4, !dbg !931
  call void @llvm.dbg.declare(metadata ptr %package, metadata !918, metadata !DIExpression()), !dbg !932
  call void @llvm.lifetime.start.p0(i64 8, ptr %elements) #4, !dbg !933
  call void @llvm.dbg.declare(metadata ptr %elements, metadata !919, metadata !DIExpression()), !dbg !934
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !935
  call void @llvm.dbg.declare(metadata ptr %status, metadata !920, metadata !DIExpression()), !dbg !936
  store i32 0, ptr %status, align 4, !dbg !936
  call void @llvm.lifetime.start.p0(i64 4, ptr %expected_count) #4, !dbg !937
  call void @llvm.dbg.declare(metadata ptr %expected_count, metadata !921, metadata !DIExpression()), !dbg !938
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #4, !dbg !939
  call void @llvm.dbg.declare(metadata ptr %count, metadata !922, metadata !DIExpression()), !dbg !940
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !941
  call void @llvm.dbg.declare(metadata ptr %i, metadata !923, metadata !DIExpression()), !dbg !942
  %2 = load ptr, ptr %info.addr, align 8, !dbg !943
  %predefined = getelementptr inbounds %struct.acpi_evaluate_info, ptr %2, i32 0, i32 6, !dbg !944
  %3 = load ptr, ptr %predefined, align 8, !dbg !944
  %add.ptr = getelementptr %union.acpi_predefined_info, ptr %3, i64 1, !dbg !945
  store ptr %add.ptr, ptr %package, align 8, !dbg !946
  %4 = load ptr, ptr %info.addr, align 8, !dbg !947
  %5 = load ptr, ptr %package, align 8, !dbg !948
  %type = getelementptr inbounds %struct.acpi_package_info, ptr %5, i32 0, i32 0, !dbg !949
  %6 = load i8, ptr %type, align 1, !dbg !949
  %7 = load ptr, ptr %return_object, align 8, !dbg !950
  call void @acpi_ns_remove_null_elements(ptr noundef %4, i8 noundef zeroext %6, ptr noundef %7) #5, !dbg !951
  %8 = load ptr, ptr %return_object, align 8, !dbg !952
  %elements1 = getelementptr inbounds %struct.acpi_object_package, ptr %8, i32 0, i32 6, !dbg !953
  %9 = load ptr, ptr %elements1, align 8, !dbg !953
  store ptr %9, ptr %elements, align 8, !dbg !954
  %10 = load ptr, ptr %return_object, align 8, !dbg !955
  %count2 = getelementptr inbounds %struct.acpi_object_package, ptr %10, i32 0, i32 9, !dbg !956
  %11 = load i32, ptr %count2, align 4, !dbg !956
  store i32 %11, ptr %count, align 4, !dbg !957
  %12 = load i32, ptr %count, align 4, !dbg !958
  %tobool = icmp ne i32 %12, 0, !dbg !958
  br i1 %tobool, label %if.end6, label %if.then, !dbg !960

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %package, align 8, !dbg !961
  %type3 = getelementptr inbounds %struct.acpi_package_info, ptr %13, i32 0, i32 0, !dbg !964
  %14 = load i8, ptr %type3, align 1, !dbg !964
  %conv = zext i8 %14 to i32, !dbg !961
  %cmp = icmp eq i32 %conv, 2, !dbg !965
  br i1 %cmp, label %if.then5, label %if.end, !dbg !966

if.then5:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !967
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !967

if.end:                                           ; preds = %if.then
  %15 = load ptr, ptr %info.addr, align 8, !dbg !969
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %15, i32 0, i32 5, !dbg !969
  %16 = load ptr, ptr %full_pathname, align 8, !dbg !969
  %17 = load ptr, ptr %info.addr, align 8, !dbg !969
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, ptr %17, i32 0, i32 12, !dbg !969
  %18 = load i16, ptr %node_flags, align 2, !dbg !969
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 94, ptr noundef %16, i16 noundef zeroext %18, ptr noundef @.str) #5, !dbg !969
  store i32 12292, ptr %retval, align 4, !dbg !970
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !970

if.end6:                                          ; preds = %entry
  %19 = load ptr, ptr %package, align 8, !dbg !971
  %type7 = getelementptr inbounds %struct.acpi_package_info, ptr %19, i32 0, i32 0, !dbg !972
  %20 = load i8, ptr %type7, align 1, !dbg !972
  %conv8 = zext i8 %20 to i32, !dbg !971
  switch i32 %conv8, label %sw.default [
    i32 13, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb26
    i32 3, label %sw.bb35
    i32 9, label %sw.bb67
    i32 6, label %sw.bb74
    i32 4, label %sw.bb86
    i32 7, label %sw.bb86
    i32 8, label %sw.bb86
    i32 5, label %sw.bb86
    i32 10, label %sw.bb86
    i32 11, label %sw.epilog
    i32 12, label %sw.bb100
  ], !dbg !973

sw.bb:                                            ; preds = %if.end6
  %21 = load ptr, ptr %info.addr, align 8, !dbg !974
  %22 = load ptr, ptr %elements, align 8, !dbg !976
  %23 = load i32, ptr %count, align 4, !dbg !977
  %call = call i32 @acpi_ns_custom_package(ptr noundef %21, ptr noundef %22, i32 noundef %23) #5, !dbg !978
  store i32 %call, ptr %status, align 4, !dbg !979
  br label %sw.epilog, !dbg !980

sw.bb9:                                           ; preds = %if.end6
  %24 = load ptr, ptr %package, align 8, !dbg !981
  %count1 = getelementptr inbounds %struct.acpi_package_info, ptr %24, i32 0, i32 2, !dbg !982
  %25 = load i8, ptr %count1, align 1, !dbg !982
  %conv10 = zext i8 %25 to i32, !dbg !981
  %26 = load ptr, ptr %package, align 8, !dbg !983
  %count211 = getelementptr inbounds %struct.acpi_package_info, ptr %26, i32 0, i32 4, !dbg !984
  %27 = load i8, ptr %count211, align 1, !dbg !984
  %conv12 = zext i8 %27 to i32, !dbg !983
  %add = add i32 %conv10, %conv12, !dbg !985
  store i32 %add, ptr %expected_count, align 4, !dbg !986
  %28 = load i32, ptr %count, align 4, !dbg !987
  %29 = load i32, ptr %expected_count, align 4, !dbg !989
  %cmp13 = icmp ult i32 %28, %29, !dbg !990
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !991

if.then15:                                        ; preds = %sw.bb9
  br label %package_too_small, !dbg !992

if.else:                                          ; preds = %sw.bb9
  %30 = load i32, ptr %count, align 4, !dbg !994
  %31 = load i32, ptr %expected_count, align 4, !dbg !996
  %cmp16 = icmp ugt i32 %30, %31, !dbg !997
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !998

if.then18:                                        ; preds = %if.else
  br label %if.end19, !dbg !999

if.end19:                                         ; preds = %if.then18, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19
  %32 = load ptr, ptr %info.addr, align 8, !dbg !1001
  %33 = load ptr, ptr %elements, align 8, !dbg !1002
  %34 = load ptr, ptr %package, align 8, !dbg !1003
  %object_type1 = getelementptr inbounds %struct.acpi_package_info, ptr %34, i32 0, i32 1, !dbg !1004
  %35 = load i8, ptr %object_type1, align 1, !dbg !1004
  %36 = load ptr, ptr %package, align 8, !dbg !1005
  %count121 = getelementptr inbounds %struct.acpi_package_info, ptr %36, i32 0, i32 2, !dbg !1006
  %37 = load i8, ptr %count121, align 1, !dbg !1006
  %conv22 = zext i8 %37 to i32, !dbg !1005
  %38 = load ptr, ptr %package, align 8, !dbg !1007
  %object_type2 = getelementptr inbounds %struct.acpi_package_info, ptr %38, i32 0, i32 3, !dbg !1008
  %39 = load i8, ptr %object_type2, align 1, !dbg !1008
  %40 = load ptr, ptr %package, align 8, !dbg !1009
  %count223 = getelementptr inbounds %struct.acpi_package_info, ptr %40, i32 0, i32 4, !dbg !1010
  %41 = load i8, ptr %count223, align 1, !dbg !1010
  %conv24 = zext i8 %41 to i32, !dbg !1009
  %call25 = call i32 @acpi_ns_check_package_elements(ptr noundef %32, ptr noundef %33, i8 noundef zeroext %35, i32 noundef %conv22, i8 noundef zeroext %39, i32 noundef %conv24, i32 noundef 0) #5, !dbg !1011
  store i32 %call25, ptr %status, align 4, !dbg !1012
  br label %sw.epilog, !dbg !1013

sw.bb26:                                          ; preds = %if.end6
  store i32 0, ptr %i, align 4, !dbg !1014
  br label %for.cond, !dbg !1016

for.cond:                                         ; preds = %for.inc, %sw.bb26
  %42 = load i32, ptr %i, align 4, !dbg !1017
  %43 = load i32, ptr %count, align 4, !dbg !1019
  %cmp27 = icmp ult i32 %42, %43, !dbg !1020
  br i1 %cmp27, label %for.body, label %for.end, !dbg !1021

for.body:                                         ; preds = %for.cond
  %44 = load ptr, ptr %info.addr, align 8, !dbg !1022
  %45 = load ptr, ptr %elements, align 8, !dbg !1024
  %46 = load ptr, ptr %package, align 8, !dbg !1025
  %object_type129 = getelementptr inbounds %struct.acpi_package_info, ptr %46, i32 0, i32 1, !dbg !1026
  %47 = load i8, ptr %object_type129, align 1, !dbg !1026
  %conv30 = zext i8 %47 to i32, !dbg !1025
  %48 = load i32, ptr %i, align 4, !dbg !1027
  %call31 = call i32 @acpi_ns_check_object_type(ptr noundef %44, ptr noundef %45, i32 noundef %conv30, i32 noundef %48) #5, !dbg !1028
  store i32 %call31, ptr %status, align 4, !dbg !1029
  %49 = load i32, ptr %status, align 4, !dbg !1030
  %tobool32 = icmp ne i32 %49, 0, !dbg !1030
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !1032

if.then33:                                        ; preds = %for.body
  %50 = load i32, ptr %status, align 4, !dbg !1033
  store i32 %50, ptr %retval, align 4, !dbg !1033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1033

if.end34:                                         ; preds = %for.body
  %51 = load ptr, ptr %elements, align 8, !dbg !1035
  %incdec.ptr = getelementptr ptr, ptr %51, i32 1, !dbg !1035
  store ptr %incdec.ptr, ptr %elements, align 8, !dbg !1035
  br label %for.inc, !dbg !1036

for.inc:                                          ; preds = %if.end34
  %52 = load i32, ptr %i, align 4, !dbg !1037
  %inc = add i32 %52, 1, !dbg !1037
  store i32 %inc, ptr %i, align 4, !dbg !1037
  br label %for.cond, !dbg !1038, !llvm.loop !1039

for.end:                                          ; preds = %for.cond
  br label %sw.epilog, !dbg !1043

sw.bb35:                                          ; preds = %if.end6
  %53 = load ptr, ptr %package, align 8, !dbg !1044
  %count36 = getelementptr inbounds %struct.acpi_package_info3, ptr %53, i32 0, i32 1, !dbg !1045
  %54 = load i8, ptr %count36, align 1, !dbg !1045
  %conv37 = zext i8 %54 to i32, !dbg !1044
  store i32 %conv37, ptr %expected_count, align 4, !dbg !1046
  %55 = load i32, ptr %count, align 4, !dbg !1047
  %56 = load i32, ptr %expected_count, align 4, !dbg !1049
  %cmp38 = icmp ult i32 %55, %56, !dbg !1050
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !1051

if.then40:                                        ; preds = %sw.bb35
  br label %package_too_small, !dbg !1052

if.end41:                                         ; preds = %sw.bb35
  store i32 0, ptr %i, align 4, !dbg !1054
  br label %for.cond42, !dbg !1056

for.cond42:                                       ; preds = %for.inc64, %if.end41
  %57 = load i32, ptr %i, align 4, !dbg !1057
  %58 = load i32, ptr %count, align 4, !dbg !1059
  %cmp43 = icmp ult i32 %57, %58, !dbg !1060
  br i1 %cmp43, label %for.body45, label %for.end66, !dbg !1061

for.body45:                                       ; preds = %for.cond42
  %59 = load i32, ptr %i, align 4, !dbg !1062
  %60 = load ptr, ptr %package, align 8, !dbg !1065
  %count46 = getelementptr inbounds %struct.acpi_package_info3, ptr %60, i32 0, i32 1, !dbg !1066
  %61 = load i8, ptr %count46, align 1, !dbg !1066
  %conv47 = zext i8 %61 to i32, !dbg !1065
  %cmp48 = icmp ult i32 %59, %conv47, !dbg !1067
  br i1 %cmp48, label %if.then50, label %if.else56, !dbg !1068

if.then50:                                        ; preds = %for.body45
  %62 = load ptr, ptr %info.addr, align 8, !dbg !1069
  %63 = load ptr, ptr %elements, align 8, !dbg !1071
  %64 = load ptr, ptr %package, align 8, !dbg !1072
  %object_type = getelementptr inbounds %struct.acpi_package_info3, ptr %64, i32 0, i32 2, !dbg !1073
  %65 = load i32, ptr %i, align 4, !dbg !1074
  %idxprom = zext i32 %65 to i64, !dbg !1072
  %arrayidx = getelementptr [2 x i8], ptr %object_type, i64 0, i64 %idxprom, !dbg !1072
  %66 = load i8, ptr %arrayidx, align 1, !dbg !1072
  %conv51 = zext i8 %66 to i32, !dbg !1072
  %67 = load i32, ptr %i, align 4, !dbg !1075
  %call52 = call i32 @acpi_ns_check_object_type(ptr noundef %62, ptr noundef %63, i32 noundef %conv51, i32 noundef %67) #5, !dbg !1076
  store i32 %call52, ptr %status, align 4, !dbg !1077
  %68 = load i32, ptr %status, align 4, !dbg !1078
  %tobool53 = icmp ne i32 %68, 0, !dbg !1078
  br i1 %tobool53, label %if.then54, label %if.end55, !dbg !1080

if.then54:                                        ; preds = %if.then50
  %69 = load i32, ptr %status, align 4, !dbg !1081
  store i32 %69, ptr %retval, align 4, !dbg !1081
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1081

if.end55:                                         ; preds = %if.then50
  br label %if.end62, !dbg !1083

if.else56:                                        ; preds = %for.body45
  %70 = load ptr, ptr %info.addr, align 8, !dbg !1084
  %71 = load ptr, ptr %elements, align 8, !dbg !1086
  %72 = load ptr, ptr %package, align 8, !dbg !1087
  %tail_object_type = getelementptr inbounds %struct.acpi_package_info3, ptr %72, i32 0, i32 3, !dbg !1088
  %73 = load i8, ptr %tail_object_type, align 1, !dbg !1088
  %conv57 = zext i8 %73 to i32, !dbg !1087
  %74 = load i32, ptr %i, align 4, !dbg !1089
  %call58 = call i32 @acpi_ns_check_object_type(ptr noundef %70, ptr noundef %71, i32 noundef %conv57, i32 noundef %74) #5, !dbg !1090
  store i32 %call58, ptr %status, align 4, !dbg !1091
  %75 = load i32, ptr %status, align 4, !dbg !1092
  %tobool59 = icmp ne i32 %75, 0, !dbg !1092
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !1094

if.then60:                                        ; preds = %if.else56
  %76 = load i32, ptr %status, align 4, !dbg !1095
  store i32 %76, ptr %retval, align 4, !dbg !1095
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1095

if.end61:                                         ; preds = %if.else56
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end55
  %77 = load ptr, ptr %elements, align 8, !dbg !1097
  %incdec.ptr63 = getelementptr ptr, ptr %77, i32 1, !dbg !1097
  store ptr %incdec.ptr63, ptr %elements, align 8, !dbg !1097
  br label %for.inc64, !dbg !1098

for.inc64:                                        ; preds = %if.end62
  %78 = load i32, ptr %i, align 4, !dbg !1099
  %inc65 = add i32 %78, 1, !dbg !1099
  store i32 %inc65, ptr %i, align 4, !dbg !1099
  br label %for.cond42, !dbg !1100, !llvm.loop !1101

for.end66:                                        ; preds = %for.cond42
  br label %sw.epilog, !dbg !1103

sw.bb67:                                          ; preds = %if.end6
  %79 = load ptr, ptr %info.addr, align 8, !dbg !1104
  %80 = load ptr, ptr %elements, align 8, !dbg !1105
  %call68 = call i32 @acpi_ns_check_object_type(ptr noundef %79, ptr noundef %80, i32 noundef 2, i32 noundef 0) #5, !dbg !1106
  store i32 %call68, ptr %status, align 4, !dbg !1107
  %81 = load i32, ptr %status, align 4, !dbg !1108
  %tobool69 = icmp ne i32 %81, 0, !dbg !1108
  br i1 %tobool69, label %if.then70, label %if.end71, !dbg !1110

if.then70:                                        ; preds = %sw.bb67
  %82 = load i32, ptr %status, align 4, !dbg !1111
  store i32 %82, ptr %retval, align 4, !dbg !1111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1111

if.end71:                                         ; preds = %sw.bb67
  %83 = load ptr, ptr %elements, align 8, !dbg !1113
  %incdec.ptr72 = getelementptr ptr, ptr %83, i32 1, !dbg !1113
  store ptr %incdec.ptr72, ptr %elements, align 8, !dbg !1113
  %84 = load i32, ptr %count, align 4, !dbg !1114
  %dec = add i32 %84, -1, !dbg !1114
  store i32 %dec, ptr %count, align 4, !dbg !1114
  %85 = load ptr, ptr %info.addr, align 8, !dbg !1115
  %86 = load ptr, ptr %package, align 8, !dbg !1116
  %87 = load ptr, ptr %elements, align 8, !dbg !1117
  %88 = load i32, ptr %count, align 4, !dbg !1118
  %call73 = call i32 @acpi_ns_check_package_list(ptr noundef %85, ptr noundef %86, ptr noundef %87, i32 noundef %88) #5, !dbg !1119
  store i32 %call73, ptr %status, align 4, !dbg !1120
  br label %sw.epilog, !dbg !1121

sw.bb74:                                          ; preds = %if.end6
  %89 = load ptr, ptr %info.addr, align 8, !dbg !1122
  %90 = load ptr, ptr %elements, align 8, !dbg !1123
  %call75 = call i32 @acpi_ns_check_object_type(ptr noundef %89, ptr noundef %90, i32 noundef 2, i32 noundef 0) #5, !dbg !1124
  store i32 %call75, ptr %status, align 4, !dbg !1125
  %91 = load i32, ptr %status, align 4, !dbg !1126
  %tobool76 = icmp ne i32 %91, 0, !dbg !1126
  br i1 %tobool76, label %if.then77, label %if.end78, !dbg !1128

if.then77:                                        ; preds = %sw.bb74
  %92 = load i32, ptr %status, align 4, !dbg !1129
  store i32 %92, ptr %retval, align 4, !dbg !1129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1129

if.end78:                                         ; preds = %sw.bb74
  %93 = load ptr, ptr %elements, align 8, !dbg !1131
  %94 = load ptr, ptr %93, align 8, !dbg !1132
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %94, i32 0, i32 6, !dbg !1133
  %95 = load i64, ptr %value, align 8, !dbg !1133
  %conv79 = trunc i64 %95 to i32, !dbg !1134
  store i32 %conv79, ptr %expected_count, align 4, !dbg !1135
  %96 = load i32, ptr %expected_count, align 4, !dbg !1136
  %97 = load i32, ptr %count, align 4, !dbg !1138
  %cmp80 = icmp uge i32 %96, %97, !dbg !1139
  br i1 %cmp80, label %if.then82, label %if.end83, !dbg !1140

if.then82:                                        ; preds = %if.end78
  br label %package_too_small, !dbg !1141

if.end83:                                         ; preds = %if.end78
  %98 = load i32, ptr %expected_count, align 4, !dbg !1143
  store i32 %98, ptr %count, align 4, !dbg !1144
  %99 = load ptr, ptr %elements, align 8, !dbg !1145
  %incdec.ptr84 = getelementptr ptr, ptr %99, i32 1, !dbg !1145
  store ptr %incdec.ptr84, ptr %elements, align 8, !dbg !1145
  %100 = load ptr, ptr %info.addr, align 8, !dbg !1146
  %101 = load ptr, ptr %package, align 8, !dbg !1147
  %102 = load ptr, ptr %elements, align 8, !dbg !1148
  %103 = load i32, ptr %count, align 4, !dbg !1149
  %call85 = call i32 @acpi_ns_check_package_list(ptr noundef %100, ptr noundef %101, ptr noundef %102, i32 noundef %103) #5, !dbg !1150
  store i32 %call85, ptr %status, align 4, !dbg !1151
  br label %sw.epilog, !dbg !1152

sw.bb86:                                          ; preds = %if.end6, %if.end6, %if.end6, %if.end6, %if.end6
  %104 = load ptr, ptr %elements, align 8, !dbg !1153
  %105 = load ptr, ptr %104, align 8, !dbg !1155
  %tobool87 = icmp ne ptr %105, null, !dbg !1155
  br i1 %tobool87, label %land.lhs.true, label %if.end98, !dbg !1156

land.lhs.true:                                    ; preds = %sw.bb86
  %106 = load ptr, ptr %elements, align 8, !dbg !1157
  %107 = load ptr, ptr %106, align 8, !dbg !1158
  %type88 = getelementptr inbounds %struct.acpi_object_common, ptr %107, i32 0, i32 2, !dbg !1159
  %108 = load i8, ptr %type88, align 1, !dbg !1159
  %conv89 = zext i8 %108 to i32, !dbg !1160
  %cmp90 = icmp ne i32 %conv89, 4, !dbg !1161
  br i1 %cmp90, label %if.then92, label %if.end98, !dbg !1162

if.then92:                                        ; preds = %land.lhs.true
  %109 = load ptr, ptr %info.addr, align 8, !dbg !1163
  %110 = load ptr, ptr %return_object, align 8, !dbg !1165
  %111 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !1166
  %call93 = call i32 @acpi_ns_wrap_with_package(ptr noundef %109, ptr noundef %110, ptr noundef %111) #5, !dbg !1167
  store i32 %call93, ptr %status, align 4, !dbg !1168
  %112 = load i32, ptr %status, align 4, !dbg !1169
  %tobool94 = icmp ne i32 %112, 0, !dbg !1169
  br i1 %tobool94, label %if.then95, label %if.end96, !dbg !1171

if.then95:                                        ; preds = %if.then92
  %113 = load i32, ptr %status, align 4, !dbg !1172
  store i32 %113, ptr %retval, align 4, !dbg !1172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1172

if.end96:                                         ; preds = %if.then92
  %114 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !1174
  %115 = load ptr, ptr %114, align 8, !dbg !1175
  store ptr %115, ptr %return_object, align 8, !dbg !1176
  %116 = load ptr, ptr %return_object, align 8, !dbg !1177
  %elements97 = getelementptr inbounds %struct.acpi_object_package, ptr %116, i32 0, i32 6, !dbg !1178
  %117 = load ptr, ptr %elements97, align 8, !dbg !1178
  store ptr %117, ptr %elements, align 8, !dbg !1179
  store i32 1, ptr %count, align 4, !dbg !1180
  br label %if.end98, !dbg !1181

if.end98:                                         ; preds = %if.end96, %land.lhs.true, %sw.bb86
  %118 = load ptr, ptr %info.addr, align 8, !dbg !1182
  %119 = load ptr, ptr %package, align 8, !dbg !1183
  %120 = load ptr, ptr %elements, align 8, !dbg !1184
  %121 = load i32, ptr %count, align 4, !dbg !1185
  %call99 = call i32 @acpi_ns_check_package_list(ptr noundef %118, ptr noundef %119, ptr noundef %120, i32 noundef %121) #5, !dbg !1186
  store i32 %call99, ptr %status, align 4, !dbg !1187
  br label %sw.epilog, !dbg !1188

sw.bb100:                                         ; preds = %if.end6
  %122 = load i32, ptr %count, align 4, !dbg !1189
  %and = and i32 %122, 1, !dbg !1191
  %tobool101 = icmp ne i32 %and, 0, !dbg !1191
  br i1 %tobool101, label %if.then102, label %if.end104, !dbg !1192

if.then102:                                       ; preds = %sw.bb100
  %123 = load i32, ptr %count, align 4, !dbg !1193
  %add103 = add i32 %123, 1, !dbg !1195
  store i32 %add103, ptr %expected_count, align 4, !dbg !1196
  br label %package_too_small, !dbg !1197

if.end104:                                        ; preds = %sw.bb100
  br label %while.cond, !dbg !1198

while.cond:                                       ; preds = %if.end125, %if.end104
  %124 = load i32, ptr %count, align 4, !dbg !1199
  %cmp105 = icmp ugt i32 %124, 0, !dbg !1200
  br i1 %cmp105, label %while.body, label %while.end, !dbg !1198

while.body:                                       ; preds = %while.cond
  %125 = load ptr, ptr %info.addr, align 8, !dbg !1201
  %126 = load ptr, ptr %elements, align 8, !dbg !1203
  %127 = load ptr, ptr %package, align 8, !dbg !1204
  %object_type1107 = getelementptr inbounds %struct.acpi_package_info, ptr %127, i32 0, i32 1, !dbg !1205
  %128 = load i8, ptr %object_type1107, align 1, !dbg !1205
  %conv108 = zext i8 %128 to i32, !dbg !1204
  %call109 = call i32 @acpi_ns_check_object_type(ptr noundef %125, ptr noundef %126, i32 noundef %conv108, i32 noundef 0) #5, !dbg !1206
  store i32 %call109, ptr %status, align 4, !dbg !1207
  %129 = load i32, ptr %status, align 4, !dbg !1208
  %tobool110 = icmp ne i32 %129, 0, !dbg !1208
  br i1 %tobool110, label %if.then111, label %if.end112, !dbg !1210

if.then111:                                       ; preds = %while.body
  %130 = load i32, ptr %status, align 4, !dbg !1211
  store i32 %130, ptr %retval, align 4, !dbg !1211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1211

if.end112:                                        ; preds = %while.body
  %131 = load ptr, ptr %elements, align 8, !dbg !1213
  %132 = load ptr, ptr %131, align 8, !dbg !1215
  %length = getelementptr inbounds %struct.acpi_object_buffer, ptr %132, i32 0, i32 6, !dbg !1216
  %133 = load i32, ptr %length, align 8, !dbg !1216
  %cmp113 = icmp ne i32 %133, 16, !dbg !1217
  br i1 %cmp113, label %if.then115, label %if.end118, !dbg !1218

if.then115:                                       ; preds = %if.end112
  %134 = load ptr, ptr %info.addr, align 8, !dbg !1219
  %full_pathname116 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %134, i32 0, i32 5, !dbg !1219
  %135 = load ptr, ptr %full_pathname116, align 8, !dbg !1219
  %136 = load ptr, ptr %info.addr, align 8, !dbg !1219
  %node_flags117 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %136, i32 0, i32 12, !dbg !1219
  %137 = load i16, ptr %node_flags117, align 2, !dbg !1219
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 325, ptr noundef %135, i16 noundef zeroext %137, ptr noundef @.str.1) #5, !dbg !1219
  store i32 12292, ptr %retval, align 4, !dbg !1221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1221

if.end118:                                        ; preds = %if.end112
  %138 = load ptr, ptr %info.addr, align 8, !dbg !1222
  %139 = load ptr, ptr %elements, align 8, !dbg !1223
  %add.ptr119 = getelementptr ptr, ptr %139, i64 1, !dbg !1224
  %140 = load ptr, ptr %package, align 8, !dbg !1225
  %object_type2120 = getelementptr inbounds %struct.acpi_package_info, ptr %140, i32 0, i32 3, !dbg !1226
  %141 = load i8, ptr %object_type2120, align 1, !dbg !1226
  %conv121 = zext i8 %141 to i32, !dbg !1225
  %call122 = call i32 @acpi_ns_check_object_type(ptr noundef %138, ptr noundef %add.ptr119, i32 noundef %conv121, i32 noundef 0) #5, !dbg !1227
  store i32 %call122, ptr %status, align 4, !dbg !1228
  %142 = load i32, ptr %status, align 4, !dbg !1229
  %tobool123 = icmp ne i32 %142, 0, !dbg !1229
  br i1 %tobool123, label %if.then124, label %if.end125, !dbg !1231

if.then124:                                       ; preds = %if.end118
  %143 = load i32, ptr %status, align 4, !dbg !1232
  store i32 %143, ptr %retval, align 4, !dbg !1232
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1232

if.end125:                                        ; preds = %if.end118
  %144 = load ptr, ptr %elements, align 8, !dbg !1234
  %add.ptr126 = getelementptr ptr, ptr %144, i64 2, !dbg !1234
  store ptr %add.ptr126, ptr %elements, align 8, !dbg !1234
  %145 = load i32, ptr %count, align 4, !dbg !1235
  %sub = sub i32 %145, 2, !dbg !1235
  store i32 %sub, ptr %count, align 4, !dbg !1235
  br label %while.cond, !dbg !1198, !llvm.loop !1236

while.end:                                        ; preds = %while.cond
  br label %sw.epilog, !dbg !1238

sw.default:                                       ; preds = %if.end6
  %146 = load ptr, ptr %info.addr, align 8, !dbg !1239
  %full_pathname127 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %146, i32 0, i32 5, !dbg !1239
  %147 = load ptr, ptr %full_pathname127, align 8, !dbg !1239
  %148 = load ptr, ptr %info.addr, align 8, !dbg !1239
  %node_flags128 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %148, i32 0, i32 12, !dbg !1239
  %149 = load i16, ptr %node_flags128, align 2, !dbg !1239
  %150 = load ptr, ptr %package, align 8, !dbg !1239
  %type129 = getelementptr inbounds %struct.acpi_package_info, ptr %150, i32 0, i32 0, !dbg !1239
  %151 = load i8, ptr %type129, align 1, !dbg !1239
  %conv130 = zext i8 %151 to i32, !dbg !1239
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 348, ptr noundef %147, i16 noundef zeroext %149, ptr noundef @.str.2, i32 noundef %conv130) #5, !dbg !1239
  store i32 12303, ptr %retval, align 4, !dbg !1240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1240

sw.epilog:                                        ; preds = %while.end, %if.end6, %if.end98, %if.end83, %if.end71, %for.end66, %for.end, %if.end20, %sw.bb
  %152 = load i32, ptr %status, align 4, !dbg !1241
  store i32 %152, ptr %retval, align 4, !dbg !1241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1241

package_too_small:                                ; preds = %if.then102, %if.then82, %if.then40, %if.then15
  call void @llvm.dbg.label(metadata !924), !dbg !1242
  %153 = load ptr, ptr %info.addr, align 8, !dbg !1243
  %full_pathname131 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %153, i32 0, i32 5, !dbg !1243
  %154 = load ptr, ptr %full_pathname131, align 8, !dbg !1243
  %155 = load ptr, ptr %info.addr, align 8, !dbg !1243
  %node_flags132 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %155, i32 0, i32 12, !dbg !1243
  %156 = load i16, ptr %node_flags132, align 2, !dbg !1243
  %157 = load i32, ptr %count, align 4, !dbg !1243
  %158 = load i32, ptr %expected_count, align 4, !dbg !1243
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 362, ptr noundef %154, i16 noundef zeroext %156, ptr noundef @.str.3, i32 noundef %157, i32 noundef %158) #5, !dbg !1243
  store i32 12292, ptr %retval, align 4, !dbg !1244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1244

cleanup:                                          ; preds = %package_too_small, %sw.epilog, %sw.default, %if.then124, %if.then115, %if.then111, %if.then95, %if.then77, %if.then70, %if.then60, %if.then54, %if.then33, %if.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !1245
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #4, !dbg !1245
  call void @llvm.lifetime.end.p0(i64 4, ptr %expected_count) #4, !dbg !1245
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1245
  call void @llvm.lifetime.end.p0(i64 8, ptr %elements) #4, !dbg !1245
  call void @llvm.lifetime.end.p0(i64 8, ptr %package) #4, !dbg !1245
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_object) #4, !dbg !1245
  %159 = load i32, ptr %retval, align 4, !dbg !1245
  ret i32 %159, !dbg !1245
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1246 dso_local void @acpi_ns_remove_null_elements(ptr noundef, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1250 dso_local void @acpi_ut_predefined_warning(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ns_custom_package(ptr noundef %info, ptr noundef %elements, i32 noundef %count) #0 align 16 !dbg !1254 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %elements.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %expected_count = alloca i32, align 4
  %version = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1258, metadata !DIExpression()), !dbg !1264
  store ptr %elements, ptr %elements.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %elements.addr, metadata !1259, metadata !DIExpression()), !dbg !1265
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1260, metadata !DIExpression()), !dbg !1266
  call void @llvm.lifetime.start.p0(i64 4, ptr %expected_count) #4, !dbg !1267
  call void @llvm.dbg.declare(metadata ptr %expected_count, metadata !1261, metadata !DIExpression()), !dbg !1268
  call void @llvm.lifetime.start.p0(i64 4, ptr %version) #4, !dbg !1269
  call void @llvm.dbg.declare(metadata ptr %version, metadata !1262, metadata !DIExpression()), !dbg !1270
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1271
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1263, metadata !DIExpression()), !dbg !1272
  store i32 0, ptr %status, align 4, !dbg !1272
  %0 = load ptr, ptr %elements.addr, align 8, !dbg !1273
  %1 = load ptr, ptr %0, align 8, !dbg !1275
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %1, i32 0, i32 2, !dbg !1276
  %2 = load i8, ptr %type, align 1, !dbg !1276
  %conv = zext i8 %2 to i32, !dbg !1277
  %cmp = icmp ne i32 %conv, 1, !dbg !1278
  br i1 %cmp, label %if.then, label %if.end, !dbg !1279

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %info.addr, align 8, !dbg !1280
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %3, i32 0, i32 5, !dbg !1280
  %4 = load ptr, ptr %full_pathname, align 8, !dbg !1280
  %5 = load ptr, ptr %info.addr, align 8, !dbg !1280
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, ptr %5, i32 0, i32 12, !dbg !1280
  %6 = load i16, ptr %node_flags, align 2, !dbg !1280
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 635, ptr noundef %4, i16 noundef zeroext %6, ptr noundef @.str.6) #5, !dbg !1280
  store i32 12291, ptr %retval, align 4, !dbg !1282
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1282

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %elements.addr, align 8, !dbg !1283
  %8 = load ptr, ptr %7, align 8, !dbg !1284
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %8, i32 0, i32 6, !dbg !1285
  %9 = load i64, ptr %value, align 8, !dbg !1285
  %conv2 = trunc i64 %9 to i32, !dbg !1286
  store i32 %conv2, ptr %version, align 4, !dbg !1287
  store i32 21, ptr %expected_count, align 4, !dbg !1288
  %10 = load i32, ptr %version, align 4, !dbg !1289
  %cmp3 = icmp eq i32 %10, 0, !dbg !1291
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !1292

if.then5:                                         ; preds = %if.end
  store i32 20, ptr %expected_count, align 4, !dbg !1293
  br label %if.end6, !dbg !1295

if.end6:                                          ; preds = %if.then5, %if.end
  %11 = load i32, ptr %count.addr, align 4, !dbg !1296
  %12 = load i32, ptr %expected_count, align 4, !dbg !1298
  %cmp7 = icmp ult i32 %11, %12, !dbg !1299
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !1300

if.then9:                                         ; preds = %if.end6
  %13 = load ptr, ptr %info.addr, align 8, !dbg !1301
  %full_pathname10 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %13, i32 0, i32 5, !dbg !1301
  %14 = load ptr, ptr %full_pathname10, align 8, !dbg !1301
  %15 = load ptr, ptr %info.addr, align 8, !dbg !1301
  %node_flags11 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %15, i32 0, i32 12, !dbg !1301
  %16 = load i16, ptr %node_flags11, align 2, !dbg !1301
  %17 = load i32, ptr %count.addr, align 4, !dbg !1301
  %18 = load i32, ptr %expected_count, align 4, !dbg !1301
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 649, ptr noundef %14, i16 noundef zeroext %16, ptr noundef @.str.3, i32 noundef %17, i32 noundef %18) #5, !dbg !1301
  store i32 12292, ptr %retval, align 4, !dbg !1303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1303

if.else:                                          ; preds = %if.end6
  %19 = load i32, ptr %count.addr, align 4, !dbg !1304
  %20 = load i32, ptr %expected_count, align 4, !dbg !1306
  %cmp12 = icmp ugt i32 %19, %20, !dbg !1307
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !1308

if.then14:                                        ; preds = %if.else
  br label %if.end15, !dbg !1309

if.end15:                                         ; preds = %if.then14, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15
  %21 = load ptr, ptr %info.addr, align 8, !dbg !1311
  %22 = load ptr, ptr %elements.addr, align 8, !dbg !1312
  %call = call i32 @acpi_ns_check_package_elements(ptr noundef %21, ptr noundef %22, i8 noundef zeroext 2, i32 noundef 16, i8 noundef zeroext 4, i32 noundef 4, i32 noundef 0) #5, !dbg !1313
  store i32 %call, ptr %status, align 4, !dbg !1314
  %23 = load i32, ptr %status, align 4, !dbg !1315
  %tobool = icmp ne i32 %23, 0, !dbg !1315
  br i1 %tobool, label %if.then17, label %if.end18, !dbg !1317

if.then17:                                        ; preds = %if.end16
  %24 = load i32, ptr %status, align 4, !dbg !1318
  store i32 %24, ptr %retval, align 4, !dbg !1318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1318

if.end18:                                         ; preds = %if.end16
  %25 = load i32, ptr %version, align 4, !dbg !1320
  %cmp19 = icmp ugt i32 %25, 0, !dbg !1322
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !1323

if.then21:                                        ; preds = %if.end18
  %26 = load ptr, ptr %info.addr, align 8, !dbg !1324
  %27 = load ptr, ptr %elements.addr, align 8, !dbg !1326
  %add.ptr = getelementptr ptr, ptr %27, i64 20, !dbg !1327
  %call22 = call i32 @acpi_ns_check_package_elements(ptr noundef %26, ptr noundef %add.ptr, i8 noundef zeroext 2, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 20) #5, !dbg !1328
  store i32 %call22, ptr %status, align 4, !dbg !1329
  br label %if.end23, !dbg !1330

if.end23:                                         ; preds = %if.then21, %if.end18
  %28 = load i32, ptr %status, align 4, !dbg !1331
  store i32 %28, ptr %retval, align 4, !dbg !1331
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1331

cleanup:                                          ; preds = %if.end23, %if.then17, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1332
  call void @llvm.lifetime.end.p0(i64 4, ptr %version) #4, !dbg !1332
  call void @llvm.lifetime.end.p0(i64 4, ptr %expected_count) #4, !dbg !1332
  %29 = load i32, ptr %retval, align 4, !dbg !1332
  ret i32 %29, !dbg !1332
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ns_check_package_elements(ptr noundef %info, ptr noundef %elements, i8 noundef zeroext %type1, i32 noundef %count1, i8 noundef zeroext %type2, i32 noundef %count2, i32 noundef %start_index) #0 align 16 !dbg !1333 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %elements.addr = alloca ptr, align 8
  %type1.addr = alloca i8, align 1
  %count1.addr = alloca i32, align 4
  %type2.addr = alloca i8, align 1
  %count2.addr = alloca i32, align 4
  %start_index.addr = alloca i32, align 4
  %this_element = alloca ptr, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1337, metadata !DIExpression()), !dbg !1347
  store ptr %elements, ptr %elements.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %elements.addr, metadata !1338, metadata !DIExpression()), !dbg !1348
  store i8 %type1, ptr %type1.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type1.addr, metadata !1339, metadata !DIExpression()), !dbg !1349
  store i32 %count1, ptr %count1.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count1.addr, metadata !1340, metadata !DIExpression()), !dbg !1350
  store i8 %type2, ptr %type2.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type2.addr, metadata !1341, metadata !DIExpression()), !dbg !1351
  store i32 %count2, ptr %count2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count2.addr, metadata !1342, metadata !DIExpression()), !dbg !1352
  store i32 %start_index, ptr %start_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start_index.addr, metadata !1343, metadata !DIExpression()), !dbg !1353
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_element) #4, !dbg !1354
  call void @llvm.dbg.declare(metadata ptr %this_element, metadata !1344, metadata !DIExpression()), !dbg !1355
  %0 = load ptr, ptr %elements.addr, align 8, !dbg !1356
  store ptr %0, ptr %this_element, align 8, !dbg !1355
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1357
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1345, metadata !DIExpression()), !dbg !1358
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !1359
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1346, metadata !DIExpression()), !dbg !1360
  store i32 0, ptr %i, align 4, !dbg !1361
  br label %for.cond, !dbg !1363

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !1364
  %2 = load i32, ptr %count1.addr, align 4, !dbg !1366
  %cmp = icmp ult i32 %1, %2, !dbg !1367
  br i1 %cmp, label %for.body, label %for.end, !dbg !1368

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %info.addr, align 8, !dbg !1369
  %4 = load ptr, ptr %this_element, align 8, !dbg !1371
  %5 = load i8, ptr %type1.addr, align 1, !dbg !1372
  %conv = zext i8 %5 to i32, !dbg !1372
  %6 = load i32, ptr %i, align 4, !dbg !1373
  %7 = load i32, ptr %start_index.addr, align 4, !dbg !1374
  %add = add i32 %6, %7, !dbg !1375
  %call = call i32 @acpi_ns_check_object_type(ptr noundef %3, ptr noundef %4, i32 noundef %conv, i32 noundef %add) #5, !dbg !1376
  store i32 %call, ptr %status, align 4, !dbg !1377
  %8 = load i32, ptr %status, align 4, !dbg !1378
  %tobool = icmp ne i32 %8, 0, !dbg !1378
  br i1 %tobool, label %if.then, label %if.end, !dbg !1380

if.then:                                          ; preds = %for.body
  %9 = load i32, ptr %status, align 4, !dbg !1381
  store i32 %9, ptr %retval, align 4, !dbg !1381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1381

if.end:                                           ; preds = %for.body
  %10 = load ptr, ptr %this_element, align 8, !dbg !1383
  %incdec.ptr = getelementptr ptr, ptr %10, i32 1, !dbg !1383
  store ptr %incdec.ptr, ptr %this_element, align 8, !dbg !1383
  br label %for.inc, !dbg !1384

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4, !dbg !1385
  %inc = add i32 %11, 1, !dbg !1385
  store i32 %inc, ptr %i, align 4, !dbg !1385
  br label %for.cond, !dbg !1386, !llvm.loop !1387

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !1389
  br label %for.cond1, !dbg !1391

for.cond1:                                        ; preds = %for.inc13, %for.end
  %12 = load i32, ptr %i, align 4, !dbg !1392
  %13 = load i32, ptr %count2.addr, align 4, !dbg !1394
  %cmp2 = icmp ult i32 %12, %13, !dbg !1395
  br i1 %cmp2, label %for.body4, label %for.end15, !dbg !1396

for.body4:                                        ; preds = %for.cond1
  %14 = load ptr, ptr %info.addr, align 8, !dbg !1397
  %15 = load ptr, ptr %this_element, align 8, !dbg !1399
  %16 = load i8, ptr %type2.addr, align 1, !dbg !1400
  %conv5 = zext i8 %16 to i32, !dbg !1400
  %17 = load i32, ptr %i, align 4, !dbg !1401
  %18 = load i32, ptr %count1.addr, align 4, !dbg !1402
  %add6 = add i32 %17, %18, !dbg !1403
  %19 = load i32, ptr %start_index.addr, align 4, !dbg !1404
  %add7 = add i32 %add6, %19, !dbg !1405
  %call8 = call i32 @acpi_ns_check_object_type(ptr noundef %14, ptr noundef %15, i32 noundef %conv5, i32 noundef %add7) #5, !dbg !1406
  store i32 %call8, ptr %status, align 4, !dbg !1407
  %20 = load i32, ptr %status, align 4, !dbg !1408
  %tobool9 = icmp ne i32 %20, 0, !dbg !1408
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !1410

if.then10:                                        ; preds = %for.body4
  %21 = load i32, ptr %status, align 4, !dbg !1411
  store i32 %21, ptr %retval, align 4, !dbg !1411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1411

if.end11:                                         ; preds = %for.body4
  %22 = load ptr, ptr %this_element, align 8, !dbg !1413
  %incdec.ptr12 = getelementptr ptr, ptr %22, i32 1, !dbg !1413
  store ptr %incdec.ptr12, ptr %this_element, align 8, !dbg !1413
  br label %for.inc13, !dbg !1414

for.inc13:                                        ; preds = %if.end11
  %23 = load i32, ptr %i, align 4, !dbg !1415
  %inc14 = add i32 %23, 1, !dbg !1415
  store i32 %inc14, ptr %i, align 4, !dbg !1415
  br label %for.cond1, !dbg !1416, !llvm.loop !1417

for.end15:                                        ; preds = %for.cond1
  store i32 0, ptr %retval, align 4, !dbg !1419
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1419

cleanup:                                          ; preds = %for.end15, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !1420
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1420
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_element) #4, !dbg !1420
  %24 = load i32, ptr %retval, align 4, !dbg !1420
  ret i32 %24, !dbg !1420
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1421 dso_local i32 @acpi_ns_check_object_type(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ns_check_package_list(ptr noundef %info, ptr noundef %package, ptr noundef %elements, i32 noundef %count) #0 align 16 !dbg !1424 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %package.addr = alloca ptr, align 8
  %elements.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %sub_package = alloca ptr, align 8
  %sub_elements = alloca ptr, align 8
  %status = alloca i32, align 4
  %expected_count = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1428, metadata !DIExpression()), !dbg !1439
  store ptr %package, ptr %package.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %package.addr, metadata !1429, metadata !DIExpression()), !dbg !1440
  store ptr %elements, ptr %elements.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %elements.addr, metadata !1430, metadata !DIExpression()), !dbg !1441
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1431, metadata !DIExpression()), !dbg !1442
  call void @llvm.lifetime.start.p0(i64 8, ptr %sub_package) #4, !dbg !1443
  call void @llvm.dbg.declare(metadata ptr %sub_package, metadata !1432, metadata !DIExpression()), !dbg !1444
  call void @llvm.lifetime.start.p0(i64 8, ptr %sub_elements) #4, !dbg !1445
  call void @llvm.dbg.declare(metadata ptr %sub_elements, metadata !1433, metadata !DIExpression()), !dbg !1446
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1447
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1434, metadata !DIExpression()), !dbg !1448
  call void @llvm.lifetime.start.p0(i64 4, ptr %expected_count) #4, !dbg !1449
  call void @llvm.dbg.declare(metadata ptr %expected_count, metadata !1435, metadata !DIExpression()), !dbg !1450
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !1451
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1436, metadata !DIExpression()), !dbg !1452
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4, !dbg !1453
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1437, metadata !DIExpression()), !dbg !1454
  store i32 0, ptr %i, align 4, !dbg !1455
  br label %for.cond, !dbg !1457

for.cond:                                         ; preds = %for.inc108, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1458
  %1 = load i32, ptr %count.addr, align 4, !dbg !1460
  %cmp = icmp ult i32 %0, %1, !dbg !1461
  br i1 %cmp, label %for.body, label %for.end110, !dbg !1462

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %elements.addr, align 8, !dbg !1463
  %3 = load ptr, ptr %2, align 8, !dbg !1465
  store ptr %3, ptr %sub_package, align 8, !dbg !1466
  %4 = load ptr, ptr %sub_package, align 8, !dbg !1467
  %elements1 = getelementptr inbounds %struct.acpi_object_package, ptr %4, i32 0, i32 6, !dbg !1468
  %5 = load ptr, ptr %elements1, align 8, !dbg !1468
  store ptr %5, ptr %sub_elements, align 8, !dbg !1469
  %6 = load ptr, ptr %sub_package, align 8, !dbg !1470
  %7 = load ptr, ptr %info.addr, align 8, !dbg !1471
  %parent_package = getelementptr inbounds %struct.acpi_evaluate_info, ptr %7, i32 0, i32 8, !dbg !1472
  store ptr %6, ptr %parent_package, align 8, !dbg !1473
  %8 = load ptr, ptr %info.addr, align 8, !dbg !1474
  %9 = load i32, ptr %i, align 4, !dbg !1475
  %call = call i32 @acpi_ns_check_object_type(ptr noundef %8, ptr noundef %sub_package, i32 noundef 16, i32 noundef %9) #5, !dbg !1476
  store i32 %call, ptr %status, align 4, !dbg !1477
  %10 = load i32, ptr %status, align 4, !dbg !1478
  %tobool = icmp ne i32 %10, 0, !dbg !1478
  br i1 %tobool, label %if.then, label %if.end, !dbg !1480

if.then:                                          ; preds = %for.body
  %11 = load i32, ptr %status, align 4, !dbg !1481
  store i32 %11, ptr %retval, align 4, !dbg !1483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1483

if.end:                                           ; preds = %for.body
  %12 = load ptr, ptr %sub_package, align 8, !dbg !1484
  %13 = load ptr, ptr %info.addr, align 8, !dbg !1485
  %parent_package2 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %13, i32 0, i32 8, !dbg !1486
  store ptr %12, ptr %parent_package2, align 8, !dbg !1487
  %14 = load ptr, ptr %package.addr, align 8, !dbg !1488
  %type = getelementptr inbounds %struct.acpi_package_info, ptr %14, i32 0, i32 0, !dbg !1489
  %15 = load i8, ptr %type, align 1, !dbg !1489
  %conv = zext i8 %15 to i32, !dbg !1488
  switch i32 %conv, label %sw.default [
    i32 4, label %sw.bb
    i32 6, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb18
    i32 11, label %sw.epilog
    i32 7, label %sw.bb40
    i32 8, label %sw.bb59
    i32 5, label %sw.bb73
  ], !dbg !1490

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %16 = load ptr, ptr %package.addr, align 8, !dbg !1491
  %count1 = getelementptr inbounds %struct.acpi_package_info, ptr %16, i32 0, i32 2, !dbg !1493
  %17 = load i8, ptr %count1, align 1, !dbg !1493
  %conv3 = zext i8 %17 to i32, !dbg !1491
  %18 = load ptr, ptr %package.addr, align 8, !dbg !1494
  %count2 = getelementptr inbounds %struct.acpi_package_info, ptr %18, i32 0, i32 4, !dbg !1495
  %19 = load i8, ptr %count2, align 1, !dbg !1495
  %conv4 = zext i8 %19 to i32, !dbg !1494
  %add = add i32 %conv3, %conv4, !dbg !1496
  store i32 %add, ptr %expected_count, align 4, !dbg !1497
  %20 = load ptr, ptr %sub_package, align 8, !dbg !1498
  %count5 = getelementptr inbounds %struct.acpi_object_package, ptr %20, i32 0, i32 9, !dbg !1500
  %21 = load i32, ptr %count5, align 4, !dbg !1500
  %22 = load i32, ptr %expected_count, align 4, !dbg !1501
  %cmp6 = icmp ult i32 %21, %22, !dbg !1502
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !1503

if.then8:                                         ; preds = %sw.bb
  br label %package_too_small, !dbg !1504

if.end9:                                          ; preds = %sw.bb
  %23 = load ptr, ptr %info.addr, align 8, !dbg !1506
  %24 = load ptr, ptr %sub_elements, align 8, !dbg !1507
  %25 = load ptr, ptr %package.addr, align 8, !dbg !1508
  %object_type1 = getelementptr inbounds %struct.acpi_package_info, ptr %25, i32 0, i32 1, !dbg !1509
  %26 = load i8, ptr %object_type1, align 1, !dbg !1509
  %27 = load ptr, ptr %package.addr, align 8, !dbg !1510
  %count110 = getelementptr inbounds %struct.acpi_package_info, ptr %27, i32 0, i32 2, !dbg !1511
  %28 = load i8, ptr %count110, align 1, !dbg !1511
  %conv11 = zext i8 %28 to i32, !dbg !1510
  %29 = load ptr, ptr %package.addr, align 8, !dbg !1512
  %object_type2 = getelementptr inbounds %struct.acpi_package_info, ptr %29, i32 0, i32 3, !dbg !1513
  %30 = load i8, ptr %object_type2, align 1, !dbg !1513
  %31 = load ptr, ptr %package.addr, align 8, !dbg !1514
  %count212 = getelementptr inbounds %struct.acpi_package_info, ptr %31, i32 0, i32 4, !dbg !1515
  %32 = load i8, ptr %count212, align 1, !dbg !1515
  %conv13 = zext i8 %32 to i32, !dbg !1514
  %call14 = call i32 @acpi_ns_check_package_elements(ptr noundef %23, ptr noundef %24, i8 noundef zeroext %26, i32 noundef %conv11, i8 noundef zeroext %30, i32 noundef %conv13, i32 noundef 0) #5, !dbg !1516
  store i32 %call14, ptr %status, align 4, !dbg !1517
  %33 = load i32, ptr %status, align 4, !dbg !1518
  %tobool15 = icmp ne i32 %33, 0, !dbg !1518
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !1520

if.then16:                                        ; preds = %if.end9
  %34 = load i32, ptr %status, align 4, !dbg !1521
  store i32 %34, ptr %retval, align 4, !dbg !1523
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1523

if.end17:                                         ; preds = %if.end9
  br label %sw.epilog, !dbg !1524

sw.bb18:                                          ; preds = %if.end
  %35 = load ptr, ptr %package.addr, align 8, !dbg !1525
  %count119 = getelementptr inbounds %struct.acpi_package_info, ptr %35, i32 0, i32 2, !dbg !1526
  %36 = load i8, ptr %count119, align 1, !dbg !1526
  %conv20 = zext i8 %36 to i32, !dbg !1525
  %37 = load ptr, ptr %package.addr, align 8, !dbg !1527
  %count221 = getelementptr inbounds %struct.acpi_package_info, ptr %37, i32 0, i32 4, !dbg !1528
  %38 = load i8, ptr %count221, align 1, !dbg !1528
  %conv22 = zext i8 %38 to i32, !dbg !1527
  %add23 = add i32 %conv20, %conv22, !dbg !1529
  store i32 %add23, ptr %expected_count, align 4, !dbg !1530
  %39 = load ptr, ptr %sub_package, align 8, !dbg !1531
  %count24 = getelementptr inbounds %struct.acpi_object_package, ptr %39, i32 0, i32 9, !dbg !1533
  %40 = load i32, ptr %count24, align 4, !dbg !1533
  %41 = load i32, ptr %expected_count, align 4, !dbg !1534
  %cmp25 = icmp ult i32 %40, %41, !dbg !1535
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !1536

if.then27:                                        ; preds = %sw.bb18
  br label %package_too_small, !dbg !1537

if.end28:                                         ; preds = %sw.bb18
  %42 = load ptr, ptr %info.addr, align 8, !dbg !1539
  %43 = load ptr, ptr %sub_elements, align 8, !dbg !1540
  %44 = load ptr, ptr %package.addr, align 8, !dbg !1541
  %object_type129 = getelementptr inbounds %struct.acpi_package_info, ptr %44, i32 0, i32 1, !dbg !1542
  %45 = load i8, ptr %object_type129, align 1, !dbg !1542
  %46 = load ptr, ptr %package.addr, align 8, !dbg !1543
  %count130 = getelementptr inbounds %struct.acpi_package_info, ptr %46, i32 0, i32 2, !dbg !1544
  %47 = load i8, ptr %count130, align 1, !dbg !1544
  %conv31 = zext i8 %47 to i32, !dbg !1543
  %48 = load ptr, ptr %package.addr, align 8, !dbg !1545
  %object_type232 = getelementptr inbounds %struct.acpi_package_info, ptr %48, i32 0, i32 3, !dbg !1546
  %49 = load i8, ptr %object_type232, align 1, !dbg !1546
  %50 = load ptr, ptr %sub_package, align 8, !dbg !1547
  %count33 = getelementptr inbounds %struct.acpi_object_package, ptr %50, i32 0, i32 9, !dbg !1548
  %51 = load i32, ptr %count33, align 4, !dbg !1548
  %52 = load ptr, ptr %package.addr, align 8, !dbg !1549
  %count134 = getelementptr inbounds %struct.acpi_package_info, ptr %52, i32 0, i32 2, !dbg !1550
  %53 = load i8, ptr %count134, align 1, !dbg !1550
  %conv35 = zext i8 %53 to i32, !dbg !1549
  %sub = sub i32 %51, %conv35, !dbg !1551
  %call36 = call i32 @acpi_ns_check_package_elements(ptr noundef %42, ptr noundef %43, i8 noundef zeroext %45, i32 noundef %conv31, i8 noundef zeroext %49, i32 noundef %sub, i32 noundef 0) #5, !dbg !1552
  store i32 %call36, ptr %status, align 4, !dbg !1553
  %54 = load i32, ptr %status, align 4, !dbg !1554
  %tobool37 = icmp ne i32 %54, 0, !dbg !1554
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !1556

if.then38:                                        ; preds = %if.end28
  %55 = load i32, ptr %status, align 4, !dbg !1557
  store i32 %55, ptr %retval, align 4, !dbg !1559
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1559

if.end39:                                         ; preds = %if.end28
  br label %sw.epilog, !dbg !1560

sw.bb40:                                          ; preds = %if.end
  %56 = load ptr, ptr %package.addr, align 8, !dbg !1561
  %count41 = getelementptr inbounds %struct.acpi_package_info2, ptr %56, i32 0, i32 1, !dbg !1562
  %57 = load i8, ptr %count41, align 1, !dbg !1562
  %conv42 = zext i8 %57 to i32, !dbg !1561
  store i32 %conv42, ptr %expected_count, align 4, !dbg !1563
  %58 = load ptr, ptr %sub_package, align 8, !dbg !1564
  %count43 = getelementptr inbounds %struct.acpi_object_package, ptr %58, i32 0, i32 9, !dbg !1566
  %59 = load i32, ptr %count43, align 4, !dbg !1566
  %60 = load i32, ptr %expected_count, align 4, !dbg !1567
  %cmp44 = icmp ult i32 %59, %60, !dbg !1568
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !1569

if.then46:                                        ; preds = %sw.bb40
  br label %package_too_small, !dbg !1570

if.end47:                                         ; preds = %sw.bb40
  store i32 0, ptr %j, align 4, !dbg !1572
  br label %for.cond48, !dbg !1574

for.cond48:                                       ; preds = %for.inc, %if.end47
  %61 = load i32, ptr %j, align 4, !dbg !1575
  %62 = load i32, ptr %expected_count, align 4, !dbg !1577
  %cmp49 = icmp ult i32 %61, %62, !dbg !1578
  br i1 %cmp49, label %for.body51, label %for.end, !dbg !1579

for.body51:                                       ; preds = %for.cond48
  %63 = load ptr, ptr %info.addr, align 8, !dbg !1580
  %64 = load ptr, ptr %sub_elements, align 8, !dbg !1582
  %65 = load i32, ptr %j, align 4, !dbg !1583
  %idxprom = zext i32 %65 to i64, !dbg !1582
  %arrayidx = getelementptr ptr, ptr %64, i64 %idxprom, !dbg !1582
  %66 = load ptr, ptr %package.addr, align 8, !dbg !1584
  %object_type = getelementptr inbounds %struct.acpi_package_info2, ptr %66, i32 0, i32 2, !dbg !1585
  %67 = load i32, ptr %j, align 4, !dbg !1586
  %idxprom52 = zext i32 %67 to i64, !dbg !1584
  %arrayidx53 = getelementptr [4 x i8], ptr %object_type, i64 0, i64 %idxprom52, !dbg !1584
  %68 = load i8, ptr %arrayidx53, align 1, !dbg !1584
  %conv54 = zext i8 %68 to i32, !dbg !1584
  %69 = load i32, ptr %j, align 4, !dbg !1587
  %call55 = call i32 @acpi_ns_check_object_type(ptr noundef %63, ptr noundef %arrayidx, i32 noundef %conv54, i32 noundef %69) #5, !dbg !1588
  store i32 %call55, ptr %status, align 4, !dbg !1589
  %70 = load i32, ptr %status, align 4, !dbg !1590
  %tobool56 = icmp ne i32 %70, 0, !dbg !1590
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !1592

if.then57:                                        ; preds = %for.body51
  %71 = load i32, ptr %status, align 4, !dbg !1593
  store i32 %71, ptr %retval, align 4, !dbg !1595
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1595

if.end58:                                         ; preds = %for.body51
  br label %for.inc, !dbg !1596

for.inc:                                          ; preds = %if.end58
  %72 = load i32, ptr %j, align 4, !dbg !1597
  %inc = add i32 %72, 1, !dbg !1597
  store i32 %inc, ptr %j, align 4, !dbg !1597
  br label %for.cond48, !dbg !1598, !llvm.loop !1599

for.end:                                          ; preds = %for.cond48
  br label %sw.epilog, !dbg !1601

sw.bb59:                                          ; preds = %if.end
  %73 = load ptr, ptr %package.addr, align 8, !dbg !1602
  %count160 = getelementptr inbounds %struct.acpi_package_info, ptr %73, i32 0, i32 2, !dbg !1603
  %74 = load i8, ptr %count160, align 1, !dbg !1603
  %conv61 = zext i8 %74 to i32, !dbg !1602
  store i32 %conv61, ptr %expected_count, align 4, !dbg !1604
  %75 = load ptr, ptr %sub_package, align 8, !dbg !1605
  %count62 = getelementptr inbounds %struct.acpi_object_package, ptr %75, i32 0, i32 9, !dbg !1607
  %76 = load i32, ptr %count62, align 4, !dbg !1607
  %77 = load i32, ptr %expected_count, align 4, !dbg !1608
  %cmp63 = icmp ult i32 %76, %77, !dbg !1609
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !1610

if.then65:                                        ; preds = %sw.bb59
  br label %package_too_small, !dbg !1611

if.end66:                                         ; preds = %sw.bb59
  %78 = load ptr, ptr %info.addr, align 8, !dbg !1613
  %79 = load ptr, ptr %sub_elements, align 8, !dbg !1614
  %80 = load ptr, ptr %package.addr, align 8, !dbg !1615
  %object_type167 = getelementptr inbounds %struct.acpi_package_info, ptr %80, i32 0, i32 1, !dbg !1616
  %81 = load i8, ptr %object_type167, align 1, !dbg !1616
  %82 = load ptr, ptr %sub_package, align 8, !dbg !1617
  %count68 = getelementptr inbounds %struct.acpi_object_package, ptr %82, i32 0, i32 9, !dbg !1618
  %83 = load i32, ptr %count68, align 4, !dbg !1618
  %call69 = call i32 @acpi_ns_check_package_elements(ptr noundef %78, ptr noundef %79, i8 noundef zeroext %81, i32 noundef %83, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0) #5, !dbg !1619
  store i32 %call69, ptr %status, align 4, !dbg !1620
  %84 = load i32, ptr %status, align 4, !dbg !1621
  %tobool70 = icmp ne i32 %84, 0, !dbg !1621
  br i1 %tobool70, label %if.then71, label %if.end72, !dbg !1623

if.then71:                                        ; preds = %if.end66
  %85 = load i32, ptr %status, align 4, !dbg !1624
  store i32 %85, ptr %retval, align 4, !dbg !1626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1626

if.end72:                                         ; preds = %if.end66
  br label %sw.epilog, !dbg !1627

sw.bb73:                                          ; preds = %if.end
  %86 = load ptr, ptr %info.addr, align 8, !dbg !1628
  %87 = load ptr, ptr %sub_elements, align 8, !dbg !1629
  %call74 = call i32 @acpi_ns_check_object_type(ptr noundef %86, ptr noundef %87, i32 noundef 2, i32 noundef 0) #5, !dbg !1630
  store i32 %call74, ptr %status, align 4, !dbg !1631
  %88 = load i32, ptr %status, align 4, !dbg !1632
  %tobool75 = icmp ne i32 %88, 0, !dbg !1632
  br i1 %tobool75, label %if.then76, label %if.end77, !dbg !1634

if.then76:                                        ; preds = %sw.bb73
  %89 = load i32, ptr %status, align 4, !dbg !1635
  store i32 %89, ptr %retval, align 4, !dbg !1637
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1637

if.end77:                                         ; preds = %sw.bb73
  %90 = load ptr, ptr %sub_elements, align 8, !dbg !1638
  %91 = load ptr, ptr %90, align 8, !dbg !1639
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %91, i32 0, i32 6, !dbg !1640
  %92 = load i64, ptr %value, align 8, !dbg !1640
  %conv78 = trunc i64 %92 to i32, !dbg !1641
  store i32 %conv78, ptr %expected_count, align 4, !dbg !1642
  %93 = load ptr, ptr %sub_package, align 8, !dbg !1643
  %count79 = getelementptr inbounds %struct.acpi_object_package, ptr %93, i32 0, i32 9, !dbg !1645
  %94 = load i32, ptr %count79, align 4, !dbg !1645
  %95 = load i32, ptr %expected_count, align 4, !dbg !1646
  %cmp80 = icmp ult i32 %94, %95, !dbg !1647
  br i1 %cmp80, label %if.then82, label %if.end83, !dbg !1648

if.then82:                                        ; preds = %if.end77
  br label %package_too_small, !dbg !1649

if.end83:                                         ; preds = %if.end77
  %96 = load ptr, ptr %sub_package, align 8, !dbg !1651
  %count84 = getelementptr inbounds %struct.acpi_object_package, ptr %96, i32 0, i32 9, !dbg !1653
  %97 = load i32, ptr %count84, align 4, !dbg !1653
  %98 = load ptr, ptr %package.addr, align 8, !dbg !1654
  %count185 = getelementptr inbounds %struct.acpi_package_info, ptr %98, i32 0, i32 2, !dbg !1655
  %99 = load i8, ptr %count185, align 1, !dbg !1655
  %conv86 = zext i8 %99 to i32, !dbg !1654
  %cmp87 = icmp ult i32 %97, %conv86, !dbg !1656
  br i1 %cmp87, label %if.then89, label %if.end92, !dbg !1657

if.then89:                                        ; preds = %if.end83
  %100 = load ptr, ptr %package.addr, align 8, !dbg !1658
  %count190 = getelementptr inbounds %struct.acpi_package_info, ptr %100, i32 0, i32 2, !dbg !1660
  %101 = load i8, ptr %count190, align 1, !dbg !1660
  %conv91 = zext i8 %101 to i32, !dbg !1658
  store i32 %conv91, ptr %expected_count, align 4, !dbg !1661
  br label %package_too_small, !dbg !1662

if.end92:                                         ; preds = %if.end83
  %102 = load i32, ptr %expected_count, align 4, !dbg !1663
  %cmp93 = icmp eq i32 %102, 0, !dbg !1665
  br i1 %cmp93, label %if.then95, label %if.end99, !dbg !1666

if.then95:                                        ; preds = %if.end92
  %103 = load ptr, ptr %sub_package, align 8, !dbg !1667
  %count96 = getelementptr inbounds %struct.acpi_object_package, ptr %103, i32 0, i32 9, !dbg !1669
  %104 = load i32, ptr %count96, align 4, !dbg !1669
  store i32 %104, ptr %expected_count, align 4, !dbg !1670
  %105 = load i32, ptr %expected_count, align 4, !dbg !1671
  %conv97 = zext i32 %105 to i64, !dbg !1671
  %106 = load ptr, ptr %sub_elements, align 8, !dbg !1672
  %107 = load ptr, ptr %106, align 8, !dbg !1673
  %value98 = getelementptr inbounds %struct.acpi_object_integer, ptr %107, i32 0, i32 6, !dbg !1674
  store i64 %conv97, ptr %value98, align 8, !dbg !1675
  br label %if.end99, !dbg !1676

if.end99:                                         ; preds = %if.then95, %if.end92
  %108 = load ptr, ptr %info.addr, align 8, !dbg !1677
  %109 = load ptr, ptr %sub_elements, align 8, !dbg !1678
  %add.ptr = getelementptr ptr, ptr %109, i64 1, !dbg !1679
  %110 = load ptr, ptr %package.addr, align 8, !dbg !1680
  %object_type1100 = getelementptr inbounds %struct.acpi_package_info, ptr %110, i32 0, i32 1, !dbg !1681
  %111 = load i8, ptr %object_type1100, align 1, !dbg !1681
  %112 = load i32, ptr %expected_count, align 4, !dbg !1682
  %sub101 = sub i32 %112, 1, !dbg !1683
  %call102 = call i32 @acpi_ns_check_package_elements(ptr noundef %108, ptr noundef %add.ptr, i8 noundef zeroext %111, i32 noundef %sub101, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 1) #5, !dbg !1684
  store i32 %call102, ptr %status, align 4, !dbg !1685
  %113 = load i32, ptr %status, align 4, !dbg !1686
  %tobool103 = icmp ne i32 %113, 0, !dbg !1686
  br i1 %tobool103, label %if.then104, label %if.end105, !dbg !1688

if.then104:                                       ; preds = %if.end99
  %114 = load i32, ptr %status, align 4, !dbg !1689
  store i32 %114, ptr %retval, align 4, !dbg !1691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1691

if.end105:                                        ; preds = %if.end99
  br label %sw.epilog, !dbg !1692

sw.default:                                       ; preds = %if.end
  %115 = load ptr, ptr %package.addr, align 8, !dbg !1693
  %type106 = getelementptr inbounds %struct.acpi_package_info, ptr %115, i32 0, i32 0, !dbg !1693
  %116 = load i8, ptr %type106, align 1, !dbg !1693
  %conv107 = zext i8 %116 to i32, !dbg !1693
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 583, ptr noundef @.str.4, i32 noundef %conv107) #5, !dbg !1693
  store i32 12303, ptr %retval, align 4, !dbg !1694
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1694

sw.epilog:                                        ; preds = %if.end105, %if.end72, %for.end, %if.end, %if.end39, %if.end17
  %117 = load ptr, ptr %elements.addr, align 8, !dbg !1695
  %incdec.ptr = getelementptr ptr, ptr %117, i32 1, !dbg !1695
  store ptr %incdec.ptr, ptr %elements.addr, align 8, !dbg !1695
  br label %for.inc108, !dbg !1696

for.inc108:                                       ; preds = %sw.epilog
  %118 = load i32, ptr %i, align 4, !dbg !1697
  %inc109 = add i32 %118, 1, !dbg !1697
  store i32 %inc109, ptr %i, align 4, !dbg !1697
  br label %for.cond, !dbg !1698, !llvm.loop !1699

for.end110:                                       ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1701
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1701

package_too_small:                                ; preds = %if.then89, %if.then82, %if.then65, %if.then46, %if.then27, %if.then8
  call void @llvm.dbg.label(metadata !1438), !dbg !1702
  %119 = load ptr, ptr %info.addr, align 8, !dbg !1703
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %119, i32 0, i32 5, !dbg !1703
  %120 = load ptr, ptr %full_pathname, align 8, !dbg !1703
  %121 = load ptr, ptr %info.addr, align 8, !dbg !1703
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, ptr %121, i32 0, i32 12, !dbg !1703
  %122 = load i16, ptr %node_flags, align 2, !dbg !1703
  %123 = load i32, ptr %i, align 4, !dbg !1703
  %124 = load ptr, ptr %sub_package, align 8, !dbg !1703
  %count111 = getelementptr inbounds %struct.acpi_object_package, ptr %124, i32 0, i32 9, !dbg !1703
  %125 = load i32, ptr %count111, align 4, !dbg !1703
  %126 = load i32, ptr %expected_count, align 4, !dbg !1703
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 597, ptr noundef %120, i16 noundef zeroext %122, ptr noundef @.str.5, i32 noundef %123, i32 noundef %125, i32 noundef %126) #5, !dbg !1703
  store i32 12292, ptr %retval, align 4, !dbg !1704
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1704

cleanup:                                          ; preds = %package_too_small, %for.end110, %sw.default, %if.then104, %if.then76, %if.then71, %if.then57, %if.then38, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 4, ptr %expected_count) #4, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 8, ptr %sub_elements) #4, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 8, ptr %sub_package) #4, !dbg !1705
  %127 = load i32, ptr %retval, align 4, !dbg !1705
  ret i32 %127, !dbg !1705
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1706 dso_local i32 @acpi_ns_wrap_with_package(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1709 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !66, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.nsprepkg.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22nsprepkg\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/nsprepkg.ll drivers/acpi/acpica/nsprepkg.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !22, globals: !29, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsprepkg.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e415aa527eec6d38963f8cff4e5a6f4f")
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
!22 = !{!23, !25}
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !24, line: 421, baseType: !25)
!24 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !26, line: 21, baseType: !27)
!26 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !28, line: 27, baseType: !7)
!28 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!29 = !{!30, !36, !41, !46, !0, !51, !56, !61}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !3, line: 94, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 312, elements: !34)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !{!35}
!35 = !DISubrange(count: 39)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !3, line: 325, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 248, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 31)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !3, line: 348, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 384, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 48)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !3, line: 362, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 488, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 61)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !3, line: 583, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 200, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 25)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !3, line: 597, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 544, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 68)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !3, line: 635, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 464, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 58)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 72, elements: !68)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!68 = !{!69}
!69 = !DISubrange(count: 9)
!70 = !{i32 7, !"Dwarf Version", i32 5}
!71 = !{i32 2, !"Debug Info Version", i32 3}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 8, !"cf-protection-branch", i32 1}
!74 = !{i32 4, !"function_return_thunk_extern", i32 1}
!75 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!76 = !{i32 1, !"Code Model", i32 2}
!77 = !{i32 1, !"override-stack-alignment", i32 8}
!78 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!79 = distinct !DISubprogram(name: "acpi_ns_check_package", scope: !3, file: !3, line: 51, type: !80, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !914)
!80 = !DISubroutineType(types: !81)
!81 = !{!23, !82, !161}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !84, line: 152, size: 704, elements: !85)
!84 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!85 = !{!86, !853, !855, !856, !857, !858, !859, !905, !906, !907, !908, !909, !910, !911, !912, !913}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !83, file: !84, line: 155, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !89, line: 133, size: 384, elements: !90)
!89 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!90 = !{!91, !840, !841, !842, !843, !849, !850, !851, !852}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !88, file: !89, line: 134, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !94, line: 369, size: 576, elements: !95)
!94 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!95 = !{!96, !110, !126, !137, !151, !165, !175, !489, !506, !522, !535, !613, !625, !639, !649, !667, !689, !708, !727, !746, !759, !786, !803, !816, !830, !839}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !93, file: !94, line: 370, baseType: !97, size: 128)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !94, line: 73, size: 128, elements: !98)
!98 = !{!99, !100, !104, !105, !109}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !97, file: !94, line: 74, baseType: !92, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !97, file: !94, line: 74, baseType: !101, size: 8, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !26, line: 17, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !28, line: 21, baseType: !103)
!103 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !94, line: 74, baseType: !101, size: 8, offset: 72)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !97, file: !94, line: 74, baseType: !106, size: 16, offset: 80)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !26, line: 19, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !28, line: 24, baseType: !108)
!108 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !94, line: 74, baseType: !101, size: 8, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !93, file: !94, line: 371, baseType: !111, size: 192)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !94, line: 76, size: 192, elements: !112)
!112 = !{!113, !114, !115, !116, !117, !118, !122}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !111, file: !94, line: 77, baseType: !92, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !111, file: !94, line: 77, baseType: !101, size: 8, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !94, line: 77, baseType: !101, size: 8, offset: 72)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !111, file: !94, line: 77, baseType: !106, size: 16, offset: 80)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !94, line: 77, baseType: !101, size: 8, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !111, file: !94, line: 77, baseType: !119, size: 24, offset: 104)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 24, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 3)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !111, file: !94, line: 78, baseType: !123, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !26, line: 23, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !28, line: 31, baseType: !125)
!125 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !93, file: !94, line: 372, baseType: !127, size: 256)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !94, line: 93, size: 256, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134, !136}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !127, file: !94, line: 94, baseType: !92, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !127, file: !94, line: 94, baseType: !101, size: 8, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !127, file: !94, line: 94, baseType: !101, size: 8, offset: 72)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !127, file: !94, line: 94, baseType: !106, size: 16, offset: 80)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !127, file: !94, line: 94, baseType: !101, size: 8, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !127, file: !94, line: 94, baseType: !135, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !127, file: !94, line: 94, baseType: !25, size: 32, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !93, file: !94, line: 373, baseType: !138, size: 384)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !94, line: 97, size: 384, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145, !147, !148, !149, !150}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !138, file: !94, line: 98, baseType: !92, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !138, file: !94, line: 98, baseType: !101, size: 8, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !138, file: !94, line: 98, baseType: !101, size: 8, offset: 72)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !138, file: !94, line: 98, baseType: !106, size: 16, offset: 80)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !94, line: 98, baseType: !101, size: 8, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !138, file: !94, line: 98, baseType: !146, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !138, file: !94, line: 98, baseType: !25, size: 32, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !138, file: !94, line: 99, baseType: !25, size: 32, offset: 224)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !138, file: !94, line: 100, baseType: !146, size: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !138, file: !94, line: 101, baseType: !87, size: 64, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !93, file: !94, line: 374, baseType: !152, size: 384)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !94, line: 104, size: 384, elements: !153)
!153 = !{!154, !155, !156, !157, !158, !159, !160, !162, !163, !164}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !152, file: !94, line: 105, baseType: !92, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !152, file: !94, line: 105, baseType: !101, size: 8, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !152, file: !94, line: 105, baseType: !101, size: 8, offset: 72)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !152, file: !94, line: 105, baseType: !106, size: 16, offset: 80)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !152, file: !94, line: 105, baseType: !101, size: 8, offset: 96)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !152, file: !94, line: 105, baseType: !87, size: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !152, file: !94, line: 106, baseType: !161, size: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !152, file: !94, line: 107, baseType: !146, size: 64, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !152, file: !94, line: 108, baseType: !25, size: 32, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !152, file: !94, line: 109, baseType: !25, size: 32, offset: 352)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !93, file: !94, line: 375, baseType: !166, size: 192)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !94, line: 118, size: 192, elements: !167)
!167 = !{!168, !169, !170, !171, !172, !173}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !166, file: !94, line: 119, baseType: !92, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !166, file: !94, line: 119, baseType: !101, size: 8, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !166, file: !94, line: 119, baseType: !101, size: 8, offset: 72)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !166, file: !94, line: 119, baseType: !106, size: 16, offset: 80)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !166, file: !94, line: 119, baseType: !101, size: 8, offset: 96)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !166, file: !94, line: 119, baseType: !174, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !93, file: !94, line: 376, baseType: !176, size: 448)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !94, line: 144, size: 448, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !486, !487, !488}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !176, file: !94, line: 145, baseType: !92, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !176, file: !94, line: 145, baseType: !101, size: 8, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !176, file: !94, line: 145, baseType: !101, size: 8, offset: 72)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !176, file: !94, line: 145, baseType: !106, size: 16, offset: 80)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !176, file: !94, line: 145, baseType: !101, size: 8, offset: 96)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !176, file: !94, line: 145, baseType: !101, size: 8, offset: 104)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !176, file: !94, line: 146, baseType: !101, size: 8, offset: 112)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !176, file: !94, line: 147, baseType: !101, size: 8, offset: 120)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !176, file: !94, line: 148, baseType: !92, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !176, file: !94, line: 149, baseType: !92, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !176, file: !94, line: 150, baseType: !146, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !176, file: !94, line: 154, baseType: !190, size: 64, offset: 320)
!190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !176, file: !94, line: 151, size: 64, elements: !191)
!191 = !{!192, !485}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !190, file: !94, line: 152, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !89, line: 248, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!23, !197}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !84, line: 37, size: 9024, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !433, !434, !435, !436, !437, !441, !443, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !468, !469, !470, !471, !472, !473, !474, !475, !477, !483}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !84, line: 38, baseType: !197, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !198, file: !84, line: 39, baseType: !101, size: 8, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !198, file: !84, line: 40, baseType: !101, size: 8, offset: 72)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !198, file: !84, line: 41, baseType: !106, size: 16, offset: 80)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !198, file: !84, line: 42, baseType: !101, size: 8, offset: 96)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !198, file: !84, line: 43, baseType: !101, size: 8, offset: 104)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !198, file: !84, line: 44, baseType: !101, size: 8, offset: 112)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !198, file: !84, line: 45, baseType: !208, size: 16, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !24, line: 445, baseType: !106)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !198, file: !84, line: 46, baseType: !101, size: 8, offset: 144)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !198, file: !84, line: 47, baseType: !101, size: 8, offset: 152)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !198, file: !84, line: 48, baseType: !101, size: 8, offset: 160)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !198, file: !84, line: 49, baseType: !101, size: 8, offset: 168)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !198, file: !84, line: 50, baseType: !101, size: 8, offset: 176)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !198, file: !84, line: 51, baseType: !101, size: 8, offset: 184)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !198, file: !84, line: 52, baseType: !101, size: 8, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !198, file: !84, line: 53, baseType: !101, size: 8, offset: 200)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !198, file: !84, line: 54, baseType: !146, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !198, file: !84, line: 55, baseType: !25, size: 32, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !198, file: !84, line: 56, baseType: !25, size: 32, offset: 352)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !198, file: !84, line: 57, baseType: !25, size: 32, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !198, file: !84, line: 58, baseType: !25, size: 32, offset: 416)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !198, file: !84, line: 60, baseType: !223, size: 640, offset: 448)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !89, line: 909, size: 640, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230, !314, !315, !431, !432}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !223, file: !89, line: 910, baseType: !146, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !223, file: !89, line: 911, baseType: !146, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !223, file: !89, line: 912, baseType: !146, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !223, file: !89, line: 913, baseType: !146, size: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !223, file: !89, line: 914, baseType: !146, size: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !223, file: !89, line: 915, baseType: !231, size: 64, offset: 320)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !89, line: 891, size: 1600, elements: !233)
!233 = !{!234, !254, !270}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !232, file: !89, line: 892, baseType: !235, size: 448)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !89, line: 844, size: 448, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244, !253}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !235, file: !89, line: 845, baseType: !231, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !235, file: !89, line: 845, baseType: !101, size: 8, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !235, file: !89, line: 845, baseType: !101, size: 8, offset: 72)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !235, file: !89, line: 845, baseType: !106, size: 16, offset: 80)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !235, file: !89, line: 845, baseType: !146, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !235, file: !89, line: 845, baseType: !231, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !235, file: !89, line: 845, baseType: !87, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !235, file: !89, line: 845, baseType: !245, size: 64, offset: 320)
!245 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !89, line: 732, size: 64, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !252}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !245, file: !89, line: 733, baseType: !123, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !245, file: !89, line: 734, baseType: !25, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !245, file: !89, line: 735, baseType: !135, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !245, file: !89, line: 736, baseType: !146, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !245, file: !89, line: 737, baseType: !135, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !245, file: !89, line: 738, baseType: !231, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !235, file: !89, line: 845, baseType: !101, size: 8, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !232, file: !89, line: 893, baseType: !255, size: 640)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !89, line: 851, size: 640, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !255, file: !89, line: 852, baseType: !231, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !255, file: !89, line: 852, baseType: !101, size: 8, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !255, file: !89, line: 852, baseType: !101, size: 8, offset: 72)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !255, file: !89, line: 852, baseType: !106, size: 16, offset: 80)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !255, file: !89, line: 852, baseType: !146, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !255, file: !89, line: 852, baseType: !231, size: 64, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !255, file: !89, line: 852, baseType: !87, size: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !255, file: !89, line: 852, baseType: !245, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !255, file: !89, line: 852, baseType: !101, size: 8, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !255, file: !89, line: 852, baseType: !135, size: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !255, file: !89, line: 853, baseType: !146, size: 64, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !255, file: !89, line: 854, baseType: !25, size: 32, offset: 576)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !255, file: !89, line: 855, baseType: !25, size: 32, offset: 608)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !232, file: !89, line: 894, baseType: !271, size: 1600)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !89, line: 862, size: 1600, elements: !272)
!272 = !{!273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !271, file: !89, line: 863, baseType: !231, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !271, file: !89, line: 863, baseType: !101, size: 8, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !271, file: !89, line: 863, baseType: !101, size: 8, offset: 72)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !271, file: !89, line: 863, baseType: !106, size: 16, offset: 80)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !271, file: !89, line: 863, baseType: !146, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !89, line: 863, baseType: !231, size: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !271, file: !89, line: 863, baseType: !87, size: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !271, file: !89, line: 863, baseType: !245, size: 64, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !271, file: !89, line: 863, baseType: !101, size: 8, offset: 384)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !271, file: !89, line: 863, baseType: !231, size: 64, offset: 448)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !271, file: !89, line: 864, baseType: !231, size: 64, offset: 512)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !271, file: !89, line: 865, baseType: !135, size: 64, offset: 576)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !271, file: !89, line: 866, baseType: !101, size: 8, offset: 640)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !271, file: !89, line: 867, baseType: !135, size: 64, offset: 704)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !271, file: !89, line: 868, baseType: !135, size: 64, offset: 768)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !271, file: !89, line: 869, baseType: !135, size: 64, offset: 832)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !271, file: !89, line: 870, baseType: !290, size: 32, offset: 896)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 32, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 4)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !271, file: !89, line: 871, baseType: !25, size: 32, offset: 928)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !271, file: !89, line: 872, baseType: !25, size: 32, offset: 960)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !271, file: !89, line: 873, baseType: !25, size: 32, offset: 992)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !271, file: !89, line: 874, baseType: !25, size: 32, offset: 1024)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !271, file: !89, line: 875, baseType: !25, size: 32, offset: 1056)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !271, file: !89, line: 876, baseType: !25, size: 32, offset: 1088)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !271, file: !89, line: 877, baseType: !25, size: 32, offset: 1120)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !271, file: !89, line: 878, baseType: !25, size: 32, offset: 1152)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !271, file: !89, line: 879, baseType: !25, size: 32, offset: 1184)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !271, file: !89, line: 880, baseType: !25, size: 32, offset: 1216)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !271, file: !89, line: 881, baseType: !25, size: 32, offset: 1248)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !271, file: !89, line: 882, baseType: !25, size: 32, offset: 1280)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !271, file: !89, line: 883, baseType: !25, size: 32, offset: 1312)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !271, file: !89, line: 884, baseType: !106, size: 16, offset: 1344)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !271, file: !89, line: 885, baseType: !101, size: 8, offset: 1360)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !271, file: !89, line: 886, baseType: !101, size: 8, offset: 1368)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !271, file: !89, line: 887, baseType: !101, size: 8, offset: 1376)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !271, file: !89, line: 888, baseType: !311, size: 160, offset: 1384)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 160, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 20)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !223, file: !89, line: 916, baseType: !87, size: 64, offset: 384)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !223, file: !89, line: 917, baseType: !316, size: 64, offset: 448)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !89, line: 679, size: 640, elements: !318)
!318 = !{!319, !327, !340, !349, !358, !371, !385, !397, !409}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !317, file: !89, line: 680, baseType: !320, size: 128)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !89, line: 575, size: 128, elements: !321)
!321 = !{!322, !323, !324, !325, !326}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !89, line: 576, baseType: !174, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !320, file: !89, line: 576, baseType: !101, size: 8, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !89, line: 576, baseType: !101, size: 8, offset: 72)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !320, file: !89, line: 576, baseType: !106, size: 16, offset: 80)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !320, file: !89, line: 576, baseType: !106, size: 16, offset: 96)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !317, file: !89, line: 681, baseType: !328, size: 384)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !89, line: 604, size: 384, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338, !339}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !328, file: !89, line: 605, baseType: !174, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !328, file: !89, line: 605, baseType: !101, size: 8, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !328, file: !89, line: 605, baseType: !101, size: 8, offset: 72)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !328, file: !89, line: 605, baseType: !106, size: 16, offset: 80)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !328, file: !89, line: 605, baseType: !106, size: 16, offset: 96)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !328, file: !89, line: 606, baseType: !106, size: 16, offset: 112)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !328, file: !89, line: 607, baseType: !231, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !328, file: !89, line: 608, baseType: !146, size: 64, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !328, file: !89, line: 609, baseType: !146, size: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !328, file: !89, line: 610, baseType: !123, size: 64, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !317, file: !89, line: 682, baseType: !341, size: 192)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !89, line: 582, size: 192, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !341, file: !89, line: 583, baseType: !174, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !341, file: !89, line: 583, baseType: !101, size: 8, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !341, file: !89, line: 583, baseType: !101, size: 8, offset: 72)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !341, file: !89, line: 583, baseType: !106, size: 16, offset: 80)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !341, file: !89, line: 583, baseType: !106, size: 16, offset: 96)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !341, file: !89, line: 584, baseType: !92, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !317, file: !89, line: 683, baseType: !350, size: 192)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !89, line: 616, size: 192, elements: !351)
!351 = !{!352, !353, !354, !355, !356, !357}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !350, file: !89, line: 617, baseType: !174, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !350, file: !89, line: 617, baseType: !101, size: 8, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !350, file: !89, line: 617, baseType: !101, size: 8, offset: 72)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !350, file: !89, line: 617, baseType: !106, size: 16, offset: 80)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !350, file: !89, line: 617, baseType: !106, size: 16, offset: 96)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !350, file: !89, line: 618, baseType: !87, size: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !317, file: !89, line: 684, baseType: !359, size: 448)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !89, line: 621, size: 448, elements: !360)
!360 = !{!361, !362, !363, !364, !365, !366, !367, !368, !369, !370}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !359, file: !89, line: 622, baseType: !174, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !359, file: !89, line: 622, baseType: !101, size: 8, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !359, file: !89, line: 622, baseType: !101, size: 8, offset: 72)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !359, file: !89, line: 622, baseType: !106, size: 16, offset: 80)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !359, file: !89, line: 622, baseType: !106, size: 16, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !359, file: !89, line: 623, baseType: !25, size: 32, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !359, file: !89, line: 624, baseType: !231, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !359, file: !89, line: 625, baseType: !146, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !359, file: !89, line: 626, baseType: !146, size: 64, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !359, file: !89, line: 627, baseType: !25, size: 32, offset: 384)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !317, file: !89, line: 685, baseType: !372, size: 512)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !89, line: 590, size: 512, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !372, file: !89, line: 591, baseType: !174, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !372, file: !89, line: 591, baseType: !101, size: 8, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !372, file: !89, line: 591, baseType: !101, size: 8, offset: 72)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !372, file: !89, line: 591, baseType: !106, size: 16, offset: 80)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !372, file: !89, line: 591, baseType: !106, size: 16, offset: 96)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !372, file: !89, line: 592, baseType: !25, size: 32, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !372, file: !89, line: 593, baseType: !92, size: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !372, file: !89, line: 594, baseType: !92, size: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !372, file: !89, line: 595, baseType: !197, size: 64, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !372, file: !89, line: 596, baseType: !174, size: 64, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !372, file: !89, line: 597, baseType: !25, size: 32, offset: 448)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !317, file: !89, line: 686, baseType: !386, size: 320)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !89, line: 634, size: 320, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393, !394, !395, !396}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !386, file: !89, line: 635, baseType: !174, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !386, file: !89, line: 635, baseType: !101, size: 8, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !89, line: 635, baseType: !101, size: 8, offset: 72)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !386, file: !89, line: 635, baseType: !106, size: 16, offset: 80)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !386, file: !89, line: 635, baseType: !106, size: 16, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !386, file: !89, line: 636, baseType: !101, size: 8, offset: 112)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !386, file: !89, line: 637, baseType: !197, size: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !386, file: !89, line: 638, baseType: !92, size: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !386, file: !89, line: 639, baseType: !123, size: 64, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !317, file: !89, line: 687, baseType: !398, size: 640)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !89, line: 646, size: 640, elements: !399)
!399 = !{!400, !401, !402, !403, !404, !405}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !398, file: !89, line: 647, baseType: !174, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !398, file: !89, line: 647, baseType: !101, size: 8, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !398, file: !89, line: 647, baseType: !101, size: 8, offset: 72)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !398, file: !89, line: 647, baseType: !106, size: 16, offset: 80)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !398, file: !89, line: 647, baseType: !106, size: 16, offset: 96)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !398, file: !89, line: 648, baseType: !406, size: 512, offset: 128)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 512, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 8)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !317, file: !89, line: 688, baseType: !410, size: 320)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !89, line: 669, size: 320, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417, !418, !419, !420}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !410, file: !89, line: 670, baseType: !174, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !410, file: !89, line: 670, baseType: !101, size: 8, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !410, file: !89, line: 670, baseType: !101, size: 8, offset: 72)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !410, file: !89, line: 670, baseType: !106, size: 16, offset: 80)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !410, file: !89, line: 670, baseType: !106, size: 16, offset: 96)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !410, file: !89, line: 671, baseType: !101, size: 8, offset: 112)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !410, file: !89, line: 672, baseType: !87, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !410, file: !89, line: 673, baseType: !92, size: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !410, file: !89, line: 674, baseType: !421, size: 64, offset: 256)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !89, line: 660, size: 128, elements: !423)
!423 = !{!424, !430}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !422, file: !89, line: 661, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !24, line: 1061, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !429, !25, !174}
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !24, line: 424, baseType: !174)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !422, file: !89, line: 662, baseType: !174, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !223, file: !89, line: 918, baseType: !231, size: 64, offset: 512)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !223, file: !89, line: 919, baseType: !25, size: 32, offset: 576)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !198, file: !84, line: 61, baseType: !25, size: 32, offset: 1088)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !198, file: !84, line: 62, baseType: !25, size: 32, offset: 1120)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !198, file: !84, line: 63, baseType: !106, size: 16, offset: 1152)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !198, file: !84, line: 64, baseType: !101, size: 8, offset: 1168)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !198, file: !84, line: 66, baseType: !438, size: 2688, offset: 1216)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 2688, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 7)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !198, file: !84, line: 67, baseType: !442, size: 3072, offset: 3904)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 3072, elements: !407)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !198, file: !84, line: 68, baseType: !444, size: 576, offset: 6976)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 576, elements: !68)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !198, file: !84, line: 69, baseType: !161, size: 64, offset: 7552)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !198, file: !84, line: 71, baseType: !146, size: 64, offset: 7616)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !198, file: !84, line: 72, baseType: !161, size: 64, offset: 7680)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !198, file: !84, line: 73, baseType: !316, size: 64, offset: 7744)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !198, file: !84, line: 74, baseType: !87, size: 64, offset: 7808)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !198, file: !84, line: 75, baseType: !92, size: 64, offset: 7872)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !198, file: !84, line: 76, baseType: !87, size: 64, offset: 7936)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !198, file: !84, line: 77, baseType: !231, size: 64, offset: 8000)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !198, file: !84, line: 78, baseType: !92, size: 64, offset: 8064)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !198, file: !84, line: 79, baseType: !87, size: 64, offset: 8128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !198, file: !84, line: 80, baseType: !135, size: 64, offset: 8192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !198, file: !84, line: 81, baseType: !231, size: 64, offset: 8256)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !198, file: !84, line: 82, baseType: !458, size: 64, offset: 8320)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !89, line: 718, size: 128, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !460, file: !89, line: 722, baseType: !25, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !460, file: !89, line: 723, baseType: !25, size: 32, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !460, file: !89, line: 724, baseType: !106, size: 16, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !460, file: !89, line: 725, baseType: !101, size: 8, offset: 80)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !460, file: !89, line: 726, baseType: !101, size: 8, offset: 88)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !460, file: !89, line: 727, baseType: !101, size: 8, offset: 96)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !198, file: !84, line: 83, baseType: !231, size: 64, offset: 8384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !198, file: !84, line: 84, baseType: !92, size: 64, offset: 8448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !198, file: !84, line: 85, baseType: !316, size: 64, offset: 8512)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !198, file: !84, line: 86, baseType: !92, size: 64, offset: 8576)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !198, file: !84, line: 87, baseType: !316, size: 64, offset: 8640)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !198, file: !84, line: 88, baseType: !231, size: 64, offset: 8704)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !198, file: !84, line: 89, baseType: !231, size: 64, offset: 8768)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !198, file: !84, line: 90, baseType: !476, size: 64, offset: 8832)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !198, file: !84, line: 91, baseType: !478, size: 64, offset: 8896)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !89, line: 652, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!23, !197, !482}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !198, file: !84, line: 92, baseType: !484, size: 64, offset: 8960)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !89, line: 656, baseType: !194)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !190, file: !94, line: 153, baseType: !92, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !176, file: !94, line: 156, baseType: !25, size: 32, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !176, file: !94, line: 157, baseType: !208, size: 16, offset: 416)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !176, file: !94, line: 158, baseType: !101, size: 8, offset: 432)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !93, file: !94, line: 377, baseType: !490, size: 576)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !94, line: 122, size: 576, elements: !491)
!491 = !{!492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !490, file: !94, line: 123, baseType: !92, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !490, file: !94, line: 123, baseType: !101, size: 8, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !490, file: !94, line: 123, baseType: !101, size: 8, offset: 72)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !490, file: !94, line: 123, baseType: !106, size: 16, offset: 80)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !490, file: !94, line: 123, baseType: !101, size: 8, offset: 96)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !490, file: !94, line: 123, baseType: !101, size: 8, offset: 104)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !490, file: !94, line: 124, baseType: !106, size: 16, offset: 112)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !490, file: !94, line: 125, baseType: !174, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !490, file: !94, line: 126, baseType: !123, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !490, file: !94, line: 127, baseType: !476, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !490, file: !94, line: 128, baseType: !92, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !490, file: !94, line: 129, baseType: !92, size: 64, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !490, file: !94, line: 130, baseType: !87, size: 64, offset: 448)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !490, file: !94, line: 131, baseType: !101, size: 8, offset: 512)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !93, file: !94, line: 378, baseType: !507, size: 512)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !94, line: 134, size: 512, elements: !508)
!508 = !{!509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !520, !521}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !507, file: !94, line: 135, baseType: !92, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !507, file: !94, line: 135, baseType: !101, size: 8, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !507, file: !94, line: 135, baseType: !101, size: 8, offset: 72)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !507, file: !94, line: 135, baseType: !106, size: 16, offset: 80)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !507, file: !94, line: 135, baseType: !101, size: 8, offset: 96)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !507, file: !94, line: 135, baseType: !101, size: 8, offset: 104)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !507, file: !94, line: 136, baseType: !87, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !507, file: !94, line: 137, baseType: !92, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !507, file: !94, line: 138, baseType: !92, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !507, file: !94, line: 139, baseType: !519, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !24, line: 129, baseType: !123)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !507, file: !94, line: 140, baseType: !25, size: 32, offset: 384)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !507, file: !94, line: 141, baseType: !174, size: 64, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !93, file: !94, line: 379, baseType: !523, size: 320)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !94, line: 185, size: 320, elements: !524)
!524 = !{!525, !526, !527, !528, !529, !530, !534}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !523, file: !94, line: 186, baseType: !92, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !523, file: !94, line: 186, baseType: !101, size: 8, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !523, file: !94, line: 186, baseType: !101, size: 8, offset: 72)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !523, file: !94, line: 186, baseType: !106, size: 16, offset: 80)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !523, file: !94, line: 186, baseType: !101, size: 8, offset: 96)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !523, file: !94, line: 186, baseType: !531, size: 128, offset: 128)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 128, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: 2)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !523, file: !94, line: 186, baseType: !92, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !93, file: !94, line: 380, baseType: !536, size: 384)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !94, line: 188, size: 384, elements: !537)
!537 = !{!538, !539, !540, !541, !542, !543, !544, !545}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !536, file: !94, line: 189, baseType: !92, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !536, file: !94, line: 189, baseType: !101, size: 8, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !536, file: !94, line: 189, baseType: !101, size: 8, offset: 72)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !536, file: !94, line: 189, baseType: !106, size: 16, offset: 80)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !536, file: !94, line: 189, baseType: !101, size: 8, offset: 96)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !536, file: !94, line: 190, baseType: !531, size: 128, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !536, file: !94, line: 190, baseType: !92, size: 64, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !536, file: !94, line: 190, baseType: !546, size: 64, offset: 320)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !89, line: 480, size: 576, elements: !548)
!548 = !{!549, !550, !551, !552, !560, !575, !607, !608, !609, !610, !611, !612}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !547, file: !89, line: 481, baseType: !87, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !547, file: !89, line: 482, baseType: !546, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !547, file: !89, line: 483, baseType: !546, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !547, file: !89, line: 484, baseType: !553, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !89, line: 497, size: 256, elements: !555)
!555 = !{!556, !557, !558, !559}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !554, file: !89, line: 498, baseType: !553, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !554, file: !89, line: 499, baseType: !553, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !554, file: !89, line: 500, baseType: !546, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !554, file: !89, line: 501, baseType: !25, size: 32, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !547, file: !89, line: 485, baseType: !561, size: 64, offset: 256)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !89, line: 466, size: 320, elements: !563)
!563 = !{!564, !569, !570, !571, !572, !573, !574}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !562, file: !89, line: 467, baseType: !565, size: 128)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !89, line: 459, size: 128, elements: !566)
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !565, file: !89, line: 460, baseType: !101, size: 8)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !565, file: !89, line: 461, baseType: !123, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !562, file: !89, line: 468, baseType: !565, size: 128, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !562, file: !89, line: 469, baseType: !106, size: 16, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !562, file: !89, line: 470, baseType: !101, size: 8, offset: 272)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !562, file: !89, line: 471, baseType: !101, size: 8, offset: 280)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !562, file: !89, line: 472, baseType: !101, size: 8, offset: 288)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !562, file: !89, line: 473, baseType: !101, size: 8, offset: 296)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !547, file: !89, line: 486, baseType: !576, size: 64, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !89, line: 448, size: 192, elements: !578)
!578 = !{!579, !602, !603, !604, !605, !606}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !577, file: !89, line: 449, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !89, line: 438, size: 64, elements: !581)
!581 = !{!582, !583, !596}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !580, file: !89, line: 439, baseType: !87, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !580, file: !89, line: 440, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !89, line: 419, size: 256, elements: !586)
!586 = !{!587, !592, !593, !594, !595}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !585, file: !89, line: 420, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !24, line: 1058, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!25, !429, !25, !174}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !585, file: !89, line: 421, baseType: !174, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !585, file: !89, line: 422, baseType: !87, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !585, file: !89, line: 423, baseType: !101, size: 8, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !585, file: !89, line: 424, baseType: !101, size: 8, offset: 200)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !580, file: !89, line: 441, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !89, line: 429, size: 128, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !598, file: !89, line: 430, baseType: !87, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !598, file: !89, line: 431, baseType: !597, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !577, file: !89, line: 450, baseType: !561, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !577, file: !89, line: 451, baseType: !101, size: 8, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !577, file: !89, line: 452, baseType: !101, size: 8, offset: 136)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !577, file: !89, line: 453, baseType: !101, size: 8, offset: 144)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !577, file: !89, line: 454, baseType: !101, size: 8, offset: 152)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !547, file: !89, line: 487, baseType: !123, size: 64, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !547, file: !89, line: 488, baseType: !25, size: 32, offset: 448)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !547, file: !89, line: 489, baseType: !106, size: 16, offset: 480)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !547, file: !89, line: 490, baseType: !106, size: 16, offset: 496)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !547, file: !89, line: 491, baseType: !101, size: 8, offset: 512)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !547, file: !89, line: 492, baseType: !101, size: 8, offset: 520)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !93, file: !94, line: 381, baseType: !614, size: 384)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !94, line: 193, size: 384, elements: !615)
!615 = !{!616, !617, !618, !619, !620, !621, !622, !623, !624}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !614, file: !94, line: 194, baseType: !92, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !614, file: !94, line: 194, baseType: !101, size: 8, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !614, file: !94, line: 194, baseType: !101, size: 8, offset: 72)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !614, file: !94, line: 194, baseType: !106, size: 16, offset: 80)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !614, file: !94, line: 194, baseType: !101, size: 8, offset: 96)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !614, file: !94, line: 194, baseType: !531, size: 128, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !614, file: !94, line: 194, baseType: !92, size: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !614, file: !94, line: 194, baseType: !25, size: 32, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !614, file: !94, line: 195, baseType: !25, size: 32, offset: 352)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !93, file: !94, line: 382, baseType: !626, size: 384)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !94, line: 198, size: 384, elements: !627)
!627 = !{!628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !626, file: !94, line: 199, baseType: !92, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !626, file: !94, line: 199, baseType: !101, size: 8, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !626, file: !94, line: 199, baseType: !101, size: 8, offset: 72)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !626, file: !94, line: 199, baseType: !106, size: 16, offset: 80)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !626, file: !94, line: 199, baseType: !101, size: 8, offset: 96)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !626, file: !94, line: 201, baseType: !101, size: 8, offset: 104)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !626, file: !94, line: 202, baseType: !101, size: 8, offset: 112)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !626, file: !94, line: 203, baseType: !531, size: 128, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !626, file: !94, line: 203, baseType: !92, size: 64, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !626, file: !94, line: 203, baseType: !638, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !24, line: 128, baseType: !123)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !93, file: !94, line: 383, baseType: !640, size: 320)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !94, line: 206, size: 320, elements: !641)
!641 = !{!642, !643, !644, !645, !646, !647, !648}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !640, file: !94, line: 207, baseType: !92, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !640, file: !94, line: 207, baseType: !101, size: 8, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !640, file: !94, line: 207, baseType: !101, size: 8, offset: 72)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !640, file: !94, line: 207, baseType: !106, size: 16, offset: 80)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !640, file: !94, line: 207, baseType: !101, size: 8, offset: 96)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !640, file: !94, line: 207, baseType: !531, size: 128, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !640, file: !94, line: 207, baseType: !92, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !93, file: !94, line: 384, baseType: !650, size: 384)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !94, line: 234, size: 384, elements: !651)
!651 = !{!652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !650, file: !94, line: 235, baseType: !92, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !650, file: !94, line: 235, baseType: !101, size: 8, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !650, file: !94, line: 235, baseType: !101, size: 8, offset: 72)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !650, file: !94, line: 235, baseType: !106, size: 16, offset: 80)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !650, file: !94, line: 235, baseType: !101, size: 8, offset: 96)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !650, file: !94, line: 235, baseType: !101, size: 8, offset: 104)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !650, file: !94, line: 235, baseType: !101, size: 8, offset: 112)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !650, file: !94, line: 235, baseType: !101, size: 8, offset: 120)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !650, file: !94, line: 235, baseType: !87, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !650, file: !94, line: 235, baseType: !25, size: 32, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !650, file: !94, line: 235, baseType: !25, size: 32, offset: 224)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !650, file: !94, line: 235, baseType: !25, size: 32, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !650, file: !94, line: 235, baseType: !101, size: 8, offset: 288)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !650, file: !94, line: 235, baseType: !101, size: 8, offset: 296)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !650, file: !94, line: 235, baseType: !92, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !93, file: !94, line: 385, baseType: !668, size: 576)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !94, line: 238, size: 576, elements: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !668, file: !94, line: 239, baseType: !92, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !668, file: !94, line: 239, baseType: !101, size: 8, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !668, file: !94, line: 239, baseType: !101, size: 8, offset: 72)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !668, file: !94, line: 239, baseType: !106, size: 16, offset: 80)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !94, line: 239, baseType: !101, size: 8, offset: 96)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !668, file: !94, line: 239, baseType: !101, size: 8, offset: 104)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !668, file: !94, line: 239, baseType: !101, size: 8, offset: 112)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !668, file: !94, line: 239, baseType: !101, size: 8, offset: 120)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !668, file: !94, line: 239, baseType: !87, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !668, file: !94, line: 239, baseType: !25, size: 32, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !668, file: !94, line: 239, baseType: !25, size: 32, offset: 224)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !668, file: !94, line: 239, baseType: !25, size: 32, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !668, file: !94, line: 239, baseType: !101, size: 8, offset: 288)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !668, file: !94, line: 239, baseType: !101, size: 8, offset: 296)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !668, file: !94, line: 239, baseType: !106, size: 16, offset: 304)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !668, file: !94, line: 240, baseType: !92, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !668, file: !94, line: 241, baseType: !146, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !668, file: !94, line: 242, baseType: !106, size: 16, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !668, file: !94, line: 243, baseType: !146, size: 64, offset: 512)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !93, file: !94, line: 386, baseType: !690, size: 384)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !94, line: 263, size: 384, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !690, file: !94, line: 264, baseType: !92, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !690, file: !94, line: 264, baseType: !101, size: 8, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !94, line: 264, baseType: !101, size: 8, offset: 72)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !690, file: !94, line: 264, baseType: !106, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !94, line: 264, baseType: !101, size: 8, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !690, file: !94, line: 264, baseType: !101, size: 8, offset: 104)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !690, file: !94, line: 264, baseType: !101, size: 8, offset: 112)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !690, file: !94, line: 264, baseType: !101, size: 8, offset: 120)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !690, file: !94, line: 264, baseType: !87, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !690, file: !94, line: 264, baseType: !25, size: 32, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !690, file: !94, line: 264, baseType: !25, size: 32, offset: 224)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !690, file: !94, line: 264, baseType: !25, size: 32, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !690, file: !94, line: 264, baseType: !101, size: 8, offset: 288)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !690, file: !94, line: 264, baseType: !101, size: 8, offset: 296)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !690, file: !94, line: 264, baseType: !101, size: 8, offset: 304)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !690, file: !94, line: 265, baseType: !92, size: 64, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !93, file: !94, line: 387, baseType: !709, size: 448)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !94, line: 246, size: 448, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !709, file: !94, line: 247, baseType: !92, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !94, line: 247, baseType: !101, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !94, line: 247, baseType: !101, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !709, file: !94, line: 247, baseType: !106, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !94, line: 247, baseType: !101, size: 8, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !709, file: !94, line: 247, baseType: !101, size: 8, offset: 104)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !709, file: !94, line: 247, baseType: !101, size: 8, offset: 112)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !709, file: !94, line: 247, baseType: !101, size: 8, offset: 120)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !94, line: 247, baseType: !87, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !709, file: !94, line: 247, baseType: !25, size: 32, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !709, file: !94, line: 247, baseType: !25, size: 32, offset: 224)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !709, file: !94, line: 247, baseType: !25, size: 32, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !709, file: !94, line: 247, baseType: !101, size: 8, offset: 288)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !709, file: !94, line: 247, baseType: !101, size: 8, offset: 296)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !709, file: !94, line: 247, baseType: !92, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !709, file: !94, line: 248, baseType: !92, size: 64, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !93, file: !94, line: 388, baseType: !728, size: 448)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !94, line: 251, size: 448, elements: !729)
!729 = !{!730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !728, file: !94, line: 252, baseType: !92, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !728, file: !94, line: 252, baseType: !101, size: 8, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !728, file: !94, line: 252, baseType: !101, size: 8, offset: 72)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !728, file: !94, line: 252, baseType: !106, size: 16, offset: 80)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !728, file: !94, line: 252, baseType: !101, size: 8, offset: 96)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !728, file: !94, line: 252, baseType: !101, size: 8, offset: 104)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !728, file: !94, line: 252, baseType: !101, size: 8, offset: 112)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !728, file: !94, line: 252, baseType: !101, size: 8, offset: 120)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !728, file: !94, line: 252, baseType: !87, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !728, file: !94, line: 252, baseType: !25, size: 32, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !728, file: !94, line: 252, baseType: !25, size: 32, offset: 224)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !728, file: !94, line: 252, baseType: !25, size: 32, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !728, file: !94, line: 252, baseType: !101, size: 8, offset: 288)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !728, file: !94, line: 252, baseType: !101, size: 8, offset: 296)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !728, file: !94, line: 257, baseType: !92, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !728, file: !94, line: 258, baseType: !92, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !93, file: !94, line: 389, baseType: !747, size: 512)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !94, line: 274, size: 512, elements: !748)
!748 = !{!749, !750, !751, !752, !753, !754, !755, !756, !757, !758}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !747, file: !94, line: 275, baseType: !92, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !747, file: !94, line: 275, baseType: !101, size: 8, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !747, file: !94, line: 275, baseType: !101, size: 8, offset: 72)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !747, file: !94, line: 275, baseType: !106, size: 16, offset: 80)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !94, line: 275, baseType: !101, size: 8, offset: 96)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !747, file: !94, line: 275, baseType: !87, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !747, file: !94, line: 276, baseType: !25, size: 32, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !747, file: !94, line: 277, baseType: !425, size: 64, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !747, file: !94, line: 278, baseType: !174, size: 64, offset: 320)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !747, file: !94, line: 279, baseType: !531, size: 128, offset: 384)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !93, file: !94, line: 390, baseType: !760, size: 576)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !94, line: 282, size: 576, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767, !768, !769, !775, !776, !777, !778, !784, !785}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !760, file: !94, line: 283, baseType: !92, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !760, file: !94, line: 283, baseType: !101, size: 8, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !760, file: !94, line: 283, baseType: !101, size: 8, offset: 72)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !760, file: !94, line: 283, baseType: !106, size: 16, offset: 80)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !94, line: 283, baseType: !101, size: 8, offset: 96)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !760, file: !94, line: 283, baseType: !101, size: 8, offset: 104)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !760, file: !94, line: 284, baseType: !101, size: 8, offset: 112)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !760, file: !94, line: 285, baseType: !770, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !24, line: 1093, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!23, !25, !519, !25, !774, !174, !174}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !760, file: !94, line: 286, baseType: !87, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !760, file: !94, line: 287, baseType: !174, size: 64, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !760, file: !94, line: 288, baseType: !174, size: 64, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !760, file: !94, line: 289, baseType: !779, size: 64, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !24, line: 1126, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!23, !429, !25, !174, !783}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !760, file: !94, line: 290, baseType: !92, size: 64, offset: 448)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !760, file: !94, line: 291, baseType: !92, size: 64, offset: 512)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !93, file: !94, line: 391, baseType: !787, size: 512)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !94, line: 309, size: 512, elements: !788)
!788 = !{!789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !787, file: !94, line: 310, baseType: !92, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !787, file: !94, line: 310, baseType: !101, size: 8, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !787, file: !94, line: 310, baseType: !101, size: 8, offset: 72)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !787, file: !94, line: 310, baseType: !106, size: 16, offset: 80)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !787, file: !94, line: 310, baseType: !101, size: 8, offset: 96)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !787, file: !94, line: 310, baseType: !101, size: 8, offset: 104)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !787, file: !94, line: 311, baseType: !101, size: 8, offset: 112)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !787, file: !94, line: 312, baseType: !101, size: 8, offset: 120)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !787, file: !94, line: 313, baseType: !174, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !787, file: !94, line: 314, baseType: !87, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !787, file: !94, line: 315, baseType: !161, size: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !787, file: !94, line: 316, baseType: !146, size: 64, offset: 320)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !787, file: !94, line: 317, baseType: !146, size: 64, offset: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !787, file: !94, line: 318, baseType: !25, size: 32, offset: 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !93, file: !94, line: 392, baseType: !804, size: 448)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !94, line: 342, size: 448, elements: !805)
!805 = !{!806, !807, !808, !809, !810, !811, !812, !813, !814, !815}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !804, file: !94, line: 343, baseType: !92, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !804, file: !94, line: 343, baseType: !101, size: 8, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !804, file: !94, line: 343, baseType: !101, size: 8, offset: 72)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !804, file: !94, line: 343, baseType: !106, size: 16, offset: 80)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !804, file: !94, line: 343, baseType: !101, size: 8, offset: 96)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !804, file: !94, line: 343, baseType: !87, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !804, file: !94, line: 344, baseType: !87, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !804, file: !94, line: 345, baseType: !174, size: 64, offset: 256)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !804, file: !94, line: 346, baseType: !146, size: 64, offset: 320)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !804, file: !94, line: 347, baseType: !25, size: 32, offset: 384)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !93, file: !94, line: 393, baseType: !817, size: 256)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !94, line: 352, size: 256, elements: !818)
!818 = !{!819, !820, !821, !822, !823, !824, !829}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !817, file: !94, line: 353, baseType: !92, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !817, file: !94, line: 353, baseType: !101, size: 8, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !817, file: !94, line: 353, baseType: !101, size: 8, offset: 72)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !817, file: !94, line: 353, baseType: !106, size: 16, offset: 80)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !817, file: !94, line: 353, baseType: !101, size: 8, offset: 96)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !817, file: !94, line: 353, baseType: !825, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !24, line: 1064, baseType: !826)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{null, !429, !174}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !817, file: !94, line: 354, baseType: !174, size: 64, offset: 192)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !93, file: !94, line: 394, baseType: !831, size: 192)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !94, line: 359, size: 192, elements: !832)
!832 = !{!833, !834, !835, !836, !837, !838}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !831, file: !94, line: 360, baseType: !92, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !831, file: !94, line: 360, baseType: !101, size: 8, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !831, file: !94, line: 360, baseType: !101, size: 8, offset: 72)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !831, file: !94, line: 360, baseType: !106, size: 16, offset: 80)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !831, file: !94, line: 360, baseType: !101, size: 8, offset: 96)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !831, file: !94, line: 360, baseType: !92, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !93, file: !94, line: 401, baseType: !88, size: 384)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !88, file: !89, line: 135, baseType: !101, size: 8, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !88, file: !89, line: 136, baseType: !101, size: 8, offset: 72)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !88, file: !89, line: 137, baseType: !106, size: 16, offset: 80)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !88, file: !89, line: 138, baseType: !844, size: 32, offset: 96)
!844 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !845, line: 328, size: 32, elements: !846)
!845 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !844, file: !845, line: 329, baseType: !25, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !844, file: !845, line: 330, baseType: !290, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !88, file: !89, line: 139, baseType: !87, size: 64, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !88, file: !89, line: 140, baseType: !87, size: 64, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !88, file: !89, line: 141, baseType: !87, size: 64, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !88, file: !89, line: 142, baseType: !208, size: 16, offset: 320)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !83, file: !84, line: 156, baseType: !854, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !83, file: !84, line: 157, baseType: !161, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !83, file: !84, line: 159, baseType: !87, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !83, file: !84, line: 160, baseType: !92, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !83, file: !84, line: 161, baseType: !135, size: 64, offset: 320)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !83, file: !84, line: 163, baseType: !860, size: 64, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!862 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !89, line: 351, size: 56, elements: !863)
!863 = !{!864, !870, !879, !887, !896}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !862, file: !89, line: 352, baseType: !865, size: 56)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !89, line: 295, size: 56, elements: !866)
!866 = !{!867, !868, !869}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !865, file: !89, line: 296, baseType: !290, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !865, file: !89, line: 297, baseType: !106, size: 16, offset: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !865, file: !89, line: 298, baseType: !101, size: 8, offset: 48)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !862, file: !89, line: 353, baseType: !871, size: 56)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !89, line: 314, size: 56, elements: !872)
!872 = !{!873, !874, !875, !876, !877, !878}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !871, file: !89, line: 315, baseType: !101, size: 8)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !871, file: !89, line: 316, baseType: !101, size: 8, offset: 8)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !871, file: !89, line: 317, baseType: !101, size: 8, offset: 16)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !871, file: !89, line: 318, baseType: !101, size: 8, offset: 24)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !871, file: !89, line: 319, baseType: !101, size: 8, offset: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !871, file: !89, line: 320, baseType: !106, size: 16, offset: 40)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !862, file: !89, line: 354, baseType: !880, size: 56)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !89, line: 325, size: 56, elements: !881)
!881 = !{!882, !883, !884, !886}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !880, file: !89, line: 326, baseType: !101, size: 8)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !880, file: !89, line: 327, baseType: !101, size: 8, offset: 8)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !880, file: !89, line: 328, baseType: !885, size: 32, offset: 16)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 32, elements: !291)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !880, file: !89, line: 329, baseType: !101, size: 8, offset: 48)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !862, file: !89, line: 355, baseType: !888, size: 56)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !89, line: 334, size: 56, elements: !889)
!889 = !{!890, !891, !892, !894, !895}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !888, file: !89, line: 335, baseType: !101, size: 8)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !888, file: !89, line: 336, baseType: !101, size: 8, offset: 8)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !888, file: !89, line: 337, baseType: !893, size: 16, offset: 16)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 16, elements: !532)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !888, file: !89, line: 338, baseType: !101, size: 8, offset: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !888, file: !89, line: 339, baseType: !106, size: 16, offset: 40)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !862, file: !89, line: 356, baseType: !897, size: 56)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !89, line: 342, size: 56, elements: !898)
!898 = !{!899, !900, !901, !902, !903, !904}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !897, file: !89, line: 343, baseType: !101, size: 8)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !897, file: !89, line: 344, baseType: !101, size: 8, offset: 8)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !897, file: !89, line: 345, baseType: !101, size: 8, offset: 16)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !897, file: !89, line: 346, baseType: !101, size: 8, offset: 24)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !897, file: !89, line: 347, baseType: !101, size: 8, offset: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !897, file: !89, line: 348, baseType: !106, size: 16, offset: 40)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !83, file: !84, line: 164, baseType: !92, size: 64, offset: 448)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !83, file: !84, line: 165, baseType: !92, size: 64, offset: 512)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !83, file: !84, line: 167, baseType: !25, size: 32, offset: 576)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !83, file: !84, line: 168, baseType: !25, size: 32, offset: 608)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !83, file: !84, line: 169, baseType: !106, size: 16, offset: 640)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !83, file: !84, line: 170, baseType: !106, size: 16, offset: 656)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !83, file: !84, line: 171, baseType: !101, size: 8, offset: 672)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !83, file: !84, line: 172, baseType: !101, size: 8, offset: 680)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !83, file: !84, line: 173, baseType: !101, size: 8, offset: 688)
!914 = !{!915, !916, !917, !918, !919, !920, !921, !922, !923, !924}
!915 = !DILocalVariable(name: "info", arg: 1, scope: !79, file: !3, line: 51, type: !82)
!916 = !DILocalVariable(name: "return_object_ptr", arg: 2, scope: !79, file: !3, line: 52, type: !161)
!917 = !DILocalVariable(name: "return_object", scope: !79, file: !3, line: 54, type: !92)
!918 = !DILocalVariable(name: "package", scope: !79, file: !3, line: 55, type: !860)
!919 = !DILocalVariable(name: "elements", scope: !79, file: !3, line: 56, type: !161)
!920 = !DILocalVariable(name: "status", scope: !79, file: !3, line: 57, type: !23)
!921 = !DILocalVariable(name: "expected_count", scope: !79, file: !3, line: 58, type: !25)
!922 = !DILocalVariable(name: "count", scope: !79, file: !3, line: 59, type: !25)
!923 = !DILocalVariable(name: "i", scope: !79, file: !3, line: 60, type: !25)
!924 = !DILabel(scope: !79, name: "package_too_small", file: !3, line: 358)
!925 = !DILocation(line: 51, column: 50, scope: !79)
!926 = !DILocation(line: 52, column: 37, scope: !79)
!927 = !DILocation(line: 54, column: 2, scope: !79)
!928 = !DILocation(line: 54, column: 29, scope: !79)
!929 = !DILocation(line: 54, column: 46, scope: !79)
!930 = !DILocation(line: 54, column: 45, scope: !79)
!931 = !DILocation(line: 55, column: 2, scope: !79)
!932 = !DILocation(line: 55, column: 36, scope: !79)
!933 = !DILocation(line: 56, column: 2, scope: !79)
!934 = !DILocation(line: 56, column: 30, scope: !79)
!935 = !DILocation(line: 57, column: 2, scope: !79)
!936 = !DILocation(line: 57, column: 14, scope: !79)
!937 = !DILocation(line: 58, column: 2, scope: !79)
!938 = !DILocation(line: 58, column: 6, scope: !79)
!939 = !DILocation(line: 59, column: 2, scope: !79)
!940 = !DILocation(line: 59, column: 6, scope: !79)
!941 = !DILocation(line: 60, column: 2, scope: !79)
!942 = !DILocation(line: 60, column: 6, scope: !79)
!943 = !DILocation(line: 66, column: 12, scope: !79)
!944 = !DILocation(line: 66, column: 18, scope: !79)
!945 = !DILocation(line: 66, column: 29, scope: !79)
!946 = !DILocation(line: 66, column: 10, scope: !79)
!947 = !DILocation(line: 77, column: 31, scope: !79)
!948 = !DILocation(line: 77, column: 37, scope: !79)
!949 = !DILocation(line: 77, column: 55, scope: !79)
!950 = !DILocation(line: 78, column: 10, scope: !79)
!951 = !DILocation(line: 77, column: 2, scope: !79)
!952 = !DILocation(line: 82, column: 13, scope: !79)
!953 = !DILocation(line: 82, column: 36, scope: !79)
!954 = !DILocation(line: 82, column: 11, scope: !79)
!955 = !DILocation(line: 83, column: 10, scope: !79)
!956 = !DILocation(line: 83, column: 33, scope: !79)
!957 = !DILocation(line: 83, column: 8, scope: !79)
!958 = !DILocation(line: 89, column: 7, scope: !959)
!959 = distinct !DILexicalBlock(scope: !79, file: !3, line: 89, column: 6)
!960 = !DILocation(line: 89, column: 6, scope: !79)
!961 = !DILocation(line: 90, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !963, file: !3, line: 90, column: 7)
!963 = distinct !DILexicalBlock(scope: !959, file: !3, line: 89, column: 14)
!964 = !DILocation(line: 90, column: 25, scope: !962)
!965 = !DILocation(line: 90, column: 30, scope: !962)
!966 = !DILocation(line: 90, column: 7, scope: !963)
!967 = !DILocation(line: 91, column: 4, scope: !968)
!968 = distinct !DILexicalBlock(scope: !962, file: !3, line: 90, column: 50)
!969 = !DILocation(line: 94, column: 3, scope: !963)
!970 = !DILocation(line: 98, column: 3, scope: !963)
!971 = !DILocation(line: 107, column: 10, scope: !79)
!972 = !DILocation(line: 107, column: 28, scope: !79)
!973 = !DILocation(line: 107, column: 2, scope: !79)
!974 = !DILocation(line: 110, column: 35, scope: !975)
!975 = distinct !DILexicalBlock(scope: !79, file: !3, line: 107, column: 34)
!976 = !DILocation(line: 110, column: 41, scope: !975)
!977 = !DILocation(line: 110, column: 51, scope: !975)
!978 = !DILocation(line: 110, column: 12, scope: !975)
!979 = !DILocation(line: 110, column: 10, scope: !975)
!980 = !DILocation(line: 111, column: 3, scope: !975)
!981 = !DILocation(line: 121, column: 7, scope: !975)
!982 = !DILocation(line: 121, column: 25, scope: !975)
!983 = !DILocation(line: 121, column: 34, scope: !975)
!984 = !DILocation(line: 121, column: 52, scope: !975)
!985 = !DILocation(line: 121, column: 32, scope: !975)
!986 = !DILocation(line: 120, column: 18, scope: !975)
!987 = !DILocation(line: 122, column: 7, scope: !988)
!988 = distinct !DILexicalBlock(scope: !975, file: !3, line: 122, column: 7)
!989 = !DILocation(line: 122, column: 15, scope: !988)
!990 = !DILocation(line: 122, column: 13, scope: !988)
!991 = !DILocation(line: 122, column: 7, scope: !975)
!992 = !DILocation(line: 123, column: 4, scope: !993)
!993 = distinct !DILexicalBlock(scope: !988, file: !3, line: 122, column: 31)
!994 = !DILocation(line: 124, column: 14, scope: !995)
!995 = distinct !DILexicalBlock(scope: !988, file: !3, line: 124, column: 14)
!996 = !DILocation(line: 124, column: 22, scope: !995)
!997 = !DILocation(line: 124, column: 20, scope: !995)
!998 = !DILocation(line: 124, column: 14, scope: !988)
!999 = !DILocation(line: 130, column: 3, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !995, file: !3, line: 124, column: 38)
!1001 = !DILocation(line: 134, column: 43, scope: !975)
!1002 = !DILocation(line: 134, column: 49, scope: !975)
!1003 = !DILocation(line: 135, column: 8, scope: !975)
!1004 = !DILocation(line: 136, column: 8, scope: !975)
!1005 = !DILocation(line: 137, column: 8, scope: !975)
!1006 = !DILocation(line: 138, column: 8, scope: !975)
!1007 = !DILocation(line: 139, column: 8, scope: !975)
!1008 = !DILocation(line: 140, column: 8, scope: !975)
!1009 = !DILocation(line: 141, column: 8, scope: !975)
!1010 = !DILocation(line: 142, column: 8, scope: !975)
!1011 = !DILocation(line: 134, column: 12, scope: !975)
!1012 = !DILocation(line: 134, column: 10, scope: !975)
!1013 = !DILocation(line: 143, column: 3, scope: !975)
!1014 = !DILocation(line: 150, column: 10, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !975, file: !3, line: 150, column: 3)
!1016 = !DILocation(line: 150, column: 8, scope: !1015)
!1017 = !DILocation(line: 150, column: 15, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 150, column: 3)
!1019 = !DILocation(line: 150, column: 19, scope: !1018)
!1020 = !DILocation(line: 150, column: 17, scope: !1018)
!1021 = !DILocation(line: 150, column: 3, scope: !1015)
!1022 = !DILocation(line: 151, column: 39, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 150, column: 31)
!1024 = !DILocation(line: 151, column: 45, scope: !1023)
!1025 = !DILocation(line: 152, column: 11, scope: !1023)
!1026 = !DILocation(line: 153, column: 11, scope: !1023)
!1027 = !DILocation(line: 153, column: 25, scope: !1023)
!1028 = !DILocation(line: 151, column: 13, scope: !1023)
!1029 = !DILocation(line: 151, column: 11, scope: !1023)
!1030 = !DILocation(line: 154, column: 8, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 154, column: 8)
!1032 = !DILocation(line: 154, column: 8, scope: !1023)
!1033 = !DILocation(line: 155, column: 5, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 154, column: 30)
!1035 = !DILocation(line: 158, column: 12, scope: !1023)
!1036 = !DILocation(line: 159, column: 3, scope: !1023)
!1037 = !DILocation(line: 150, column: 27, scope: !1018)
!1038 = !DILocation(line: 150, column: 3, scope: !1018)
!1039 = distinct !{!1039, !1021, !1040, !1041, !1042}
!1040 = !DILocation(line: 159, column: 3, scope: !1015)
!1041 = !{!"llvm.loop.mustprogress"}
!1042 = !{!"llvm.loop.unroll.disable"}
!1043 = !DILocation(line: 160, column: 3, scope: !975)
!1044 = !DILocation(line: 170, column: 20, scope: !975)
!1045 = !DILocation(line: 170, column: 39, scope: !975)
!1046 = !DILocation(line: 170, column: 18, scope: !975)
!1047 = !DILocation(line: 171, column: 7, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !975, file: !3, line: 171, column: 7)
!1049 = !DILocation(line: 171, column: 15, scope: !1048)
!1050 = !DILocation(line: 171, column: 13, scope: !1048)
!1051 = !DILocation(line: 171, column: 7, scope: !975)
!1052 = !DILocation(line: 172, column: 4, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 171, column: 31)
!1054 = !DILocation(line: 177, column: 10, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !975, file: !3, line: 177, column: 3)
!1056 = !DILocation(line: 177, column: 8, scope: !1055)
!1057 = !DILocation(line: 177, column: 15, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 177, column: 3)
!1059 = !DILocation(line: 177, column: 19, scope: !1058)
!1060 = !DILocation(line: 177, column: 17, scope: !1058)
!1061 = !DILocation(line: 177, column: 3, scope: !1055)
!1062 = !DILocation(line: 178, column: 8, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 178, column: 8)
!1064 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 177, column: 31)
!1065 = !DILocation(line: 178, column: 12, scope: !1063)
!1066 = !DILocation(line: 178, column: 31, scope: !1063)
!1067 = !DILocation(line: 178, column: 10, scope: !1063)
!1068 = !DILocation(line: 178, column: 8, scope: !1064)
!1069 = !DILocation(line: 183, column: 35, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 178, column: 38)
!1071 = !DILocation(line: 183, column: 41, scope: !1070)
!1072 = !DILocation(line: 184, column: 14, scope: !1070)
!1073 = !DILocation(line: 186, column: 14, scope: !1070)
!1074 = !DILocation(line: 186, column: 26, scope: !1070)
!1075 = !DILocation(line: 187, column: 14, scope: !1070)
!1076 = !DILocation(line: 183, column: 9, scope: !1070)
!1077 = !DILocation(line: 182, column: 12, scope: !1070)
!1078 = !DILocation(line: 188, column: 9, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 188, column: 9)
!1080 = !DILocation(line: 188, column: 9, scope: !1070)
!1081 = !DILocation(line: 189, column: 6, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 188, column: 31)
!1083 = !DILocation(line: 191, column: 4, scope: !1070)
!1084 = !DILocation(line: 195, column: 35, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 191, column: 11)
!1086 = !DILocation(line: 195, column: 41, scope: !1085)
!1087 = !DILocation(line: 196, column: 14, scope: !1085)
!1088 = !DILocation(line: 198, column: 14, scope: !1085)
!1089 = !DILocation(line: 199, column: 14, scope: !1085)
!1090 = !DILocation(line: 195, column: 9, scope: !1085)
!1091 = !DILocation(line: 194, column: 12, scope: !1085)
!1092 = !DILocation(line: 200, column: 9, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 200, column: 9)
!1094 = !DILocation(line: 200, column: 9, scope: !1085)
!1095 = !DILocation(line: 201, column: 6, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 200, column: 31)
!1097 = !DILocation(line: 205, column: 12, scope: !1064)
!1098 = !DILocation(line: 206, column: 3, scope: !1064)
!1099 = !DILocation(line: 177, column: 27, scope: !1058)
!1100 = !DILocation(line: 177, column: 3, scope: !1058)
!1101 = distinct !{!1101, !1061, !1102, !1041, !1042}
!1102 = !DILocation(line: 206, column: 3, scope: !1055)
!1103 = !DILocation(line: 207, column: 3, scope: !975)
!1104 = !DILocation(line: 214, column: 33, scope: !975)
!1105 = !DILocation(line: 214, column: 39, scope: !975)
!1106 = !DILocation(line: 214, column: 7, scope: !975)
!1107 = !DILocation(line: 213, column: 10, scope: !975)
!1108 = !DILocation(line: 216, column: 7, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !975, file: !3, line: 216, column: 7)
!1110 = !DILocation(line: 216, column: 7, scope: !975)
!1111 = !DILocation(line: 217, column: 4, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 216, column: 29)
!1113 = !DILocation(line: 220, column: 11, scope: !975)
!1114 = !DILocation(line: 221, column: 8, scope: !975)
!1115 = !DILocation(line: 226, column: 34, scope: !975)
!1116 = !DILocation(line: 226, column: 40, scope: !975)
!1117 = !DILocation(line: 226, column: 49, scope: !975)
!1118 = !DILocation(line: 226, column: 59, scope: !975)
!1119 = !DILocation(line: 226, column: 7, scope: !975)
!1120 = !DILocation(line: 225, column: 10, scope: !975)
!1121 = !DILocation(line: 227, column: 3, scope: !975)
!1122 = !DILocation(line: 234, column: 33, scope: !975)
!1123 = !DILocation(line: 234, column: 39, scope: !975)
!1124 = !DILocation(line: 234, column: 7, scope: !975)
!1125 = !DILocation(line: 233, column: 10, scope: !975)
!1126 = !DILocation(line: 236, column: 7, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !975, file: !3, line: 236, column: 7)
!1128 = !DILocation(line: 236, column: 7, scope: !975)
!1129 = !DILocation(line: 237, column: 4, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 236, column: 29)
!1131 = !DILocation(line: 244, column: 27, scope: !975)
!1132 = !DILocation(line: 244, column: 26, scope: !975)
!1133 = !DILocation(line: 244, column: 46, scope: !975)
!1134 = !DILocation(line: 244, column: 20, scope: !975)
!1135 = !DILocation(line: 244, column: 18, scope: !975)
!1136 = !DILocation(line: 245, column: 7, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !975, file: !3, line: 245, column: 7)
!1138 = !DILocation(line: 245, column: 25, scope: !1137)
!1139 = !DILocation(line: 245, column: 22, scope: !1137)
!1140 = !DILocation(line: 245, column: 7, scope: !975)
!1141 = !DILocation(line: 246, column: 4, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 245, column: 32)
!1143 = !DILocation(line: 249, column: 11, scope: !975)
!1144 = !DILocation(line: 249, column: 9, scope: !975)
!1145 = !DILocation(line: 250, column: 11, scope: !975)
!1146 = !DILocation(line: 255, column: 34, scope: !975)
!1147 = !DILocation(line: 255, column: 40, scope: !975)
!1148 = !DILocation(line: 255, column: 49, scope: !975)
!1149 = !DILocation(line: 255, column: 59, scope: !975)
!1150 = !DILocation(line: 255, column: 7, scope: !975)
!1151 = !DILocation(line: 254, column: 10, scope: !975)
!1152 = !DILocation(line: 256, column: 3, scope: !975)
!1153 = !DILocation(line: 273, column: 8, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !975, file: !3, line: 273, column: 7)
!1155 = !DILocation(line: 273, column: 7, scope: !1154)
!1156 = !DILocation(line: 274, column: 7, scope: !1154)
!1157 = !DILocation(line: 274, column: 13, scope: !1154)
!1158 = !DILocation(line: 274, column: 12, scope: !1154)
!1159 = !DILocation(line: 274, column: 31, scope: !1154)
!1160 = !DILocation(line: 274, column: 11, scope: !1154)
!1161 = !DILocation(line: 274, column: 36, scope: !1154)
!1162 = !DILocation(line: 273, column: 7, scope: !975)
!1163 = !DILocation(line: 279, column: 34, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 274, column: 59)
!1165 = !DILocation(line: 279, column: 40, scope: !1164)
!1166 = !DILocation(line: 280, column: 13, scope: !1164)
!1167 = !DILocation(line: 279, column: 8, scope: !1164)
!1168 = !DILocation(line: 278, column: 11, scope: !1164)
!1169 = !DILocation(line: 281, column: 8, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 281, column: 8)
!1171 = !DILocation(line: 281, column: 8, scope: !1164)
!1172 = !DILocation(line: 282, column: 5, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 281, column: 30)
!1174 = !DILocation(line: 287, column: 21, scope: !1164)
!1175 = !DILocation(line: 287, column: 20, scope: !1164)
!1176 = !DILocation(line: 287, column: 18, scope: !1164)
!1177 = !DILocation(line: 288, column: 15, scope: !1164)
!1178 = !DILocation(line: 288, column: 38, scope: !1164)
!1179 = !DILocation(line: 288, column: 13, scope: !1164)
!1180 = !DILocation(line: 289, column: 10, scope: !1164)
!1181 = !DILocation(line: 290, column: 3, scope: !1164)
!1182 = !DILocation(line: 295, column: 34, scope: !975)
!1183 = !DILocation(line: 295, column: 40, scope: !975)
!1184 = !DILocation(line: 295, column: 49, scope: !975)
!1185 = !DILocation(line: 295, column: 59, scope: !975)
!1186 = !DILocation(line: 295, column: 7, scope: !975)
!1187 = !DILocation(line: 294, column: 10, scope: !975)
!1188 = !DILocation(line: 296, column: 3, scope: !975)
!1189 = !DILocation(line: 309, column: 7, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !975, file: !3, line: 309, column: 7)
!1191 = !DILocation(line: 309, column: 13, scope: !1190)
!1192 = !DILocation(line: 309, column: 7, scope: !975)
!1193 = !DILocation(line: 310, column: 21, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 309, column: 18)
!1195 = !DILocation(line: 310, column: 27, scope: !1194)
!1196 = !DILocation(line: 310, column: 19, scope: !1194)
!1197 = !DILocation(line: 311, column: 4, scope: !1194)
!1198 = !DILocation(line: 314, column: 3, scope: !975)
!1199 = !DILocation(line: 314, column: 10, scope: !975)
!1200 = !DILocation(line: 314, column: 16, scope: !975)
!1201 = !DILocation(line: 315, column: 39, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !975, file: !3, line: 314, column: 21)
!1203 = !DILocation(line: 315, column: 45, scope: !1202)
!1204 = !DILocation(line: 316, column: 11, scope: !1202)
!1205 = !DILocation(line: 317, column: 11, scope: !1202)
!1206 = !DILocation(line: 315, column: 13, scope: !1202)
!1207 = !DILocation(line: 315, column: 11, scope: !1202)
!1208 = !DILocation(line: 318, column: 8, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 318, column: 8)
!1210 = !DILocation(line: 318, column: 8, scope: !1202)
!1211 = !DILocation(line: 319, column: 5, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 318, column: 30)
!1213 = !DILocation(line: 324, column: 10, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 324, column: 8)
!1215 = !DILocation(line: 324, column: 9, scope: !1214)
!1216 = !DILocation(line: 324, column: 28, scope: !1214)
!1217 = !DILocation(line: 324, column: 35, scope: !1214)
!1218 = !DILocation(line: 324, column: 8, scope: !1202)
!1219 = !DILocation(line: 325, column: 5, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 324, column: 42)
!1221 = !DILocation(line: 329, column: 5, scope: !1220)
!1222 = !DILocation(line: 332, column: 39, scope: !1202)
!1223 = !DILocation(line: 332, column: 45, scope: !1202)
!1224 = !DILocation(line: 332, column: 54, scope: !1202)
!1225 = !DILocation(line: 333, column: 11, scope: !1202)
!1226 = !DILocation(line: 334, column: 11, scope: !1202)
!1227 = !DILocation(line: 332, column: 13, scope: !1202)
!1228 = !DILocation(line: 332, column: 11, scope: !1202)
!1229 = !DILocation(line: 335, column: 8, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 335, column: 8)
!1231 = !DILocation(line: 335, column: 8, scope: !1202)
!1232 = !DILocation(line: 336, column: 5, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 335, column: 30)
!1234 = !DILocation(line: 339, column: 13, scope: !1202)
!1235 = !DILocation(line: 340, column: 10, scope: !1202)
!1236 = distinct !{!1236, !1198, !1237, !1041, !1042}
!1237 = !DILocation(line: 341, column: 3, scope: !975)
!1238 = !DILocation(line: 342, column: 3, scope: !975)
!1239 = !DILocation(line: 348, column: 3, scope: !975)
!1240 = !DILocation(line: 353, column: 3, scope: !975)
!1241 = !DILocation(line: 356, column: 2, scope: !79)
!1242 = !DILocation(line: 358, column: 1, scope: !79)
!1243 = !DILocation(line: 362, column: 2, scope: !79)
!1244 = !DILocation(line: 366, column: 2, scope: !79)
!1245 = !DILocation(line: 367, column: 1, scope: !79)
!1246 = !DISubprogram(name: "acpi_ns_remove_null_elements", scope: !1247, file: !1247, line: 340, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1247 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1248 = !DISubroutineType(types: !1249)
!1249 = !{null, !82, !101, !92}
!1250 = !DISubprogram(name: "acpi_ut_predefined_warning", scope: !1251, file: !1251, line: 708, type: !1252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1251 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1252 = !DISubroutineType(types: !1253)
!1253 = !{null, !854, !25, !135, !106, !854, null}
!1254 = distinct !DISubprogram(name: "acpi_ns_custom_package", scope: !3, file: !3, line: 623, type: !1255, scopeLine: 625, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1257)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!23, !82, !161, !25}
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263}
!1258 = !DILocalVariable(name: "info", arg: 1, scope: !1254, file: !3, line: 623, type: !82)
!1259 = !DILocalVariable(name: "elements", arg: 2, scope: !1254, file: !3, line: 624, type: !161)
!1260 = !DILocalVariable(name: "count", arg: 3, scope: !1254, file: !3, line: 624, type: !25)
!1261 = !DILocalVariable(name: "expected_count", scope: !1254, file: !3, line: 626, type: !25)
!1262 = !DILocalVariable(name: "version", scope: !1254, file: !3, line: 627, type: !25)
!1263 = !DILocalVariable(name: "status", scope: !1254, file: !3, line: 628, type: !23)
!1264 = !DILocation(line: 623, column: 51, scope: !1254)
!1265 = !DILocation(line: 624, column: 38, scope: !1254)
!1266 = !DILocation(line: 624, column: 52, scope: !1254)
!1267 = !DILocation(line: 626, column: 2, scope: !1254)
!1268 = !DILocation(line: 626, column: 6, scope: !1254)
!1269 = !DILocation(line: 627, column: 2, scope: !1254)
!1270 = !DILocation(line: 627, column: 6, scope: !1254)
!1271 = !DILocation(line: 628, column: 2, scope: !1254)
!1272 = !DILocation(line: 628, column: 14, scope: !1254)
!1273 = !DILocation(line: 634, column: 8, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 634, column: 6)
!1275 = !DILocation(line: 634, column: 7, scope: !1274)
!1276 = !DILocation(line: 634, column: 26, scope: !1274)
!1277 = !DILocation(line: 634, column: 6, scope: !1274)
!1278 = !DILocation(line: 634, column: 31, scope: !1274)
!1279 = !DILocation(line: 634, column: 6, scope: !1254)
!1280 = !DILocation(line: 635, column: 3, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 634, column: 53)
!1282 = !DILocation(line: 638, column: 3, scope: !1281)
!1283 = !DILocation(line: 641, column: 19, scope: !1254)
!1284 = !DILocation(line: 641, column: 18, scope: !1254)
!1285 = !DILocation(line: 641, column: 38, scope: !1254)
!1286 = !DILocation(line: 641, column: 12, scope: !1254)
!1287 = !DILocation(line: 641, column: 10, scope: !1254)
!1288 = !DILocation(line: 642, column: 17, scope: !1254)
!1289 = !DILocation(line: 644, column: 6, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 644, column: 6)
!1291 = !DILocation(line: 644, column: 14, scope: !1290)
!1292 = !DILocation(line: 644, column: 6, scope: !1254)
!1293 = !DILocation(line: 645, column: 18, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 644, column: 20)
!1295 = !DILocation(line: 646, column: 2, scope: !1294)
!1296 = !DILocation(line: 648, column: 6, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 648, column: 6)
!1298 = !DILocation(line: 648, column: 14, scope: !1297)
!1299 = !DILocation(line: 648, column: 12, scope: !1297)
!1300 = !DILocation(line: 648, column: 6, scope: !1254)
!1301 = !DILocation(line: 649, column: 3, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 648, column: 30)
!1303 = !DILocation(line: 653, column: 3, scope: !1302)
!1304 = !DILocation(line: 654, column: 13, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 654, column: 13)
!1306 = !DILocation(line: 654, column: 21, scope: !1305)
!1307 = !DILocation(line: 654, column: 19, scope: !1305)
!1308 = !DILocation(line: 654, column: 13, scope: !1297)
!1309 = !DILocation(line: 659, column: 2, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 654, column: 37)
!1311 = !DILocation(line: 663, column: 42, scope: !1254)
!1312 = !DILocation(line: 663, column: 48, scope: !1254)
!1313 = !DILocation(line: 663, column: 11, scope: !1254)
!1314 = !DILocation(line: 663, column: 9, scope: !1254)
!1315 = !DILocation(line: 666, column: 6, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 666, column: 6)
!1317 = !DILocation(line: 666, column: 6, scope: !1254)
!1318 = !DILocation(line: 667, column: 3, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 666, column: 28)
!1320 = !DILocation(line: 672, column: 6, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 672, column: 6)
!1322 = !DILocation(line: 672, column: 14, scope: !1321)
!1323 = !DILocation(line: 672, column: 6, scope: !1254)
!1324 = !DILocation(line: 673, column: 43, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 672, column: 19)
!1326 = !DILocation(line: 673, column: 49, scope: !1325)
!1327 = !DILocation(line: 673, column: 58, scope: !1325)
!1328 = !DILocation(line: 673, column: 12, scope: !1325)
!1329 = !DILocation(line: 673, column: 10, scope: !1325)
!1330 = !DILocation(line: 676, column: 2, scope: !1325)
!1331 = !DILocation(line: 678, column: 2, scope: !1254)
!1332 = !DILocation(line: 679, column: 1, scope: !1254)
!1333 = distinct !DISubprogram(name: "acpi_ns_check_package_elements", scope: !3, file: !3, line: 701, type: !1334, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1336)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!23, !82, !161, !101, !25, !101, !25, !25}
!1336 = !{!1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346}
!1337 = !DILocalVariable(name: "info", arg: 1, scope: !1333, file: !3, line: 701, type: !82)
!1338 = !DILocalVariable(name: "elements", arg: 2, scope: !1333, file: !3, line: 702, type: !161)
!1339 = !DILocalVariable(name: "type1", arg: 3, scope: !1333, file: !3, line: 703, type: !101)
!1340 = !DILocalVariable(name: "count1", arg: 4, scope: !1333, file: !3, line: 704, type: !25)
!1341 = !DILocalVariable(name: "type2", arg: 5, scope: !1333, file: !3, line: 705, type: !101)
!1342 = !DILocalVariable(name: "count2", arg: 6, scope: !1333, file: !3, line: 705, type: !25)
!1343 = !DILocalVariable(name: "start_index", arg: 7, scope: !1333, file: !3, line: 705, type: !25)
!1344 = !DILocalVariable(name: "this_element", scope: !1333, file: !3, line: 707, type: !161)
!1345 = !DILocalVariable(name: "status", scope: !1333, file: !3, line: 708, type: !23)
!1346 = !DILocalVariable(name: "i", scope: !1333, file: !3, line: 709, type: !25)
!1347 = !DILocation(line: 701, column: 59, scope: !1333)
!1348 = !DILocation(line: 702, column: 39, scope: !1333)
!1349 = !DILocation(line: 703, column: 14, scope: !1333)
!1350 = !DILocation(line: 704, column: 15, scope: !1333)
!1351 = !DILocation(line: 705, column: 14, scope: !1333)
!1352 = !DILocation(line: 705, column: 25, scope: !1333)
!1353 = !DILocation(line: 705, column: 37, scope: !1333)
!1354 = !DILocation(line: 707, column: 2, scope: !1333)
!1355 = !DILocation(line: 707, column: 30, scope: !1333)
!1356 = !DILocation(line: 707, column: 45, scope: !1333)
!1357 = !DILocation(line: 708, column: 2, scope: !1333)
!1358 = !DILocation(line: 708, column: 14, scope: !1333)
!1359 = !DILocation(line: 709, column: 2, scope: !1333)
!1360 = !DILocation(line: 709, column: 6, scope: !1333)
!1361 = !DILocation(line: 718, column: 9, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 718, column: 2)
!1363 = !DILocation(line: 718, column: 7, scope: !1362)
!1364 = !DILocation(line: 718, column: 14, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 718, column: 2)
!1366 = !DILocation(line: 718, column: 18, scope: !1365)
!1367 = !DILocation(line: 718, column: 16, scope: !1365)
!1368 = !DILocation(line: 718, column: 2, scope: !1362)
!1369 = !DILocation(line: 719, column: 38, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 718, column: 31)
!1371 = !DILocation(line: 719, column: 44, scope: !1370)
!1372 = !DILocation(line: 720, column: 10, scope: !1370)
!1373 = !DILocation(line: 720, column: 17, scope: !1370)
!1374 = !DILocation(line: 720, column: 21, scope: !1370)
!1375 = !DILocation(line: 720, column: 19, scope: !1370)
!1376 = !DILocation(line: 719, column: 12, scope: !1370)
!1377 = !DILocation(line: 719, column: 10, scope: !1370)
!1378 = !DILocation(line: 721, column: 7, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 721, column: 7)
!1380 = !DILocation(line: 721, column: 7, scope: !1370)
!1381 = !DILocation(line: 722, column: 4, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 721, column: 29)
!1383 = !DILocation(line: 725, column: 15, scope: !1370)
!1384 = !DILocation(line: 726, column: 2, scope: !1370)
!1385 = !DILocation(line: 718, column: 27, scope: !1365)
!1386 = !DILocation(line: 718, column: 2, scope: !1365)
!1387 = distinct !{!1387, !1368, !1388, !1041, !1042}
!1388 = !DILocation(line: 726, column: 2, scope: !1362)
!1389 = !DILocation(line: 728, column: 9, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 728, column: 2)
!1391 = !DILocation(line: 728, column: 7, scope: !1390)
!1392 = !DILocation(line: 728, column: 14, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 728, column: 2)
!1394 = !DILocation(line: 728, column: 18, scope: !1393)
!1395 = !DILocation(line: 728, column: 16, scope: !1393)
!1396 = !DILocation(line: 728, column: 2, scope: !1390)
!1397 = !DILocation(line: 729, column: 38, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 728, column: 31)
!1399 = !DILocation(line: 729, column: 44, scope: !1398)
!1400 = !DILocation(line: 730, column: 10, scope: !1398)
!1401 = !DILocation(line: 731, column: 11, scope: !1398)
!1402 = !DILocation(line: 731, column: 15, scope: !1398)
!1403 = !DILocation(line: 731, column: 13, scope: !1398)
!1404 = !DILocation(line: 731, column: 24, scope: !1398)
!1405 = !DILocation(line: 731, column: 22, scope: !1398)
!1406 = !DILocation(line: 729, column: 12, scope: !1398)
!1407 = !DILocation(line: 729, column: 10, scope: !1398)
!1408 = !DILocation(line: 732, column: 7, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 732, column: 7)
!1410 = !DILocation(line: 732, column: 7, scope: !1398)
!1411 = !DILocation(line: 733, column: 4, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 732, column: 29)
!1413 = !DILocation(line: 736, column: 15, scope: !1398)
!1414 = !DILocation(line: 737, column: 2, scope: !1398)
!1415 = !DILocation(line: 728, column: 27, scope: !1393)
!1416 = !DILocation(line: 728, column: 2, scope: !1393)
!1417 = distinct !{!1417, !1396, !1418, !1041, !1042}
!1418 = !DILocation(line: 737, column: 2, scope: !1390)
!1419 = !DILocation(line: 739, column: 2, scope: !1333)
!1420 = !DILocation(line: 740, column: 1, scope: !1333)
!1421 = !DISubprogram(name: "acpi_ns_check_object_type", scope: !1247, file: !1247, line: 237, type: !1422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!23, !82, !161, !25, !25}
!1424 = distinct !DISubprogram(name: "acpi_ns_check_package_list", scope: !3, file: !3, line: 386, type: !1425, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1427)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!23, !82, !860, !161, !25}
!1427 = !{!1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438}
!1428 = !DILocalVariable(name: "info", arg: 1, scope: !1424, file: !3, line: 386, type: !82)
!1429 = !DILocalVariable(name: "package", arg: 2, scope: !1424, file: !3, line: 387, type: !860)
!1430 = !DILocalVariable(name: "elements", arg: 3, scope: !1424, file: !3, line: 388, type: !161)
!1431 = !DILocalVariable(name: "count", arg: 4, scope: !1424, file: !3, line: 388, type: !25)
!1432 = !DILocalVariable(name: "sub_package", scope: !1424, file: !3, line: 390, type: !92)
!1433 = !DILocalVariable(name: "sub_elements", scope: !1424, file: !3, line: 391, type: !161)
!1434 = !DILocalVariable(name: "status", scope: !1424, file: !3, line: 392, type: !23)
!1435 = !DILocalVariable(name: "expected_count", scope: !1424, file: !3, line: 393, type: !25)
!1436 = !DILocalVariable(name: "i", scope: !1424, file: !3, line: 394, type: !25)
!1437 = !DILocalVariable(name: "j", scope: !1424, file: !3, line: 395, type: !25)
!1438 = !DILabel(scope: !1424, name: "package_too_small", file: !3, line: 593)
!1439 = !DILocation(line: 386, column: 55, scope: !1424)
!1440 = !DILocation(line: 387, column: 41, scope: !1424)
!1441 = !DILocation(line: 388, column: 35, scope: !1424)
!1442 = !DILocation(line: 388, column: 49, scope: !1424)
!1443 = !DILocation(line: 390, column: 2, scope: !1424)
!1444 = !DILocation(line: 390, column: 29, scope: !1424)
!1445 = !DILocation(line: 391, column: 2, scope: !1424)
!1446 = !DILocation(line: 391, column: 30, scope: !1424)
!1447 = !DILocation(line: 392, column: 2, scope: !1424)
!1448 = !DILocation(line: 392, column: 14, scope: !1424)
!1449 = !DILocation(line: 393, column: 2, scope: !1424)
!1450 = !DILocation(line: 393, column: 6, scope: !1424)
!1451 = !DILocation(line: 394, column: 2, scope: !1424)
!1452 = !DILocation(line: 394, column: 6, scope: !1424)
!1453 = !DILocation(line: 395, column: 2, scope: !1424)
!1454 = !DILocation(line: 395, column: 6, scope: !1424)
!1455 = !DILocation(line: 404, column: 9, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 404, column: 2)
!1457 = !DILocation(line: 404, column: 7, scope: !1456)
!1458 = !DILocation(line: 404, column: 14, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 404, column: 2)
!1460 = !DILocation(line: 404, column: 18, scope: !1459)
!1461 = !DILocation(line: 404, column: 16, scope: !1459)
!1462 = !DILocation(line: 404, column: 2, scope: !1456)
!1463 = !DILocation(line: 405, column: 18, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 404, column: 30)
!1465 = !DILocation(line: 405, column: 17, scope: !1464)
!1466 = !DILocation(line: 405, column: 15, scope: !1464)
!1467 = !DILocation(line: 406, column: 18, scope: !1464)
!1468 = !DILocation(line: 406, column: 39, scope: !1464)
!1469 = !DILocation(line: 406, column: 16, scope: !1464)
!1470 = !DILocation(line: 407, column: 26, scope: !1464)
!1471 = !DILocation(line: 407, column: 3, scope: !1464)
!1472 = !DILocation(line: 407, column: 9, scope: !1464)
!1473 = !DILocation(line: 407, column: 24, scope: !1464)
!1474 = !DILocation(line: 411, column: 38, scope: !1464)
!1475 = !DILocation(line: 412, column: 30, scope: !1464)
!1476 = !DILocation(line: 411, column: 12, scope: !1464)
!1477 = !DILocation(line: 411, column: 10, scope: !1464)
!1478 = !DILocation(line: 413, column: 7, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 413, column: 7)
!1480 = !DILocation(line: 413, column: 7, scope: !1464)
!1481 = !DILocation(line: 414, column: 12, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 413, column: 29)
!1483 = !DILocation(line: 414, column: 4, scope: !1482)
!1484 = !DILocation(line: 419, column: 26, scope: !1464)
!1485 = !DILocation(line: 419, column: 3, scope: !1464)
!1486 = !DILocation(line: 419, column: 9, scope: !1464)
!1487 = !DILocation(line: 419, column: 24, scope: !1464)
!1488 = !DILocation(line: 420, column: 11, scope: !1464)
!1489 = !DILocation(line: 420, column: 29, scope: !1464)
!1490 = !DILocation(line: 420, column: 3, scope: !1464)
!1491 = !DILocation(line: 428, column: 8, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 420, column: 35)
!1493 = !DILocation(line: 428, column: 26, scope: !1492)
!1494 = !DILocation(line: 428, column: 35, scope: !1492)
!1495 = !DILocation(line: 428, column: 53, scope: !1492)
!1496 = !DILocation(line: 428, column: 33, scope: !1492)
!1497 = !DILocation(line: 427, column: 19, scope: !1492)
!1498 = !DILocation(line: 429, column: 8, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 429, column: 8)
!1500 = !DILocation(line: 429, column: 29, scope: !1499)
!1501 = !DILocation(line: 429, column: 37, scope: !1499)
!1502 = !DILocation(line: 429, column: 35, scope: !1499)
!1503 = !DILocation(line: 429, column: 8, scope: !1492)
!1504 = !DILocation(line: 430, column: 5, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 429, column: 53)
!1506 = !DILocation(line: 434, column: 39, scope: !1492)
!1507 = !DILocation(line: 434, column: 45, scope: !1492)
!1508 = !DILocation(line: 435, column: 11, scope: !1492)
!1509 = !DILocation(line: 436, column: 11, scope: !1492)
!1510 = !DILocation(line: 437, column: 11, scope: !1492)
!1511 = !DILocation(line: 438, column: 11, scope: !1492)
!1512 = !DILocation(line: 439, column: 11, scope: !1492)
!1513 = !DILocation(line: 440, column: 11, scope: !1492)
!1514 = !DILocation(line: 441, column: 11, scope: !1492)
!1515 = !DILocation(line: 442, column: 11, scope: !1492)
!1516 = !DILocation(line: 434, column: 8, scope: !1492)
!1517 = !DILocation(line: 433, column: 11, scope: !1492)
!1518 = !DILocation(line: 443, column: 8, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 443, column: 8)
!1520 = !DILocation(line: 443, column: 8, scope: !1492)
!1521 = !DILocation(line: 444, column: 13, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 443, column: 30)
!1523 = !DILocation(line: 444, column: 5, scope: !1522)
!1524 = !DILocation(line: 446, column: 4, scope: !1492)
!1525 = !DILocation(line: 454, column: 8, scope: !1492)
!1526 = !DILocation(line: 454, column: 26, scope: !1492)
!1527 = !DILocation(line: 454, column: 35, scope: !1492)
!1528 = !DILocation(line: 454, column: 53, scope: !1492)
!1529 = !DILocation(line: 454, column: 33, scope: !1492)
!1530 = !DILocation(line: 453, column: 19, scope: !1492)
!1531 = !DILocation(line: 455, column: 8, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 455, column: 8)
!1533 = !DILocation(line: 455, column: 29, scope: !1532)
!1534 = !DILocation(line: 455, column: 37, scope: !1532)
!1535 = !DILocation(line: 455, column: 35, scope: !1532)
!1536 = !DILocation(line: 455, column: 8, scope: !1492)
!1537 = !DILocation(line: 456, column: 5, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 455, column: 53)
!1539 = !DILocation(line: 460, column: 39, scope: !1492)
!1540 = !DILocation(line: 460, column: 45, scope: !1492)
!1541 = !DILocation(line: 461, column: 11, scope: !1492)
!1542 = !DILocation(line: 462, column: 11, scope: !1492)
!1543 = !DILocation(line: 463, column: 11, scope: !1492)
!1544 = !DILocation(line: 464, column: 11, scope: !1492)
!1545 = !DILocation(line: 465, column: 11, scope: !1492)
!1546 = !DILocation(line: 466, column: 11, scope: !1492)
!1547 = !DILocation(line: 467, column: 11, scope: !1492)
!1548 = !DILocation(line: 468, column: 11, scope: !1492)
!1549 = !DILocation(line: 469, column: 11, scope: !1492)
!1550 = !DILocation(line: 470, column: 11, scope: !1492)
!1551 = !DILocation(line: 468, column: 17, scope: !1492)
!1552 = !DILocation(line: 460, column: 8, scope: !1492)
!1553 = !DILocation(line: 459, column: 11, scope: !1492)
!1554 = !DILocation(line: 471, column: 8, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 471, column: 8)
!1556 = !DILocation(line: 471, column: 8, scope: !1492)
!1557 = !DILocation(line: 472, column: 13, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 471, column: 30)
!1559 = !DILocation(line: 472, column: 5, scope: !1558)
!1560 = !DILocation(line: 474, column: 4, scope: !1492)
!1561 = !DILocation(line: 486, column: 21, scope: !1492)
!1562 = !DILocation(line: 486, column: 40, scope: !1492)
!1563 = !DILocation(line: 486, column: 19, scope: !1492)
!1564 = !DILocation(line: 487, column: 8, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 487, column: 8)
!1566 = !DILocation(line: 487, column: 29, scope: !1565)
!1567 = !DILocation(line: 487, column: 37, scope: !1565)
!1568 = !DILocation(line: 487, column: 35, scope: !1565)
!1569 = !DILocation(line: 487, column: 8, scope: !1492)
!1570 = !DILocation(line: 488, column: 5, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 487, column: 53)
!1572 = !DILocation(line: 493, column: 11, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 493, column: 4)
!1574 = !DILocation(line: 493, column: 9, scope: !1573)
!1575 = !DILocation(line: 493, column: 16, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 493, column: 4)
!1577 = !DILocation(line: 493, column: 20, scope: !1576)
!1578 = !DILocation(line: 493, column: 18, scope: !1576)
!1579 = !DILocation(line: 493, column: 4, scope: !1573)
!1580 = !DILocation(line: 495, column: 35, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 493, column: 41)
!1582 = !DILocation(line: 496, column: 15, scope: !1581)
!1583 = !DILocation(line: 496, column: 28, scope: !1581)
!1584 = !DILocation(line: 497, column: 14, scope: !1581)
!1585 = !DILocation(line: 499, column: 14, scope: !1581)
!1586 = !DILocation(line: 499, column: 26, scope: !1581)
!1587 = !DILocation(line: 500, column: 14, scope: !1581)
!1588 = !DILocation(line: 495, column: 9, scope: !1581)
!1589 = !DILocation(line: 494, column: 12, scope: !1581)
!1590 = !DILocation(line: 501, column: 9, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 501, column: 9)
!1592 = !DILocation(line: 501, column: 9, scope: !1581)
!1593 = !DILocation(line: 502, column: 14, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 501, column: 31)
!1595 = !DILocation(line: 502, column: 6, scope: !1594)
!1596 = !DILocation(line: 504, column: 4, scope: !1581)
!1597 = !DILocation(line: 493, column: 37, scope: !1576)
!1598 = !DILocation(line: 493, column: 4, scope: !1576)
!1599 = distinct !{!1599, !1579, !1600, !1041, !1042}
!1600 = !DILocation(line: 504, column: 4, scope: !1573)
!1601 = !DILocation(line: 505, column: 4, scope: !1492)
!1602 = !DILocation(line: 511, column: 21, scope: !1492)
!1603 = !DILocation(line: 511, column: 39, scope: !1492)
!1604 = !DILocation(line: 511, column: 19, scope: !1492)
!1605 = !DILocation(line: 512, column: 8, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 512, column: 8)
!1607 = !DILocation(line: 512, column: 29, scope: !1606)
!1608 = !DILocation(line: 512, column: 37, scope: !1606)
!1609 = !DILocation(line: 512, column: 35, scope: !1606)
!1610 = !DILocation(line: 512, column: 8, scope: !1492)
!1611 = !DILocation(line: 513, column: 5, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 512, column: 53)
!1613 = !DILocation(line: 519, column: 39, scope: !1492)
!1614 = !DILocation(line: 519, column: 45, scope: !1492)
!1615 = !DILocation(line: 520, column: 11, scope: !1492)
!1616 = !DILocation(line: 521, column: 11, scope: !1492)
!1617 = !DILocation(line: 522, column: 11, scope: !1492)
!1618 = !DILocation(line: 523, column: 11, scope: !1492)
!1619 = !DILocation(line: 519, column: 8, scope: !1492)
!1620 = !DILocation(line: 518, column: 11, scope: !1492)
!1621 = !DILocation(line: 524, column: 8, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 524, column: 8)
!1623 = !DILocation(line: 524, column: 8, scope: !1492)
!1624 = !DILocation(line: 525, column: 13, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 524, column: 30)
!1626 = !DILocation(line: 525, column: 5, scope: !1625)
!1627 = !DILocation(line: 527, column: 4, scope: !1492)
!1628 = !DILocation(line: 534, column: 39, scope: !1492)
!1629 = !DILocation(line: 534, column: 45, scope: !1492)
!1630 = !DILocation(line: 534, column: 13, scope: !1492)
!1631 = !DILocation(line: 534, column: 11, scope: !1492)
!1632 = !DILocation(line: 537, column: 8, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 537, column: 8)
!1634 = !DILocation(line: 537, column: 8, scope: !1492)
!1635 = !DILocation(line: 538, column: 13, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 537, column: 30)
!1637 = !DILocation(line: 538, column: 5, scope: !1636)
!1638 = !DILocation(line: 545, column: 28, scope: !1492)
!1639 = !DILocation(line: 545, column: 27, scope: !1492)
!1640 = !DILocation(line: 545, column: 51, scope: !1492)
!1641 = !DILocation(line: 545, column: 21, scope: !1492)
!1642 = !DILocation(line: 545, column: 19, scope: !1492)
!1643 = !DILocation(line: 546, column: 8, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 546, column: 8)
!1645 = !DILocation(line: 546, column: 29, scope: !1644)
!1646 = !DILocation(line: 546, column: 37, scope: !1644)
!1647 = !DILocation(line: 546, column: 35, scope: !1644)
!1648 = !DILocation(line: 546, column: 8, scope: !1492)
!1649 = !DILocation(line: 547, column: 5, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 546, column: 53)
!1651 = !DILocation(line: 550, column: 8, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 550, column: 8)
!1653 = !DILocation(line: 550, column: 29, scope: !1652)
!1654 = !DILocation(line: 551, column: 8, scope: !1652)
!1655 = !DILocation(line: 551, column: 26, scope: !1652)
!1656 = !DILocation(line: 550, column: 35, scope: !1652)
!1657 = !DILocation(line: 550, column: 8, scope: !1492)
!1658 = !DILocation(line: 552, column: 22, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 551, column: 34)
!1660 = !DILocation(line: 552, column: 40, scope: !1659)
!1661 = !DILocation(line: 552, column: 20, scope: !1659)
!1662 = !DILocation(line: 553, column: 5, scope: !1659)
!1663 = !DILocation(line: 556, column: 8, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 556, column: 8)
!1665 = !DILocation(line: 556, column: 23, scope: !1664)
!1666 = !DILocation(line: 556, column: 8, scope: !1492)
!1667 = !DILocation(line: 563, column: 22, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 556, column: 29)
!1669 = !DILocation(line: 563, column: 43, scope: !1668)
!1670 = !DILocation(line: 563, column: 20, scope: !1668)
!1671 = !DILocation(line: 564, column: 38, scope: !1668)
!1672 = !DILocation(line: 564, column: 7, scope: !1668)
!1673 = !DILocation(line: 564, column: 6, scope: !1668)
!1674 = !DILocation(line: 564, column: 30, scope: !1668)
!1675 = !DILocation(line: 564, column: 36, scope: !1668)
!1676 = !DILocation(line: 565, column: 4, scope: !1668)
!1677 = !DILocation(line: 570, column: 39, scope: !1492)
!1678 = !DILocation(line: 571, column: 12, scope: !1492)
!1679 = !DILocation(line: 571, column: 25, scope: !1492)
!1680 = !DILocation(line: 572, column: 11, scope: !1492)
!1681 = !DILocation(line: 573, column: 11, scope: !1492)
!1682 = !DILocation(line: 574, column: 12, scope: !1492)
!1683 = !DILocation(line: 574, column: 27, scope: !1492)
!1684 = !DILocation(line: 570, column: 8, scope: !1492)
!1685 = !DILocation(line: 569, column: 11, scope: !1492)
!1686 = !DILocation(line: 576, column: 8, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 576, column: 8)
!1688 = !DILocation(line: 576, column: 8, scope: !1492)
!1689 = !DILocation(line: 577, column: 13, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 576, column: 30)
!1691 = !DILocation(line: 577, column: 5, scope: !1690)
!1692 = !DILocation(line: 579, column: 4, scope: !1492)
!1693 = !DILocation(line: 583, column: 4, scope: !1492)
!1694 = !DILocation(line: 585, column: 4, scope: !1492)
!1695 = !DILocation(line: 588, column: 11, scope: !1464)
!1696 = !DILocation(line: 589, column: 2, scope: !1464)
!1697 = !DILocation(line: 404, column: 26, scope: !1459)
!1698 = !DILocation(line: 404, column: 2, scope: !1459)
!1699 = distinct !{!1699, !1462, !1700, !1041, !1042}
!1700 = !DILocation(line: 589, column: 2, scope: !1456)
!1701 = !DILocation(line: 591, column: 2, scope: !1424)
!1702 = !DILocation(line: 593, column: 1, scope: !1424)
!1703 = !DILocation(line: 597, column: 2, scope: !1424)
!1704 = !DILocation(line: 601, column: 2, scope: !1424)
!1705 = !DILocation(line: 602, column: 1, scope: !1424)
!1706 = !DISubprogram(name: "acpi_ns_wrap_with_package", scope: !1247, file: !1247, line: 329, type: !1707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!23, !82, !92, !161}
!1709 = !DISubprogram(name: "acpi_error", scope: !1710, file: !1710, line: 901, type: !1711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1710 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1711 = !DISubroutineType(types: !1712)
!1712 = !{null, !854, !25, !854, null}
