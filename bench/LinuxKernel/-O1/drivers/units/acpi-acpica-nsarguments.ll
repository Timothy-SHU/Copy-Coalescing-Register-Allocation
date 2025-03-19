; ModuleID = 'drivers/acpi/acpica/nsarguments.c'
source_filename = "drivers/acpi/acpica/nsarguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i8, i8, i8 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_name_info = type <{ [4 x i8], i16, i8 }>
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_method = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, %union.anon, i32, i16, i8 }
%union.anon = type { ptr }

@_acpi_module_name = internal constant [12 x i8] c"nsarguments\00", align 1, !dbg !0
@.str = private unnamed_addr constant [60 x i8] c"Argument #%u type mismatch - Found [%s], ACPI requires [%s]\00", align 1, !dbg !5
@.str.1 = private unnamed_addr constant [55 x i8] c"Object (%s) must be a control method with %u arguments\00", align 1, !dbg !11
@.str.2 = private unnamed_addr constant [75 x i8] c"Object (%s) must be a control method with no arguments and no return value\00", align 1, !dbg !16
@.str.3 = private unnamed_addr constant [59 x i8] c"Insufficient arguments - ASL declared %u, ACPI requires %u\00", align 1, !dbg !21
@.str.4 = private unnamed_addr constant [53 x i8] c"Excess arguments - ASL declared %u, ACPI requires %u\00", align 1, !dbg !26
@.str.5 = private unnamed_addr constant [58 x i8] c"%u arguments were passed to a non-method ACPI object (%s)\00", align 1, !dbg !31
@.str.6 = private unnamed_addr constant [62 x i8] c"Insufficient arguments - Caller passed %u, method requires %u\00", align 1, !dbg !36
@.str.7 = private unnamed_addr constant [56 x i8] c"Excess arguments - Caller passed %u, method requires %u\00", align 1, !dbg !41
@.str.8 = private unnamed_addr constant [60 x i8] c"Insufficient arguments - Caller passed %u, ACPI requires %u\00", align 1, !dbg !46
@.str.9 = private unnamed_addr constant [54 x i8] c"Excess arguments - Caller passed %u, ACPI requires %u\00", align 1, !dbg !48

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ns_check_argument_types(ptr noundef %info) #0 align 16 !dbg !66 {
entry:
  %info.addr = alloca ptr, align 8
  %arg_type_list = alloca i16, align 2
  %arg_count = alloca i8, align 1
  %arg_type = alloca i8, align 1
  %user_arg_type = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !911, metadata !DIExpression()), !dbg !917
  call void @llvm.lifetime.start.p0(i64 2, ptr %arg_type_list) #4, !dbg !918
  call void @llvm.dbg.declare(metadata ptr %arg_type_list, metadata !912, metadata !DIExpression()), !dbg !919
  call void @llvm.lifetime.start.p0(i64 1, ptr %arg_count) #4, !dbg !920
  call void @llvm.dbg.declare(metadata ptr %arg_count, metadata !913, metadata !DIExpression()), !dbg !921
  call void @llvm.lifetime.start.p0(i64 1, ptr %arg_type) #4, !dbg !922
  call void @llvm.dbg.declare(metadata ptr %arg_type, metadata !914, metadata !DIExpression()), !dbg !923
  call void @llvm.lifetime.start.p0(i64 1, ptr %user_arg_type) #4, !dbg !924
  call void @llvm.dbg.declare(metadata ptr %user_arg_type, metadata !915, metadata !DIExpression()), !dbg !925
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !926
  call void @llvm.dbg.declare(metadata ptr %i, metadata !916, metadata !DIExpression()), !dbg !927
  %0 = load ptr, ptr %info.addr, align 8, !dbg !928
  %predefined = getelementptr inbounds %struct.acpi_evaluate_info, ptr %0, i32 0, i32 6, !dbg !930
  %1 = load ptr, ptr %predefined, align 8, !dbg !930
  %tobool = icmp ne ptr %1, null, !dbg !928
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !931

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %info.addr, align 8, !dbg !932
  %node = getelementptr inbounds %struct.acpi_evaluate_info, ptr %2, i32 0, i32 3, !dbg !933
  %3 = load ptr, ptr %node, align 8, !dbg !933
  %flags = getelementptr inbounds %struct.acpi_namespace_node, ptr %3, i32 0, i32 3, !dbg !934
  %4 = load i16, ptr %flags, align 2, !dbg !934
  %conv = zext i16 %4 to i32, !dbg !932
  %and = and i32 %conv, 32, !dbg !935
  %tobool1 = icmp ne i32 %and, 0, !dbg !935
  br i1 %tobool1, label %if.then, label %if.end, !dbg !936

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !937

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %info.addr, align 8, !dbg !939
  %predefined2 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %5, i32 0, i32 6, !dbg !940
  %6 = load ptr, ptr %predefined2, align 8, !dbg !940
  %argument_list = getelementptr inbounds %struct.acpi_name_info, ptr %6, i32 0, i32 1, !dbg !941
  %7 = load i16, ptr %argument_list, align 1, !dbg !941
  store i16 %7, ptr %arg_type_list, align 2, !dbg !942
  %8 = load i16, ptr %arg_type_list, align 2, !dbg !943
  %conv3 = zext i16 %8 to i32, !dbg !943
  %and4 = and i32 %conv3, 7, !dbg !943
  %conv5 = trunc i32 %and4 to i8, !dbg !943
  store i8 %conv5, ptr %arg_count, align 1, !dbg !944
  store i32 0, ptr %i, align 4, !dbg !945
  br label %for.cond, !dbg !947

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, ptr %i, align 4, !dbg !948
  %10 = load i8, ptr %arg_count, align 1, !dbg !950
  %conv6 = zext i8 %10 to i32, !dbg !950
  %cmp = icmp ult i32 %9, %conv6, !dbg !951
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !952

land.rhs:                                         ; preds = %for.cond
  %11 = load i32, ptr %i, align 4, !dbg !953
  %12 = load ptr, ptr %info.addr, align 8, !dbg !954
  %param_count = getelementptr inbounds %struct.acpi_evaluate_info, ptr %12, i32 0, i32 11, !dbg !955
  %13 = load i16, ptr %param_count, align 8, !dbg !955
  %conv8 = zext i16 %13 to i32, !dbg !954
  %cmp9 = icmp ult i32 %11, %conv8, !dbg !956
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %cmp9, %land.rhs ], !dbg !957
  br i1 %14, label %for.body, label %for.end, !dbg !958

for.body:                                         ; preds = %land.end
  %15 = load i16, ptr %arg_type_list, align 2, !dbg !959
  %conv11 = zext i16 %15 to i32, !dbg !959
  %shr = ashr i32 %conv11, 3, !dbg !959
  %conv12 = trunc i32 %shr to i16, !dbg !959
  store i16 %conv12, ptr %arg_type_list, align 2, !dbg !959
  %conv13 = zext i16 %conv12 to i32, !dbg !959
  %and14 = and i32 %conv13, 7, !dbg !959
  %conv15 = trunc i32 %and14 to i8, !dbg !959
  store i8 %conv15, ptr %arg_type, align 1, !dbg !961
  %16 = load ptr, ptr %info.addr, align 8, !dbg !962
  %parameters = getelementptr inbounds %struct.acpi_evaluate_info, ptr %16, i32 0, i32 2, !dbg !963
  %17 = load ptr, ptr %parameters, align 8, !dbg !963
  %18 = load i32, ptr %i, align 4, !dbg !964
  %idxprom = zext i32 %18 to i64, !dbg !962
  %arrayidx = getelementptr ptr, ptr %17, i64 %idxprom, !dbg !962
  %19 = load ptr, ptr %arrayidx, align 8, !dbg !962
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %19, i32 0, i32 2, !dbg !965
  %20 = load i8, ptr %type, align 1, !dbg !965
  store i8 %20, ptr %user_arg_type, align 1, !dbg !966
  %21 = load i8, ptr %user_arg_type, align 1, !dbg !967
  %conv16 = zext i8 %21 to i32, !dbg !967
  %22 = load i8, ptr %arg_type, align 1, !dbg !969
  %conv17 = zext i8 %22 to i32, !dbg !969
  %cmp18 = icmp ne i32 %conv16, %conv17, !dbg !970
  br i1 %cmp18, label %land.lhs.true, label %if.end31, !dbg !971

land.lhs.true:                                    ; preds = %for.body
  %23 = load i8, ptr %arg_type, align 1, !dbg !972
  %conv20 = zext i8 %23 to i32, !dbg !972
  %cmp21 = icmp ne i32 %conv20, 0, !dbg !973
  br i1 %cmp21, label %if.then23, label %if.end31, !dbg !974

if.then23:                                        ; preds = %land.lhs.true
  %24 = load ptr, ptr %info.addr, align 8, !dbg !975
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %24, i32 0, i32 5, !dbg !975
  %25 = load ptr, ptr %full_pathname, align 8, !dbg !975
  %26 = load i32, ptr %i, align 4, !dbg !975
  %add = add i32 %26, 1, !dbg !975
  %27 = load i8, ptr %user_arg_type, align 1, !dbg !975
  %conv24 = zext i8 %27 to i32, !dbg !975
  %call = call ptr @acpi_ut_get_type_name(i32 noundef %conv24) #5, !dbg !975
  %28 = load i8, ptr %arg_type, align 1, !dbg !975
  %conv25 = zext i8 %28 to i32, !dbg !975
  %call26 = call ptr @acpi_ut_get_type_name(i32 noundef %conv25) #5, !dbg !975
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 61, ptr noundef %25, i16 noundef zeroext 0, ptr noundef @.str, i32 noundef %add, ptr noundef %call, ptr noundef %call26) #5, !dbg !975
  %29 = load ptr, ptr %info.addr, align 8, !dbg !977
  %node27 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %29, i32 0, i32 3, !dbg !978
  %30 = load ptr, ptr %node27, align 8, !dbg !978
  %flags28 = getelementptr inbounds %struct.acpi_namespace_node, ptr %30, i32 0, i32 3, !dbg !979
  %31 = load i16, ptr %flags28, align 2, !dbg !980
  %conv29 = zext i16 %31 to i32, !dbg !980
  %or = or i32 %conv29, 32, !dbg !980
  %conv30 = trunc i32 %or to i16, !dbg !980
  store i16 %conv30, ptr %flags28, align 2, !dbg !980
  br label %if.end31, !dbg !981

if.end31:                                         ; preds = %if.then23, %land.lhs.true, %for.body
  br label %for.inc, !dbg !982

for.inc:                                          ; preds = %if.end31
  %32 = load i32, ptr %i, align 4, !dbg !983
  %inc = add i32 %32, 1, !dbg !983
  store i32 %inc, ptr %i, align 4, !dbg !983
  br label %for.cond, !dbg !984, !llvm.loop !985

