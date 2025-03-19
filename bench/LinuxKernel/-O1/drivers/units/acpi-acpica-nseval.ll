; ModuleID = 'drivers/acpi/acpica/nseval.c'
source_filename = "drivers/acpi/acpica/nseval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i8, i8, i8 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }

@_acpi_module_name = internal constant [7 x i8] c"nseval\00", align 1, !dbg !0
@.str = private unnamed_addr constant [38 x i8] c"Excess arguments (%u) - using only %u\00", align 1, !dbg !787
@.str.1 = private unnamed_addr constant [70 x i8] c"%s: This object type [%s] never contains data and cannot be evaluated\00", align 1, !dbg !792
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: Method has no attached sub-object\00", align 1, !dbg !797

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_evaluate(ptr noundef %info) #0 align 16 !dbg !810 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !879, metadata !DIExpression()), !dbg !882
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !883
  call void @llvm.dbg.declare(metadata ptr %status, metadata !880, metadata !DIExpression()), !dbg !884
  %0 = load ptr, ptr %info.addr, align 8, !dbg !885
  %tobool = icmp ne ptr %0, null, !dbg !885
  br i1 %tobool, label %if.end, label %if.then, !dbg !887

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !888
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup97, !dbg !888

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %info.addr, align 8, !dbg !890
  %node = getelementptr inbounds %struct.acpi_evaluate_info, ptr %1, i32 0, i32 3, !dbg !892
  %2 = load ptr, ptr %node, align 8, !dbg !892
  %tobool1 = icmp ne ptr %2, null, !dbg !890
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !893

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %info.addr, align 8, !dbg !894
  %prefix_node = getelementptr inbounds %struct.acpi_evaluate_info, ptr %3, i32 0, i32 0, !dbg !896
  %4 = load ptr, ptr %prefix_node, align 8, !dbg !896
  %5 = load ptr, ptr %info.addr, align 8, !dbg !897
  %relative_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %5, i32 0, i32 1, !dbg !898
  %6 = load ptr, ptr %relative_pathname, align 8, !dbg !898
  %7 = load ptr, ptr %info.addr, align 8, !dbg !899
  %node3 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %7, i32 0, i32 3, !dbg !900
  %call = call i32 @acpi_ns_get_node(ptr noundef %4, ptr noundef %6, i32 noundef 0, ptr noundef %node3) #6, !dbg !901
  store i32 %call, ptr %status, align 4, !dbg !902
  %8 = load i32, ptr %status, align 4, !dbg !903
  %tobool4 = icmp ne i32 %8, 0, !dbg !903
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !905

if.then5:                                         ; preds = %if.then2
  %9 = load i32, ptr %status, align 4, !dbg !906
  store i32 %9, ptr %retval, align 4, !dbg !906
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup97, !dbg !906

if.end6:                                          ; preds = %if.then2
  br label %if.end7, !dbg !908

if.end7:                                          ; preds = %if.end6, %if.end
  %10 = load ptr, ptr %info.addr, align 8, !dbg !909
  %node8 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %10, i32 0, i32 3, !dbg !911
  %11 = load ptr, ptr %node8, align 8, !dbg !911
  %call9 = call i32 @acpi_ns_get_type(ptr noundef %11) #6, !dbg !912
  %cmp = icmp eq i32 %call9, 22, !dbg !913
  br i1 %cmp, label %if.then10, label %if.end13, !dbg !914

if.then10:                                        ; preds = %if.end7
  %12 = load ptr, ptr %info.addr, align 8, !dbg !915
  %node11 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %12, i32 0, i32 3, !dbg !915
  %13 = load ptr, ptr %node11, align 8, !dbg !915
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %13, i32 0, i32 0, !dbg !915
  %14 = load ptr, ptr %object, align 8, !dbg !915
  %15 = ptrtoint ptr %14 to i64, !dbg !915
  %16 = inttoptr i64 %15 to ptr, !dbg !915
  %17 = load ptr, ptr %info.addr, align 8, !dbg !917
  %node12 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %17, i32 0, i32 3, !dbg !918
  store ptr %16, ptr %node12, align 8, !dbg !919
  br label %if.end13, !dbg !920

if.end13:                                         ; preds = %if.then10, %if.end7
  %18 = load ptr, ptr %info.addr, align 8, !dbg !921
  %return_object = getelementptr inbounds %struct.acpi_evaluate_info, ptr %18, i32 0, i32 7, !dbg !922
  store ptr null, ptr %return_object, align 8, !dbg !923
  %19 = load ptr, ptr %info.addr, align 8, !dbg !924
  %node14 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %19, i32 0, i32 3, !dbg !925
  %20 = load ptr, ptr %node14, align 8, !dbg !925
  %flags = getelementptr inbounds %struct.acpi_namespace_node, ptr %20, i32 0, i32 3, !dbg !926
  %21 = load i16, ptr %flags, align 2, !dbg !926
  %22 = load ptr, ptr %info.addr, align 8, !dbg !927
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, ptr %22, i32 0, i32 12, !dbg !928
  store i16 %21, ptr %node_flags, align 2, !dbg !929
  %23 = load ptr, ptr %info.addr, align 8, !dbg !930
  %node15 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %23, i32 0, i32 3, !dbg !931
  %24 = load ptr, ptr %node15, align 8, !dbg !931
  %call16 = call ptr @acpi_ns_get_attached_object(ptr noundef %24) #6, !dbg !932
  %25 = load ptr, ptr %info.addr, align 8, !dbg !933
  %obj_desc = getelementptr inbounds %struct.acpi_evaluate_info, ptr %25, i32 0, i32 4, !dbg !934
  store ptr %call16, ptr %obj_desc, align 8, !dbg !935
  %26 = load ptr, ptr %info.addr, align 8, !dbg !936
  %node17 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %26, i32 0, i32 3, !dbg !937
  %27 = load ptr, ptr %node17, align 8, !dbg !937
  %name = getelementptr inbounds %struct.acpi_namespace_node, ptr %27, i32 0, i32 4, !dbg !938
  %arraydecay = getelementptr inbounds [4 x i8], ptr %name, i64 0, i64 0, !dbg !936
  %call18 = call ptr @acpi_ut_match_predefined_method(ptr noundef %arraydecay) #6, !dbg !939
  %28 = load ptr, ptr %info.addr, align 8, !dbg !940
  %predefined = getelementptr inbounds %struct.acpi_evaluate_info, ptr %28, i32 0, i32 6, !dbg !941
  store ptr %call18, ptr %predefined, align 8, !dbg !942
  %29 = load ptr, ptr %info.addr, align 8, !dbg !943
  %node19 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %29, i32 0, i32 3, !dbg !944
  %30 = load ptr, ptr %node19, align 8, !dbg !944
  %call20 = call ptr @acpi_ns_get_normalized_pathname(ptr noundef %30, i8 noundef zeroext 1) #6, !dbg !945
  %31 = load ptr, ptr %info.addr, align 8, !dbg !946
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %31, i32 0, i32 5, !dbg !947
  store ptr %call20, ptr %full_pathname, align 8, !dbg !948
  %32 = load ptr, ptr %info.addr, align 8, !dbg !949
  %full_pathname21 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %32, i32 0, i32 5, !dbg !951
  %33 = load ptr, ptr %full_pathname21, align 8, !dbg !951
  %tobool22 = icmp ne ptr %33, null, !dbg !949
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !952

if.then23:                                        ; preds = %if.end13
  store i32 4, ptr %retval, align 4, !dbg !953
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup97, !dbg !953

if.end24:                                         ; preds = %if.end13
  %34 = load ptr, ptr %info.addr, align 8, !dbg !955
  %param_count = getelementptr inbounds %struct.acpi_evaluate_info, ptr %34, i32 0, i32 11, !dbg !956
  store i16 0, ptr %param_count, align 8, !dbg !957
  %35 = load ptr, ptr %info.addr, align 8, !dbg !958
  %parameters = getelementptr inbounds %struct.acpi_evaluate_info, ptr %35, i32 0, i32 2, !dbg !960
  %36 = load ptr, ptr %parameters, align 8, !dbg !960
  %tobool25 = icmp ne ptr %36, null, !dbg !958
  br i1 %tobool25, label %if.then26, label %if.end40, !dbg !961

if.then26:                                        ; preds = %if.end24
  br label %while.cond, !dbg !962

while.cond:                                       ; preds = %while.body, %if.then26
  %37 = load ptr, ptr %info.addr, align 8, !dbg !964
  %parameters27 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %37, i32 0, i32 2, !dbg !965
  %38 = load ptr, ptr %parameters27, align 8, !dbg !965
  %39 = load ptr, ptr %info.addr, align 8, !dbg !966
  %param_count28 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %39, i32 0, i32 11, !dbg !967
  %40 = load i16, ptr %param_count28, align 8, !dbg !967
  %idxprom = zext i16 %40 to i64, !dbg !964
  %arrayidx = getelementptr ptr, ptr %38, i64 %idxprom, !dbg !964
  %41 = load ptr, ptr %arrayidx, align 8, !dbg !964
  %tobool29 = icmp ne ptr %41, null, !dbg !962
  br i1 %tobool29, label %while.body, label %while.end, !dbg !962

while.body:                                       ; preds = %while.cond
  %42 = load ptr, ptr %info.addr, align 8, !dbg !968
  %param_count30 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %42, i32 0, i32 11, !dbg !970
  %43 = load i16, ptr %param_count30, align 8, !dbg !971
  %inc = add i16 %43, 1, !dbg !971
  store i16 %inc, ptr %param_count30, align 8, !dbg !971
  br label %while.cond, !dbg !962, !llvm.loop !972

while.end:                                        ; preds = %while.cond
  %44 = load ptr, ptr %info.addr, align 8, !dbg !976
  %param_count31 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %44, i32 0, i32 11, !dbg !978
  %45 = load i16, ptr %param_count31, align 8, !dbg !978
  %conv = zext i16 %45 to i32, !dbg !976
  %cmp32 = icmp sgt i32 %conv, 7, !dbg !979
  br i1 %cmp32, label %if.then34, label %if.end39, !dbg !980

if.then34:                                        ; preds = %while.end
  %46 = load ptr, ptr %info.addr, align 8, !dbg !981
  %full_pathname35 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %46, i32 0, i32 5, !dbg !981
  %47 = load ptr, ptr %full_pathname35, align 8, !dbg !981
  %48 = load ptr, ptr %info.addr, align 8, !dbg !981
  %param_count36 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %48, i32 0, i32 11, !dbg !981
  %49 = load i16, ptr %param_count36, align 8, !dbg !981
  %conv37 = zext i16 %49 to i32, !dbg !981
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 119, ptr noundef %47, i16 noundef zeroext 0, ptr noundef @.str, i32 noundef %conv37, i32 noundef 7) #6, !dbg !981
  %50 = load ptr, ptr %info.addr, align 8, !dbg !983
  %param_count38 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %50, i32 0, i32 11, !dbg !984
  store i16 7, ptr %param_count38, align 8, !dbg !985
  br label %if.end39, !dbg !986

if.end39:                                         ; preds = %if.then34, %while.end
  br label %if.end40, !dbg !987