for.end:                                          ; preds = %land.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !989
  br label %cleanup, !dbg !989

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !989
  call void @llvm.lifetime.end.p0(i64 1, ptr %user_arg_type) #4, !dbg !989
  call void @llvm.lifetime.end.p0(i64 1, ptr %arg_type) #4, !dbg !989
  call void @llvm.lifetime.end.p0(i64 1, ptr %arg_count) #4, !dbg !989
  call void @llvm.lifetime.end.p0(i64 2, ptr %arg_type_list) #4, !dbg !989
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !989

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !990 dso_local void @acpi_ut_predefined_warning(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !994 dso_local ptr @acpi_ut_get_type_name(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ns_check_acpi_compliance(ptr noundef %pathname, ptr noundef %node, ptr noundef %predefined) #0 align 16 !dbg !998 {
entry:
  %pathname.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %predefined.addr = alloca ptr, align 8
  %aml_param_count = alloca i32, align 4
  %required_param_count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !1002, metadata !DIExpression()), !dbg !1007
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1003, metadata !DIExpression()), !dbg !1008
  store ptr %predefined, ptr %predefined.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %predefined.addr, metadata !1004, metadata !DIExpression()), !dbg !1009
  call void @llvm.lifetime.start.p0(i64 4, ptr %aml_param_count) #4, !dbg !1010
  call void @llvm.dbg.declare(metadata ptr %aml_param_count, metadata !1005, metadata !DIExpression()), !dbg !1011
  call void @llvm.lifetime.start.p0(i64 4, ptr %required_param_count) #4, !dbg !1012
  call void @llvm.dbg.declare(metadata ptr %required_param_count, metadata !1006, metadata !DIExpression()), !dbg !1013
  %0 = load ptr, ptr %predefined.addr, align 8, !dbg !1014
  %tobool = icmp ne ptr %0, null, !dbg !1014
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1016

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8, !dbg !1017
  %flags = getelementptr inbounds %struct.acpi_namespace_node, ptr %1, i32 0, i32 3, !dbg !1018
  %2 = load i16, ptr %flags, align 2, !dbg !1018
  %conv = zext i16 %2 to i32, !dbg !1017
  %and = and i32 %conv, 32, !dbg !1019
  %tobool1 = icmp ne i32 %and, 0, !dbg !1019
  br i1 %tobool1, label %if.then, label %if.end, !dbg !1020

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1021

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %predefined.addr, align 8, !dbg !1023
  %argument_list = getelementptr inbounds %struct.acpi_name_info, ptr %3, i32 0, i32 1, !dbg !1023
  %4 = load i16, ptr %argument_list, align 1, !dbg !1023
  %conv2 = zext i16 %4 to i32, !dbg !1023
  %and3 = and i32 %conv2, 7, !dbg !1023
  store i32 %and3, ptr %required_param_count, align 4, !dbg !1024
  %5 = load ptr, ptr %node.addr, align 8, !dbg !1025
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %5, i32 0, i32 2, !dbg !1027
  %6 = load i8, ptr %type, align 1, !dbg !1027
  %conv4 = zext i8 %6 to i32, !dbg !1025
  %cmp = icmp ne i32 %conv4, 8, !dbg !1028
  br i1 %cmp, label %if.then6, label %if.end20, !dbg !1029

if.then6:                                         ; preds = %if.end
  %7 = load i32, ptr %required_param_count, align 4, !dbg !1030
  %cmp7 = icmp ugt i32 %7, 0, !dbg !1033
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !1034

if.then9:                                         ; preds = %if.then6
  %8 = load ptr, ptr %pathname.addr, align 8, !dbg !1035
  %9 = load ptr, ptr %node.addr, align 8, !dbg !1035
  %type10 = getelementptr inbounds %struct.acpi_namespace_node, ptr %9, i32 0, i32 2, !dbg !1035
  %10 = load i8, ptr %type10, align 1, !dbg !1035
  %conv11 = zext i8 %10 to i32, !dbg !1035
  %call = call ptr @acpi_ut_get_type_name(i32 noundef %conv11) #5, !dbg !1035
  %11 = load i32, ptr %required_param_count, align 4, !dbg !1035
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_bios_error(ptr noundef @_acpi_module_name, i32 noundef 119, ptr noundef %8, i16 noundef zeroext 0, ptr noundef @.str.1, ptr noundef %call, i32 noundef %11) #5, !dbg !1035
  br label %if.end19, !dbg !1037

if.else:                                          ; preds = %if.then6
  %12 = load i32, ptr %required_param_count, align 4, !dbg !1038
  %tobool12 = icmp ne i32 %12, 0, !dbg !1038
  br i1 %tobool12, label %if.end18, label %land.lhs.true, !dbg !1040

land.lhs.true:                                    ; preds = %if.else
  %13 = load ptr, ptr %predefined.addr, align 8, !dbg !1041
  %expected_btypes = getelementptr inbounds %struct.acpi_name_info, ptr %13, i32 0, i32 2, !dbg !1042
  %14 = load i8, ptr %expected_btypes, align 1, !dbg !1042
  %tobool13 = icmp ne i8 %14, 0, !dbg !1041
  br i1 %tobool13, label %if.end18, label %if.then14, !dbg !1043

if.then14:                                        ; preds = %land.lhs.true
  %15 = load ptr, ptr %pathname.addr, align 8, !dbg !1044
  %16 = load ptr, ptr %node.addr, align 8, !dbg !1044
  %type15 = getelementptr inbounds %struct.acpi_namespace_node, ptr %16, i32 0, i32 2, !dbg !1044
  %17 = load i8, ptr %type15, align 1, !dbg !1044
  %conv16 = zext i8 %17 to i32, !dbg !1044
  %call17 = call ptr @acpi_ut_get_type_name(i32 noundef %conv16) #5, !dbg !1044
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_bios_error(ptr noundef @_acpi_module_name, i32 noundef 130, ptr noundef %15, i16 noundef zeroext 0, ptr noundef @.str.2, ptr noundef %call17) #5, !dbg !1044
  br label %if.end18, !dbg !1046

if.end18:                                         ; preds = %if.then14, %land.lhs.true, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then9
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1047

if.end20:                                         ; preds = %if.end
  %18 = load ptr, ptr %node.addr, align 8, !dbg !1048
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %18, i32 0, i32 0, !dbg !1049
  %19 = load ptr, ptr %object, align 8, !dbg !1049
  %param_count = getelementptr inbounds %struct.acpi_object_method, ptr %19, i32 0, i32 6, !dbg !1050
  %20 = load i8, ptr %param_count, align 2, !dbg !1050
  %conv21 = zext i8 %20 to i32, !dbg !1048
  store i32 %conv21, ptr %aml_param_count, align 4, !dbg !1051
  %21 = load i32, ptr %aml_param_count, align 4, !dbg !1052
  %22 = load i32, ptr %required_param_count, align 4, !dbg !1054
  %cmp22 = icmp ult i32 %21, %22, !dbg !1055
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !1056

if.then24:                                        ; preds = %if.end20
  %23 = load ptr, ptr %pathname.addr, align 8, !dbg !1057
  %24 = load i32, ptr %aml_param_count, align 4, !dbg !1057
  %25 = load i32, ptr %required_param_count, align 4, !dbg !1057
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_bios_error(ptr noundef @_acpi_module_name, i32 noundef 154, ptr noundef %23, i16 noundef zeroext 0, ptr noundef @.str.3, i32 noundef %24, i32 noundef %25) #5, !dbg !1057
  br label %if.end35, !dbg !1059

if.else25:                                        ; preds = %if.end20
  %26 = load i32, ptr %aml_param_count, align 4, !dbg !1060
  %27 = load i32, ptr %required_param_count, align 4, !dbg !1062
  %cmp26 = icmp ugt i32 %26, %27, !dbg !1063
  br i1 %cmp26, label %land.lhs.true28, label %if.end34, !dbg !1064

land.lhs.true28:                                  ; preds = %if.else25
  %28 = load ptr, ptr %predefined.addr, align 8, !dbg !1065
  %argument_list29 = getelementptr inbounds %struct.acpi_name_info, ptr %28, i32 0, i32 1, !dbg !1066
  %29 = load i16, ptr %argument_list29, align 1, !dbg !1066
  %conv30 = zext i16 %29 to i32, !dbg !1065
  %and31 = and i32 %conv30, 32768, !dbg !1067
  %tobool32 = icmp ne i32 %and31, 0, !dbg !1067
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !1068

if.then33:                                        ; preds = %land.lhs.true28
  %30 = load ptr, ptr %pathname.addr, align 8, !dbg !1069
  %31 = load i32, ptr %aml_param_count, align 4, !dbg !1069
  %32 = load i32, ptr %required_param_count, align 4, !dbg !1069
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_bios_error(ptr noundef @_acpi_module_name, i32 noundef 162, ptr noundef %30, i16 noundef zeroext 0, ptr noundef @.str.4, i32 noundef %31, i32 noundef %32) #5, !dbg !1069
  br label %if.end34, !dbg !1071

if.end34:                                         ; preds = %if.then33, %land.lhs.true28, %if.else25
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then24
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1072
  br label %cleanup, !dbg !1072

cleanup:                                          ; preds = %if.end35, %if.end19, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %required_param_count) #4, !dbg !1072
  call void @llvm.lifetime.end.p0(i64 4, ptr %aml_param_count) #4, !dbg !1072
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1072

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1073 dso_local void @acpi_ut_predefined_bios_error(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ns_check_argument_count(ptr noundef %pathname, ptr noundef %node, i32 noundef %user_param_count, ptr noundef %predefined) #0 align 16 !dbg !1074 {
entry:
  %pathname.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %user_param_count.addr = alloca i32, align 4
  %predefined.addr = alloca ptr, align 8
  %aml_param_count = alloca i32, align 4
  %required_param_count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !1078, metadata !DIExpression()), !dbg !1084
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1079, metadata !DIExpression()), !dbg !1085
  store i32 %user_param_count, ptr %user_param_count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %user_param_count.addr, metadata !1080, metadata !DIExpression()), !dbg !1086
  store ptr %predefined, ptr %predefined.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %predefined.addr, metadata !1081, metadata !DIExpression()), !dbg !1087
  call void @llvm.lifetime.start.p0(i64 4, ptr %aml_param_count) #4, !dbg !1088
  call void @llvm.dbg.declare(metadata ptr %aml_param_count, metadata !1082, metadata !DIExpression()), !dbg !1089
  call void @llvm.lifetime.start.p0(i64 4, ptr %required_param_count) #4, !dbg !1090
  call void @llvm.dbg.declare(metadata ptr %required_param_count, metadata !1083, metadata !DIExpression()), !dbg !1091
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1092
  %flags = getelementptr inbounds %struct.acpi_namespace_node, ptr %0, i32 0, i32 3, !dbg !1094
  %1 = load i16, ptr %flags, align 2, !dbg !1094
  %conv = zext i16 %1 to i32, !dbg !1092
  %and = and i32 %conv, 32, !dbg !1095
  %tobool = icmp ne i32 %and, 0, !dbg !1095
  br i1 %tobool, label %if.then, label %if.end, !dbg !1096

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1097

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %predefined.addr, align 8, !dbg !1099
  %tobool1 = icmp ne ptr %2, null, !dbg !1099
  br i1 %tobool1, label %if.end21, label %if.then2, !dbg !1101

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %node.addr, align 8, !dbg !1102
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %3, i32 0, i32 2, !dbg !1105
  %4 = load i8, ptr %type, align 1, !dbg !1105
  %conv3 = zext i8 %4 to i32, !dbg !1102
  %cmp = icmp ne i32 %conv3, 8, !dbg !1106
  br i1 %cmp, label %if.then5, label %if.end11, !dbg !1107

if.then5:                                         ; preds = %if.then2
  %5 = load i32, ptr %user_param_count.addr, align 4, !dbg !1108
  %tobool6 = icmp ne i32 %5, 0, !dbg !1108
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !1111

if.then7:                                         ; preds = %if.then5
  %6 = load ptr, ptr %pathname.addr, align 8, !dbg !1112
  %7 = load i32, ptr %user_param_count.addr, align 4, !dbg !1112
  %8 = load ptr, ptr %node.addr, align 8, !dbg !1112
  %type8 = getelementptr inbounds %struct.acpi_namespace_node, ptr %8, i32 0, i32 2, !dbg !1112
  %9 = load i8, ptr %type8, align 1, !dbg !1112
  %conv9 = zext i8 %9 to i32, !dbg !1112
  %call = call ptr @acpi_ut_get_type_name(i32 noundef %conv9) #5, !dbg !1112
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_info(ptr noundef @_acpi_module_name, i32 noundef 206, ptr noundef %6, i16 noundef zeroext 0, ptr noundef @.str.5, i32 noundef %7, ptr noundef %call) #5, !dbg !1112
  br label %if.end10, !dbg !1114

if.end10:                                         ; preds = %if.then7, %if.then5
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1115

if.end11:                                         ; preds = %if.then2
  %10 = load ptr, ptr %node.addr, align 8, !dbg !1116
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %10, i32 0, i32 0, !dbg !1117
  %11 = load ptr, ptr %object, align 8, !dbg !1117
  %param_count = getelementptr inbounds %struct.acpi_object_method, ptr %11, i32 0, i32 6, !dbg !1118
  %12 = load i8, ptr %param_count, align 2, !dbg !1118
  %conv12 = zext i8 %12 to i32, !dbg !1116
  store i32 %conv12, ptr %aml_param_count, align 4, !dbg !1119
  %13 = load i32, ptr %user_param_count.addr, align 4, !dbg !1120
  %14 = load i32, ptr %aml_param_count, align 4, !dbg !1122
  %cmp13 = icmp ult i32 %13, %14, !dbg !1123
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !1124

if.then15:                                        ; preds = %if.end11
  %15 = load ptr, ptr %pathname.addr, align 8, !dbg !1125
  %16 = load i32, ptr %user_param_count.addr, align 4, !dbg !1125
  %17 = load i32, ptr %aml_param_count, align 4, !dbg !1125
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 232, ptr noundef %15, i16 noundef zeroext 0, ptr noundef @.str.6, i32 noundef %16, i32 noundef %17) #5, !dbg !1125
  br label %if.end20, !dbg !1127

if.else:                                          ; preds = %if.end11
  %18 = load i32, ptr %user_param_count.addr, align 4, !dbg !1128
  %19 = load i32, ptr %aml_param_count, align 4, !dbg !1130
  %cmp16 = icmp ugt i32 %18, %19, !dbg !1131
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !1132

if.then18:                                        ; preds = %if.else
  %20 = load ptr, ptr %pathname.addr, align 8, !dbg !1133
  %21 = load i32, ptr %user_param_count.addr, align 4, !dbg !1133
  %22 = load i32, ptr %aml_param_count, align 4, !dbg !1133
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_info(ptr noundef @_acpi_module_name, i32 noundef 239, ptr noundef %20, i16 noundef zeroext 0, ptr noundef @.str.7, i32 noundef %21, i32 noundef %22) #5, !dbg !1133
  br label %if.end19, !dbg !1135

if.end19:                                         ; preds = %if.then18, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then15
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1136

if.end21:                                         ; preds = %if.end
  %23 = load ptr, ptr %predefined.addr, align 8, !dbg !1137
  %argument_list = getelementptr inbounds %struct.acpi_name_info, ptr %23, i32 0, i32 1, !dbg !1137
  %24 = load i16, ptr %argument_list, align 1, !dbg !1137
  %conv22 = zext i16 %24 to i32, !dbg !1137
  %and23 = and i32 %conv22, 7, !dbg !1137
  store i32 %and23, ptr %required_param_count, align 4, !dbg !1138
  %25 = load i32, ptr %user_param_count.addr, align 4, !dbg !1139
  %26 = load i32, ptr %required_param_count, align 4, !dbg !1141
  %cmp24 = icmp ult i32 %25, %26, !dbg !1142
  br i1 %cmp24, label %if.then26, label %if.else27, !dbg !1143

if.then26:                                        ; preds = %if.end21
  %27 = load ptr, ptr %pathname.addr, align 8, !dbg !1144
  %28 = load i32, ptr %user_param_count.addr, align 4, !dbg !1144
  %29 = load i32, ptr %required_param_count, align 4, !dbg !1144
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 264, ptr noundef %27, i16 noundef zeroext 0, ptr noundef @.str.8, i32 noundef %28, i32 noundef %29) #5, !dbg !1144
  br label %if.end36, !dbg !1146

if.else27:                                        ; preds = %if.end21
  %30 = load i32, ptr %user_param_count.addr, align 4, !dbg !1147
  %31 = load i32, ptr %required_param_count, align 4, !dbg !1149
  %cmp28 = icmp ugt i32 %30, %31, !dbg !1150
  br i1 %cmp28, label %land.lhs.true, label %if.end35, !dbg !1151

land.lhs.true:                                    ; preds = %if.else27
  %32 = load ptr, ptr %predefined.addr, align 8, !dbg !1152
  %argument_list30 = getelementptr inbounds %struct.acpi_name_info, ptr %32, i32 0, i32 1, !dbg !1153
  %33 = load i16, ptr %argument_list30, align 1, !dbg !1153
  %conv31 = zext i16 %33 to i32, !dbg !1152
  %and32 = and i32 %conv31, 32768, !dbg !1154
  %tobool33 = icmp ne i32 %and32, 0, !dbg !1154
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !1155

if.then34:                                        ; preds = %land.lhs.true
  %34 = load ptr, ptr %pathname.addr, align 8, !dbg !1156
  %35 = load i32, ptr %user_param_count.addr, align 4, !dbg !1156
  %36 = load i32, ptr %required_param_count, align 4, !dbg !1156
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_info(ptr noundef @_acpi_module_name, i32 noundef 270, ptr noundef %34, i16 noundef zeroext 0, ptr noundef @.str.9, i32 noundef %35, i32 noundef %36) #5, !dbg !1156
  br label %if.end35, !dbg !1158

if.end35:                                         ; preds = %if.then34, %land.lhs.true, %if.else27
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then26
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1159
  br label %cleanup, !dbg !1159