if.end40:                                         ; preds = %if.end39, %if.end24
  %51 = load ptr, ptr %info.addr, align 8, !dbg !988
  %full_pathname41 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %51, i32 0, i32 5, !dbg !989
  %52 = load ptr, ptr %full_pathname41, align 8, !dbg !989
  %53 = load ptr, ptr %info.addr, align 8, !dbg !990
  %node42 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %53, i32 0, i32 3, !dbg !991
  %54 = load ptr, ptr %node42, align 8, !dbg !991
  %55 = load ptr, ptr %info.addr, align 8, !dbg !992
  %predefined43 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %55, i32 0, i32 6, !dbg !993
  %56 = load ptr, ptr %predefined43, align 8, !dbg !993
  call void @acpi_ns_check_acpi_compliance(ptr noundef %52, ptr noundef %54, ptr noundef %56) #6, !dbg !994
  %57 = load ptr, ptr %info.addr, align 8, !dbg !995
  %full_pathname44 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %57, i32 0, i32 5, !dbg !996
  %58 = load ptr, ptr %full_pathname44, align 8, !dbg !996
  %59 = load ptr, ptr %info.addr, align 8, !dbg !997
  %node45 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %59, i32 0, i32 3, !dbg !998
  %60 = load ptr, ptr %node45, align 8, !dbg !998
  %61 = load ptr, ptr %info.addr, align 8, !dbg !999
  %param_count46 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %61, i32 0, i32 11, !dbg !1000
  %62 = load i16, ptr %param_count46, align 8, !dbg !1000
  %conv47 = zext i16 %62 to i32, !dbg !999
  %63 = load ptr, ptr %info.addr, align 8, !dbg !1001
  %predefined48 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %63, i32 0, i32 6, !dbg !1002
  %64 = load ptr, ptr %predefined48, align 8, !dbg !1002
  call void @acpi_ns_check_argument_count(ptr noundef %58, ptr noundef %60, i32 noundef %conv47, ptr noundef %64) #6, !dbg !1003
  %65 = load ptr, ptr %info.addr, align 8, !dbg !1004
  call void @acpi_ns_check_argument_types(ptr noundef %65) #6, !dbg !1005
  %66 = load ptr, ptr %info.addr, align 8, !dbg !1006
  %node49 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %66, i32 0, i32 3, !dbg !1007
  %67 = load ptr, ptr %node49, align 8, !dbg !1007
  %call50 = call i32 @acpi_ns_get_type(ptr noundef %67) #6, !dbg !1008
  switch i32 %call50, label %sw.default [
    i32 0, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 13, label %sw.bb
    i32 27, label %sw.bb
    i32 8, label %sw.bb55
  ], !dbg !1009

sw.bb:                                            ; preds = %if.end40, %if.end40, %if.end40, %if.end40, %if.end40, %if.end40, %if.end40
  %68 = load ptr, ptr %info.addr, align 8, !dbg !1010
  %full_pathname51 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %68, i32 0, i32 5, !dbg !1010
  %69 = load ptr, ptr %full_pathname51, align 8, !dbg !1010
  %70 = load ptr, ptr %info.addr, align 8, !dbg !1010
  %node52 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %70, i32 0, i32 3, !dbg !1010
  %71 = load ptr, ptr %node52, align 8, !dbg !1010
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %71, i32 0, i32 2, !dbg !1010
  %72 = load i8, ptr %type, align 1, !dbg !1010
  %conv53 = zext i8 %72 to i32, !dbg !1010
  %call54 = call ptr @acpi_ut_get_type_name(i32 noundef %conv53) #6, !dbg !1010
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 166, ptr noundef @.str.1, ptr noundef %69, ptr noundef %call54) #6, !dbg !1010
  store i32 8, ptr %status, align 4, !dbg !1012
  br label %cleanup, !dbg !1013

sw.bb55:                                          ; preds = %if.end40
  %73 = load ptr, ptr %info.addr, align 8, !dbg !1014
  %obj_desc56 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %73, i32 0, i32 4, !dbg !1016
  %74 = load ptr, ptr %obj_desc56, align 8, !dbg !1016
  %tobool57 = icmp ne ptr %74, null, !dbg !1014
  br i1 %tobool57, label %if.end60, label %if.then58, !dbg !1017

if.then58:                                        ; preds = %sw.bb55
  %75 = load ptr, ptr %info.addr, align 8, !dbg !1018
  %full_pathname59 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %75, i32 0, i32 5, !dbg !1018
  %76 = load ptr, ptr %full_pathname59, align 8, !dbg !1018
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 183, ptr noundef @.str.2, ptr noundef %76) #6, !dbg !1018
  store i32 9, ptr %status, align 4, !dbg !1020
  br label %cleanup, !dbg !1021

if.end60:                                         ; preds = %sw.bb55
  call void @acpi_ex_enter_interpreter() #6, !dbg !1022
  %77 = load ptr, ptr %info.addr, align 8, !dbg !1023
  %call61 = call i32 @acpi_ps_execute_method(ptr noundef %77) #6, !dbg !1024
  store i32 %call61, ptr %status, align 4, !dbg !1025
  call void @acpi_ex_exit_interpreter() #6, !dbg !1026
  br label %sw.epilog, !dbg !1027

sw.default:                                       ; preds = %if.end40
  call void @acpi_ex_enter_interpreter() #6, !dbg !1028
  %78 = load ptr, ptr %info.addr, align 8, !dbg !1029
  %node62 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %78, i32 0, i32 3, !dbg !1029
  %79 = load ptr, ptr %node62, align 8, !dbg !1029
  %80 = ptrtoint ptr %79 to i64, !dbg !1029
  %81 = inttoptr i64 %80 to ptr, !dbg !1029
  %82 = load ptr, ptr %info.addr, align 8, !dbg !1030
  %return_object63 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %82, i32 0, i32 7, !dbg !1031
  store ptr %81, ptr %return_object63, align 8, !dbg !1032
  %83 = load ptr, ptr %info.addr, align 8, !dbg !1033
  %return_object64 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %83, i32 0, i32 7, !dbg !1033
  %84 = ptrtoint ptr %return_object64 to i64, !dbg !1033
  %85 = inttoptr i64 %84 to ptr, !dbg !1033
  %call65 = call i32 @acpi_ex_resolve_node_to_value(ptr noundef %85, ptr noundef null) #6, !dbg !1034
  store i32 %call65, ptr %status, align 4, !dbg !1035
  call void @acpi_ex_exit_interpreter() #6, !dbg !1036
  %86 = load i32, ptr %status, align 4, !dbg !1037
  %tobool66 = icmp ne i32 %86, 0, !dbg !1037
  br i1 %tobool66, label %if.then67, label %if.end69, !dbg !1039

if.then67:                                        ; preds = %sw.default
  %87 = load ptr, ptr %info.addr, align 8, !dbg !1040
  %return_object68 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %87, i32 0, i32 7, !dbg !1042
  store ptr null, ptr %return_object68, align 8, !dbg !1043
  br label %cleanup, !dbg !1044

if.end69:                                         ; preds = %sw.default
  store i32 16385, ptr %status, align 4, !dbg !1045
  br label %sw.epilog, !dbg !1046

sw.epilog:                                        ; preds = %if.end69, %if.end60
  %88 = load ptr, ptr %info.addr, align 8, !dbg !1047
  %node70 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %88, i32 0, i32 3, !dbg !1048
  %89 = load ptr, ptr %node70, align 8, !dbg !1048
  %90 = load ptr, ptr %info.addr, align 8, !dbg !1049
  %91 = load ptr, ptr %info.addr, align 8, !dbg !1050
  %param_count71 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %91, i32 0, i32 11, !dbg !1051
  %92 = load i16, ptr %param_count71, align 8, !dbg !1051
  %conv72 = zext i16 %92 to i32, !dbg !1050
  %93 = load i32, ptr %status, align 4, !dbg !1052
  %94 = load ptr, ptr %info.addr, align 8, !dbg !1053
  %return_object73 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %94, i32 0, i32 7, !dbg !1054
  %call74 = call i32 @acpi_ns_check_return_value(ptr noundef %89, ptr noundef %90, i32 noundef %conv72, i32 noundef %93, ptr noundef %return_object73) #6, !dbg !1055
  %95 = load i32, ptr %status, align 4, !dbg !1056
  %cmp75 = icmp eq i32 %95, 16385, !dbg !1058
  br i1 %cmp75, label %if.then77, label %if.else, !dbg !1059

if.then77:                                        ; preds = %sw.epilog
  %96 = load ptr, ptr %info.addr, align 8, !dbg !1060
  %flags78 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %96, i32 0, i32 15, !dbg !1063
  %97 = load i8, ptr %flags78, align 2, !dbg !1063
  %conv79 = zext i8 %97 to i32, !dbg !1060
  %and = and i32 %conv79, 1, !dbg !1064
  %tobool80 = icmp ne i32 %and, 0, !dbg !1064
  br i1 %tobool80, label %if.then81, label %if.end84, !dbg !1065

if.then81:                                        ; preds = %if.then77
  %98 = load ptr, ptr %info.addr, align 8, !dbg !1066
  %return_object82 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %98, i32 0, i32 7, !dbg !1068
  %99 = load ptr, ptr %return_object82, align 8, !dbg !1068
  call void @acpi_ut_remove_reference(ptr noundef %99) #6, !dbg !1069
  %100 = load ptr, ptr %info.addr, align 8, !dbg !1070
  %return_object83 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %100, i32 0, i32 7, !dbg !1071
  store ptr null, ptr %return_object83, align 8, !dbg !1072
  br label %if.end84, !dbg !1073

if.end84:                                         ; preds = %if.then81, %if.then77
  store i32 0, ptr %status, align 4, !dbg !1074
  br label %if.end94, !dbg !1075

if.else:                                          ; preds = %sw.epilog
  %101 = load i32, ptr %status, align 4, !dbg !1076
  %tobool85 = icmp ne i32 %101, 0, !dbg !1076
  br i1 %tobool85, label %if.then86, label %if.end93, !dbg !1078

if.then86:                                        ; preds = %if.else
  %102 = load ptr, ptr %info.addr, align 8, !dbg !1079
  %return_object87 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %102, i32 0, i32 7, !dbg !1082
  %103 = load ptr, ptr %return_object87, align 8, !dbg !1082
  %tobool88 = icmp ne ptr %103, null, !dbg !1079
  br i1 %tobool88, label %if.then89, label %if.end92, !dbg !1083

if.then89:                                        ; preds = %if.then86
  %104 = load ptr, ptr %info.addr, align 8, !dbg !1084
  %return_object90 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %104, i32 0, i32 7, !dbg !1086
  %105 = load ptr, ptr %return_object90, align 8, !dbg !1086
  call void @acpi_ut_remove_reference(ptr noundef %105) #6, !dbg !1087
  %106 = load ptr, ptr %info.addr, align 8, !dbg !1088
  %return_object91 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %106, i32 0, i32 7, !dbg !1089
  store ptr null, ptr %return_object91, align 8, !dbg !1090
  br label %if.end92, !dbg !1091

if.end92:                                         ; preds = %if.then89, %if.then86
  br label %if.end93, !dbg !1092

if.end93:                                         ; preds = %if.end92, %if.else
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.end84
  br label %cleanup, !dbg !1093

cleanup:                                          ; preds = %if.end94, %if.then67, %if.then58, %sw.bb
  call void @llvm.dbg.label(metadata !881), !dbg !1094
  %107 = load ptr, ptr %info.addr, align 8, !dbg !1095
  %full_pathname95 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %107, i32 0, i32 5, !dbg !1095
  %108 = load ptr, ptr %full_pathname95, align 8, !dbg !1095
  call void @acpi_os_free(ptr noundef %108) #6, !dbg !1095
  %109 = load ptr, ptr %info.addr, align 8, !dbg !1096
  %full_pathname96 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %109, i32 0, i32 5, !dbg !1097
  store ptr null, ptr %full_pathname96, align 8, !dbg !1098
  %110 = load i32, ptr %status, align 4, !dbg !1099
  store i32 %110, ptr %retval, align 4, !dbg !1099
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup97, !dbg !1099

cleanup97:                                        ; preds = %cleanup, %if.then23, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1100
  %111 = load i32, ptr %retval, align 4, !dbg !1100
  ret i32 %111, !dbg !1100
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1101 dso_local i32 @acpi_ns_get_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1105 dso_local i32 @acpi_ns_get_type(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1109 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1112 dso_local ptr @acpi_ut_match_predefined_method(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1116 dso_local ptr @acpi_ns_get_normalized_pathname(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1119 dso_local void @acpi_ut_predefined_warning(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1122 dso_local void @acpi_ns_check_acpi_compliance(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1125 dso_local void @acpi_ns_check_argument_count(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1128 dso_local void @acpi_ns_check_argument_types(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1131 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1135 dso_local ptr @acpi_ut_get_type_name(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1138 dso_local void @acpi_ex_enter_interpreter() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1142 dso_local i32 @acpi_ps_execute_method(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1144 dso_local void @acpi_ex_exit_interpreter() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1145 dso_local i32 @acpi_ex_resolve_node_to_value(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1148 dso_local i32 @acpi_ns_check_return_value(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1151 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !1154 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1159, metadata !DIExpression()), !dbg !1160
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1161
  call void @kfree(ptr noundef %0) #6, !dbg !1162
  ret void, !dbg !1163
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1164 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!801, !802, !803, !804, !805, !806, !807, !808}
!llvm.ident = !{!809}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !799, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.nseval.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22nseval\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/nseval.ll drivers/acpi/acpica/nseval.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !786, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nseval.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b1907d4ca5240a8829830476680dd284")
!4 = !{!5, !12, !782, !17, !785}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !14, line: 133, size: 384, elements: !15)
!14 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!15 = !{!16, !769, !770, !771, !772, !778, !779, !780, !781}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !13, file: !14, line: 134, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !19, line: 369, size: 576, elements: !20)
!19 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!20 = !{!21, !35, !51, !63, !77, !91, !101, !418, !435, !451, !464, !542, !554, !568, !578, !596, !618, !637, !656, !675, !688, !715, !732, !745, !759, !768}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !18, file: !19, line: 370, baseType: !22, size: 128)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !19, line: 73, size: 128, elements: !23)
!23 = !{!24, !25, !29, !30, !34}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !22, file: !19, line: 74, baseType: !17, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !22, file: !19, line: 74, baseType: !26, size: 8, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !28)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !22, file: !19, line: 74, baseType: !26, size: 8, offset: 72)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !22, file: !19, line: 74, baseType: !31, size: 16, offset: 80)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !33)
!33 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !22, file: !19, line: 74, baseType: !26, size: 8, offset: 96)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !18, file: !19, line: 371, baseType: !36, size: 192)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !19, line: 76, size: 192, elements: !37)
!37 = !{!38, !39, !40, !41, !42, !43, !47}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !36, file: !19, line: 77, baseType: !17, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !36, file: !19, line: 77, baseType: !26, size: 8, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !36, file: !19, line: 77, baseType: !26, size: 8, offset: 72)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !36, file: !19, line: 77, baseType: !31, size: 16, offset: 80)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !36, file: !19, line: 77, baseType: !26, size: 8, offset: 96)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !36, file: !19, line: 77, baseType: !44, size: 24, offset: 104)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 24, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 3)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !36, file: !19, line: 78, baseType: !48, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !50)
!50 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !18, file: !19, line: 372, baseType: !52, size: 256)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !19, line: 93, size: 256, elements: !53)
!53 = !{!54, !55, !56, !57, !58, !59, !62}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !52, file: !19, line: 94, baseType: !17, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !52, file: !19, line: 94, baseType: !26, size: 8, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !19, line: 94, baseType: !26, size: 8, offset: 72)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !52, file: !19, line: 94, baseType: !31, size: 16, offset: 80)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !19, line: 94, baseType: !26, size: 8, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !52, file: !19, line: 94, baseType: !60, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !52, file: !19, line: 94, baseType: !7, size: 32, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !18, file: !19, line: 373, baseType: !64, size: 384)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !19, line: 97, size: 384, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71, !73, !74, !75, !76}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !64, file: !19, line: 98, baseType: !17, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !64, file: !19, line: 98, baseType: !26, size: 8, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !64, file: !19, line: 98, baseType: !26, size: 8, offset: 72)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !64, file: !19, line: 98, baseType: !31, size: 16, offset: 80)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !19, line: 98, baseType: !26, size: 8, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !64, file: !19, line: 98, baseType: !72, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !64, file: !19, line: 98, baseType: !7, size: 32, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !64, file: !19, line: 99, baseType: !7, size: 32, offset: 224)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !64, file: !19, line: 100, baseType: !72, size: 64, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !64, file: !19, line: 101, baseType: !12, size: 64, offset: 320)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !18, file: !19, line: 374, baseType: !78, size: 384)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !19, line: 104, size: 384, elements: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !86, !88, !89, !90}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !78, file: !19, line: 105, baseType: !17, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !78, file: !19, line: 105, baseType: !26, size: 8, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !78, file: !19, line: 105, baseType: !26, size: 8, offset: 72)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !78, file: !19, line: 105, baseType: !31, size: 16, offset: 80)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !78, file: !19, line: 105, baseType: !26, size: 8, offset: 96)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !78, file: !19, line: 105, baseType: !12, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !78, file: !19, line: 106, baseType: !87, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !78, file: !19, line: 107, baseType: !72, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !78, file: !19, line: 108, baseType: !7, size: 32, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !78, file: !19, line: 109, baseType: !7, size: 32, offset: 352)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !18, file: !19, line: 375, baseType: !92, size: 192)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !19, line: 118, size: 192, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !92, file: !19, line: 119, baseType: !17, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !92, file: !19, line: 119, baseType: !26, size: 8, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !92, file: !19, line: 119, baseType: !26, size: 8, offset: 72)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !92, file: !19, line: 119, baseType: !31, size: 16, offset: 80)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !92, file: !19, line: 119, baseType: !26, size: 8, offset: 96)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !92, file: !19, line: 119, baseType: !100, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !18, file: !19, line: 376, baseType: !102, size: 448)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !19, line: 144, size: 448, elements: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !415, !416, !417}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !102, file: !19, line: 145, baseType: !17, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !102, file: !19, line: 145, baseType: !26, size: 8, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !19, line: 145, baseType: !26, size: 8, offset: 72)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !102, file: !19, line: 145, baseType: !31, size: 16, offset: 80)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !19, line: 145, baseType: !26, size: 8, offset: 96)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !102, file: !19, line: 145, baseType: !26, size: 8, offset: 104)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !102, file: !19, line: 146, baseType: !26, size: 8, offset: 112)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !102, file: !19, line: 147, baseType: !26, size: 8, offset: 120)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !102, file: !19, line: 148, baseType: !17, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !102, file: !19, line: 149, baseType: !17, size: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !102, file: !19, line: 150, baseType: !72, size: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !102, file: !19, line: 154, baseType: !116, size: 64, offset: 320)
!116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !102, file: !19, line: 151, size: 64, elements: !117)
!117 = !{!118, !414}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !116, file: !19, line: 152, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !14, line: 248, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!5, !123}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !125, line: 37, size: 9024, elements: !126)
!125 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !360, !361, !362, !363, !364, !368, !370, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !397, !398, !399, !400, !401, !402, !403, !404, !406, !412}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !124, file: !125, line: 38, baseType: !123, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !124, file: !125, line: 39, baseType: !26, size: 8, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !124, file: !125, line: 40, baseType: !26, size: 8, offset: 72)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !124, file: !125, line: 41, baseType: !31, size: 16, offset: 80)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !124, file: !125, line: 42, baseType: !26, size: 8, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !124, file: !125, line: 43, baseType: !26, size: 8, offset: 104)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !124, file: !125, line: 44, baseType: !26, size: 8, offset: 112)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !124, file: !125, line: 45, baseType: !135, size: 16, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !31)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !124, file: !125, line: 46, baseType: !26, size: 8, offset: 144)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !124, file: !125, line: 47, baseType: !26, size: 8, offset: 152)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !124, file: !125, line: 48, baseType: !26, size: 8, offset: 160)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !124, file: !125, line: 49, baseType: !26, size: 8, offset: 168)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !124, file: !125, line: 50, baseType: !26, size: 8, offset: 176)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !124, file: !125, line: 51, baseType: !26, size: 8, offset: 184)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !124, file: !125, line: 52, baseType: !26, size: 8, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !124, file: !125, line: 53, baseType: !26, size: 8, offset: 200)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !124, file: !125, line: 54, baseType: !72, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !124, file: !125, line: 55, baseType: !7, size: 32, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !124, file: !125, line: 56, baseType: !7, size: 32, offset: 352)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !124, file: !125, line: 57, baseType: !7, size: 32, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !124, file: !125, line: 58, baseType: !7, size: 32, offset: 416)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !124, file: !125, line: 60, baseType: !150, size: 640, offset: 448)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !14, line: 909, size: 640, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !241, !242, !358, !359}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !150, file: !14, line: 910, baseType: !72, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !150, file: !14, line: 911, baseType: !72, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !150, file: !14, line: 912, baseType: !72, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !150, file: !14, line: 913, baseType: !72, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !150, file: !14, line: 914, baseType: !72, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !150, file: !14, line: 915, baseType: !158, size: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !14, line: 891, size: 1600, elements: !160)
!160 = !{!161, !181, !197}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !159, file: !14, line: 892, baseType: !162, size: 448)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !14, line: 844, size: 448, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !180}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !162, file: !14, line: 845, baseType: !158, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !162, file: !14, line: 845, baseType: !26, size: 8, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !162, file: !14, line: 845, baseType: !26, size: 8, offset: 72)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !162, file: !14, line: 845, baseType: !31, size: 16, offset: 80)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !162, file: !14, line: 845, baseType: !72, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !162, file: !14, line: 845, baseType: !158, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !162, file: !14, line: 845, baseType: !12, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !162, file: !14, line: 845, baseType: !172, size: 64, offset: 320)
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !14, line: 732, size: 64, elements: !173)
!173 = !{!174, !175, !176, !177, !178, !179}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !172, file: !14, line: 733, baseType: !48, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !172, file: !14, line: 734, baseType: !7, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !172, file: !14, line: 735, baseType: !60, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !172, file: !14, line: 736, baseType: !72, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !172, file: !14, line: 737, baseType: !60, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !172, file: !14, line: 738, baseType: !158, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !162, file: !14, line: 845, baseType: !26, size: 8, offset: 384)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !159, file: !14, line: 893, baseType: !182, size: 640)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !14, line: 851, size: 640, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !182, file: !14, line: 852, baseType: !158, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !182, file: !14, line: 852, baseType: !26, size: 8, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !182, file: !14, line: 852, baseType: !26, size: 8, offset: 72)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !182, file: !14, line: 852, baseType: !31, size: 16, offset: 80)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !182, file: !14, line: 852, baseType: !72, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !14, line: 852, baseType: !158, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !182, file: !14, line: 852, baseType: !12, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !182, file: !14, line: 852, baseType: !172, size: 64, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !182, file: !14, line: 852, baseType: !26, size: 8, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !182, file: !14, line: 852, baseType: !60, size: 64, offset: 448)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !182, file: !14, line: 853, baseType: !72, size: 64, offset: 512)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !182, file: !14, line: 854, baseType: !7, size: 32, offset: 576)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !14, line: 855, baseType: !7, size: 32, offset: 608)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !159, file: !14, line: 894, baseType: !198, size: 1600)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !14, line: 862, size: 1600, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !198, file: !14, line: 863, baseType: !158, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !198, file: !14, line: 863, baseType: !26, size: 8, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !14, line: 863, baseType: !26, size: 8, offset: 72)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !198, file: !14, line: 863, baseType: !31, size: 16, offset: 80)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !198, file: !14, line: 863, baseType: !72, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !14, line: 863, baseType: !158, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !198, file: !14, line: 863, baseType: !12, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !198, file: !14, line: 863, baseType: !172, size: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !198, file: !14, line: 863, baseType: !26, size: 8, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !198, file: !14, line: 863, baseType: !158, size: 64, offset: 448)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !198, file: !14, line: 864, baseType: !158, size: 64, offset: 512)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !198, file: !14, line: 865, baseType: !60, size: 64, offset: 576)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !198, file: !14, line: 866, baseType: !26, size: 8, offset: 640)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !198, file: !14, line: 867, baseType: !60, size: 64, offset: 704)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !198, file: !14, line: 868, baseType: !60, size: 64, offset: 768)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !198, file: !14, line: 869, baseType: !60, size: 64, offset: 832)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !198, file: !14, line: 870, baseType: !217, size: 32, offset: 896)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 32, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 4)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !198, file: !14, line: 871, baseType: !7, size: 32, offset: 928)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !198, file: !14, line: 872, baseType: !7, size: 32, offset: 960)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !198, file: !14, line: 873, baseType: !7, size: 32, offset: 992)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !198, file: !14, line: 874, baseType: !7, size: 32, offset: 1024)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !198, file: !14, line: 875, baseType: !7, size: 32, offset: 1056)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !198, file: !14, line: 876, baseType: !7, size: 32, offset: 1088)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !198, file: !14, line: 877, baseType: !7, size: 32, offset: 1120)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !198, file: !14, line: 878, baseType: !7, size: 32, offset: 1152)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !198, file: !14, line: 879, baseType: !7, size: 32, offset: 1184)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !198, file: !14, line: 880, baseType: !7, size: 32, offset: 1216)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !198, file: !14, line: 881, baseType: !7, size: 32, offset: 1248)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !198, file: !14, line: 882, baseType: !7, size: 32, offset: 1280)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !198, file: !14, line: 883, baseType: !7, size: 32, offset: 1312)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !198, file: !14, line: 884, baseType: !31, size: 16, offset: 1344)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !198, file: !14, line: 885, baseType: !26, size: 8, offset: 1360)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !198, file: !14, line: 886, baseType: !26, size: 8, offset: 1368)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !198, file: !14, line: 887, baseType: !26, size: 8, offset: 1376)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !198, file: !14, line: 888, baseType: !238, size: 160, offset: 1384)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 160, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 20)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !150, file: !14, line: 916, baseType: !12, size: 64, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !150, file: !14, line: 917, baseType: !243, size: 64, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !14, line: 679, size: 640, elements: !245)
!245 = !{!246, !254, !267, !276, !285, !298, !312, !324, !336}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !244, file: !14, line: 680, baseType: !247, size: 128)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !14, line: 575, size: 128, elements: !248)
!248 = !{!249, !250, !251, !252, !253}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !247, file: !14, line: 576, baseType: !100, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !247, file: !14, line: 576, baseType: !26, size: 8, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !247, file: !14, line: 576, baseType: !26, size: 8, offset: 72)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !247, file: !14, line: 576, baseType: !31, size: 16, offset: 80)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !247, file: !14, line: 576, baseType: !31, size: 16, offset: 96)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !244, file: !14, line: 681, baseType: !255, size: 384)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !14, line: 604, size: 384, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265, !266}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !255, file: !14, line: 605, baseType: !100, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !255, file: !14, line: 605, baseType: !26, size: 8, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !255, file: !14, line: 605, baseType: !26, size: 8, offset: 72)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !255, file: !14, line: 605, baseType: !31, size: 16, offset: 80)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !255, file: !14, line: 605, baseType: !31, size: 16, offset: 96)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !255, file: !14, line: 606, baseType: !31, size: 16, offset: 112)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !255, file: !14, line: 607, baseType: !158, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !255, file: !14, line: 608, baseType: !72, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !255, file: !14, line: 609, baseType: !72, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !255, file: !14, line: 610, baseType: !48, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !244, file: !14, line: 682, baseType: !268, size: 192)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !14, line: 582, size: 192, elements: !269)
!269 = !{!270, !271, !272, !273, !274, !275}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !14, line: 583, baseType: !100, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !268, file: !14, line: 583, baseType: !26, size: 8, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !268, file: !14, line: 583, baseType: !26, size: 8, offset: 72)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !268, file: !14, line: 583, baseType: !31, size: 16, offset: 80)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !268, file: !14, line: 583, baseType: !31, size: 16, offset: 96)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !268, file: !14, line: 584, baseType: !17, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !244, file: !14, line: 683, baseType: !277, size: 192)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !14, line: 616, size: 192, elements: !278)
!278 = !{!279, !280, !281, !282, !283, !284}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !277, file: !14, line: 617, baseType: !100, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !277, file: !14, line: 617, baseType: !26, size: 8, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !277, file: !14, line: 617, baseType: !26, size: 8, offset: 72)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !277, file: !14, line: 617, baseType: !31, size: 16, offset: 80)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !277, file: !14, line: 617, baseType: !31, size: 16, offset: 96)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !277, file: !14, line: 618, baseType: !12, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !244, file: !14, line: 684, baseType: !286, size: 448)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !14, line: 621, size: 448, elements: !287)
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !297}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !286, file: !14, line: 622, baseType: !100, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !286, file: !14, line: 622, baseType: !26, size: 8, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !286, file: !14, line: 622, baseType: !26, size: 8, offset: 72)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !286, file: !14, line: 622, baseType: !31, size: 16, offset: 80)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !286, file: !14, line: 622, baseType: !31, size: 16, offset: 96)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !286, file: !14, line: 623, baseType: !7, size: 32, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !286, file: !14, line: 624, baseType: !158, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !286, file: !14, line: 625, baseType: !72, size: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !286, file: !14, line: 626, baseType: !72, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !286, file: !14, line: 627, baseType: !7, size: 32, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !244, file: !14, line: 685, baseType: !299, size: 512)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !14, line: 590, size: 512, elements: !300)
!300 = !{!301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !299, file: !14, line: 591, baseType: !100, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !299, file: !14, line: 591, baseType: !26, size: 8, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !299, file: !14, line: 591, baseType: !26, size: 8, offset: 72)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !299, file: !14, line: 591, baseType: !31, size: 16, offset: 80)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !299, file: !14, line: 591, baseType: !31, size: 16, offset: 96)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !299, file: !14, line: 592, baseType: !7, size: 32, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !299, file: !14, line: 593, baseType: !17, size: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !299, file: !14, line: 594, baseType: !17, size: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !299, file: !14, line: 595, baseType: !123, size: 64, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !299, file: !14, line: 596, baseType: !100, size: 64, offset: 384)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !299, file: !14, line: 597, baseType: !7, size: 32, offset: 448)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !244, file: !14, line: 686, baseType: !313, size: 320)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !14, line: 634, size: 320, elements: !314)
!314 = !{!315, !316, !317, !318, !319, !320, !321, !322, !323}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !313, file: !14, line: 635, baseType: !100, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !313, file: !14, line: 635, baseType: !26, size: 8, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !313, file: !14, line: 635, baseType: !26, size: 8, offset: 72)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !313, file: !14, line: 635, baseType: !31, size: 16, offset: 80)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !313, file: !14, line: 635, baseType: !31, size: 16, offset: 96)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !313, file: !14, line: 636, baseType: !26, size: 8, offset: 112)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !313, file: !14, line: 637, baseType: !123, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !313, file: !14, line: 638, baseType: !17, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !313, file: !14, line: 639, baseType: !48, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !244, file: !14, line: 687, baseType: !325, size: 640)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !14, line: 646, size: 640, elements: !326)
!326 = !{!327, !328, !329, !330, !331, !332}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !325, file: !14, line: 647, baseType: !100, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !325, file: !14, line: 647, baseType: !26, size: 8, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !325, file: !14, line: 647, baseType: !26, size: 8, offset: 72)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !325, file: !14, line: 647, baseType: !31, size: 16, offset: 80)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !325, file: !14, line: 647, baseType: !31, size: 16, offset: 96)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !325, file: !14, line: 648, baseType: !333, size: 512, offset: 128)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 512, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 8)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !244, file: !14, line: 688, baseType: !337, size: 320)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !14, line: 669, size: 320, elements: !338)
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346, !347}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !337, file: !14, line: 670, baseType: !100, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !337, file: !14, line: 670, baseType: !26, size: 8, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !337, file: !14, line: 670, baseType: !26, size: 8, offset: 72)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !337, file: !14, line: 670, baseType: !31, size: 16, offset: 80)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !337, file: !14, line: 670, baseType: !31, size: 16, offset: 96)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !337, file: !14, line: 671, baseType: !26, size: 8, offset: 112)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !337, file: !14, line: 672, baseType: !12, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !337, file: !14, line: 673, baseType: !17, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !337, file: !14, line: 674, baseType: !348, size: 64, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !14, line: 660, size: 128, elements: !350)
!350 = !{!351, !357}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !349, file: !14, line: 661, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !6, line: 1061, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !356, !7, !100}
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6, line: 424, baseType: !100)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !349, file: !14, line: 662, baseType: !100, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !150, file: !14, line: 918, baseType: !158, size: 64, offset: 512)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !150, file: !14, line: 919, baseType: !7, size: 32, offset: 576)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !124, file: !125, line: 61, baseType: !7, size: 32, offset: 1088)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !124, file: !125, line: 62, baseType: !7, size: 32, offset: 1120)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !124, file: !125, line: 63, baseType: !31, size: 16, offset: 1152)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !124, file: !125, line: 64, baseType: !26, size: 8, offset: 1168)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !124, file: !125, line: 66, baseType: !365, size: 2688, offset: 1216)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2688, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 7)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !124, file: !125, line: 67, baseType: !369, size: 3072, offset: 3904)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 3072, elements: !334)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !124, file: !125, line: 68, baseType: !371, size: 576, offset: 6976)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 576, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 9)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !124, file: !125, line: 69, baseType: !87, size: 64, offset: 7552)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !124, file: !125, line: 71, baseType: !72, size: 64, offset: 7616)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !124, file: !125, line: 72, baseType: !87, size: 64, offset: 7680)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !124, file: !125, line: 73, baseType: !243, size: 64, offset: 7744)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !124, file: !125, line: 74, baseType: !12, size: 64, offset: 7808)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !124, file: !125, line: 75, baseType: !17, size: 64, offset: 7872)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !124, file: !125, line: 76, baseType: !12, size: 64, offset: 7936)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !124, file: !125, line: 77, baseType: !158, size: 64, offset: 8000)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !124, file: !125, line: 78, baseType: !17, size: 64, offset: 8064)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !124, file: !125, line: 79, baseType: !12, size: 64, offset: 8128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !124, file: !125, line: 80, baseType: !60, size: 64, offset: 8192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !124, file: !125, line: 81, baseType: !158, size: 64, offset: 8256)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !124, file: !125, line: 82, baseType: !387, size: 64, offset: 8320)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !14, line: 718, size: 128, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !389, file: !14, line: 722, baseType: !7, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !389, file: !14, line: 723, baseType: !7, size: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !389, file: !14, line: 724, baseType: !31, size: 16, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !389, file: !14, line: 725, baseType: !26, size: 8, offset: 80)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !389, file: !14, line: 726, baseType: !26, size: 8, offset: 88)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !389, file: !14, line: 727, baseType: !26, size: 8, offset: 96)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !124, file: !125, line: 83, baseType: !158, size: 64, offset: 8384)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !124, file: !125, line: 84, baseType: !17, size: 64, offset: 8448)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !124, file: !125, line: 85, baseType: !243, size: 64, offset: 8512)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !124, file: !125, line: 86, baseType: !17, size: 64, offset: 8576)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !124, file: !125, line: 87, baseType: !243, size: 64, offset: 8640)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !124, file: !125, line: 88, baseType: !158, size: 64, offset: 8704)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !124, file: !125, line: 89, baseType: !158, size: 64, offset: 8768)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !124, file: !125, line: 90, baseType: !405, size: 64, offset: 8832)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !124, file: !125, line: 91, baseType: !407, size: 64, offset: 8896)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !14, line: 652, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!5, !123, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !124, file: !125, line: 92, baseType: !413, size: 64, offset: 8960)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !14, line: 656, baseType: !120)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !116, file: !19, line: 153, baseType: !17, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !102, file: !19, line: 156, baseType: !7, size: 32, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !102, file: !19, line: 157, baseType: !135, size: 16, offset: 416)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !102, file: !19, line: 158, baseType: !26, size: 8, offset: 432)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !18, file: !19, line: 377, baseType: !419, size: 576)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !19, line: 122, size: 576, elements: !420)
!420 = !{!421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !419, file: !19, line: 123, baseType: !17, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !419, file: !19, line: 123, baseType: !26, size: 8, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !419, file: !19, line: 123, baseType: !26, size: 8, offset: 72)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !419, file: !19, line: 123, baseType: !31, size: 16, offset: 80)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !419, file: !19, line: 123, baseType: !26, size: 8, offset: 96)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !419, file: !19, line: 123, baseType: !26, size: 8, offset: 104)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !419, file: !19, line: 124, baseType: !31, size: 16, offset: 112)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !419, file: !19, line: 125, baseType: !100, size: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !419, file: !19, line: 126, baseType: !48, size: 64, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !419, file: !19, line: 127, baseType: !405, size: 64, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !419, file: !19, line: 128, baseType: !17, size: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !419, file: !19, line: 129, baseType: !17, size: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !419, file: !19, line: 130, baseType: !12, size: 64, offset: 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !419, file: !19, line: 131, baseType: !26, size: 8, offset: 512)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !18, file: !19, line: 378, baseType: !436, size: 512)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !19, line: 134, size: 512, elements: !437)
!437 = !{!438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !449, !450}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !436, file: !19, line: 135, baseType: !17, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !436, file: !19, line: 135, baseType: !26, size: 8, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !436, file: !19, line: 135, baseType: !26, size: 8, offset: 72)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !436, file: !19, line: 135, baseType: !31, size: 16, offset: 80)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !436, file: !19, line: 135, baseType: !26, size: 8, offset: 96)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !436, file: !19, line: 135, baseType: !26, size: 8, offset: 104)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !436, file: !19, line: 136, baseType: !12, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !436, file: !19, line: 137, baseType: !17, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !436, file: !19, line: 138, baseType: !17, size: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !436, file: !19, line: 139, baseType: !448, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !48)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !436, file: !19, line: 140, baseType: !7, size: 32, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !436, file: !19, line: 141, baseType: !100, size: 64, offset: 448)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !18, file: !19, line: 379, baseType: !452, size: 320)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !19, line: 185, size: 320, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !463}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !452, file: !19, line: 186, baseType: !17, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !452, file: !19, line: 186, baseType: !26, size: 8, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !19, line: 186, baseType: !26, size: 8, offset: 72)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !452, file: !19, line: 186, baseType: !31, size: 16, offset: 80)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !19, line: 186, baseType: !26, size: 8, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !452, file: !19, line: 186, baseType: !460, size: 128, offset: 128)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 2)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !452, file: !19, line: 186, baseType: !17, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !18, file: !19, line: 380, baseType: !465, size: 384)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !19, line: 188, size: 384, elements: !466)
!466 = !{!467, !468, !469, !470, !471, !472, !473, !474}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !465, file: !19, line: 189, baseType: !17, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !465, file: !19, line: 189, baseType: !26, size: 8, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !465, file: !19, line: 189, baseType: !26, size: 8, offset: 72)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !465, file: !19, line: 189, baseType: !31, size: 16, offset: 80)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !465, file: !19, line: 189, baseType: !26, size: 8, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !465, file: !19, line: 190, baseType: !460, size: 128, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !465, file: !19, line: 190, baseType: !17, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !465, file: !19, line: 190, baseType: !475, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !14, line: 480, size: 576, elements: !477)
!477 = !{!478, !479, !480, !481, !489, !504, !536, !537, !538, !539, !540, !541}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !476, file: !14, line: 481, baseType: !12, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !476, file: !14, line: 482, baseType: !475, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !476, file: !14, line: 483, baseType: !475, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !476, file: !14, line: 484, baseType: !482, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !14, line: 497, size: 256, elements: !484)
!484 = !{!485, !486, !487, !488}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !483, file: !14, line: 498, baseType: !482, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !483, file: !14, line: 499, baseType: !482, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !483, file: !14, line: 500, baseType: !475, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !483, file: !14, line: 501, baseType: !7, size: 32, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !476, file: !14, line: 485, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !14, line: 466, size: 320, elements: !492)
!492 = !{!493, !498, !499, !500, !501, !502, !503}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !491, file: !14, line: 467, baseType: !494, size: 128)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !14, line: 459, size: 128, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !494, file: !14, line: 460, baseType: !26, size: 8)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !494, file: !14, line: 461, baseType: !48, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !491, file: !14, line: 468, baseType: !494, size: 128, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !491, file: !14, line: 469, baseType: !31, size: 16, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !491, file: !14, line: 470, baseType: !26, size: 8, offset: 272)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !491, file: !14, line: 471, baseType: !26, size: 8, offset: 280)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !491, file: !14, line: 472, baseType: !26, size: 8, offset: 288)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !491, file: !14, line: 473, baseType: !26, size: 8, offset: 296)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !476, file: !14, line: 486, baseType: !505, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !14, line: 448, size: 192, elements: !507)
!507 = !{!508, !531, !532, !533, !534, !535}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !506, file: !14, line: 449, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !14, line: 438, size: 64, elements: !510)
!510 = !{!511, !512, !525}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !509, file: !14, line: 439, baseType: !12, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !509, file: !14, line: 440, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !14, line: 419, size: 256, elements: !515)
!515 = !{!516, !521, !522, !523, !524}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !514, file: !14, line: 420, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !6, line: 1058, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!7, !356, !7, !100}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !514, file: !14, line: 421, baseType: !100, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !514, file: !14, line: 422, baseType: !12, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !514, file: !14, line: 423, baseType: !26, size: 8, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !514, file: !14, line: 424, baseType: !26, size: 8, offset: 200)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !509, file: !14, line: 441, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !14, line: 429, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !527, file: !14, line: 430, baseType: !12, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !527, file: !14, line: 431, baseType: !526, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !506, file: !14, line: 450, baseType: !490, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !14, line: 451, baseType: !26, size: 8, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !506, file: !14, line: 452, baseType: !26, size: 8, offset: 136)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !506, file: !14, line: 453, baseType: !26, size: 8, offset: 144)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !506, file: !14, line: 454, baseType: !26, size: 8, offset: 152)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !476, file: !14, line: 487, baseType: !48, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !476, file: !14, line: 488, baseType: !7, size: 32, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !476, file: !14, line: 489, baseType: !31, size: 16, offset: 480)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !476, file: !14, line: 490, baseType: !31, size: 16, offset: 496)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !476, file: !14, line: 491, baseType: !26, size: 8, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !476, file: !14, line: 492, baseType: !26, size: 8, offset: 520)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !18, file: !19, line: 381, baseType: !543, size: 384)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !19, line: 193, size: 384, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !543, file: !19, line: 194, baseType: !17, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !543, file: !19, line: 194, baseType: !26, size: 8, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !543, file: !19, line: 194, baseType: !26, size: 8, offset: 72)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !543, file: !19, line: 194, baseType: !31, size: 16, offset: 80)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !19, line: 194, baseType: !26, size: 8, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !543, file: !19, line: 194, baseType: !460, size: 128, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !543, file: !19, line: 194, baseType: !17, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !543, file: !19, line: 194, baseType: !7, size: 32, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !543, file: !19, line: 195, baseType: !7, size: 32, offset: 352)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !18, file: !19, line: 382, baseType: !555, size: 384)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !19, line: 198, size: 384, elements: !556)
!556 = !{!557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !555, file: !19, line: 199, baseType: !17, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !555, file: !19, line: 199, baseType: !26, size: 8, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !555, file: !19, line: 199, baseType: !26, size: 8, offset: 72)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !555, file: !19, line: 199, baseType: !31, size: 16, offset: 80)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !555, file: !19, line: 199, baseType: !26, size: 8, offset: 96)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !555, file: !19, line: 201, baseType: !26, size: 8, offset: 104)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !555, file: !19, line: 202, baseType: !26, size: 8, offset: 112)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !555, file: !19, line: 203, baseType: !460, size: 128, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !555, file: !19, line: 203, baseType: !17, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !555, file: !19, line: 203, baseType: !567, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !48)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !18, file: !19, line: 383, baseType: !569, size: 320)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !19, line: 206, size: 320, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !569, file: !19, line: 207, baseType: !17, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !569, file: !19, line: 207, baseType: !26, size: 8, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !569, file: !19, line: 207, baseType: !26, size: 8, offset: 72)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !569, file: !19, line: 207, baseType: !31, size: 16, offset: 80)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !19, line: 207, baseType: !26, size: 8, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !569, file: !19, line: 207, baseType: !460, size: 128, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !569, file: !19, line: 207, baseType: !17, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !18, file: !19, line: 384, baseType: !579, size: 384)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !19, line: 234, size: 384, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !579, file: !19, line: 235, baseType: !17, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !579, file: !19, line: 235, baseType: !26, size: 8, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !579, file: !19, line: 235, baseType: !26, size: 8, offset: 72)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !579, file: !19, line: 235, baseType: !31, size: 16, offset: 80)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !19, line: 235, baseType: !26, size: 8, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !579, file: !19, line: 235, baseType: !26, size: 8, offset: 104)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !579, file: !19, line: 235, baseType: !26, size: 8, offset: 112)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !579, file: !19, line: 235, baseType: !26, size: 8, offset: 120)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !579, file: !19, line: 235, baseType: !12, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !579, file: !19, line: 235, baseType: !7, size: 32, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !579, file: !19, line: 235, baseType: !7, size: 32, offset: 224)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !579, file: !19, line: 235, baseType: !7, size: 32, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !579, file: !19, line: 235, baseType: !26, size: 8, offset: 288)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !579, file: !19, line: 235, baseType: !26, size: 8, offset: 296)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !579, file: !19, line: 235, baseType: !17, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !18, file: !19, line: 385, baseType: !597, size: 576)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !19, line: 238, size: 576, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !597, file: !19, line: 239, baseType: !17, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !597, file: !19, line: 239, baseType: !26, size: 8, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !19, line: 239, baseType: !26, size: 8, offset: 72)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !597, file: !19, line: 239, baseType: !31, size: 16, offset: 80)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !19, line: 239, baseType: !26, size: 8, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !597, file: !19, line: 239, baseType: !26, size: 8, offset: 104)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !597, file: !19, line: 239, baseType: !26, size: 8, offset: 112)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !597, file: !19, line: 239, baseType: !26, size: 8, offset: 120)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !597, file: !19, line: 239, baseType: !12, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !597, file: !19, line: 239, baseType: !7, size: 32, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !597, file: !19, line: 239, baseType: !7, size: 32, offset: 224)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !597, file: !19, line: 239, baseType: !7, size: 32, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !597, file: !19, line: 239, baseType: !26, size: 8, offset: 288)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !597, file: !19, line: 239, baseType: !26, size: 8, offset: 296)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !597, file: !19, line: 239, baseType: !31, size: 16, offset: 304)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !597, file: !19, line: 240, baseType: !17, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !597, file: !19, line: 241, baseType: !72, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !597, file: !19, line: 242, baseType: !31, size: 16, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !597, file: !19, line: 243, baseType: !72, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !18, file: !19, line: 386, baseType: !619, size: 384)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !19, line: 263, size: 384, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !619, file: !19, line: 264, baseType: !17, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !619, file: !19, line: 264, baseType: !26, size: 8, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !19, line: 264, baseType: !26, size: 8, offset: 72)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !619, file: !19, line: 264, baseType: !31, size: 16, offset: 80)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !19, line: 264, baseType: !26, size: 8, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !619, file: !19, line: 264, baseType: !26, size: 8, offset: 104)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !619, file: !19, line: 264, baseType: !26, size: 8, offset: 112)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !619, file: !19, line: 264, baseType: !26, size: 8, offset: 120)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !619, file: !19, line: 264, baseType: !12, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !619, file: !19, line: 264, baseType: !7, size: 32, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !619, file: !19, line: 264, baseType: !7, size: 32, offset: 224)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !619, file: !19, line: 264, baseType: !7, size: 32, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !619, file: !19, line: 264, baseType: !26, size: 8, offset: 288)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !619, file: !19, line: 264, baseType: !26, size: 8, offset: 296)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !619, file: !19, line: 264, baseType: !26, size: 8, offset: 304)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !619, file: !19, line: 265, baseType: !17, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !18, file: !19, line: 387, baseType: !638, size: 448)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !19, line: 246, size: 448, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !638, file: !19, line: 247, baseType: !17, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !638, file: !19, line: 247, baseType: !26, size: 8, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !19, line: 247, baseType: !26, size: 8, offset: 72)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !638, file: !19, line: 247, baseType: !31, size: 16, offset: 80)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !19, line: 247, baseType: !26, size: 8, offset: 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !638, file: !19, line: 247, baseType: !26, size: 8, offset: 104)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !638, file: !19, line: 247, baseType: !26, size: 8, offset: 112)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !638, file: !19, line: 247, baseType: !26, size: 8, offset: 120)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !638, file: !19, line: 247, baseType: !12, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !638, file: !19, line: 247, baseType: !7, size: 32, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !638, file: !19, line: 247, baseType: !7, size: 32, offset: 224)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !638, file: !19, line: 247, baseType: !7, size: 32, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !638, file: !19, line: 247, baseType: !26, size: 8, offset: 288)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !638, file: !19, line: 247, baseType: !26, size: 8, offset: 296)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !638, file: !19, line: 247, baseType: !17, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !638, file: !19, line: 248, baseType: !17, size: 64, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !18, file: !19, line: 388, baseType: !657, size: 448)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !19, line: 251, size: 448, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !657, file: !19, line: 252, baseType: !17, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !657, file: !19, line: 252, baseType: !26, size: 8, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !657, file: !19, line: 252, baseType: !26, size: 8, offset: 72)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !657, file: !19, line: 252, baseType: !31, size: 16, offset: 80)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !19, line: 252, baseType: !26, size: 8, offset: 96)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !657, file: !19, line: 252, baseType: !26, size: 8, offset: 104)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !657, file: !19, line: 252, baseType: !26, size: 8, offset: 112)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !657, file: !19, line: 252, baseType: !26, size: 8, offset: 120)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !657, file: !19, line: 252, baseType: !12, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !657, file: !19, line: 252, baseType: !7, size: 32, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !657, file: !19, line: 252, baseType: !7, size: 32, offset: 224)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !657, file: !19, line: 252, baseType: !7, size: 32, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !657, file: !19, line: 252, baseType: !26, size: 8, offset: 288)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !657, file: !19, line: 252, baseType: !26, size: 8, offset: 296)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !657, file: !19, line: 257, baseType: !17, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !657, file: !19, line: 258, baseType: !17, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !18, file: !19, line: 389, baseType: !676, size: 512)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !19, line: 274, size: 512, elements: !677)
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !676, file: !19, line: 275, baseType: !17, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !676, file: !19, line: 275, baseType: !26, size: 8, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !676, file: !19, line: 275, baseType: !26, size: 8, offset: 72)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !676, file: !19, line: 275, baseType: !31, size: 16, offset: 80)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !19, line: 275, baseType: !26, size: 8, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !676, file: !19, line: 275, baseType: !12, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !676, file: !19, line: 276, baseType: !7, size: 32, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !676, file: !19, line: 277, baseType: !352, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !676, file: !19, line: 278, baseType: !100, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !676, file: !19, line: 279, baseType: !460, size: 128, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !18, file: !19, line: 390, baseType: !689, size: 576)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !19, line: 282, size: 576, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !704, !705, !706, !707, !713, !714}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !689, file: !19, line: 283, baseType: !17, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !689, file: !19, line: 283, baseType: !26, size: 8, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !689, file: !19, line: 283, baseType: !26, size: 8, offset: 72)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !689, file: !19, line: 283, baseType: !31, size: 16, offset: 80)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !19, line: 283, baseType: !26, size: 8, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !689, file: !19, line: 283, baseType: !26, size: 8, offset: 104)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !689, file: !19, line: 284, baseType: !26, size: 8, offset: 112)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !689, file: !19, line: 285, baseType: !699, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !6, line: 1093, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!5, !7, !448, !7, !703, !100, !100}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !689, file: !19, line: 286, baseType: !12, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !689, file: !19, line: 287, baseType: !100, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !689, file: !19, line: 288, baseType: !100, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !689, file: !19, line: 289, baseType: !708, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !6, line: 1126, baseType: !709)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!5, !356, !7, !100, !712}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !689, file: !19, line: 290, baseType: !17, size: 64, offset: 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !689, file: !19, line: 291, baseType: !17, size: 64, offset: 512)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !18, file: !19, line: 391, baseType: !716, size: 512)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !19, line: 309, size: 512, elements: !717)
!717 = !{!718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !716, file: !19, line: 310, baseType: !17, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !716, file: !19, line: 310, baseType: !26, size: 8, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !716, file: !19, line: 310, baseType: !26, size: 8, offset: 72)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !716, file: !19, line: 310, baseType: !31, size: 16, offset: 80)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !716, file: !19, line: 310, baseType: !26, size: 8, offset: 96)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !716, file: !19, line: 310, baseType: !26, size: 8, offset: 104)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !716, file: !19, line: 311, baseType: !26, size: 8, offset: 112)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !716, file: !19, line: 312, baseType: !26, size: 8, offset: 120)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !716, file: !19, line: 313, baseType: !100, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !716, file: !19, line: 314, baseType: !12, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !716, file: !19, line: 315, baseType: !87, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !716, file: !19, line: 316, baseType: !72, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !716, file: !19, line: 317, baseType: !72, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !716, file: !19, line: 318, baseType: !7, size: 32, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !18, file: !19, line: 392, baseType: !733, size: 448)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !19, line: 342, size: 448, elements: !734)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !743, !744}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !733, file: !19, line: 343, baseType: !17, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !733, file: !19, line: 343, baseType: !26, size: 8, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !733, file: !19, line: 343, baseType: !26, size: 8, offset: 72)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !733, file: !19, line: 343, baseType: !31, size: 16, offset: 80)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !733, file: !19, line: 343, baseType: !26, size: 8, offset: 96)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !733, file: !19, line: 343, baseType: !12, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !733, file: !19, line: 344, baseType: !12, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !733, file: !19, line: 345, baseType: !100, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !733, file: !19, line: 346, baseType: !72, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !733, file: !19, line: 347, baseType: !7, size: 32, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !18, file: !19, line: 393, baseType: !746, size: 256)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !19, line: 352, size: 256, elements: !747)
!747 = !{!748, !749, !750, !751, !752, !753, !758}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !746, file: !19, line: 353, baseType: !17, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !746, file: !19, line: 353, baseType: !26, size: 8, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !746, file: !19, line: 353, baseType: !26, size: 8, offset: 72)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !746, file: !19, line: 353, baseType: !31, size: 16, offset: 80)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !746, file: !19, line: 353, baseType: !26, size: 8, offset: 96)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !746, file: !19, line: 353, baseType: !754, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !6, line: 1064, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !356, !100}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !746, file: !19, line: 354, baseType: !100, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !18, file: !19, line: 394, baseType: !760, size: 192)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !19, line: 359, size: 192, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !760, file: !19, line: 360, baseType: !17, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !760, file: !19, line: 360, baseType: !26, size: 8, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !760, file: !19, line: 360, baseType: !26, size: 8, offset: 72)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !760, file: !19, line: 360, baseType: !31, size: 16, offset: 80)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !19, line: 360, baseType: !26, size: 8, offset: 96)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !760, file: !19, line: 360, baseType: !17, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !18, file: !19, line: 401, baseType: !13, size: 384)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !13, file: !14, line: 135, baseType: !26, size: 8, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !14, line: 136, baseType: !26, size: 8, offset: 72)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !13, file: !14, line: 137, baseType: !31, size: 16, offset: 80)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !13, file: !14, line: 138, baseType: !773, size: 32, offset: 96)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !774, line: 328, size: 32, elements: !775)
!774 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !773, file: !774, line: 329, baseType: !7, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !773, file: !774, line: 330, baseType: !217, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !13, file: !14, line: 139, baseType: !12, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !13, file: !14, line: 140, baseType: !12, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !13, file: !14, line: 141, baseType: !12, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !13, file: !14, line: 142, baseType: !135, size: 16, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !783, line: 42, baseType: !784)
!783 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!784 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!786 = !{!787, !792, !797, !0}
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !789, isLocal: true, isDefinition: true)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 304, elements: !790)
!790 = !{!791}
!791 = !DISubrange(count: 38)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(scope: null, file: !3, line: 166, type: !794, isLocal: true, isDefinition: true)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 560, elements: !795)
!795 = !{!796}
!796 = !DISubrange(count: 70)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(scope: null, file: !3, line: 183, type: !789, isLocal: true, isDefinition: true)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 56, elements: !366)
!800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!801 = !{i32 7, !"Dwarf Version", i32 5}
!802 = !{i32 2, !"Debug Info Version", i32 3}
!803 = !{i32 1, !"wchar_size", i32 2}
!804 = !{i32 8, !"cf-protection-branch", i32 1}
!805 = !{i32 4, !"function_return_thunk_extern", i32 1}
!806 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!807 = !{i32 1, !"Code Model", i32 2}
!808 = !{i32 1, !"override-stack-alignment", i32 8}
!809 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!810 = distinct !DISubprogram(name: "acpi_ns_evaluate", scope: !3, file: !3, line: 42, type: !811, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !878)
!811 = !DISubroutineType(types: !812)
!812 = !{!5, !813}
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !125, line: 152, size: 704, elements: !815)
!815 = !{!816, !817, !819, !820, !821, !822, !823, !869, !870, !871, !872, !873, !874, !875, !876, !877}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !814, file: !125, line: 155, baseType: !12, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !814, file: !125, line: 156, baseType: !818, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !814, file: !125, line: 157, baseType: !87, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !814, file: !125, line: 159, baseType: !12, size: 64, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !814, file: !125, line: 160, baseType: !17, size: 64, offset: 256)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !814, file: !125, line: 161, baseType: !60, size: 64, offset: 320)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !814, file: !125, line: 163, baseType: !824, size: 64, offset: 384)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !14, line: 351, size: 56, elements: !827)
!827 = !{!828, !834, !843, !851, !860}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !826, file: !14, line: 352, baseType: !829, size: 56)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !14, line: 295, size: 56, elements: !830)
!830 = !{!831, !832, !833}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !829, file: !14, line: 296, baseType: !217, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !829, file: !14, line: 297, baseType: !31, size: 16, offset: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !829, file: !14, line: 298, baseType: !26, size: 8, offset: 48)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !826, file: !14, line: 353, baseType: !835, size: 56)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !14, line: 314, size: 56, elements: !836)
!836 = !{!837, !838, !839, !840, !841, !842}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !835, file: !14, line: 315, baseType: !26, size: 8)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !835, file: !14, line: 316, baseType: !26, size: 8, offset: 8)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !835, file: !14, line: 317, baseType: !26, size: 8, offset: 16)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !835, file: !14, line: 318, baseType: !26, size: 8, offset: 24)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !835, file: !14, line: 319, baseType: !26, size: 8, offset: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !835, file: !14, line: 320, baseType: !31, size: 16, offset: 40)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !826, file: !14, line: 354, baseType: !844, size: 56)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !14, line: 325, size: 56, elements: !845)
!845 = !{!846, !847, !848, !850}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !844, file: !14, line: 326, baseType: !26, size: 8)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !844, file: !14, line: 327, baseType: !26, size: 8, offset: 8)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !844, file: !14, line: 328, baseType: !849, size: 32, offset: 16)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !218)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !844, file: !14, line: 329, baseType: !26, size: 8, offset: 48)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !826, file: !14, line: 355, baseType: !852, size: 56)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !14, line: 334, size: 56, elements: !853)
!853 = !{!854, !855, !856, !858, !859}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !852, file: !14, line: 335, baseType: !26, size: 8)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !852, file: !14, line: 336, baseType: !26, size: 8, offset: 8)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !852, file: !14, line: 337, baseType: !857, size: 16, offset: 16)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 16, elements: !461)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !852, file: !14, line: 338, baseType: !26, size: 8, offset: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !852, file: !14, line: 339, baseType: !31, size: 16, offset: 40)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !826, file: !14, line: 356, baseType: !861, size: 56)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !14, line: 342, size: 56, elements: !862)
!862 = !{!863, !864, !865, !866, !867, !868}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !861, file: !14, line: 343, baseType: !26, size: 8)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !861, file: !14, line: 344, baseType: !26, size: 8, offset: 8)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !861, file: !14, line: 345, baseType: !26, size: 8, offset: 16)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !861, file: !14, line: 346, baseType: !26, size: 8, offset: 24)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !861, file: !14, line: 347, baseType: !26, size: 8, offset: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !861, file: !14, line: 348, baseType: !31, size: 16, offset: 40)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !814, file: !125, line: 164, baseType: !17, size: 64, offset: 448)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !814, file: !125, line: 165, baseType: !17, size: 64, offset: 512)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !814, file: !125, line: 167, baseType: !7, size: 32, offset: 576)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !814, file: !125, line: 168, baseType: !7, size: 32, offset: 608)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !814, file: !125, line: 169, baseType: !31, size: 16, offset: 640)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !814, file: !125, line: 170, baseType: !31, size: 16, offset: 656)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !814, file: !125, line: 171, baseType: !26, size: 8, offset: 672)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !814, file: !125, line: 172, baseType: !26, size: 8, offset: 680)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !814, file: !125, line: 173, baseType: !26, size: 8, offset: 688)
!878 = !{!879, !880, !881}
!879 = !DILocalVariable(name: "info", arg: 1, scope: !810, file: !3, line: 42, type: !813)
!880 = !DILocalVariable(name: "status", scope: !810, file: !3, line: 44, type: !5)
!881 = !DILabel(scope: !810, name: "cleanup", file: !3, line: 292)
!882 = !DILocation(line: 42, column: 57, scope: !810)
!883 = !DILocation(line: 44, column: 2, scope: !810)
!884 = !DILocation(line: 44, column: 14, scope: !810)
!885 = !DILocation(line: 48, column: 7, scope: !886)
!886 = distinct !DILexicalBlock(scope: !810, file: !3, line: 48, column: 6)
!887 = !DILocation(line: 48, column: 6, scope: !810)
!888 = !DILocation(line: 49, column: 3, scope: !889)
!889 = distinct !DILexicalBlock(scope: !886, file: !3, line: 48, column: 13)
!890 = !DILocation(line: 52, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !810, file: !3, line: 52, column: 6)
!892 = !DILocation(line: 52, column: 13, scope: !891)
!893 = !DILocation(line: 52, column: 6, scope: !810)
!894 = !DILocation(line: 62, column: 24, scope: !895)
!895 = distinct !DILexicalBlock(scope: !891, file: !3, line: 52, column: 19)
!896 = !DILocation(line: 62, column: 30, scope: !895)
!897 = !DILocation(line: 62, column: 43, scope: !895)
!898 = !DILocation(line: 62, column: 49, scope: !895)
!899 = !DILocation(line: 63, column: 32, scope: !895)
!900 = !DILocation(line: 63, column: 38, scope: !895)
!901 = !DILocation(line: 62, column: 7, scope: !895)
!902 = !DILocation(line: 61, column: 10, scope: !895)
!903 = !DILocation(line: 64, column: 7, scope: !904)
!904 = distinct !DILexicalBlock(scope: !895, file: !3, line: 64, column: 7)
!905 = !DILocation(line: 64, column: 7, scope: !895)
!906 = !DILocation(line: 65, column: 4, scope: !907)
!907 = distinct !DILexicalBlock(scope: !904, file: !3, line: 64, column: 29)
!908 = !DILocation(line: 67, column: 2, scope: !895)
!909 = !DILocation(line: 73, column: 23, scope: !910)
!910 = distinct !DILexicalBlock(scope: !810, file: !3, line: 73, column: 6)
!911 = !DILocation(line: 73, column: 29, scope: !910)
!912 = !DILocation(line: 73, column: 6, scope: !910)
!913 = !DILocation(line: 73, column: 35, scope: !910)
!914 = !DILocation(line: 73, column: 6, scope: !810)
!915 = !DILocation(line: 75, column: 7, scope: !916)
!916 = distinct !DILexicalBlock(scope: !910, file: !3, line: 73, column: 68)
!917 = !DILocation(line: 74, column: 3, scope: !916)
!918 = !DILocation(line: 74, column: 9, scope: !916)
!919 = !DILocation(line: 74, column: 14, scope: !916)
!920 = !DILocation(line: 77, column: 2, scope: !916)
!921 = !DILocation(line: 81, column: 2, scope: !810)
!922 = !DILocation(line: 81, column: 8, scope: !810)
!923 = !DILocation(line: 81, column: 22, scope: !810)
!924 = !DILocation(line: 82, column: 21, scope: !810)
!925 = !DILocation(line: 82, column: 27, scope: !810)
!926 = !DILocation(line: 82, column: 33, scope: !810)
!927 = !DILocation(line: 82, column: 2, scope: !810)
!928 = !DILocation(line: 82, column: 8, scope: !810)
!929 = !DILocation(line: 82, column: 19, scope: !810)
!930 = !DILocation(line: 83, column: 47, scope: !810)
!931 = !DILocation(line: 83, column: 53, scope: !810)
!932 = !DILocation(line: 83, column: 19, scope: !810)
!933 = !DILocation(line: 83, column: 2, scope: !810)
!934 = !DILocation(line: 83, column: 8, scope: !810)
!935 = !DILocation(line: 83, column: 17, scope: !810)
!936 = !DILocation(line: 92, column: 38, scope: !810)
!937 = !DILocation(line: 92, column: 44, scope: !810)
!938 = !DILocation(line: 92, column: 50, scope: !810)
!939 = !DILocation(line: 92, column: 6, scope: !810)
!940 = !DILocation(line: 91, column: 2, scope: !810)
!941 = !DILocation(line: 91, column: 8, scope: !810)
!942 = !DILocation(line: 91, column: 19, scope: !810)
!943 = !DILocation(line: 96, column: 56, scope: !810)
!944 = !DILocation(line: 96, column: 62, scope: !810)
!945 = !DILocation(line: 96, column: 24, scope: !810)
!946 = !DILocation(line: 96, column: 2, scope: !810)
!947 = !DILocation(line: 96, column: 8, scope: !810)
!948 = !DILocation(line: 96, column: 22, scope: !810)
!949 = !DILocation(line: 97, column: 7, scope: !950)
!950 = distinct !DILexicalBlock(scope: !810, file: !3, line: 97, column: 6)
!951 = !DILocation(line: 97, column: 13, scope: !950)
!952 = !DILocation(line: 97, column: 6, scope: !810)
!953 = !DILocation(line: 98, column: 3, scope: !954)
!954 = distinct !DILexicalBlock(scope: !950, file: !3, line: 97, column: 28)
!955 = !DILocation(line: 110, column: 2, scope: !810)
!956 = !DILocation(line: 110, column: 8, scope: !810)
!957 = !DILocation(line: 110, column: 20, scope: !810)
!958 = !DILocation(line: 111, column: 6, scope: !959)
!959 = distinct !DILexicalBlock(scope: !810, file: !3, line: 111, column: 6)
!960 = !DILocation(line: 111, column: 12, scope: !959)
!961 = !DILocation(line: 111, column: 6, scope: !810)
!962 = !DILocation(line: 112, column: 3, scope: !963)
!963 = distinct !DILexicalBlock(scope: !959, file: !3, line: 111, column: 24)
!964 = !DILocation(line: 112, column: 10, scope: !963)
!965 = !DILocation(line: 112, column: 16, scope: !963)
!966 = !DILocation(line: 112, column: 27, scope: !963)
!967 = !DILocation(line: 112, column: 33, scope: !963)
!968 = !DILocation(line: 113, column: 4, scope: !969)
!969 = distinct !DILexicalBlock(scope: !963, file: !3, line: 112, column: 47)
!970 = !DILocation(line: 113, column: 10, scope: !969)
!971 = !DILocation(line: 113, column: 21, scope: !969)
!972 = distinct !{!972, !962, !973, !974, !975}
!973 = !DILocation(line: 114, column: 3, scope: !963)
!974 = !{!"llvm.loop.mustprogress"}
!975 = !{!"llvm.loop.unroll.disable"}
!976 = !DILocation(line: 118, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !963, file: !3, line: 118, column: 7)
!978 = !DILocation(line: 118, column: 13, scope: !977)
!979 = !DILocation(line: 118, column: 25, scope: !977)
!980 = !DILocation(line: 118, column: 7, scope: !963)
!981 = !DILocation(line: 119, column: 4, scope: !982)
!982 = distinct !DILexicalBlock(scope: !977, file: !3, line: 118, column: 49)
!983 = !DILocation(line: 125, column: 4, scope: !982)
!984 = !DILocation(line: 125, column: 10, scope: !982)
!985 = !DILocation(line: 125, column: 22, scope: !982)
!986 = !DILocation(line: 126, column: 3, scope: !982)
!987 = !DILocation(line: 127, column: 2, scope: !963)
!988 = !DILocation(line: 133, column: 32, scope: !810)
!989 = !DILocation(line: 133, column: 38, scope: !810)
!990 = !DILocation(line: 133, column: 53, scope: !810)
!991 = !DILocation(line: 133, column: 59, scope: !810)
!992 = !DILocation(line: 134, column: 11, scope: !810)
!993 = !DILocation(line: 134, column: 17, scope: !810)
!994 = !DILocation(line: 133, column: 2, scope: !810)
!995 = !DILocation(line: 140, column: 31, scope: !810)
!996 = !DILocation(line: 140, column: 37, scope: !810)
!997 = !DILocation(line: 140, column: 52, scope: !810)
!998 = !DILocation(line: 140, column: 58, scope: !810)
!999 = !DILocation(line: 141, column: 10, scope: !810)
!1000 = !DILocation(line: 141, column: 16, scope: !810)
!1001 = !DILocation(line: 141, column: 29, scope: !810)
!1002 = !DILocation(line: 141, column: 35, scope: !810)
!1003 = !DILocation(line: 140, column: 2, scope: !810)
!1004 = !DILocation(line: 145, column: 31, scope: !810)
!1005 = !DILocation(line: 145, column: 2, scope: !810)
!1006 = !DILocation(line: 154, column: 27, scope: !810)
!1007 = !DILocation(line: 154, column: 33, scope: !810)
!1008 = !DILocation(line: 154, column: 10, scope: !810)
!1009 = !DILocation(line: 154, column: 2, scope: !810)
!1010 = !DILocation(line: 166, column: 3, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !810, file: !3, line: 154, column: 40)
!1012 = !DILocation(line: 172, column: 10, scope: !1011)
!1013 = !DILocation(line: 173, column: 3, scope: !1011)
!1014 = !DILocation(line: 182, column: 8, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 182, column: 7)
!1016 = !DILocation(line: 182, column: 14, scope: !1015)
!1017 = !DILocation(line: 182, column: 7, scope: !1011)
!1018 = !DILocation(line: 183, column: 4, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 182, column: 24)
!1020 = !DILocation(line: 186, column: 11, scope: !1019)
!1021 = !DILocation(line: 187, column: 4, scope: !1019)
!1022 = !DILocation(line: 204, column: 3, scope: !1011)
!1023 = !DILocation(line: 205, column: 35, scope: !1011)
!1024 = !DILocation(line: 205, column: 12, scope: !1011)
!1025 = !DILocation(line: 205, column: 10, scope: !1011)
!1026 = !DILocation(line: 206, column: 3, scope: !1011)
!1027 = !DILocation(line: 207, column: 3, scope: !1011)
!1028 = !DILocation(line: 230, column: 3, scope: !1011)
!1029 = !DILocation(line: 235, column: 7, scope: !1011)
!1030 = !DILocation(line: 234, column: 3, scope: !1011)
!1031 = !DILocation(line: 234, column: 9, scope: !1011)
!1032 = !DILocation(line: 234, column: 23, scope: !1011)
!1033 = !DILocation(line: 238, column: 37, scope: !1011)
!1034 = !DILocation(line: 238, column: 7, scope: !1011)
!1035 = !DILocation(line: 237, column: 10, scope: !1011)
!1036 = !DILocation(line: 241, column: 3, scope: !1011)
!1037 = !DILocation(line: 243, column: 7, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 243, column: 7)
!1039 = !DILocation(line: 243, column: 7, scope: !1011)
!1040 = !DILocation(line: 244, column: 4, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 243, column: 29)
!1042 = !DILocation(line: 244, column: 10, scope: !1041)
!1043 = !DILocation(line: 244, column: 24, scope: !1041)
!1044 = !DILocation(line: 245, column: 4, scope: !1041)
!1045 = !DILocation(line: 253, column: 10, scope: !1011)
!1046 = !DILocation(line: 254, column: 3, scope: !1011)
!1047 = !DILocation(line: 261, column: 35, scope: !810)
!1048 = !DILocation(line: 261, column: 41, scope: !810)
!1049 = !DILocation(line: 261, column: 47, scope: !810)
!1050 = !DILocation(line: 261, column: 53, scope: !810)
!1051 = !DILocation(line: 261, column: 59, scope: !810)
!1052 = !DILocation(line: 262, column: 7, scope: !810)
!1053 = !DILocation(line: 262, column: 16, scope: !810)
!1054 = !DILocation(line: 262, column: 22, scope: !810)
!1055 = !DILocation(line: 261, column: 8, scope: !810)
!1056 = !DILocation(line: 266, column: 6, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !810, file: !3, line: 266, column: 6)
!1058 = !DILocation(line: 266, column: 13, scope: !1057)
!1059 = !DILocation(line: 266, column: 6, scope: !810)
!1060 = !DILocation(line: 270, column: 7, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 270, column: 7)
!1062 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 266, column: 38)
!1063 = !DILocation(line: 270, column: 13, scope: !1061)
!1064 = !DILocation(line: 270, column: 19, scope: !1061)
!1065 = !DILocation(line: 270, column: 7, scope: !1062)
!1066 = !DILocation(line: 271, column: 29, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 270, column: 47)
!1068 = !DILocation(line: 271, column: 35, scope: !1067)
!1069 = !DILocation(line: 271, column: 4, scope: !1067)
!1070 = !DILocation(line: 272, column: 4, scope: !1067)
!1071 = !DILocation(line: 272, column: 10, scope: !1067)
!1072 = !DILocation(line: 272, column: 24, scope: !1067)
!1073 = !DILocation(line: 273, column: 3, scope: !1067)
!1074 = !DILocation(line: 277, column: 10, scope: !1062)
!1075 = !DILocation(line: 278, column: 2, scope: !1062)
!1076 = !DILocation(line: 278, column: 13, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 278, column: 13)
!1078 = !DILocation(line: 278, column: 13, scope: !1057)
!1079 = !DILocation(line: 282, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 282, column: 7)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 278, column: 35)
!1082 = !DILocation(line: 282, column: 13, scope: !1080)
!1083 = !DILocation(line: 282, column: 7, scope: !1081)
!1084 = !DILocation(line: 283, column: 29, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 282, column: 28)
!1086 = !DILocation(line: 283, column: 35, scope: !1085)
!1087 = !DILocation(line: 283, column: 4, scope: !1085)
!1088 = !DILocation(line: 284, column: 4, scope: !1085)
!1089 = !DILocation(line: 284, column: 10, scope: !1085)
!1090 = !DILocation(line: 284, column: 24, scope: !1085)
!1091 = !DILocation(line: 285, column: 3, scope: !1085)
!1092 = !DILocation(line: 286, column: 2, scope: !1081)
!1093 = !DILocation(line: 266, column: 16, scope: !1057)
!1094 = !DILocation(line: 292, column: 1, scope: !810)
!1095 = !DILocation(line: 303, column: 2, scope: !810)
!1096 = !DILocation(line: 304, column: 2, scope: !810)
!1097 = !DILocation(line: 304, column: 8, scope: !810)
!1098 = !DILocation(line: 304, column: 22, scope: !810)
!1099 = !DILocation(line: 305, column: 2, scope: !810)
!1100 = !DILocation(line: 306, column: 1, scope: !810)
!1101 = !DISubprogram(name: "acpi_ns_get_node", scope: !1102, file: !1102, line: 285, type: !1103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1102 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!5, !12, !818, !7, !785}
!1105 = !DISubprogram(name: "acpi_ns_get_type", scope: !1102, file: !1102, line: 379, type: !1106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!1108, !12}
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !6, line: 644, baseType: !7)
!1109 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !1102, file: !1102, line: 298, type: !1110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!17, !12}
!1112 = !DISubprogram(name: "acpi_ut_match_predefined_method", scope: !1113, file: !1113, line: 488, type: !1114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1113 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!824, !60}
!1116 = !DISubprogram(name: "acpi_ns_get_normalized_pathname", scope: !1102, file: !1102, line: 261, type: !1117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!60, !12, !26}
!1119 = !DISubprogram(name: "acpi_ut_predefined_warning", scope: !1113, file: !1113, line: 708, type: !1120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null, !818, !7, !60, !31, !818, null}
!1122 = !DISubprogram(name: "acpi_ns_check_acpi_compliance", scope: !1102, file: !1102, line: 220, type: !1123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !60, !12, !824}
!1125 = !DISubprogram(name: "acpi_ns_check_argument_count", scope: !1102, file: !1102, line: 214, type: !1126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null, !60, !12, !7, !824}
!1128 = !DISubprogram(name: "acpi_ns_check_argument_types", scope: !1102, file: !1102, line: 224, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{null, !813}
!1131 = !DISubprogram(name: "acpi_error", scope: !1132, file: !1132, line: 901, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1132 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1133 = !DISubroutineType(types: !1134)
!1134 = !{null, !818, !7, !818, null}
!1135 = !DISubprogram(name: "acpi_ut_get_type_name", scope: !1113, file: !1113, line: 225, type: !1136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!818, !1108}
!1138 = !DISubprogram(name: "acpi_ex_enter_interpreter", scope: !1139, file: !1139, line: 464, type: !1140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1139 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null}
!1142 = !DISubprogram(name: "acpi_ps_execute_method", scope: !1143, file: !1143, line: 45, type: !811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1143 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!1144 = !DISubprogram(name: "acpi_ex_exit_interpreter", scope: !1139, file: !1139, line: 466, type: !1140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1145 = !DISubprogram(name: "acpi_ex_resolve_node_to_value", scope: !1139, file: !1139, line: 370, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!5, !785, !123}
!1148 = !DISubprogram(name: "acpi_ns_check_return_value", scope: !1102, file: !1102, line: 230, type: !1149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!5, !12, !813, !7, !5, !87}
!1151 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1113, file: !1113, line: 369, type: !1152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{null, !17}
!1154 = distinct !DISubprogram(name: "acpi_os_free", scope: !1155, file: !1155, line: 60, type: !1156, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1158)
!1155 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !100}
!1158 = !{!1159}
!1159 = !DILocalVariable(name: "memory", arg: 1, scope: !1154, file: !1155, line: 60, type: !100)
!1160 = !DILocation(line: 60, column: 39, scope: !1154)
!1161 = !DILocation(line: 62, column: 8, scope: !1154)
!1162 = !DILocation(line: 62, column: 2, scope: !1154)
!1163 = !DILocation(line: 63, column: 1, scope: !1154)
!1164 = !DISubprogram(name: "kfree", scope: !1165, file: !1165, line: 227, type: !1166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1165 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !1168}
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