cleanup:                                          ; preds = %if.end36, %if.end20, %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %required_param_count) #4, !dbg !1159
  call void @llvm.lifetime.end.p0(i64 4, ptr %aml_param_count) #4, !dbg !1159
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1159

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1160 dso_local void @acpi_ut_predefined_info(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ...) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !53, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.nsarguments.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22nsarguments\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/nsarguments.ll drivers/acpi/acpica/nsarguments.c", runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsarguments.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "730e731f40a8788ed648a58513e2ec23")
!4 = !{!5, !11, !16, !21, !26, !31, !36, !41, !46, !48, !0}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(scope: null, file: !3, line: 61, type: !7, isLocal: true, isDefinition: true)
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 480, elements: !9)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !{!10}
!10 = !DISubrange(count: 60)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !13, isLocal: true, isDefinition: true)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 440, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 55)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !3, line: 130, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 600, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 75)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !3, line: 154, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 472, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 59)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !3, line: 162, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 424, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 53)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !3, line: 206, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 464, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 58)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !3, line: 232, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 496, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 62)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !3, line: 239, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 448, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 56)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !3, line: 264, type: !7, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !3, line: 270, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 432, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 54)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 96, elements: !55)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!55 = !{!56}
!56 = !DISubrange(count: 12)
!57 = !{i32 7, !"Dwarf Version", i32 5}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 8, !"cf-protection-branch", i32 1}
!61 = !{i32 4, !"function_return_thunk_extern", i32 1}
!62 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!63 = !{i32 1, !"Code Model", i32 2}
!64 = !{i32 1, !"override-stack-alignment", i32 8}
!65 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!66 = distinct !DISubprogram(name: "acpi_ns_check_argument_types", scope: !3, file: !3, line: 30, type: !67, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !910)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !69}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !71, line: 152, size: 704, elements: !72)
!71 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!72 = !{!73, !849, !851, !852, !853, !854, !855, !901, !902, !903, !904, !905, !906, !907, !908, !909}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !70, file: !71, line: 155, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !76, line: 133, size: 384, elements: !77)
!76 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!77 = !{!78, !836, !837, !838, !839, !845, !846, !847, !848}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !75, file: !76, line: 134, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !81, line: 369, size: 576, elements: !82)
!81 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!82 = !{!83, !99, !115, !129, !143, !157, !167, !485, !502, !518, !531, !609, !621, !635, !645, !663, !685, !704, !723, !742, !755, !782, !799, !812, !826, !835}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !80, file: !81, line: 370, baseType: !84, size: 128)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !81, line: 73, size: 128, elements: !85)
!85 = !{!86, !87, !93, !94, !98}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !84, file: !81, line: 74, baseType: !79, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !84, file: !81, line: 74, baseType: !88, size: 8, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !89, line: 17, baseType: !90)
!89 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !91, line: 21, baseType: !92)
!91 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!92 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !84, file: !81, line: 74, baseType: !88, size: 8, offset: 72)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !84, file: !81, line: 74, baseType: !95, size: 16, offset: 80)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !89, line: 19, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !91, line: 24, baseType: !97)
!97 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !84, file: !81, line: 74, baseType: !88, size: 8, offset: 96)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !80, file: !81, line: 371, baseType: !100, size: 192)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !81, line: 76, size: 192, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107, !111}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !100, file: !81, line: 77, baseType: !79, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !100, file: !81, line: 77, baseType: !88, size: 8, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !81, line: 77, baseType: !88, size: 8, offset: 72)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !100, file: !81, line: 77, baseType: !95, size: 16, offset: 80)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !81, line: 77, baseType: !88, size: 8, offset: 96)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !100, file: !81, line: 77, baseType: !108, size: 24, offset: 104)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 24, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 3)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !100, file: !81, line: 78, baseType: !112, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !89, line: 23, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !91, line: 31, baseType: !114)
!114 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !80, file: !81, line: 372, baseType: !116, size: 256)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !81, line: 93, size: 256, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !125}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !116, file: !81, line: 94, baseType: !79, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !116, file: !81, line: 94, baseType: !88, size: 8, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !81, line: 94, baseType: !88, size: 8, offset: 72)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !116, file: !81, line: 94, baseType: !95, size: 16, offset: 80)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !81, line: 94, baseType: !88, size: 8, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !116, file: !81, line: 94, baseType: !124, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !116, file: !81, line: 94, baseType: !126, size: 32, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !89, line: 21, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !91, line: 27, baseType: !128)
!128 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !80, file: !81, line: 373, baseType: !130, size: 384)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !81, line: 97, size: 384, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137, !139, !140, !141, !142}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !130, file: !81, line: 98, baseType: !79, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !130, file: !81, line: 98, baseType: !88, size: 8, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !81, line: 98, baseType: !88, size: 8, offset: 72)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !130, file: !81, line: 98, baseType: !95, size: 16, offset: 80)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !81, line: 98, baseType: !88, size: 8, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !130, file: !81, line: 98, baseType: !138, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !130, file: !81, line: 98, baseType: !126, size: 32, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !130, file: !81, line: 99, baseType: !126, size: 32, offset: 224)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !130, file: !81, line: 100, baseType: !138, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !130, file: !81, line: 101, baseType: !74, size: 64, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !80, file: !81, line: 374, baseType: !144, size: 384)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !81, line: 104, size: 384, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !152, !154, !155, !156}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !144, file: !81, line: 105, baseType: !79, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !144, file: !81, line: 105, baseType: !88, size: 8, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !144, file: !81, line: 105, baseType: !88, size: 8, offset: 72)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !144, file: !81, line: 105, baseType: !95, size: 16, offset: 80)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !144, file: !81, line: 105, baseType: !88, size: 8, offset: 96)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !144, file: !81, line: 105, baseType: !74, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !144, file: !81, line: 106, baseType: !153, size: 64, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !144, file: !81, line: 107, baseType: !138, size: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !144, file: !81, line: 108, baseType: !126, size: 32, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !144, file: !81, line: 109, baseType: !126, size: 32, offset: 352)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !80, file: !81, line: 375, baseType: !158, size: 192)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !81, line: 118, size: 192, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !158, file: !81, line: 119, baseType: !79, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !158, file: !81, line: 119, baseType: !88, size: 8, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !158, file: !81, line: 119, baseType: !88, size: 8, offset: 72)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !158, file: !81, line: 119, baseType: !95, size: 16, offset: 80)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !158, file: !81, line: 119, baseType: !88, size: 8, offset: 96)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !158, file: !81, line: 119, baseType: !166, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !80, file: !81, line: 376, baseType: !168, size: 448)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !81, line: 144, size: 448, elements: !169)
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !482, !483, !484}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !168, file: !81, line: 145, baseType: !79, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !168, file: !81, line: 145, baseType: !88, size: 8, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !168, file: !81, line: 145, baseType: !88, size: 8, offset: 72)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !168, file: !81, line: 145, baseType: !95, size: 16, offset: 80)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !168, file: !81, line: 145, baseType: !88, size: 8, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !168, file: !81, line: 145, baseType: !88, size: 8, offset: 104)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !168, file: !81, line: 146, baseType: !88, size: 8, offset: 112)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !168, file: !81, line: 147, baseType: !88, size: 8, offset: 120)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !168, file: !81, line: 148, baseType: !79, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !168, file: !81, line: 149, baseType: !79, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !168, file: !81, line: 150, baseType: !138, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !168, file: !81, line: 154, baseType: !182, size: 64, offset: 320)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !168, file: !81, line: 151, size: 64, elements: !183)
!183 = !{!184, !481}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !182, file: !81, line: 152, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !76, line: 248, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!189, !191}
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !190, line: 421, baseType: !126)
!190 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !71, line: 37, size: 9024, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !427, !428, !429, !430, !431, !435, !437, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !464, !465, !466, !467, !468, !469, !470, !471, !473, !479}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !71, line: 38, baseType: !191, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !192, file: !71, line: 39, baseType: !88, size: 8, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !192, file: !71, line: 40, baseType: !88, size: 8, offset: 72)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !192, file: !71, line: 41, baseType: !95, size: 16, offset: 80)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !192, file: !71, line: 42, baseType: !88, size: 8, offset: 96)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !192, file: !71, line: 43, baseType: !88, size: 8, offset: 104)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !192, file: !71, line: 44, baseType: !88, size: 8, offset: 112)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !192, file: !71, line: 45, baseType: !202, size: 16, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !190, line: 445, baseType: !95)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !192, file: !71, line: 46, baseType: !88, size: 8, offset: 144)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !192, file: !71, line: 47, baseType: !88, size: 8, offset: 152)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !192, file: !71, line: 48, baseType: !88, size: 8, offset: 160)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !192, file: !71, line: 49, baseType: !88, size: 8, offset: 168)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !192, file: !71, line: 50, baseType: !88, size: 8, offset: 176)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !192, file: !71, line: 51, baseType: !88, size: 8, offset: 184)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !192, file: !71, line: 52, baseType: !88, size: 8, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !192, file: !71, line: 53, baseType: !88, size: 8, offset: 200)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !192, file: !71, line: 54, baseType: !138, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !192, file: !71, line: 55, baseType: !126, size: 32, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !192, file: !71, line: 56, baseType: !126, size: 32, offset: 352)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !192, file: !71, line: 57, baseType: !126, size: 32, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !192, file: !71, line: 58, baseType: !126, size: 32, offset: 416)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !192, file: !71, line: 60, baseType: !217, size: 640, offset: 448)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !76, line: 909, size: 640, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !308, !309, !425, !426}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !217, file: !76, line: 910, baseType: !138, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !217, file: !76, line: 911, baseType: !138, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !217, file: !76, line: 912, baseType: !138, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !217, file: !76, line: 913, baseType: !138, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !217, file: !76, line: 914, baseType: !138, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !217, file: !76, line: 915, baseType: !225, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !76, line: 891, size: 1600, elements: !227)
!227 = !{!228, !248, !264}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !226, file: !76, line: 892, baseType: !229, size: 448)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !76, line: 844, size: 448, elements: !230)
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !247}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !229, file: !76, line: 845, baseType: !225, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !229, file: !76, line: 845, baseType: !88, size: 8, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !229, file: !76, line: 845, baseType: !88, size: 8, offset: 72)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !229, file: !76, line: 845, baseType: !95, size: 16, offset: 80)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !229, file: !76, line: 845, baseType: !138, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !229, file: !76, line: 845, baseType: !225, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !229, file: !76, line: 845, baseType: !74, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !229, file: !76, line: 845, baseType: !239, size: 64, offset: 320)
!239 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !76, line: 732, size: 64, elements: !240)
!240 = !{!241, !242, !243, !244, !245, !246}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !239, file: !76, line: 733, baseType: !112, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !239, file: !76, line: 734, baseType: !126, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !239, file: !76, line: 735, baseType: !124, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !239, file: !76, line: 736, baseType: !138, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !239, file: !76, line: 737, baseType: !124, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !239, file: !76, line: 738, baseType: !225, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !229, file: !76, line: 845, baseType: !88, size: 8, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !226, file: !76, line: 893, baseType: !249, size: 640)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !76, line: 851, size: 640, elements: !250)
!250 = !{!251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !249, file: !76, line: 852, baseType: !225, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !249, file: !76, line: 852, baseType: !88, size: 8, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !249, file: !76, line: 852, baseType: !88, size: 8, offset: 72)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !249, file: !76, line: 852, baseType: !95, size: 16, offset: 80)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !249, file: !76, line: 852, baseType: !138, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !249, file: !76, line: 852, baseType: !225, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !249, file: !76, line: 852, baseType: !74, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !249, file: !76, line: 852, baseType: !239, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !249, file: !76, line: 852, baseType: !88, size: 8, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !249, file: !76, line: 852, baseType: !124, size: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !249, file: !76, line: 853, baseType: !138, size: 64, offset: 512)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !249, file: !76, line: 854, baseType: !126, size: 32, offset: 576)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !249, file: !76, line: 855, baseType: !126, size: 32, offset: 608)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !226, file: !76, line: 894, baseType: !265, size: 1600)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !76, line: 862, size: 1600, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !265, file: !76, line: 863, baseType: !225, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !265, file: !76, line: 863, baseType: !88, size: 8, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !265, file: !76, line: 863, baseType: !88, size: 8, offset: 72)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !265, file: !76, line: 863, baseType: !95, size: 16, offset: 80)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !265, file: !76, line: 863, baseType: !138, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !76, line: 863, baseType: !225, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !265, file: !76, line: 863, baseType: !74, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !265, file: !76, line: 863, baseType: !239, size: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !265, file: !76, line: 863, baseType: !88, size: 8, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !265, file: !76, line: 863, baseType: !225, size: 64, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !265, file: !76, line: 864, baseType: !225, size: 64, offset: 512)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !265, file: !76, line: 865, baseType: !124, size: 64, offset: 576)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !265, file: !76, line: 866, baseType: !88, size: 8, offset: 640)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !265, file: !76, line: 867, baseType: !124, size: 64, offset: 704)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !265, file: !76, line: 868, baseType: !124, size: 64, offset: 768)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !265, file: !76, line: 869, baseType: !124, size: 64, offset: 832)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !265, file: !76, line: 870, baseType: !284, size: 32, offset: 896)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 4)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !265, file: !76, line: 871, baseType: !126, size: 32, offset: 928)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !265, file: !76, line: 872, baseType: !126, size: 32, offset: 960)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !265, file: !76, line: 873, baseType: !126, size: 32, offset: 992)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !265, file: !76, line: 874, baseType: !126, size: 32, offset: 1024)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !265, file: !76, line: 875, baseType: !126, size: 32, offset: 1056)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !265, file: !76, line: 876, baseType: !126, size: 32, offset: 1088)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !265, file: !76, line: 877, baseType: !126, size: 32, offset: 1120)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !265, file: !76, line: 878, baseType: !126, size: 32, offset: 1152)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !265, file: !76, line: 879, baseType: !126, size: 32, offset: 1184)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !265, file: !76, line: 880, baseType: !126, size: 32, offset: 1216)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !265, file: !76, line: 881, baseType: !126, size: 32, offset: 1248)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !265, file: !76, line: 882, baseType: !126, size: 32, offset: 1280)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !265, file: !76, line: 883, baseType: !126, size: 32, offset: 1312)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !265, file: !76, line: 884, baseType: !95, size: 16, offset: 1344)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !265, file: !76, line: 885, baseType: !88, size: 8, offset: 1360)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !265, file: !76, line: 886, baseType: !88, size: 8, offset: 1368)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !265, file: !76, line: 887, baseType: !88, size: 8, offset: 1376)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !265, file: !76, line: 888, baseType: !305, size: 160, offset: 1384)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 20)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !217, file: !76, line: 916, baseType: !74, size: 64, offset: 384)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !217, file: !76, line: 917, baseType: !310, size: 64, offset: 448)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !76, line: 679, size: 640, elements: !312)
!312 = !{!313, !321, !334, !343, !352, !365, !379, !391, !403}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !311, file: !76, line: 680, baseType: !314, size: 128)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !76, line: 575, size: 128, elements: !315)
!315 = !{!316, !317, !318, !319, !320}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !76, line: 576, baseType: !166, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !314, file: !76, line: 576, baseType: !88, size: 8, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !76, line: 576, baseType: !88, size: 8, offset: 72)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !314, file: !76, line: 576, baseType: !95, size: 16, offset: 80)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !314, file: !76, line: 576, baseType: !95, size: 16, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !311, file: !76, line: 681, baseType: !322, size: 384)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !76, line: 604, size: 384, elements: !323)
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !332, !333}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !322, file: !76, line: 605, baseType: !166, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !322, file: !76, line: 605, baseType: !88, size: 8, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !76, line: 605, baseType: !88, size: 8, offset: 72)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !322, file: !76, line: 605, baseType: !95, size: 16, offset: 80)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !322, file: !76, line: 605, baseType: !95, size: 16, offset: 96)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !322, file: !76, line: 606, baseType: !95, size: 16, offset: 112)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !322, file: !76, line: 607, baseType: !225, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !322, file: !76, line: 608, baseType: !138, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !322, file: !76, line: 609, baseType: !138, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !322, file: !76, line: 610, baseType: !112, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !311, file: !76, line: 682, baseType: !335, size: 192)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !76, line: 582, size: 192, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !342}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !335, file: !76, line: 583, baseType: !166, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !335, file: !76, line: 583, baseType: !88, size: 8, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !76, line: 583, baseType: !88, size: 8, offset: 72)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !335, file: !76, line: 583, baseType: !95, size: 16, offset: 80)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !335, file: !76, line: 583, baseType: !95, size: 16, offset: 96)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !335, file: !76, line: 584, baseType: !79, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !311, file: !76, line: 683, baseType: !344, size: 192)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !76, line: 616, size: 192, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !344, file: !76, line: 617, baseType: !166, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !344, file: !76, line: 617, baseType: !88, size: 8, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !344, file: !76, line: 617, baseType: !88, size: 8, offset: 72)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !344, file: !76, line: 617, baseType: !95, size: 16, offset: 80)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !344, file: !76, line: 617, baseType: !95, size: 16, offset: 96)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !344, file: !76, line: 618, baseType: !74, size: 64, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !311, file: !76, line: 684, baseType: !353, size: 448)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !76, line: 621, size: 448, elements: !354)
!354 = !{!355, !356, !357, !358, !359, !360, !361, !362, !363, !364}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !76, line: 622, baseType: !166, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !353, file: !76, line: 622, baseType: !88, size: 8, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !353, file: !76, line: 622, baseType: !88, size: 8, offset: 72)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !353, file: !76, line: 622, baseType: !95, size: 16, offset: 80)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !353, file: !76, line: 622, baseType: !95, size: 16, offset: 96)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !353, file: !76, line: 623, baseType: !126, size: 32, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !353, file: !76, line: 624, baseType: !225, size: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !353, file: !76, line: 625, baseType: !138, size: 64, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !353, file: !76, line: 626, baseType: !138, size: 64, offset: 320)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !353, file: !76, line: 627, baseType: !126, size: 32, offset: 384)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !311, file: !76, line: 685, baseType: !366, size: 512)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !76, line: 590, size: 512, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !366, file: !76, line: 591, baseType: !166, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !366, file: !76, line: 591, baseType: !88, size: 8, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !76, line: 591, baseType: !88, size: 8, offset: 72)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !366, file: !76, line: 591, baseType: !95, size: 16, offset: 80)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !366, file: !76, line: 591, baseType: !95, size: 16, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !366, file: !76, line: 592, baseType: !126, size: 32, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !366, file: !76, line: 593, baseType: !79, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !366, file: !76, line: 594, baseType: !79, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !366, file: !76, line: 595, baseType: !191, size: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !366, file: !76, line: 596, baseType: !166, size: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !366, file: !76, line: 597, baseType: !126, size: 32, offset: 448)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !311, file: !76, line: 686, baseType: !380, size: 320)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !76, line: 634, size: 320, elements: !381)
!381 = !{!382, !383, !384, !385, !386, !387, !388, !389, !390}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !380, file: !76, line: 635, baseType: !166, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !380, file: !76, line: 635, baseType: !88, size: 8, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !380, file: !76, line: 635, baseType: !88, size: 8, offset: 72)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !380, file: !76, line: 635, baseType: !95, size: 16, offset: 80)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !380, file: !76, line: 635, baseType: !95, size: 16, offset: 96)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !380, file: !76, line: 636, baseType: !88, size: 8, offset: 112)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !380, file: !76, line: 637, baseType: !191, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !380, file: !76, line: 638, baseType: !79, size: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !380, file: !76, line: 639, baseType: !112, size: 64, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !311, file: !76, line: 687, baseType: !392, size: 640)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !76, line: 646, size: 640, elements: !393)
!393 = !{!394, !395, !396, !397, !398, !399}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !392, file: !76, line: 647, baseType: !166, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !392, file: !76, line: 647, baseType: !88, size: 8, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !392, file: !76, line: 647, baseType: !88, size: 8, offset: 72)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !392, file: !76, line: 647, baseType: !95, size: 16, offset: 80)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !392, file: !76, line: 647, baseType: !95, size: 16, offset: 96)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !392, file: !76, line: 648, baseType: !400, size: 512, offset: 128)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 512, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 8)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !311, file: !76, line: 688, baseType: !404, size: 320)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !76, line: 669, size: 320, elements: !405)
!405 = !{!406, !407, !408, !409, !410, !411, !412, !413, !414}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !404, file: !76, line: 670, baseType: !166, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !404, file: !76, line: 670, baseType: !88, size: 8, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !404, file: !76, line: 670, baseType: !88, size: 8, offset: 72)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !404, file: !76, line: 670, baseType: !95, size: 16, offset: 80)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !404, file: !76, line: 670, baseType: !95, size: 16, offset: 96)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !404, file: !76, line: 671, baseType: !88, size: 8, offset: 112)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !404, file: !76, line: 672, baseType: !74, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !404, file: !76, line: 673, baseType: !79, size: 64, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !404, file: !76, line: 674, baseType: !415, size: 64, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !76, line: 660, size: 128, elements: !417)
!417 = !{!418, !424}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !416, file: !76, line: 661, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !190, line: 1061, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !423, !126, !166}
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !190, line: 424, baseType: !166)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !416, file: !76, line: 662, baseType: !166, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !217, file: !76, line: 918, baseType: !225, size: 64, offset: 512)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !217, file: !76, line: 919, baseType: !126, size: 32, offset: 576)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !192, file: !71, line: 61, baseType: !126, size: 32, offset: 1088)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !192, file: !71, line: 62, baseType: !126, size: 32, offset: 1120)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !192, file: !71, line: 63, baseType: !95, size: 16, offset: 1152)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !192, file: !71, line: 64, baseType: !88, size: 8, offset: 1168)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !192, file: !71, line: 66, baseType: !432, size: 2688, offset: 1216)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 2688, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 7)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !192, file: !71, line: 67, baseType: !436, size: 3072, offset: 3904)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 3072, elements: !401)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !192, file: !71, line: 68, baseType: !438, size: 576, offset: 6976)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 576, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 9)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !192, file: !71, line: 69, baseType: !153, size: 64, offset: 7552)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !192, file: !71, line: 71, baseType: !138, size: 64, offset: 7616)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !192, file: !71, line: 72, baseType: !153, size: 64, offset: 7680)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !192, file: !71, line: 73, baseType: !310, size: 64, offset: 7744)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !192, file: !71, line: 74, baseType: !74, size: 64, offset: 7808)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !192, file: !71, line: 75, baseType: !79, size: 64, offset: 7872)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !192, file: !71, line: 76, baseType: !74, size: 64, offset: 7936)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !192, file: !71, line: 77, baseType: !225, size: 64, offset: 8000)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !192, file: !71, line: 78, baseType: !79, size: 64, offset: 8064)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !192, file: !71, line: 79, baseType: !74, size: 64, offset: 8128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !192, file: !71, line: 80, baseType: !124, size: 64, offset: 8192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !192, file: !71, line: 81, baseType: !225, size: 64, offset: 8256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !192, file: !71, line: 82, baseType: !454, size: 64, offset: 8320)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !76, line: 718, size: 128, elements: !457)
!457 = !{!458, !459, !460, !461, !462, !463}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !456, file: !76, line: 722, baseType: !126, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !456, file: !76, line: 723, baseType: !126, size: 32, offset: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !456, file: !76, line: 724, baseType: !95, size: 16, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !456, file: !76, line: 725, baseType: !88, size: 8, offset: 80)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !456, file: !76, line: 726, baseType: !88, size: 8, offset: 88)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !456, file: !76, line: 727, baseType: !88, size: 8, offset: 96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !192, file: !71, line: 83, baseType: !225, size: 64, offset: 8384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !192, file: !71, line: 84, baseType: !79, size: 64, offset: 8448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !192, file: !71, line: 85, baseType: !310, size: 64, offset: 8512)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !192, file: !71, line: 86, baseType: !79, size: 64, offset: 8576)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !192, file: !71, line: 87, baseType: !310, size: 64, offset: 8640)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !192, file: !71, line: 88, baseType: !225, size: 64, offset: 8704)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !192, file: !71, line: 89, baseType: !225, size: 64, offset: 8768)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !192, file: !71, line: 90, baseType: !472, size: 64, offset: 8832)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !192, file: !71, line: 91, baseType: !474, size: 64, offset: 8896)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !76, line: 652, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!189, !191, !478}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !192, file: !71, line: 92, baseType: !480, size: 64, offset: 8960)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !76, line: 656, baseType: !186)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !182, file: !81, line: 153, baseType: !79, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !168, file: !81, line: 156, baseType: !126, size: 32, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !168, file: !81, line: 157, baseType: !202, size: 16, offset: 416)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !168, file: !81, line: 158, baseType: !88, size: 8, offset: 432)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !80, file: !81, line: 377, baseType: !486, size: 576)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !81, line: 122, size: 576, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !486, file: !81, line: 123, baseType: !79, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !486, file: !81, line: 123, baseType: !88, size: 8, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !486, file: !81, line: 123, baseType: !88, size: 8, offset: 72)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !486, file: !81, line: 123, baseType: !95, size: 16, offset: 80)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !486, file: !81, line: 123, baseType: !88, size: 8, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !486, file: !81, line: 123, baseType: !88, size: 8, offset: 104)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !486, file: !81, line: 124, baseType: !95, size: 16, offset: 112)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !486, file: !81, line: 125, baseType: !166, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !486, file: !81, line: 126, baseType: !112, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !486, file: !81, line: 127, baseType: !472, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !486, file: !81, line: 128, baseType: !79, size: 64, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !486, file: !81, line: 129, baseType: !79, size: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !486, file: !81, line: 130, baseType: !74, size: 64, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !486, file: !81, line: 131, baseType: !88, size: 8, offset: 512)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !80, file: !81, line: 378, baseType: !503, size: 512)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !81, line: 134, size: 512, elements: !504)
!504 = !{!505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !516, !517}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !503, file: !81, line: 135, baseType: !79, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !503, file: !81, line: 135, baseType: !88, size: 8, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !503, file: !81, line: 135, baseType: !88, size: 8, offset: 72)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !503, file: !81, line: 135, baseType: !95, size: 16, offset: 80)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !503, file: !81, line: 135, baseType: !88, size: 8, offset: 96)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !503, file: !81, line: 135, baseType: !88, size: 8, offset: 104)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !503, file: !81, line: 136, baseType: !74, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !503, file: !81, line: 137, baseType: !79, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !503, file: !81, line: 138, baseType: !79, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !503, file: !81, line: 139, baseType: !515, size: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !190, line: 129, baseType: !112)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !503, file: !81, line: 140, baseType: !126, size: 32, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !503, file: !81, line: 141, baseType: !166, size: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !80, file: !81, line: 379, baseType: !519, size: 320)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !81, line: 185, size: 320, elements: !520)
!520 = !{!521, !522, !523, !524, !525, !526, !530}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !519, file: !81, line: 186, baseType: !79, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !519, file: !81, line: 186, baseType: !88, size: 8, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !519, file: !81, line: 186, baseType: !88, size: 8, offset: 72)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !519, file: !81, line: 186, baseType: !95, size: 16, offset: 80)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !519, file: !81, line: 186, baseType: !88, size: 8, offset: 96)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !519, file: !81, line: 186, baseType: !527, size: 128, offset: 128)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 128, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 2)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !519, file: !81, line: 186, baseType: !79, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !80, file: !81, line: 380, baseType: !532, size: 384)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !81, line: 188, size: 384, elements: !533)
!533 = !{!534, !535, !536, !537, !538, !539, !540, !541}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !532, file: !81, line: 189, baseType: !79, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !532, file: !81, line: 189, baseType: !88, size: 8, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !532, file: !81, line: 189, baseType: !88, size: 8, offset: 72)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !532, file: !81, line: 189, baseType: !95, size: 16, offset: 80)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !532, file: !81, line: 189, baseType: !88, size: 8, offset: 96)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !532, file: !81, line: 190, baseType: !527, size: 128, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !532, file: !81, line: 190, baseType: !79, size: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !532, file: !81, line: 190, baseType: !542, size: 64, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !76, line: 480, size: 576, elements: !544)
!544 = !{!545, !546, !547, !548, !556, !571, !603, !604, !605, !606, !607, !608}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !543, file: !76, line: 481, baseType: !74, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !543, file: !76, line: 482, baseType: !542, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !543, file: !76, line: 483, baseType: !542, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !543, file: !76, line: 484, baseType: !549, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !76, line: 497, size: 256, elements: !551)
!551 = !{!552, !553, !554, !555}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !550, file: !76, line: 498, baseType: !549, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !550, file: !76, line: 499, baseType: !549, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !550, file: !76, line: 500, baseType: !542, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !550, file: !76, line: 501, baseType: !126, size: 32, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !543, file: !76, line: 485, baseType: !557, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !76, line: 466, size: 320, elements: !559)
!559 = !{!560, !565, !566, !567, !568, !569, !570}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !558, file: !76, line: 467, baseType: !561, size: 128)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !76, line: 459, size: 128, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !561, file: !76, line: 460, baseType: !88, size: 8)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !561, file: !76, line: 461, baseType: !112, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !558, file: !76, line: 468, baseType: !561, size: 128, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !558, file: !76, line: 469, baseType: !95, size: 16, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !558, file: !76, line: 470, baseType: !88, size: 8, offset: 272)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !558, file: !76, line: 471, baseType: !88, size: 8, offset: 280)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !558, file: !76, line: 472, baseType: !88, size: 8, offset: 288)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !558, file: !76, line: 473, baseType: !88, size: 8, offset: 296)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !543, file: !76, line: 486, baseType: !572, size: 64, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !76, line: 448, size: 192, elements: !574)
!574 = !{!575, !598, !599, !600, !601, !602}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !573, file: !76, line: 449, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !76, line: 438, size: 64, elements: !577)
!577 = !{!578, !579, !592}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !576, file: !76, line: 439, baseType: !74, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !576, file: !76, line: 440, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !76, line: 419, size: 256, elements: !582)
!582 = !{!583, !588, !589, !590, !591}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !581, file: !76, line: 420, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !190, line: 1058, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!126, !423, !126, !166}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !581, file: !76, line: 421, baseType: !166, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !581, file: !76, line: 422, baseType: !74, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !581, file: !76, line: 423, baseType: !88, size: 8, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !581, file: !76, line: 424, baseType: !88, size: 8, offset: 200)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !576, file: !76, line: 441, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !76, line: 429, size: 128, elements: !595)
!595 = !{!596, !597}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !594, file: !76, line: 430, baseType: !74, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !594, file: !76, line: 431, baseType: !593, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !573, file: !76, line: 450, baseType: !557, size: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !573, file: !76, line: 451, baseType: !88, size: 8, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !573, file: !76, line: 452, baseType: !88, size: 8, offset: 136)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !573, file: !76, line: 453, baseType: !88, size: 8, offset: 144)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !573, file: !76, line: 454, baseType: !88, size: 8, offset: 152)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !543, file: !76, line: 487, baseType: !112, size: 64, offset: 384)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !543, file: !76, line: 488, baseType: !126, size: 32, offset: 448)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !543, file: !76, line: 489, baseType: !95, size: 16, offset: 480)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !543, file: !76, line: 490, baseType: !95, size: 16, offset: 496)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !543, file: !76, line: 491, baseType: !88, size: 8, offset: 512)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !543, file: !76, line: 492, baseType: !88, size: 8, offset: 520)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !80, file: !81, line: 381, baseType: !610, size: 384)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !81, line: 193, size: 384, elements: !611)
!611 = !{!612, !613, !614, !615, !616, !617, !618, !619, !620}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !610, file: !81, line: 194, baseType: !79, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !610, file: !81, line: 194, baseType: !88, size: 8, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !610, file: !81, line: 194, baseType: !88, size: 8, offset: 72)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !610, file: !81, line: 194, baseType: !95, size: 16, offset: 80)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !610, file: !81, line: 194, baseType: !88, size: 8, offset: 96)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !610, file: !81, line: 194, baseType: !527, size: 128, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !610, file: !81, line: 194, baseType: !79, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !610, file: !81, line: 194, baseType: !126, size: 32, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !610, file: !81, line: 195, baseType: !126, size: 32, offset: 352)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !80, file: !81, line: 382, baseType: !622, size: 384)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !81, line: 198, size: 384, elements: !623)
!623 = !{!624, !625, !626, !627, !628, !629, !630, !631, !632, !633}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !622, file: !81, line: 199, baseType: !79, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !622, file: !81, line: 199, baseType: !88, size: 8, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !622, file: !81, line: 199, baseType: !88, size: 8, offset: 72)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !622, file: !81, line: 199, baseType: !95, size: 16, offset: 80)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !622, file: !81, line: 199, baseType: !88, size: 8, offset: 96)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !622, file: !81, line: 201, baseType: !88, size: 8, offset: 104)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !622, file: !81, line: 202, baseType: !88, size: 8, offset: 112)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !622, file: !81, line: 203, baseType: !527, size: 128, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !622, file: !81, line: 203, baseType: !79, size: 64, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !622, file: !81, line: 203, baseType: !634, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !190, line: 128, baseType: !112)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !80, file: !81, line: 383, baseType: !636, size: 320)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !81, line: 206, size: 320, elements: !637)
!637 = !{!638, !639, !640, !641, !642, !643, !644}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !636, file: !81, line: 207, baseType: !79, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !636, file: !81, line: 207, baseType: !88, size: 8, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !636, file: !81, line: 207, baseType: !88, size: 8, offset: 72)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !636, file: !81, line: 207, baseType: !95, size: 16, offset: 80)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !636, file: !81, line: 207, baseType: !88, size: 8, offset: 96)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !636, file: !81, line: 207, baseType: !527, size: 128, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !636, file: !81, line: 207, baseType: !79, size: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !80, file: !81, line: 384, baseType: !646, size: 384)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !81, line: 234, size: 384, elements: !647)
!647 = !{!648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !646, file: !81, line: 235, baseType: !79, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !646, file: !81, line: 235, baseType: !88, size: 8, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !646, file: !81, line: 235, baseType: !88, size: 8, offset: 72)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !646, file: !81, line: 235, baseType: !95, size: 16, offset: 80)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !646, file: !81, line: 235, baseType: !88, size: 8, offset: 96)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !646, file: !81, line: 235, baseType: !88, size: 8, offset: 104)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !646, file: !81, line: 235, baseType: !88, size: 8, offset: 112)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !646, file: !81, line: 235, baseType: !88, size: 8, offset: 120)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !646, file: !81, line: 235, baseType: !74, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !646, file: !81, line: 235, baseType: !126, size: 32, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !646, file: !81, line: 235, baseType: !126, size: 32, offset: 224)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !646, file: !81, line: 235, baseType: !126, size: 32, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !646, file: !81, line: 235, baseType: !88, size: 8, offset: 288)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !646, file: !81, line: 235, baseType: !88, size: 8, offset: 296)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !646, file: !81, line: 235, baseType: !79, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !80, file: !81, line: 385, baseType: !664, size: 576)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !81, line: 238, size: 576, elements: !665)
!665 = !{!666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !664, file: !81, line: 239, baseType: !79, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !664, file: !81, line: 239, baseType: !88, size: 8, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !664, file: !81, line: 239, baseType: !88, size: 8, offset: 72)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !664, file: !81, line: 239, baseType: !95, size: 16, offset: 80)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !664, file: !81, line: 239, baseType: !88, size: 8, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !664, file: !81, line: 239, baseType: !88, size: 8, offset: 104)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !664, file: !81, line: 239, baseType: !88, size: 8, offset: 112)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !664, file: !81, line: 239, baseType: !88, size: 8, offset: 120)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !664, file: !81, line: 239, baseType: !74, size: 64, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !664, file: !81, line: 239, baseType: !126, size: 32, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !664, file: !81, line: 239, baseType: !126, size: 32, offset: 224)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !664, file: !81, line: 239, baseType: !126, size: 32, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !664, file: !81, line: 239, baseType: !88, size: 8, offset: 288)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !664, file: !81, line: 239, baseType: !88, size: 8, offset: 296)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !664, file: !81, line: 239, baseType: !95, size: 16, offset: 304)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !664, file: !81, line: 240, baseType: !79, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !664, file: !81, line: 241, baseType: !138, size: 64, offset: 384)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !664, file: !81, line: 242, baseType: !95, size: 16, offset: 448)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !664, file: !81, line: 243, baseType: !138, size: 64, offset: 512)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !80, file: !81, line: 386, baseType: !686, size: 384)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !81, line: 263, size: 384, elements: !687)
!687 = !{!688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !686, file: !81, line: 264, baseType: !79, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !686, file: !81, line: 264, baseType: !88, size: 8, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !686, file: !81, line: 264, baseType: !88, size: 8, offset: 72)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !686, file: !81, line: 264, baseType: !95, size: 16, offset: 80)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !81, line: 264, baseType: !88, size: 8, offset: 96)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !686, file: !81, line: 264, baseType: !88, size: 8, offset: 104)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !686, file: !81, line: 264, baseType: !88, size: 8, offset: 112)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !686, file: !81, line: 264, baseType: !88, size: 8, offset: 120)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !686, file: !81, line: 264, baseType: !74, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !686, file: !81, line: 264, baseType: !126, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !686, file: !81, line: 264, baseType: !126, size: 32, offset: 224)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !686, file: !81, line: 264, baseType: !126, size: 32, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !686, file: !81, line: 264, baseType: !88, size: 8, offset: 288)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !686, file: !81, line: 264, baseType: !88, size: 8, offset: 296)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !686, file: !81, line: 264, baseType: !88, size: 8, offset: 304)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !686, file: !81, line: 265, baseType: !79, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !80, file: !81, line: 387, baseType: !705, size: 448)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !81, line: 246, size: 448, elements: !706)
!706 = !{!707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !705, file: !81, line: 247, baseType: !79, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !705, file: !81, line: 247, baseType: !88, size: 8, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !705, file: !81, line: 247, baseType: !88, size: 8, offset: 72)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !705, file: !81, line: 247, baseType: !95, size: 16, offset: 80)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !705, file: !81, line: 247, baseType: !88, size: 8, offset: 96)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !705, file: !81, line: 247, baseType: !88, size: 8, offset: 104)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !705, file: !81, line: 247, baseType: !88, size: 8, offset: 112)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !705, file: !81, line: 247, baseType: !88, size: 8, offset: 120)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !705, file: !81, line: 247, baseType: !74, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !705, file: !81, line: 247, baseType: !126, size: 32, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !705, file: !81, line: 247, baseType: !126, size: 32, offset: 224)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !705, file: !81, line: 247, baseType: !126, size: 32, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !705, file: !81, line: 247, baseType: !88, size: 8, offset: 288)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !705, file: !81, line: 247, baseType: !88, size: 8, offset: 296)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !705, file: !81, line: 247, baseType: !79, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !705, file: !81, line: 248, baseType: !79, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !80, file: !81, line: 388, baseType: !724, size: 448)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !81, line: 251, size: 448, elements: !725)
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !724, file: !81, line: 252, baseType: !79, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !724, file: !81, line: 252, baseType: !88, size: 8, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !724, file: !81, line: 252, baseType: !88, size: 8, offset: 72)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !724, file: !81, line: 252, baseType: !95, size: 16, offset: 80)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !724, file: !81, line: 252, baseType: !88, size: 8, offset: 96)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !724, file: !81, line: 252, baseType: !88, size: 8, offset: 104)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !724, file: !81, line: 252, baseType: !88, size: 8, offset: 112)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !724, file: !81, line: 252, baseType: !88, size: 8, offset: 120)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !724, file: !81, line: 252, baseType: !74, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !724, file: !81, line: 252, baseType: !126, size: 32, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !724, file: !81, line: 252, baseType: !126, size: 32, offset: 224)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !724, file: !81, line: 252, baseType: !126, size: 32, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !724, file: !81, line: 252, baseType: !88, size: 8, offset: 288)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !724, file: !81, line: 252, baseType: !88, size: 8, offset: 296)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !724, file: !81, line: 257, baseType: !79, size: 64, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !724, file: !81, line: 258, baseType: !79, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !80, file: !81, line: 389, baseType: !743, size: 512)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !81, line: 274, size: 512, elements: !744)
!744 = !{!745, !746, !747, !748, !749, !750, !751, !752, !753, !754}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !743, file: !81, line: 275, baseType: !79, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !743, file: !81, line: 275, baseType: !88, size: 8, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !743, file: !81, line: 275, baseType: !88, size: 8, offset: 72)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !743, file: !81, line: 275, baseType: !95, size: 16, offset: 80)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !743, file: !81, line: 275, baseType: !88, size: 8, offset: 96)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !743, file: !81, line: 275, baseType: !74, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !743, file: !81, line: 276, baseType: !126, size: 32, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !743, file: !81, line: 277, baseType: !419, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !743, file: !81, line: 278, baseType: !166, size: 64, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !743, file: !81, line: 279, baseType: !527, size: 128, offset: 384)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !80, file: !81, line: 390, baseType: !756, size: 576)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !81, line: 282, size: 576, elements: !757)
!757 = !{!758, !759, !760, !761, !762, !763, !764, !765, !771, !772, !773, !774, !780, !781}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !756, file: !81, line: 283, baseType: !79, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !756, file: !81, line: 283, baseType: !88, size: 8, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !756, file: !81, line: 283, baseType: !88, size: 8, offset: 72)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !756, file: !81, line: 283, baseType: !95, size: 16, offset: 80)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !756, file: !81, line: 283, baseType: !88, size: 8, offset: 96)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !756, file: !81, line: 283, baseType: !88, size: 8, offset: 104)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !756, file: !81, line: 284, baseType: !88, size: 8, offset: 112)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !756, file: !81, line: 285, baseType: !766, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !190, line: 1093, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!189, !126, !515, !126, !770, !166, !166}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !756, file: !81, line: 286, baseType: !74, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !756, file: !81, line: 287, baseType: !166, size: 64, offset: 256)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !756, file: !81, line: 288, baseType: !166, size: 64, offset: 320)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !756, file: !81, line: 289, baseType: !775, size: 64, offset: 384)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !190, line: 1126, baseType: !776)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!189, !423, !126, !166, !779}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !756, file: !81, line: 290, baseType: !79, size: 64, offset: 448)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !756, file: !81, line: 291, baseType: !79, size: 64, offset: 512)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !80, file: !81, line: 391, baseType: !783, size: 512)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !81, line: 309, size: 512, elements: !784)
!784 = !{!785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !783, file: !81, line: 310, baseType: !79, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !783, file: !81, line: 310, baseType: !88, size: 8, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !783, file: !81, line: 310, baseType: !88, size: 8, offset: 72)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !783, file: !81, line: 310, baseType: !95, size: 16, offset: 80)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !783, file: !81, line: 310, baseType: !88, size: 8, offset: 96)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !783, file: !81, line: 310, baseType: !88, size: 8, offset: 104)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !783, file: !81, line: 311, baseType: !88, size: 8, offset: 112)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !783, file: !81, line: 312, baseType: !88, size: 8, offset: 120)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !783, file: !81, line: 313, baseType: !166, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !783, file: !81, line: 314, baseType: !74, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !783, file: !81, line: 315, baseType: !153, size: 64, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !783, file: !81, line: 316, baseType: !138, size: 64, offset: 320)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !783, file: !81, line: 317, baseType: !138, size: 64, offset: 384)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !783, file: !81, line: 318, baseType: !126, size: 32, offset: 448)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !80, file: !81, line: 392, baseType: !800, size: 448)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !81, line: 342, size: 448, elements: !801)
!801 = !{!802, !803, !804, !805, !806, !807, !808, !809, !810, !811}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !800, file: !81, line: 343, baseType: !79, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !800, file: !81, line: 343, baseType: !88, size: 8, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !800, file: !81, line: 343, baseType: !88, size: 8, offset: 72)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !800, file: !81, line: 343, baseType: !95, size: 16, offset: 80)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !800, file: !81, line: 343, baseType: !88, size: 8, offset: 96)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !800, file: !81, line: 343, baseType: !74, size: 64, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !800, file: !81, line: 344, baseType: !74, size: 64, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !800, file: !81, line: 345, baseType: !166, size: 64, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !800, file: !81, line: 346, baseType: !138, size: 64, offset: 320)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !800, file: !81, line: 347, baseType: !126, size: 32, offset: 384)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !80, file: !81, line: 393, baseType: !813, size: 256)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !81, line: 352, size: 256, elements: !814)
!814 = !{!815, !816, !817, !818, !819, !820, !825}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !813, file: !81, line: 353, baseType: !79, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !813, file: !81, line: 353, baseType: !88, size: 8, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !813, file: !81, line: 353, baseType: !88, size: 8, offset: 72)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !813, file: !81, line: 353, baseType: !95, size: 16, offset: 80)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !813, file: !81, line: 353, baseType: !88, size: 8, offset: 96)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !813, file: !81, line: 353, baseType: !821, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !190, line: 1064, baseType: !822)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{null, !423, !166}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !813, file: !81, line: 354, baseType: !166, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !80, file: !81, line: 394, baseType: !827, size: 192)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !81, line: 359, size: 192, elements: !828)
!828 = !{!829, !830, !831, !832, !833, !834}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !827, file: !81, line: 360, baseType: !79, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !827, file: !81, line: 360, baseType: !88, size: 8, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !827, file: !81, line: 360, baseType: !88, size: 8, offset: 72)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !827, file: !81, line: 360, baseType: !95, size: 16, offset: 80)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !827, file: !81, line: 360, baseType: !88, size: 8, offset: 96)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !827, file: !81, line: 360, baseType: !79, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !80, file: !81, line: 401, baseType: !75, size: 384)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !75, file: !76, line: 135, baseType: !88, size: 8, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !76, line: 136, baseType: !88, size: 8, offset: 72)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !76, line: 137, baseType: !95, size: 16, offset: 80)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !75, file: !76, line: 138, baseType: !840, size: 32, offset: 96)
!840 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !841, line: 328, size: 32, elements: !842)
!841 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!842 = !{!843, !844}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !840, file: !841, line: 329, baseType: !126, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !840, file: !841, line: 330, baseType: !284, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !75, file: !76, line: 139, baseType: !74, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !75, file: !76, line: 140, baseType: !74, size: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !75, file: !76, line: 141, baseType: !74, size: 64, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !75, file: !76, line: 142, baseType: !202, size: 16, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !70, file: !71, line: 156, baseType: !850, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !70, file: !71, line: 157, baseType: !153, size: 64, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !70, file: !71, line: 159, baseType: !74, size: 64, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !70, file: !71, line: 160, baseType: !79, size: 64, offset: 256)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !70, file: !71, line: 161, baseType: !124, size: 64, offset: 320)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !70, file: !71, line: 163, baseType: !856, size: 64, offset: 384)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !858)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !76, line: 351, size: 56, elements: !859)
!859 = !{!860, !866, !875, !883, !892}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !858, file: !76, line: 352, baseType: !861, size: 56)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !76, line: 295, size: 56, elements: !862)
!862 = !{!863, !864, !865}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !861, file: !76, line: 296, baseType: !284, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !861, file: !76, line: 297, baseType: !95, size: 16, offset: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !861, file: !76, line: 298, baseType: !88, size: 8, offset: 48)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !858, file: !76, line: 353, baseType: !867, size: 56)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !76, line: 314, size: 56, elements: !868)
!868 = !{!869, !870, !871, !872, !873, !874}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !867, file: !76, line: 315, baseType: !88, size: 8)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !867, file: !76, line: 316, baseType: !88, size: 8, offset: 8)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !867, file: !76, line: 317, baseType: !88, size: 8, offset: 16)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !867, file: !76, line: 318, baseType: !88, size: 8, offset: 24)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !867, file: !76, line: 319, baseType: !88, size: 8, offset: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !867, file: !76, line: 320, baseType: !95, size: 16, offset: 40)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !858, file: !76, line: 354, baseType: !876, size: 56)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !76, line: 325, size: 56, elements: !877)
!877 = !{!878, !879, !880, !882}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !876, file: !76, line: 326, baseType: !88, size: 8)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !876, file: !76, line: 327, baseType: !88, size: 8, offset: 8)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !876, file: !76, line: 328, baseType: !881, size: 32, offset: 16)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 32, elements: !285)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !876, file: !76, line: 329, baseType: !88, size: 8, offset: 48)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !858, file: !76, line: 355, baseType: !884, size: 56)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !76, line: 334, size: 56, elements: !885)
!885 = !{!886, !887, !888, !890, !891}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !884, file: !76, line: 335, baseType: !88, size: 8)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !884, file: !76, line: 336, baseType: !88, size: 8, offset: 8)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !884, file: !76, line: 337, baseType: !889, size: 16, offset: 16)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 16, elements: !528)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !884, file: !76, line: 338, baseType: !88, size: 8, offset: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !884, file: !76, line: 339, baseType: !95, size: 16, offset: 40)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !858, file: !76, line: 356, baseType: !893, size: 56)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !76, line: 342, size: 56, elements: !894)
!894 = !{!895, !896, !897, !898, !899, !900}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !893, file: !76, line: 343, baseType: !88, size: 8)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !893, file: !76, line: 344, baseType: !88, size: 8, offset: 8)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !893, file: !76, line: 345, baseType: !88, size: 8, offset: 16)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !893, file: !76, line: 346, baseType: !88, size: 8, offset: 24)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !893, file: !76, line: 347, baseType: !88, size: 8, offset: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !893, file: !76, line: 348, baseType: !95, size: 16, offset: 40)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !70, file: !71, line: 164, baseType: !79, size: 64, offset: 448)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !70, file: !71, line: 165, baseType: !79, size: 64, offset: 512)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !70, file: !71, line: 167, baseType: !126, size: 32, offset: 576)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !70, file: !71, line: 168, baseType: !126, size: 32, offset: 608)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !70, file: !71, line: 169, baseType: !95, size: 16, offset: 640)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !70, file: !71, line: 170, baseType: !95, size: 16, offset: 656)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !70, file: !71, line: 171, baseType: !88, size: 8, offset: 672)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !70, file: !71, line: 172, baseType: !88, size: 8, offset: 680)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !70, file: !71, line: 173, baseType: !88, size: 8, offset: 688)
!910 = !{!911, !912, !913, !914, !915, !916}
!911 = !DILocalVariable(name: "info", arg: 1, scope: !66, file: !3, line: 30, type: !69)
!912 = !DILocalVariable(name: "arg_type_list", scope: !66, file: !3, line: 32, type: !95)
!913 = !DILocalVariable(name: "arg_count", scope: !66, file: !3, line: 33, type: !88)
!914 = !DILocalVariable(name: "arg_type", scope: !66, file: !3, line: 34, type: !88)
!915 = !DILocalVariable(name: "user_arg_type", scope: !66, file: !3, line: 35, type: !88)
!916 = !DILocalVariable(name: "i", scope: !66, file: !3, line: 36, type: !126)
!917 = !DILocation(line: 30, column: 62, scope: !66)
!918 = !DILocation(line: 32, column: 2, scope: !66)
!919 = !DILocation(line: 32, column: 6, scope: !66)
!920 = !DILocation(line: 33, column: 2, scope: !66)
!921 = !DILocation(line: 33, column: 5, scope: !66)
!922 = !DILocation(line: 34, column: 2, scope: !66)
!923 = !DILocation(line: 34, column: 5, scope: !66)
!924 = !DILocation(line: 35, column: 2, scope: !66)
!925 = !DILocation(line: 35, column: 5, scope: !66)
!926 = !DILocation(line: 36, column: 2, scope: !66)
!927 = !DILocation(line: 36, column: 6, scope: !66)
!928 = !DILocation(line: 45, column: 7, scope: !929)
!929 = distinct !DILexicalBlock(scope: !66, file: !3, line: 45, column: 6)
!930 = !DILocation(line: 45, column: 13, scope: !929)
!931 = !DILocation(line: 45, column: 24, scope: !929)
!932 = !DILocation(line: 45, column: 28, scope: !929)
!933 = !DILocation(line: 45, column: 34, scope: !929)
!934 = !DILocation(line: 45, column: 40, scope: !929)
!935 = !DILocation(line: 45, column: 46, scope: !929)
!936 = !DILocation(line: 45, column: 6, scope: !66)
!937 = !DILocation(line: 46, column: 3, scope: !938)
!938 = distinct !DILexicalBlock(scope: !929, file: !3, line: 45, column: 66)
!939 = !DILocation(line: 49, column: 18, scope: !66)
!940 = !DILocation(line: 49, column: 24, scope: !66)
!941 = !DILocation(line: 49, column: 41, scope: !66)
!942 = !DILocation(line: 49, column: 16, scope: !66)
!943 = !DILocation(line: 50, column: 14, scope: !66)
!944 = !DILocation(line: 50, column: 12, scope: !66)
!945 = !DILocation(line: 54, column: 9, scope: !946)
!946 = distinct !DILexicalBlock(scope: !66, file: !3, line: 54, column: 2)
!947 = !DILocation(line: 54, column: 7, scope: !946)
!948 = !DILocation(line: 54, column: 16, scope: !949)
!949 = distinct !DILexicalBlock(scope: !946, file: !3, line: 54, column: 2)
!950 = !DILocation(line: 54, column: 20, scope: !949)
!951 = !DILocation(line: 54, column: 18, scope: !949)
!952 = !DILocation(line: 54, column: 31, scope: !949)
!953 = !DILocation(line: 54, column: 35, scope: !949)
!954 = !DILocation(line: 54, column: 39, scope: !949)
!955 = !DILocation(line: 54, column: 45, scope: !949)
!956 = !DILocation(line: 54, column: 37, scope: !949)
!957 = !DILocation(line: 0, scope: !949)
!958 = !DILocation(line: 54, column: 2, scope: !946)
!959 = !DILocation(line: 55, column: 14, scope: !960)
!960 = distinct !DILexicalBlock(scope: !949, file: !3, line: 54, column: 65)
!961 = !DILocation(line: 55, column: 12, scope: !960)
!962 = !DILocation(line: 56, column: 19, scope: !960)
!963 = !DILocation(line: 56, column: 25, scope: !960)
!964 = !DILocation(line: 56, column: 36, scope: !960)
!965 = !DILocation(line: 56, column: 47, scope: !960)
!966 = !DILocation(line: 56, column: 17, scope: !960)
!967 = !DILocation(line: 60, column: 8, scope: !968)
!968 = distinct !DILexicalBlock(scope: !960, file: !3, line: 60, column: 7)
!969 = !DILocation(line: 60, column: 25, scope: !968)
!970 = !DILocation(line: 60, column: 22, scope: !968)
!971 = !DILocation(line: 60, column: 35, scope: !968)
!972 = !DILocation(line: 60, column: 39, scope: !968)
!973 = !DILocation(line: 60, column: 48, scope: !968)
!974 = !DILocation(line: 60, column: 7, scope: !960)
!975 = !DILocation(line: 61, column: 4, scope: !976)
!976 = distinct !DILexicalBlock(scope: !968, file: !3, line: 60, column: 67)
!977 = !DILocation(line: 72, column: 4, scope: !976)
!978 = !DILocation(line: 72, column: 10, scope: !976)
!979 = !DILocation(line: 72, column: 16, scope: !976)
!980 = !DILocation(line: 72, column: 22, scope: !976)
!981 = !DILocation(line: 73, column: 3, scope: !976)
!982 = !DILocation(line: 74, column: 2, scope: !960)
!983 = !DILocation(line: 54, column: 61, scope: !949)
!984 = !DILocation(line: 54, column: 2, scope: !949)
!985 = distinct !{!985, !958, !986, !987, !988}
!986 = !DILocation(line: 74, column: 2, scope: !946)
!987 = !{!"llvm.loop.mustprogress"}
!988 = !{!"llvm.loop.unroll.disable"}
!989 = !DILocation(line: 75, column: 1, scope: !66)
!990 = !DISubprogram(name: "acpi_ut_predefined_warning", scope: !991, file: !991, line: 708, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!991 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!992 = !DISubroutineType(types: !993)
!993 = !{null, !850, !126, !124, !95, !850, null}
!994 = !DISubprogram(name: "acpi_ut_get_type_name", scope: !991, file: !991, line: 225, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!995 = !DISubroutineType(types: !996)
!996 = !{!850, !997}
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !190, line: 644, baseType: !126)
!998 = distinct !DISubprogram(name: "acpi_ns_check_acpi_compliance", scope: !3, file: !3, line: 94, type: !999, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1001)
!999 = !DISubroutineType(types: !1000)
!1000 = !{null, !124, !74, !856}
!1001 = !{!1002, !1003, !1004, !1005, !1006}
!1002 = !DILocalVariable(name: "pathname", arg: 1, scope: !998, file: !3, line: 94, type: !124)
!1003 = !DILocalVariable(name: "node", arg: 2, scope: !998, file: !3, line: 95, type: !74)
!1004 = !DILocalVariable(name: "predefined", arg: 3, scope: !998, file: !3, line: 96, type: !856)
!1005 = !DILocalVariable(name: "aml_param_count", scope: !998, file: !3, line: 98, type: !126)
!1006 = !DILocalVariable(name: "required_param_count", scope: !998, file: !3, line: 99, type: !126)
!1007 = !DILocation(line: 94, column: 37, scope: !998)
!1008 = !DILocation(line: 95, column: 38, scope: !998)
!1009 = !DILocation(line: 96, column: 44, scope: !998)
!1010 = !DILocation(line: 98, column: 2, scope: !998)
!1011 = !DILocation(line: 98, column: 6, scope: !998)
!1012 = !DILocation(line: 99, column: 2, scope: !998)
!1013 = !DILocation(line: 99, column: 6, scope: !998)
!1014 = !DILocation(line: 101, column: 7, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !998, file: !3, line: 101, column: 6)
!1016 = !DILocation(line: 101, column: 18, scope: !1015)
!1017 = !DILocation(line: 101, column: 22, scope: !1015)
!1018 = !DILocation(line: 101, column: 28, scope: !1015)
!1019 = !DILocation(line: 101, column: 34, scope: !1015)
!1020 = !DILocation(line: 101, column: 6, scope: !998)
!1021 = !DILocation(line: 102, column: 3, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 101, column: 54)
!1023 = !DILocation(line: 108, column: 6, scope: !998)
!1024 = !DILocation(line: 107, column: 23, scope: !998)
!1025 = !DILocation(line: 114, column: 6, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !998, file: !3, line: 114, column: 6)
!1027 = !DILocation(line: 114, column: 12, scope: !1026)
!1028 = !DILocation(line: 114, column: 17, scope: !1026)
!1029 = !DILocation(line: 114, column: 6, scope: !998)
!1030 = !DILocation(line: 115, column: 7, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 115, column: 7)
!1032 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 114, column: 38)
!1033 = !DILocation(line: 115, column: 28, scope: !1031)
!1034 = !DILocation(line: 115, column: 7, scope: !1032)
!1035 = !DILocation(line: 119, column: 4, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 115, column: 33)
!1037 = !DILocation(line: 125, column: 3, scope: !1036)
!1038 = !DILocation(line: 125, column: 15, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 125, column: 14)
!1040 = !DILocation(line: 126, column: 7, scope: !1039)
!1041 = !DILocation(line: 126, column: 11, scope: !1039)
!1042 = !DILocation(line: 126, column: 28, scope: !1039)
!1043 = !DILocation(line: 125, column: 14, scope: !1031)
!1044 = !DILocation(line: 130, column: 4, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 126, column: 45)
!1046 = !DILocation(line: 136, column: 3, scope: !1045)
!1047 = !DILocation(line: 138, column: 3, scope: !1032)
!1048 = !DILocation(line: 151, column: 20, scope: !998)
!1049 = !DILocation(line: 151, column: 26, scope: !998)
!1050 = !DILocation(line: 151, column: 41, scope: !998)
!1051 = !DILocation(line: 151, column: 18, scope: !998)
!1052 = !DILocation(line: 153, column: 6, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !998, file: !3, line: 153, column: 6)
!1054 = !DILocation(line: 153, column: 24, scope: !1053)
!1055 = !DILocation(line: 153, column: 22, scope: !1053)
!1056 = !DILocation(line: 153, column: 6, scope: !998)
!1057 = !DILocation(line: 154, column: 3, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 153, column: 46)
!1059 = !DILocation(line: 159, column: 2, scope: !1058)
!1060 = !DILocation(line: 159, column: 14, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 159, column: 13)
!1062 = !DILocation(line: 159, column: 32, scope: !1061)
!1063 = !DILocation(line: 159, column: 30, scope: !1061)
!1064 = !DILocation(line: 160, column: 6, scope: !1061)
!1065 = !DILocation(line: 160, column: 11, scope: !1061)
!1066 = !DILocation(line: 161, column: 4, scope: !1061)
!1067 = !DILocation(line: 161, column: 18, scope: !1061)
!1068 = !DILocation(line: 159, column: 13, scope: !1053)
!1069 = !DILocation(line: 162, column: 3, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 161, column: 43)
!1071 = !DILocation(line: 167, column: 2, scope: !1070)
!1072 = !DILocation(line: 168, column: 1, scope: !998)
!1073 = !DISubprogram(name: "acpi_ut_predefined_bios_error", scope: !991, file: !991, line: 722, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1074 = distinct !DISubprogram(name: "acpi_ns_check_argument_count", scope: !3, file: !3, line: 187, type: !1075, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !124, !74, !126, !856}
!1077 = !{!1078, !1079, !1080, !1081, !1082, !1083}
!1078 = !DILocalVariable(name: "pathname", arg: 1, scope: !1074, file: !3, line: 187, type: !124)
!1079 = !DILocalVariable(name: "node", arg: 2, scope: !1074, file: !3, line: 188, type: !74)
!1080 = !DILocalVariable(name: "user_param_count", arg: 3, scope: !1074, file: !3, line: 189, type: !126)
!1081 = !DILocalVariable(name: "predefined", arg: 4, scope: !1074, file: !3, line: 190, type: !856)
!1082 = !DILocalVariable(name: "aml_param_count", scope: !1074, file: !3, line: 192, type: !126)
!1083 = !DILocalVariable(name: "required_param_count", scope: !1074, file: !3, line: 193, type: !126)
!1084 = !DILocation(line: 187, column: 36, scope: !1074)
!1085 = !DILocation(line: 188, column: 37, scope: !1074)
!1086 = !DILocation(line: 189, column: 13, scope: !1074)
!1087 = !DILocation(line: 190, column: 43, scope: !1074)
!1088 = !DILocation(line: 192, column: 2, scope: !1074)
!1089 = !DILocation(line: 192, column: 6, scope: !1074)
!1090 = !DILocation(line: 193, column: 2, scope: !1074)
!1091 = !DILocation(line: 193, column: 6, scope: !1074)
!1092 = !DILocation(line: 195, column: 6, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 195, column: 6)
!1094 = !DILocation(line: 195, column: 12, scope: !1093)
!1095 = !DILocation(line: 195, column: 18, scope: !1093)
!1096 = !DILocation(line: 195, column: 6, scope: !1074)
!1097 = !DILocation(line: 196, column: 3, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 195, column: 37)
!1099 = !DILocation(line: 199, column: 7, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 199, column: 6)
!1101 = !DILocation(line: 199, column: 6, scope: !1074)
!1102 = !DILocation(line: 204, column: 7, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 204, column: 7)
!1104 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 199, column: 19)
!1105 = !DILocation(line: 204, column: 13, scope: !1103)
!1106 = !DILocation(line: 204, column: 18, scope: !1103)
!1107 = !DILocation(line: 204, column: 7, scope: !1104)
!1108 = !DILocation(line: 205, column: 8, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 205, column: 8)
!1110 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 204, column: 39)
!1111 = !DILocation(line: 205, column: 8, scope: !1110)
!1112 = !DILocation(line: 206, column: 5, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 205, column: 26)
!1114 = !DILocation(line: 212, column: 4, scope: !1113)
!1115 = !DILocation(line: 214, column: 4, scope: !1110)
!1116 = !DILocation(line: 229, column: 21, scope: !1104)
!1117 = !DILocation(line: 229, column: 27, scope: !1104)
!1118 = !DILocation(line: 229, column: 42, scope: !1104)
!1119 = !DILocation(line: 229, column: 19, scope: !1104)
!1120 = !DILocation(line: 231, column: 7, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 231, column: 7)
!1122 = !DILocation(line: 231, column: 26, scope: !1121)
!1123 = !DILocation(line: 231, column: 24, scope: !1121)
!1124 = !DILocation(line: 231, column: 7, scope: !1104)
!1125 = !DILocation(line: 232, column: 4, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 231, column: 43)
!1127 = !DILocation(line: 238, column: 3, scope: !1126)
!1128 = !DILocation(line: 238, column: 14, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 238, column: 14)
!1130 = !DILocation(line: 238, column: 33, scope: !1129)
!1131 = !DILocation(line: 238, column: 31, scope: !1129)
!1132 = !DILocation(line: 238, column: 14, scope: !1121)
!1133 = !DILocation(line: 239, column: 4, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 238, column: 50)
!1135 = !DILocation(line: 245, column: 3, scope: !1134)
!1136 = !DILocation(line: 247, column: 3, scope: !1104)
!1137 = !DILocation(line: 261, column: 6, scope: !1074)
!1138 = !DILocation(line: 260, column: 23, scope: !1074)
!1139 = !DILocation(line: 263, column: 6, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 263, column: 6)
!1141 = !DILocation(line: 263, column: 25, scope: !1140)
!1142 = !DILocation(line: 263, column: 23, scope: !1140)
!1143 = !DILocation(line: 263, column: 6, scope: !1074)
!1144 = !DILocation(line: 264, column: 3, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 263, column: 47)
!1146 = !DILocation(line: 268, column: 2, scope: !1145)
!1147 = !DILocation(line: 268, column: 14, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 268, column: 13)
!1149 = !DILocation(line: 268, column: 33, scope: !1148)
!1150 = !DILocation(line: 268, column: 31, scope: !1148)
!1151 = !DILocation(line: 268, column: 55, scope: !1148)
!1152 = !DILocation(line: 269, column: 8, scope: !1148)
!1153 = !DILocation(line: 269, column: 25, scope: !1148)
!1154 = !DILocation(line: 269, column: 39, scope: !1148)
!1155 = !DILocation(line: 268, column: 13, scope: !1140)
!1156 = !DILocation(line: 270, column: 3, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 269, column: 64)
!1158 = !DILocation(line: 274, column: 2, scope: !1157)
!1159 = !DILocation(line: 275, column: 1, scope: !1074)
!1160 = !DISubprogram(name: "acpi_ut_predefined_info", scope: !991, file: !991, line: 715, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
