; ModuleID = 'drivers/acpi/acpica/exoparg6.c'
source_filename = "drivers/acpi/acpica/exoparg6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_package = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, i32, i32 }

@_acpi_module_name = internal constant [9 x i8] c"exoparg6\00", align 1, !dbg !0
@.str = private unnamed_addr constant [28 x i8] c"Match operator out of range\00", align 1, !dbg !32
@.str.1 = private unnamed_addr constant [47 x i8] c"Index (0x%8.8X%8.8X) beyond package end (0x%X)\00", align 1, !dbg !38
@.str.2 = private unnamed_addr constant [24 x i8] c"Unknown AML opcode 0x%X\00", align 1, !dbg !43

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_opcode_6A_0T_1R(ptr noundef %walk_state) #0 align 16 !dbg !61 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %operand = alloca ptr, align 8
  %return_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %index = alloca i64, align 8
  %this_element = alloca ptr, align 8
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !821, metadata !DIExpression()), !dbg !828
  call void @llvm.lifetime.start.p0(i64 8, ptr %operand) #4, !dbg !829
  call void @llvm.dbg.declare(metadata ptr %operand, metadata !822, metadata !DIExpression()), !dbg !830
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !831
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 28, !dbg !832
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !831
  store ptr %arrayidx, ptr %operand, align 8, !dbg !830
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_desc) #4, !dbg !833
  call void @llvm.dbg.declare(metadata ptr %return_desc, metadata !823, metadata !DIExpression()), !dbg !834
  store ptr null, ptr %return_desc, align 8, !dbg !834
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !835
  call void @llvm.dbg.declare(metadata ptr %status, metadata !824, metadata !DIExpression()), !dbg !836
  store i32 0, ptr %status, align 4, !dbg !836
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #4, !dbg !837
  call void @llvm.dbg.declare(metadata ptr %index, metadata !825, metadata !DIExpression()), !dbg !838
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_element) #4, !dbg !839
  call void @llvm.dbg.declare(metadata ptr %this_element, metadata !826, metadata !DIExpression()), !dbg !840
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !841
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 3, !dbg !842
  %2 = load i16, ptr %opcode, align 2, !dbg !842
  %conv = zext i16 %2 to i32, !dbg !841
  switch i32 %conv, label %sw.default [
    i32 137, label %sw.bb
    i32 23327, label %sw.bb48
  ], !dbg !843

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %operand, align 8, !dbg !844
  %arrayidx1 = getelementptr ptr, ptr %3, i64 1, !dbg !844
  %4 = load ptr, ptr %arrayidx1, align 8, !dbg !844
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %4, i32 0, i32 6, !dbg !847
  %5 = load i64, ptr %value, align 8, !dbg !847
  %cmp = icmp ugt i64 %5, 5, !dbg !848
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !849

lor.lhs.false:                                    ; preds = %sw.bb
  %6 = load ptr, ptr %operand, align 8, !dbg !850
  %arrayidx3 = getelementptr ptr, ptr %6, i64 3, !dbg !850
  %7 = load ptr, ptr %arrayidx3, align 8, !dbg !850
  %value4 = getelementptr inbounds %struct.acpi_object_integer, ptr %7, i32 0, i32 6, !dbg !851
  %8 = load i64, ptr %value4, align 8, !dbg !851
  %cmp5 = icmp ugt i64 %8, 5, !dbg !852
  br i1 %cmp5, label %if.then, label %if.end, !dbg !853

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 198, ptr noundef @.str) #5, !dbg !854
  store i32 12292, ptr %status, align 4, !dbg !856
  br label %cleanup, !dbg !857

if.end:                                           ; preds = %lor.lhs.false
  %9 = load ptr, ptr %operand, align 8, !dbg !858
  %arrayidx7 = getelementptr ptr, ptr %9, i64 5, !dbg !858
  %10 = load ptr, ptr %arrayidx7, align 8, !dbg !858
  %value8 = getelementptr inbounds %struct.acpi_object_integer, ptr %10, i32 0, i32 6, !dbg !859
  %11 = load i64, ptr %value8, align 8, !dbg !859
  store i64 %11, ptr %index, align 8, !dbg !860
  %12 = load i64, ptr %index, align 8, !dbg !861
  %13 = load ptr, ptr %operand, align 8, !dbg !863
  %arrayidx9 = getelementptr ptr, ptr %13, i64 0, !dbg !863
  %14 = load ptr, ptr %arrayidx9, align 8, !dbg !863
  %count = getelementptr inbounds %struct.acpi_object_package, ptr %14, i32 0, i32 9, !dbg !864
  %15 = load i32, ptr %count, align 4, !dbg !864
  %conv10 = zext i32 %15 to i64, !dbg !863
  %cmp11 = icmp uge i64 %12, %conv10, !dbg !865
  br i1 %cmp11, label %if.then13, label %if.end18, !dbg !866

if.then13:                                        ; preds = %if.end
  %16 = load i64, ptr %index, align 8, !dbg !867
  %shr = lshr i64 %16, 32, !dbg !867
  %conv14 = trunc i64 %shr to i32, !dbg !867
  %17 = load i64, ptr %index, align 8, !dbg !867
  %conv15 = trunc i64 %17 to i32, !dbg !867
  %18 = load ptr, ptr %operand, align 8, !dbg !867
  %arrayidx16 = getelementptr ptr, ptr %18, i64 0, !dbg !867
  %19 = load ptr, ptr %arrayidx16, align 8, !dbg !867
  %count17 = getelementptr inbounds %struct.acpi_object_package, ptr %19, i32 0, i32 9, !dbg !867
  %20 = load i32, ptr %count17, align 4, !dbg !867
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 207, ptr noundef @.str.1, i32 noundef %conv14, i32 noundef %conv15, i32 noundef %20) #5, !dbg !867
  store i32 12299, ptr %status, align 4, !dbg !869
  br label %cleanup, !dbg !870

if.end18:                                         ; preds = %if.end
  %call = call ptr @acpi_ut_create_integer_object(i64 noundef -1) #5, !dbg !871
  store ptr %call, ptr %return_desc, align 8, !dbg !872
  %21 = load ptr, ptr %return_desc, align 8, !dbg !873
  %tobool = icmp ne ptr %21, null, !dbg !873
  br i1 %tobool, label %if.end20, label %if.then19, !dbg !875

if.then19:                                        ; preds = %if.end18
  store i32 4, ptr %status, align 4, !dbg !876
  br label %cleanup, !dbg !878

if.end20:                                         ; preds = %if.end18
  br label %for.cond, !dbg !879

for.cond:                                         ; preds = %for.inc, %if.end20
  %22 = load i64, ptr %index, align 8, !dbg !880
  %23 = load ptr, ptr %operand, align 8, !dbg !883
  %arrayidx21 = getelementptr ptr, ptr %23, i64 0, !dbg !883
  %24 = load ptr, ptr %arrayidx21, align 8, !dbg !883
  %count22 = getelementptr inbounds %struct.acpi_object_package, ptr %24, i32 0, i32 9, !dbg !884
  %25 = load i32, ptr %count22, align 4, !dbg !884
  %conv23 = zext i32 %25 to i64, !dbg !883
  %cmp24 = icmp ult i64 %22, %conv23, !dbg !885
  br i1 %cmp24, label %for.body, label %for.end, !dbg !886

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %operand, align 8, !dbg !887
  %arrayidx26 = getelementptr ptr, ptr %26, i64 0, !dbg !887
  %27 = load ptr, ptr %arrayidx26, align 8, !dbg !887
  %elements = getelementptr inbounds %struct.acpi_object_package, ptr %27, i32 0, i32 6, !dbg !889
  %28 = load ptr, ptr %elements, align 8, !dbg !889
  %29 = load i64, ptr %index, align 8, !dbg !890
  %arrayidx27 = getelementptr ptr, ptr %28, i64 %29, !dbg !887
  %30 = load ptr, ptr %arrayidx27, align 8, !dbg !887
  store ptr %30, ptr %this_element, align 8, !dbg !891
  %31 = load ptr, ptr %this_element, align 8, !dbg !892
  %tobool28 = icmp ne ptr %31, null, !dbg !892
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !894

if.then29:                                        ; preds = %for.body
  br label %for.inc, !dbg !895

if.end30:                                         ; preds = %for.body
  %32 = load ptr, ptr %operand, align 8, !dbg !897
  %arrayidx31 = getelementptr ptr, ptr %32, i64 1, !dbg !897
  %33 = load ptr, ptr %arrayidx31, align 8, !dbg !897
  %value32 = getelementptr inbounds %struct.acpi_object_integer, ptr %33, i32 0, i32 6, !dbg !899
  %34 = load i64, ptr %value32, align 8, !dbg !899
  %conv33 = trunc i64 %34 to i32, !dbg !900
  %35 = load ptr, ptr %this_element, align 8, !dbg !901
  %36 = load ptr, ptr %operand, align 8, !dbg !902
  %arrayidx34 = getelementptr ptr, ptr %36, i64 2, !dbg !902
  %37 = load ptr, ptr %arrayidx34, align 8, !dbg !902
  %call35 = call zeroext i8 @acpi_ex_do_match(i32 noundef %conv33, ptr noundef %35, ptr noundef %37) #5, !dbg !903
  %tobool36 = icmp ne i8 %call35, 0, !dbg !903
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !904

if.then37:                                        ; preds = %if.end30
  br label %for.inc, !dbg !905

if.end38:                                         ; preds = %if.end30
  %38 = load ptr, ptr %operand, align 8, !dbg !907
  %arrayidx39 = getelementptr ptr, ptr %38, i64 3, !dbg !907
  %39 = load ptr, ptr %arrayidx39, align 8, !dbg !907
  %value40 = getelementptr inbounds %struct.acpi_object_integer, ptr %39, i32 0, i32 6, !dbg !909
  %40 = load i64, ptr %value40, align 8, !dbg !909
  %conv41 = trunc i64 %40 to i32, !dbg !910
  %41 = load ptr, ptr %this_element, align 8, !dbg !911
  %42 = load ptr, ptr %operand, align 8, !dbg !912
  %arrayidx42 = getelementptr ptr, ptr %42, i64 4, !dbg !912
  %43 = load ptr, ptr %arrayidx42, align 8, !dbg !912
  %call43 = call zeroext i8 @acpi_ex_do_match(i32 noundef %conv41, ptr noundef %41, ptr noundef %43) #5, !dbg !913
  %tobool44 = icmp ne i8 %call43, 0, !dbg !913
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !914

if.then45:                                        ; preds = %if.end38
  br label %for.inc, !dbg !915

if.end46:                                         ; preds = %if.end38
  %44 = load i64, ptr %index, align 8, !dbg !917
  %45 = load ptr, ptr %return_desc, align 8, !dbg !918
  %value47 = getelementptr inbounds %struct.acpi_object_integer, ptr %45, i32 0, i32 6, !dbg !919
  store i64 %44, ptr %value47, align 8, !dbg !920
  br label %for.end, !dbg !921

for.inc:                                          ; preds = %if.then45, %if.then37, %if.then29
  %46 = load i64, ptr %index, align 8, !dbg !922
  %inc = add i64 %46, 1, !dbg !922
  store i64 %inc, ptr %index, align 8, !dbg !922
  br label %for.cond, !dbg !923, !llvm.loop !924

for.end:                                          ; preds = %if.end46, %for.cond
  br label %sw.epilog, !dbg !928

sw.bb48:                                          ; preds = %entry
  %47 = load ptr, ptr %walk_state.addr, align 8, !dbg !929
  %call49 = call i32 @acpi_ex_load_table_op(ptr noundef %47, ptr noundef %return_desc) #5, !dbg !930
  store i32 %call49, ptr %status, align 4, !dbg !931
  br label %sw.epilog, !dbg !932

sw.default:                                       ; preds = %entry
  %48 = load ptr, ptr %walk_state.addr, align 8, !dbg !933
  %opcode50 = getelementptr inbounds %struct.acpi_walk_state, ptr %48, i32 0, i32 3, !dbg !933
  %49 = load i16, ptr %opcode50, align 2, !dbg !933
  %conv51 = zext i16 %49 to i32, !dbg !933
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 277, ptr noundef @.str.2, i32 noundef %conv51) #5, !dbg !933
  store i32 12289, ptr %status, align 4, !dbg !934
  br label %cleanup, !dbg !935

sw.epilog:                                        ; preds = %sw.bb48, %for.end
  br label %cleanup, !dbg !936

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then19, %if.then13, %if.then
  call void @llvm.dbg.label(metadata !827), !dbg !937
  %50 = load i32, ptr %status, align 4, !dbg !938
  %tobool52 = icmp ne i32 %50, 0, !dbg !938
  br i1 %tobool52, label %if.then53, label %if.else, !dbg !940

if.then53:                                        ; preds = %cleanup
  %51 = load ptr, ptr %return_desc, align 8, !dbg !941
  call void @acpi_ut_remove_reference(ptr noundef %51) #5, !dbg !943
  br label %if.end54, !dbg !944

if.else:                                          ; preds = %cleanup
  %52 = load ptr, ptr %return_desc, align 8, !dbg !945
  %53 = load ptr, ptr %walk_state.addr, align 8, !dbg !947
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, ptr %53, i32 0, i32 43, !dbg !948
  store ptr %52, ptr %result_obj, align 8, !dbg !949
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then53
  %54 = load i32, ptr %status, align 4, !dbg !950
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_element) #4, !dbg !951
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #4, !dbg !951
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !951
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_desc) #4, !dbg !951
  call void @llvm.lifetime.end.p0(i64 8, ptr %operand) #4, !dbg !951
  ret i32 %54, !dbg !950
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !952 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !957 dso_local ptr @acpi_ut_create_integer_object(i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @acpi_ex_do_match(i32 noundef %match_op, ptr noundef %package_obj, ptr noundef %match_obj) #0 align 16 !dbg !961 {
entry:
  %retval = alloca i8, align 1
  %match_op.addr = alloca i32, align 4
  %package_obj.addr = alloca ptr, align 8
  %match_obj.addr = alloca ptr, align 8
  %logical_result = alloca i8, align 1
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %match_op, ptr %match_op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %match_op.addr, metadata !965, metadata !DIExpression()), !dbg !970
  store ptr %package_obj, ptr %package_obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %package_obj.addr, metadata !966, metadata !DIExpression()), !dbg !971
  store ptr %match_obj, ptr %match_obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %match_obj.addr, metadata !967, metadata !DIExpression()), !dbg !972
  call void @llvm.lifetime.start.p0(i64 1, ptr %logical_result) #4, !dbg !973
  call void @llvm.dbg.declare(metadata ptr %logical_result, metadata !968, metadata !DIExpression()), !dbg !974
  store i8 1, ptr %logical_result, align 1, !dbg !974
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !975
  call void @llvm.dbg.declare(metadata ptr %status, metadata !969, metadata !DIExpression()), !dbg !976
  %0 = load i32, ptr %match_op.addr, align 4, !dbg !977
  switch i32 %0, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb7
    i32 4, label %sw.bb12
    i32 5, label %sw.bb21
  ], !dbg !978

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %match_obj.addr, align 8, !dbg !979
  %2 = load ptr, ptr %package_obj.addr, align 8, !dbg !981
  %call = call i32 @acpi_ex_do_logical_op(i16 noundef zeroext 147, ptr noundef %1, ptr noundef %2, ptr noundef %logical_result) #5, !dbg !982
  store i32 %call, ptr %status, align 4, !dbg !983
  %3 = load i32, ptr %status, align 4, !dbg !984
  %tobool = icmp ne i32 %3, 0, !dbg !984
  br i1 %tobool, label %if.then, label %if.end, !dbg !986

if.then:                                          ; preds = %sw.bb
  store i8 0, ptr %retval, align 1, !dbg !987
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !987

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog, !dbg !989

sw.bb1:                                           ; preds = %entry
  %4 = load ptr, ptr %match_obj.addr, align 8, !dbg !990
  %5 = load ptr, ptr %package_obj.addr, align 8, !dbg !991
  %call2 = call i32 @acpi_ex_do_logical_op(i16 noundef zeroext 149, ptr noundef %4, ptr noundef %5, ptr noundef %logical_result) #5, !dbg !992
  store i32 %call2, ptr %status, align 4, !dbg !993
  %6 = load i32, ptr %status, align 4, !dbg !994
  %tobool3 = icmp ne i32 %6, 0, !dbg !994
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !996

if.then4:                                         ; preds = %sw.bb1
  store i8 0, ptr %retval, align 1, !dbg !997
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !997

if.end5:                                          ; preds = %sw.bb1
  %7 = load i8, ptr %logical_result, align 1, !dbg !999
  %tobool6 = icmp ne i8 %7, 0, !dbg !1000
  %lnot = xor i1 %tobool6, true, !dbg !1000
  %lnot.ext = zext i1 %lnot to i32, !dbg !1000
  %conv = trunc i32 %lnot.ext to i8, !dbg !1001
  store i8 %conv, ptr %logical_result, align 1, !dbg !1002
  br label %sw.epilog, !dbg !1003

sw.bb7:                                           ; preds = %entry
  %8 = load ptr, ptr %match_obj.addr, align 8, !dbg !1004
  %9 = load ptr, ptr %package_obj.addr, align 8, !dbg !1005
  %call8 = call i32 @acpi_ex_do_logical_op(i16 noundef zeroext 148, ptr noundef %8, ptr noundef %9, ptr noundef %logical_result) #5, !dbg !1006
  store i32 %call8, ptr %status, align 4, !dbg !1007
  %10 = load i32, ptr %status, align 4, !dbg !1008
  %tobool9 = icmp ne i32 %10, 0, !dbg !1008
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !1010

if.then10:                                        ; preds = %sw.bb7
  store i8 0, ptr %retval, align 1, !dbg !1011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1011

if.end11:                                         ; preds = %sw.bb7
  br label %sw.epilog, !dbg !1013

sw.bb12:                                          ; preds = %entry
  %11 = load ptr, ptr %match_obj.addr, align 8, !dbg !1014
  %12 = load ptr, ptr %package_obj.addr, align 8, !dbg !1015
  %call13 = call i32 @acpi_ex_do_logical_op(i16 noundef zeroext 148, ptr noundef %11, ptr noundef %12, ptr noundef %logical_result) #5, !dbg !1016
  store i32 %call13, ptr %status, align 4, !dbg !1017
  %13 = load i32, ptr %status, align 4, !dbg !1018
  %tobool14 = icmp ne i32 %13, 0, !dbg !1018
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !1020

if.then15:                                        ; preds = %sw.bb12
  store i8 0, ptr %retval, align 1, !dbg !1021
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1021

if.end16:                                         ; preds = %sw.bb12
  %14 = load i8, ptr %logical_result, align 1, !dbg !1023
  %tobool17 = icmp ne i8 %14, 0, !dbg !1024
  %lnot18 = xor i1 %tobool17, true, !dbg !1024
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !1024
  %conv20 = trunc i32 %lnot.ext19 to i8, !dbg !1025
  store i8 %conv20, ptr %logical_result, align 1, !dbg !1026
  br label %sw.epilog, !dbg !1027

sw.bb21:                                          ; preds = %entry
  %15 = load ptr, ptr %match_obj.addr, align 8, !dbg !1028
  %16 = load ptr, ptr %package_obj.addr, align 8, !dbg !1029
  %call22 = call i32 @acpi_ex_do_logical_op(i16 noundef zeroext 149, ptr noundef %15, ptr noundef %16, ptr noundef %logical_result) #5, !dbg !1030
  store i32 %call22, ptr %status, align 4, !dbg !1031
  %17 = load i32, ptr %status, align 4, !dbg !1032
  %tobool23 = icmp ne i32 %17, 0, !dbg !1032
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !1034

if.then24:                                        ; preds = %sw.bb21
  store i8 0, ptr %retval, align 1, !dbg !1035
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1035

if.end25:                                         ; preds = %sw.bb21
  br label %sw.epilog, !dbg !1037

sw.default:                                       ; preds = %entry
  store i8 0, ptr %retval, align 1, !dbg !1038
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1038

sw.epilog:                                        ; preds = %if.end25, %if.end16, %if.end11, %if.end5, %if.end, %entry
  %18 = load i8, ptr %logical_result, align 1, !dbg !1039
  store i8 %18, ptr %retval, align 1, !dbg !1040
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1040

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then24, %if.then15, %if.then10, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1041
  call void @llvm.lifetime.end.p0(i64 1, ptr %logical_result) #4, !dbg !1041
  %19 = load i8, ptr %retval, align 1, !dbg !1041
  ret i8 %19, !dbg !1041
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1042 dso_local i32 @acpi_ex_load_table_op(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1046 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1049 dso_local i32 @acpi_ex_do_logical_op(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !48, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exoparg6.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exoparg6\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exoparg6.ll drivers/acpi/acpica/exoparg6.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !15, globals: !31, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exoparg6.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bceb1d83a9b97238b75deda635125deb")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 374, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/amlcode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d3d08f7f5f071008a4fa29b292f7f44b")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "MATCH_MTR", value: 0)
!10 = !DIEnumerator(name: "MATCH_MEQ", value: 1)
!11 = !DIEnumerator(name: "MATCH_MLE", value: 2)
!12 = !DIEnumerator(name: "MATCH_MLT", value: 3)
!13 = !DIEnumerator(name: "MATCH_MGE", value: 4)
!14 = !DIEnumerator(name: "MATCH_MGT", value: 5)
!15 = !{!16, !18, !22, !25, !28}
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !17, line: 421, baseType: !18)
!17 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !19, line: 21, baseType: !20)
!19 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !21, line: 27, baseType: !7)
!21 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !19, line: 23, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !21, line: 31, baseType: !24)
!24 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !19, line: 19, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !21, line: 24, baseType: !27)
!27 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !19, line: 17, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !21, line: 21, baseType: !30)
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !{!32, !38, !43, !0}
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !3, line: 198, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 224, elements: !36)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !{!37}
!37 = !DISubrange(count: 28)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !3, line: 207, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 376, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 47)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !3, line: 277, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 192, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 24)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 72, elements: !50)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!50 = !{!51}
!51 = !DISubrange(count: 9)
!52 = !{i32 7, !"Dwarf Version", i32 5}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 8, !"cf-protection-branch", i32 1}
!56 = !{i32 4, !"function_return_thunk_extern", i32 1}
!57 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!58 = !{i32 1, !"Code Model", i32 2}
!59 = !{i32 1, !"override-stack-alignment", i32 8}
!60 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!61 = distinct !DISubprogram(name: "acpi_ex_opcode_6A_0T_1R", scope: !3, file: !3, line: 176, type: !62, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !820)
!62 = !DISubroutineType(types: !63)
!63 = !{!16, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !66, line: 37, size: 9024, elements: !67)
!66 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !77, !78, !79, !80, !81, !82, !83, !84, !85, !87, !88, !89, !90, !91, !769, !770, !771, !772, !773, !777, !779, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !804, !805, !806, !807, !808, !809, !810, !811, !812, !818}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !65, file: !66, line: 38, baseType: !64, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !65, file: !66, line: 39, baseType: !28, size: 8, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !65, file: !66, line: 40, baseType: !28, size: 8, offset: 72)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !65, file: !66, line: 41, baseType: !25, size: 16, offset: 80)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !65, file: !66, line: 42, baseType: !28, size: 8, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !65, file: !66, line: 43, baseType: !28, size: 8, offset: 104)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !65, file: !66, line: 44, baseType: !28, size: 8, offset: 112)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !65, file: !66, line: 45, baseType: !76, size: 16, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !17, line: 445, baseType: !25)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !65, file: !66, line: 46, baseType: !28, size: 8, offset: 144)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !65, file: !66, line: 47, baseType: !28, size: 8, offset: 152)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !65, file: !66, line: 48, baseType: !28, size: 8, offset: 160)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !65, file: !66, line: 49, baseType: !28, size: 8, offset: 168)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !65, file: !66, line: 50, baseType: !28, size: 8, offset: 176)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !65, file: !66, line: 51, baseType: !28, size: 8, offset: 184)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !65, file: !66, line: 52, baseType: !28, size: 8, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !65, file: !66, line: 53, baseType: !28, size: 8, offset: 200)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !65, file: !66, line: 54, baseType: !86, size: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !65, file: !66, line: 55, baseType: !18, size: 32, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !65, file: !66, line: 56, baseType: !18, size: 32, offset: 352)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !65, file: !66, line: 57, baseType: !18, size: 32, offset: 384)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !65, file: !66, line: 58, baseType: !18, size: 32, offset: 416)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !65, file: !66, line: 60, baseType: !92, size: 640, offset: 448)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !93, line: 909, size: 640, elements: !94)
!93 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!94 = !{!95, !96, !97, !98, !99, !100, !666, !667, !767, !768}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !92, file: !93, line: 910, baseType: !86, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !92, file: !93, line: 911, baseType: !86, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !92, file: !93, line: 912, baseType: !86, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !92, file: !93, line: 913, baseType: !86, size: 64, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !92, file: !93, line: 914, baseType: !86, size: 64, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !92, file: !93, line: 915, baseType: !101, size: 64, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !93, line: 891, size: 1600, elements: !103)
!103 = !{!104, !609, !625}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !102, file: !93, line: 892, baseType: !105, size: 448)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !93, line: 844, size: 448, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !112, !113, !599, !608}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !105, file: !93, line: 845, baseType: !101, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !105, file: !93, line: 845, baseType: !28, size: 8, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !93, line: 845, baseType: !28, size: 8, offset: 72)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !105, file: !93, line: 845, baseType: !25, size: 16, offset: 80)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !105, file: !93, line: 845, baseType: !86, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !93, line: 845, baseType: !101, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !105, file: !93, line: 845, baseType: !114, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !93, line: 133, size: 384, elements: !116)
!116 = !{!117, !583, !584, !585, !586, !595, !596, !597, !598}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !115, file: !93, line: 134, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !120, line: 369, size: 576, elements: !121)
!120 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!121 = !{!122, !130, !143, !154, !167, !181, !191, !215, !244, !260, !273, !352, !364, !378, !388, !406, !428, !447, !466, !485, !502, !529, !546, !559, !573, !582}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !119, file: !120, line: 370, baseType: !123, size: 128)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !120, line: 73, size: 128, elements: !124)
!124 = !{!125, !126, !127, !128, !129}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !123, file: !120, line: 74, baseType: !118, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !123, file: !120, line: 74, baseType: !28, size: 8, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !120, line: 74, baseType: !28, size: 8, offset: 72)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !123, file: !120, line: 74, baseType: !25, size: 16, offset: 80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !120, line: 74, baseType: !28, size: 8, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !119, file: !120, line: 371, baseType: !131, size: 192)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !120, line: 76, size: 192, elements: !132)
!132 = !{!133, !134, !135, !136, !137, !138, !142}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !131, file: !120, line: 77, baseType: !118, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !131, file: !120, line: 77, baseType: !28, size: 8, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !131, file: !120, line: 77, baseType: !28, size: 8, offset: 72)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !131, file: !120, line: 77, baseType: !25, size: 16, offset: 80)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !120, line: 77, baseType: !28, size: 8, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !131, file: !120, line: 77, baseType: !139, size: 24, offset: 104)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 24, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 3)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !131, file: !120, line: 78, baseType: !22, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !119, file: !120, line: 372, baseType: !144, size: 256)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !120, line: 93, size: 256, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !153}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !144, file: !120, line: 94, baseType: !118, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !144, file: !120, line: 94, baseType: !28, size: 8, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !144, file: !120, line: 94, baseType: !28, size: 8, offset: 72)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !144, file: !120, line: 94, baseType: !25, size: 16, offset: 80)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !144, file: !120, line: 94, baseType: !28, size: 8, offset: 96)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !144, file: !120, line: 94, baseType: !152, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !144, file: !120, line: 94, baseType: !18, size: 32, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !119, file: !120, line: 373, baseType: !155, size: 384)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !120, line: 97, size: 384, elements: !156)
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !155, file: !120, line: 98, baseType: !118, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !155, file: !120, line: 98, baseType: !28, size: 8, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !155, file: !120, line: 98, baseType: !28, size: 8, offset: 72)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !155, file: !120, line: 98, baseType: !25, size: 16, offset: 80)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !155, file: !120, line: 98, baseType: !28, size: 8, offset: 96)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !155, file: !120, line: 98, baseType: !86, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !155, file: !120, line: 98, baseType: !18, size: 32, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !155, file: !120, line: 99, baseType: !18, size: 32, offset: 224)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !155, file: !120, line: 100, baseType: !86, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !155, file: !120, line: 101, baseType: !114, size: 64, offset: 320)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !119, file: !120, line: 374, baseType: !168, size: 384)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !120, line: 104, size: 384, elements: !169)
!169 = !{!170, !171, !172, !173, !174, !175, !176, !178, !179, !180}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !168, file: !120, line: 105, baseType: !118, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !168, file: !120, line: 105, baseType: !28, size: 8, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !168, file: !120, line: 105, baseType: !28, size: 8, offset: 72)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !168, file: !120, line: 105, baseType: !25, size: 16, offset: 80)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !168, file: !120, line: 105, baseType: !28, size: 8, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !168, file: !120, line: 105, baseType: !114, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !168, file: !120, line: 106, baseType: !177, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !168, file: !120, line: 107, baseType: !86, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !168, file: !120, line: 108, baseType: !18, size: 32, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !168, file: !120, line: 109, baseType: !18, size: 32, offset: 352)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !119, file: !120, line: 375, baseType: !182, size: 192)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !120, line: 118, size: 192, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !189}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !182, file: !120, line: 119, baseType: !118, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !182, file: !120, line: 119, baseType: !28, size: 8, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !182, file: !120, line: 119, baseType: !28, size: 8, offset: 72)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !182, file: !120, line: 119, baseType: !25, size: 16, offset: 80)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !182, file: !120, line: 119, baseType: !28, size: 8, offset: 96)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !182, file: !120, line: 119, baseType: !190, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !119, file: !120, line: 376, baseType: !192, size: 448)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !120, line: 144, size: 448, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !212, !213, !214}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !192, file: !120, line: 145, baseType: !118, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !192, file: !120, line: 145, baseType: !28, size: 8, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !192, file: !120, line: 145, baseType: !28, size: 8, offset: 72)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !192, file: !120, line: 145, baseType: !25, size: 16, offset: 80)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !192, file: !120, line: 145, baseType: !28, size: 8, offset: 96)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !192, file: !120, line: 145, baseType: !28, size: 8, offset: 104)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !192, file: !120, line: 146, baseType: !28, size: 8, offset: 112)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !192, file: !120, line: 147, baseType: !28, size: 8, offset: 120)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !192, file: !120, line: 148, baseType: !118, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !192, file: !120, line: 149, baseType: !118, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !192, file: !120, line: 150, baseType: !86, size: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !192, file: !120, line: 154, baseType: !206, size: 64, offset: 320)
!206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !192, file: !120, line: 151, size: 64, elements: !207)
!207 = !{!208, !211}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !206, file: !120, line: 152, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !93, line: 248, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !206, file: !120, line: 153, baseType: !118, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !192, file: !120, line: 156, baseType: !18, size: 32, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !192, file: !120, line: 157, baseType: !76, size: 16, offset: 416)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !192, file: !120, line: 158, baseType: !28, size: 8, offset: 432)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !119, file: !120, line: 377, baseType: !216, size: 576)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !120, line: 122, size: 576, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !240, !241, !242, !243}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !216, file: !120, line: 123, baseType: !118, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !216, file: !120, line: 123, baseType: !28, size: 8, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !216, file: !120, line: 123, baseType: !28, size: 8, offset: 72)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !216, file: !120, line: 123, baseType: !25, size: 16, offset: 80)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !216, file: !120, line: 123, baseType: !28, size: 8, offset: 96)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !216, file: !120, line: 123, baseType: !28, size: 8, offset: 104)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !216, file: !120, line: 124, baseType: !25, size: 16, offset: 112)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !216, file: !120, line: 125, baseType: !190, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !216, file: !120, line: 126, baseType: !22, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !216, file: !120, line: 127, baseType: !228, size: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !93, line: 634, size: 320, elements: !230)
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !229, file: !93, line: 635, baseType: !190, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !229, file: !93, line: 635, baseType: !28, size: 8, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !229, file: !93, line: 635, baseType: !28, size: 8, offset: 72)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !229, file: !93, line: 635, baseType: !25, size: 16, offset: 80)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !229, file: !93, line: 635, baseType: !25, size: 16, offset: 96)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !229, file: !93, line: 636, baseType: !28, size: 8, offset: 112)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !229, file: !93, line: 637, baseType: !64, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !229, file: !93, line: 638, baseType: !118, size: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !229, file: !93, line: 639, baseType: !22, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !216, file: !120, line: 128, baseType: !118, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !120, line: 129, baseType: !118, size: 64, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !216, file: !120, line: 130, baseType: !114, size: 64, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !216, file: !120, line: 131, baseType: !28, size: 8, offset: 512)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !119, file: !120, line: 378, baseType: !245, size: 512)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !120, line: 134, size: 512, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !258, !259}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !245, file: !120, line: 135, baseType: !118, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !245, file: !120, line: 135, baseType: !28, size: 8, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !245, file: !120, line: 135, baseType: !28, size: 8, offset: 72)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !245, file: !120, line: 135, baseType: !25, size: 16, offset: 80)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !245, file: !120, line: 135, baseType: !28, size: 8, offset: 96)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !245, file: !120, line: 135, baseType: !28, size: 8, offset: 104)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !245, file: !120, line: 136, baseType: !114, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !245, file: !120, line: 137, baseType: !118, size: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !245, file: !120, line: 138, baseType: !118, size: 64, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !245, file: !120, line: 139, baseType: !257, size: 64, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !17, line: 129, baseType: !22)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !245, file: !120, line: 140, baseType: !18, size: 32, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !245, file: !120, line: 141, baseType: !190, size: 64, offset: 448)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !119, file: !120, line: 379, baseType: !261, size: 320)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !120, line: 185, size: 320, elements: !262)
!262 = !{!263, !264, !265, !266, !267, !268, !272}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !261, file: !120, line: 186, baseType: !118, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !261, file: !120, line: 186, baseType: !28, size: 8, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !261, file: !120, line: 186, baseType: !28, size: 8, offset: 72)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !261, file: !120, line: 186, baseType: !25, size: 16, offset: 80)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !261, file: !120, line: 186, baseType: !28, size: 8, offset: 96)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !261, file: !120, line: 186, baseType: !269, size: 128, offset: 128)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 128, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 2)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !261, file: !120, line: 186, baseType: !118, size: 64, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !119, file: !120, line: 380, baseType: !274, size: 384)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !120, line: 188, size: 384, elements: !275)
!275 = !{!276, !277, !278, !279, !280, !281, !282, !283}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !274, file: !120, line: 189, baseType: !118, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !274, file: !120, line: 189, baseType: !28, size: 8, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !274, file: !120, line: 189, baseType: !28, size: 8, offset: 72)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !274, file: !120, line: 189, baseType: !25, size: 16, offset: 80)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !274, file: !120, line: 189, baseType: !28, size: 8, offset: 96)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !274, file: !120, line: 190, baseType: !269, size: 128, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !274, file: !120, line: 190, baseType: !118, size: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !274, file: !120, line: 190, baseType: !284, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !93, line: 480, size: 576, elements: !286)
!286 = !{!287, !288, !289, !290, !298, !313, !346, !347, !348, !349, !350, !351}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !285, file: !93, line: 481, baseType: !114, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !285, file: !93, line: 482, baseType: !284, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !285, file: !93, line: 483, baseType: !284, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !285, file: !93, line: 484, baseType: !291, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !93, line: 497, size: 256, elements: !293)
!293 = !{!294, !295, !296, !297}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !292, file: !93, line: 498, baseType: !291, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !93, line: 499, baseType: !291, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !292, file: !93, line: 500, baseType: !284, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !292, file: !93, line: 501, baseType: !18, size: 32, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !285, file: !93, line: 485, baseType: !299, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !93, line: 466, size: 320, elements: !301)
!301 = !{!302, !307, !308, !309, !310, !311, !312}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !300, file: !93, line: 467, baseType: !303, size: 128)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !93, line: 459, size: 128, elements: !304)
!304 = !{!305, !306}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !303, file: !93, line: 460, baseType: !28, size: 8)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !303, file: !93, line: 461, baseType: !22, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !300, file: !93, line: 468, baseType: !303, size: 128, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !300, file: !93, line: 469, baseType: !25, size: 16, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !300, file: !93, line: 470, baseType: !28, size: 8, offset: 272)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !300, file: !93, line: 471, baseType: !28, size: 8, offset: 280)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !300, file: !93, line: 472, baseType: !28, size: 8, offset: 288)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !300, file: !93, line: 473, baseType: !28, size: 8, offset: 296)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !285, file: !93, line: 486, baseType: !314, size: 64, offset: 320)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !93, line: 448, size: 192, elements: !316)
!316 = !{!317, !341, !342, !343, !344, !345}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !315, file: !93, line: 449, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !93, line: 438, size: 64, elements: !319)
!319 = !{!320, !321, !335}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !318, file: !93, line: 439, baseType: !114, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !318, file: !93, line: 440, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !93, line: 419, size: 256, elements: !324)
!324 = !{!325, !331, !332, !333, !334}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !323, file: !93, line: 420, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !17, line: 1058, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!18, !330, !18, !190}
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !17, line: 424, baseType: !190)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !323, file: !93, line: 421, baseType: !190, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !323, file: !93, line: 422, baseType: !114, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !323, file: !93, line: 423, baseType: !28, size: 8, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !323, file: !93, line: 424, baseType: !28, size: 8, offset: 200)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !318, file: !93, line: 441, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !93, line: 429, size: 128, elements: !338)
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !337, file: !93, line: 430, baseType: !114, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !337, file: !93, line: 431, baseType: !336, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !315, file: !93, line: 450, baseType: !299, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !315, file: !93, line: 451, baseType: !28, size: 8, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !315, file: !93, line: 452, baseType: !28, size: 8, offset: 136)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !315, file: !93, line: 453, baseType: !28, size: 8, offset: 144)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !315, file: !93, line: 454, baseType: !28, size: 8, offset: 152)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !285, file: !93, line: 487, baseType: !22, size: 64, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !285, file: !93, line: 488, baseType: !18, size: 32, offset: 448)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !285, file: !93, line: 489, baseType: !25, size: 16, offset: 480)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !285, file: !93, line: 490, baseType: !25, size: 16, offset: 496)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !285, file: !93, line: 491, baseType: !28, size: 8, offset: 512)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !285, file: !93, line: 492, baseType: !28, size: 8, offset: 520)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !119, file: !120, line: 381, baseType: !353, size: 384)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !120, line: 193, size: 384, elements: !354)
!354 = !{!355, !356, !357, !358, !359, !360, !361, !362, !363}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !353, file: !120, line: 194, baseType: !118, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !353, file: !120, line: 194, baseType: !28, size: 8, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !353, file: !120, line: 194, baseType: !28, size: 8, offset: 72)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !353, file: !120, line: 194, baseType: !25, size: 16, offset: 80)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !353, file: !120, line: 194, baseType: !28, size: 8, offset: 96)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !353, file: !120, line: 194, baseType: !269, size: 128, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !353, file: !120, line: 194, baseType: !118, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !353, file: !120, line: 194, baseType: !18, size: 32, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !353, file: !120, line: 195, baseType: !18, size: 32, offset: 352)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !119, file: !120, line: 382, baseType: !365, size: 384)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !120, line: 198, size: 384, elements: !366)
!366 = !{!367, !368, !369, !370, !371, !372, !373, !374, !375, !376}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !365, file: !120, line: 199, baseType: !118, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !365, file: !120, line: 199, baseType: !28, size: 8, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !365, file: !120, line: 199, baseType: !28, size: 8, offset: 72)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !365, file: !120, line: 199, baseType: !25, size: 16, offset: 80)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !365, file: !120, line: 199, baseType: !28, size: 8, offset: 96)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !365, file: !120, line: 201, baseType: !28, size: 8, offset: 104)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !365, file: !120, line: 202, baseType: !28, size: 8, offset: 112)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !365, file: !120, line: 203, baseType: !269, size: 128, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !365, file: !120, line: 203, baseType: !118, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !365, file: !120, line: 203, baseType: !377, size: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !17, line: 128, baseType: !22)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !119, file: !120, line: 383, baseType: !379, size: 320)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !120, line: 206, size: 320, elements: !380)
!380 = !{!381, !382, !383, !384, !385, !386, !387}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !379, file: !120, line: 207, baseType: !118, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !379, file: !120, line: 207, baseType: !28, size: 8, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !379, file: !120, line: 207, baseType: !28, size: 8, offset: 72)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !379, file: !120, line: 207, baseType: !25, size: 16, offset: 80)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !379, file: !120, line: 207, baseType: !28, size: 8, offset: 96)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !379, file: !120, line: 207, baseType: !269, size: 128, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !379, file: !120, line: 207, baseType: !118, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !119, file: !120, line: 384, baseType: !389, size: 384)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !120, line: 234, size: 384, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !389, file: !120, line: 235, baseType: !118, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !389, file: !120, line: 235, baseType: !28, size: 8, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !389, file: !120, line: 235, baseType: !28, size: 8, offset: 72)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !389, file: !120, line: 235, baseType: !25, size: 16, offset: 80)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !389, file: !120, line: 235, baseType: !28, size: 8, offset: 96)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !389, file: !120, line: 235, baseType: !28, size: 8, offset: 104)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !389, file: !120, line: 235, baseType: !28, size: 8, offset: 112)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !389, file: !120, line: 235, baseType: !28, size: 8, offset: 120)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !389, file: !120, line: 235, baseType: !114, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !389, file: !120, line: 235, baseType: !18, size: 32, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !389, file: !120, line: 235, baseType: !18, size: 32, offset: 224)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !389, file: !120, line: 235, baseType: !18, size: 32, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !389, file: !120, line: 235, baseType: !28, size: 8, offset: 288)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !389, file: !120, line: 235, baseType: !28, size: 8, offset: 296)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !389, file: !120, line: 235, baseType: !118, size: 64, offset: 320)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !119, file: !120, line: 385, baseType: !407, size: 576)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !120, line: 238, size: 576, elements: !408)
!408 = !{!409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !407, file: !120, line: 239, baseType: !118, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !407, file: !120, line: 239, baseType: !28, size: 8, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !407, file: !120, line: 239, baseType: !28, size: 8, offset: 72)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !407, file: !120, line: 239, baseType: !25, size: 16, offset: 80)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !407, file: !120, line: 239, baseType: !28, size: 8, offset: 96)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !407, file: !120, line: 239, baseType: !28, size: 8, offset: 104)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !407, file: !120, line: 239, baseType: !28, size: 8, offset: 112)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !407, file: !120, line: 239, baseType: !28, size: 8, offset: 120)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !407, file: !120, line: 239, baseType: !114, size: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !407, file: !120, line: 239, baseType: !18, size: 32, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !407, file: !120, line: 239, baseType: !18, size: 32, offset: 224)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !407, file: !120, line: 239, baseType: !18, size: 32, offset: 256)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !407, file: !120, line: 239, baseType: !28, size: 8, offset: 288)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !407, file: !120, line: 239, baseType: !28, size: 8, offset: 296)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !407, file: !120, line: 239, baseType: !25, size: 16, offset: 304)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !407, file: !120, line: 240, baseType: !118, size: 64, offset: 320)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !407, file: !120, line: 241, baseType: !86, size: 64, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !407, file: !120, line: 242, baseType: !25, size: 16, offset: 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !407, file: !120, line: 243, baseType: !86, size: 64, offset: 512)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !119, file: !120, line: 386, baseType: !429, size: 384)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !120, line: 263, size: 384, elements: !430)
!430 = !{!431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !429, file: !120, line: 264, baseType: !118, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !429, file: !120, line: 264, baseType: !28, size: 8, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !429, file: !120, line: 264, baseType: !28, size: 8, offset: 72)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !429, file: !120, line: 264, baseType: !25, size: 16, offset: 80)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !429, file: !120, line: 264, baseType: !28, size: 8, offset: 96)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !429, file: !120, line: 264, baseType: !28, size: 8, offset: 104)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !429, file: !120, line: 264, baseType: !28, size: 8, offset: 112)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !429, file: !120, line: 264, baseType: !28, size: 8, offset: 120)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !429, file: !120, line: 264, baseType: !114, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !429, file: !120, line: 264, baseType: !18, size: 32, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !429, file: !120, line: 264, baseType: !18, size: 32, offset: 224)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !429, file: !120, line: 264, baseType: !18, size: 32, offset: 256)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !429, file: !120, line: 264, baseType: !28, size: 8, offset: 288)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !429, file: !120, line: 264, baseType: !28, size: 8, offset: 296)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !429, file: !120, line: 264, baseType: !28, size: 8, offset: 304)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !429, file: !120, line: 265, baseType: !118, size: 64, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !119, file: !120, line: 387, baseType: !448, size: 448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !120, line: 246, size: 448, elements: !449)
!449 = !{!450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !448, file: !120, line: 247, baseType: !118, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !448, file: !120, line: 247, baseType: !28, size: 8, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !448, file: !120, line: 247, baseType: !28, size: 8, offset: 72)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !448, file: !120, line: 247, baseType: !25, size: 16, offset: 80)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !448, file: !120, line: 247, baseType: !28, size: 8, offset: 96)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !448, file: !120, line: 247, baseType: !28, size: 8, offset: 104)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !448, file: !120, line: 247, baseType: !28, size: 8, offset: 112)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !448, file: !120, line: 247, baseType: !28, size: 8, offset: 120)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !448, file: !120, line: 247, baseType: !114, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !448, file: !120, line: 247, baseType: !18, size: 32, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !448, file: !120, line: 247, baseType: !18, size: 32, offset: 224)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !448, file: !120, line: 247, baseType: !18, size: 32, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !448, file: !120, line: 247, baseType: !28, size: 8, offset: 288)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !448, file: !120, line: 247, baseType: !28, size: 8, offset: 296)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !448, file: !120, line: 247, baseType: !118, size: 64, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !448, file: !120, line: 248, baseType: !118, size: 64, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !119, file: !120, line: 388, baseType: !467, size: 448)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !120, line: 251, size: 448, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !467, file: !120, line: 252, baseType: !118, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !467, file: !120, line: 252, baseType: !28, size: 8, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !467, file: !120, line: 252, baseType: !28, size: 8, offset: 72)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !467, file: !120, line: 252, baseType: !25, size: 16, offset: 80)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !467, file: !120, line: 252, baseType: !28, size: 8, offset: 96)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !467, file: !120, line: 252, baseType: !28, size: 8, offset: 104)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !467, file: !120, line: 252, baseType: !28, size: 8, offset: 112)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !467, file: !120, line: 252, baseType: !28, size: 8, offset: 120)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !467, file: !120, line: 252, baseType: !114, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !467, file: !120, line: 252, baseType: !18, size: 32, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !467, file: !120, line: 252, baseType: !18, size: 32, offset: 224)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !467, file: !120, line: 252, baseType: !18, size: 32, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !467, file: !120, line: 252, baseType: !28, size: 8, offset: 288)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !467, file: !120, line: 252, baseType: !28, size: 8, offset: 296)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !467, file: !120, line: 257, baseType: !118, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !467, file: !120, line: 258, baseType: !118, size: 64, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !119, file: !120, line: 389, baseType: !486, size: 512)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !120, line: 274, size: 512, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !500, !501}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !486, file: !120, line: 275, baseType: !118, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !486, file: !120, line: 275, baseType: !28, size: 8, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !486, file: !120, line: 275, baseType: !28, size: 8, offset: 72)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !486, file: !120, line: 275, baseType: !25, size: 16, offset: 80)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !486, file: !120, line: 275, baseType: !28, size: 8, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !486, file: !120, line: 275, baseType: !114, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !486, file: !120, line: 276, baseType: !18, size: 32, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !486, file: !120, line: 277, baseType: !496, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !17, line: 1061, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !330, !18, !190}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !486, file: !120, line: 278, baseType: !190, size: 64, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !486, file: !120, line: 279, baseType: !269, size: 128, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !119, file: !120, line: 390, baseType: !503, size: 576)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !120, line: 282, size: 576, elements: !504)
!504 = !{!505, !506, !507, !508, !509, !510, !511, !512, !518, !519, !520, !521, !527, !528}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !503, file: !120, line: 283, baseType: !118, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !503, file: !120, line: 283, baseType: !28, size: 8, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !503, file: !120, line: 283, baseType: !28, size: 8, offset: 72)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !503, file: !120, line: 283, baseType: !25, size: 16, offset: 80)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !503, file: !120, line: 283, baseType: !28, size: 8, offset: 96)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !503, file: !120, line: 283, baseType: !28, size: 8, offset: 104)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !503, file: !120, line: 284, baseType: !28, size: 8, offset: 112)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !503, file: !120, line: 285, baseType: !513, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !17, line: 1093, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!16, !18, !257, !18, !517, !190, !190}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !503, file: !120, line: 286, baseType: !114, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !503, file: !120, line: 287, baseType: !190, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !503, file: !120, line: 288, baseType: !190, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !503, file: !120, line: 289, baseType: !522, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !17, line: 1126, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!16, !330, !18, !190, !526}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !503, file: !120, line: 290, baseType: !118, size: 64, offset: 448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !503, file: !120, line: 291, baseType: !118, size: 64, offset: 512)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !119, file: !120, line: 391, baseType: !530, size: 512)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !120, line: 309, size: 512, elements: !531)
!531 = !{!532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !530, file: !120, line: 310, baseType: !118, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !530, file: !120, line: 310, baseType: !28, size: 8, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !530, file: !120, line: 310, baseType: !28, size: 8, offset: 72)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !530, file: !120, line: 310, baseType: !25, size: 16, offset: 80)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !530, file: !120, line: 310, baseType: !28, size: 8, offset: 96)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !530, file: !120, line: 310, baseType: !28, size: 8, offset: 104)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !530, file: !120, line: 311, baseType: !28, size: 8, offset: 112)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !530, file: !120, line: 312, baseType: !28, size: 8, offset: 120)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !530, file: !120, line: 313, baseType: !190, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !530, file: !120, line: 314, baseType: !114, size: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !530, file: !120, line: 315, baseType: !177, size: 64, offset: 256)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !530, file: !120, line: 316, baseType: !86, size: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !530, file: !120, line: 317, baseType: !86, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !530, file: !120, line: 318, baseType: !18, size: 32, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !119, file: !120, line: 392, baseType: !547, size: 448)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !120, line: 342, size: 448, elements: !548)
!548 = !{!549, !550, !551, !552, !553, !554, !555, !556, !557, !558}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !547, file: !120, line: 343, baseType: !118, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !547, file: !120, line: 343, baseType: !28, size: 8, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !547, file: !120, line: 343, baseType: !28, size: 8, offset: 72)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !547, file: !120, line: 343, baseType: !25, size: 16, offset: 80)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !547, file: !120, line: 343, baseType: !28, size: 8, offset: 96)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !547, file: !120, line: 343, baseType: !114, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !547, file: !120, line: 344, baseType: !114, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !547, file: !120, line: 345, baseType: !190, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !547, file: !120, line: 346, baseType: !86, size: 64, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !547, file: !120, line: 347, baseType: !18, size: 32, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !119, file: !120, line: 393, baseType: !560, size: 256)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !120, line: 352, size: 256, elements: !561)
!561 = !{!562, !563, !564, !565, !566, !567, !572}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !560, file: !120, line: 353, baseType: !118, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !560, file: !120, line: 353, baseType: !28, size: 8, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !560, file: !120, line: 353, baseType: !28, size: 8, offset: 72)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !560, file: !120, line: 353, baseType: !25, size: 16, offset: 80)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !560, file: !120, line: 353, baseType: !28, size: 8, offset: 96)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !560, file: !120, line: 353, baseType: !568, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !17, line: 1064, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !330, !190}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !560, file: !120, line: 354, baseType: !190, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !119, file: !120, line: 394, baseType: !574, size: 192)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !120, line: 359, size: 192, elements: !575)
!575 = !{!576, !577, !578, !579, !580, !581}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !574, file: !120, line: 360, baseType: !118, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !574, file: !120, line: 360, baseType: !28, size: 8, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !574, file: !120, line: 360, baseType: !28, size: 8, offset: 72)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !574, file: !120, line: 360, baseType: !25, size: 16, offset: 80)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !574, file: !120, line: 360, baseType: !28, size: 8, offset: 96)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !574, file: !120, line: 360, baseType: !118, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !119, file: !120, line: 401, baseType: !115, size: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !115, file: !93, line: 135, baseType: !28, size: 8, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !93, line: 136, baseType: !28, size: 8, offset: 72)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !115, file: !93, line: 137, baseType: !25, size: 16, offset: 80)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !115, file: !93, line: 138, baseType: !587, size: 32, offset: 96)
!587 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !588, line: 328, size: 32, elements: !589)
!588 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!589 = !{!590, !591}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !587, file: !588, line: 329, baseType: !18, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !587, file: !588, line: 330, baseType: !592, size: 32)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 4)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !115, file: !93, line: 139, baseType: !114, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !115, file: !93, line: 140, baseType: !114, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !115, file: !93, line: 141, baseType: !114, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !115, file: !93, line: 142, baseType: !76, size: 16, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !105, file: !93, line: 845, baseType: !600, size: 64, offset: 320)
!600 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !93, line: 732, size: 64, elements: !601)
!601 = !{!602, !603, !604, !605, !606, !607}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !600, file: !93, line: 733, baseType: !22, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !600, file: !93, line: 734, baseType: !18, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !600, file: !93, line: 735, baseType: !152, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !600, file: !93, line: 736, baseType: !86, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !600, file: !93, line: 737, baseType: !152, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !600, file: !93, line: 738, baseType: !101, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !105, file: !93, line: 845, baseType: !28, size: 8, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !102, file: !93, line: 893, baseType: !610, size: 640)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !93, line: 851, size: 640, elements: !611)
!611 = !{!612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !610, file: !93, line: 852, baseType: !101, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !610, file: !93, line: 852, baseType: !28, size: 8, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !610, file: !93, line: 852, baseType: !28, size: 8, offset: 72)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !610, file: !93, line: 852, baseType: !25, size: 16, offset: 80)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !610, file: !93, line: 852, baseType: !86, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !610, file: !93, line: 852, baseType: !101, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !610, file: !93, line: 852, baseType: !114, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !610, file: !93, line: 852, baseType: !600, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !610, file: !93, line: 852, baseType: !28, size: 8, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !610, file: !93, line: 852, baseType: !152, size: 64, offset: 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !610, file: !93, line: 853, baseType: !86, size: 64, offset: 512)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !610, file: !93, line: 854, baseType: !18, size: 32, offset: 576)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !610, file: !93, line: 855, baseType: !18, size: 32, offset: 608)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !102, file: !93, line: 894, baseType: !626, size: 1600)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !93, line: 862, size: 1600, elements: !627)
!627 = !{!628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !626, file: !93, line: 863, baseType: !101, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !626, file: !93, line: 863, baseType: !28, size: 8, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !626, file: !93, line: 863, baseType: !28, size: 8, offset: 72)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !626, file: !93, line: 863, baseType: !25, size: 16, offset: 80)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !626, file: !93, line: 863, baseType: !86, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !626, file: !93, line: 863, baseType: !101, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !626, file: !93, line: 863, baseType: !114, size: 64, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !626, file: !93, line: 863, baseType: !600, size: 64, offset: 320)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !626, file: !93, line: 863, baseType: !28, size: 8, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !626, file: !93, line: 863, baseType: !101, size: 64, offset: 448)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !626, file: !93, line: 864, baseType: !101, size: 64, offset: 512)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !626, file: !93, line: 865, baseType: !152, size: 64, offset: 576)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !626, file: !93, line: 866, baseType: !28, size: 8, offset: 640)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !626, file: !93, line: 867, baseType: !152, size: 64, offset: 704)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !626, file: !93, line: 868, baseType: !152, size: 64, offset: 768)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !626, file: !93, line: 869, baseType: !152, size: 64, offset: 832)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !626, file: !93, line: 870, baseType: !592, size: 32, offset: 896)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !626, file: !93, line: 871, baseType: !18, size: 32, offset: 928)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !626, file: !93, line: 872, baseType: !18, size: 32, offset: 960)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !626, file: !93, line: 873, baseType: !18, size: 32, offset: 992)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !626, file: !93, line: 874, baseType: !18, size: 32, offset: 1024)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !626, file: !93, line: 875, baseType: !18, size: 32, offset: 1056)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !626, file: !93, line: 876, baseType: !18, size: 32, offset: 1088)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !626, file: !93, line: 877, baseType: !18, size: 32, offset: 1120)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !626, file: !93, line: 878, baseType: !18, size: 32, offset: 1152)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !626, file: !93, line: 879, baseType: !18, size: 32, offset: 1184)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !626, file: !93, line: 880, baseType: !18, size: 32, offset: 1216)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !626, file: !93, line: 881, baseType: !18, size: 32, offset: 1248)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !626, file: !93, line: 882, baseType: !18, size: 32, offset: 1280)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !626, file: !93, line: 883, baseType: !18, size: 32, offset: 1312)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !626, file: !93, line: 884, baseType: !25, size: 16, offset: 1344)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !626, file: !93, line: 885, baseType: !28, size: 8, offset: 1360)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !626, file: !93, line: 886, baseType: !28, size: 8, offset: 1368)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !626, file: !93, line: 887, baseType: !28, size: 8, offset: 1376)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !626, file: !93, line: 888, baseType: !663, size: 160, offset: 1384)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 160, elements: !664)
!664 = !{!665}
!665 = !DISubrange(count: 20)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !92, file: !93, line: 916, baseType: !114, size: 64, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !92, file: !93, line: 917, baseType: !668, size: 64, offset: 448)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !93, line: 679, size: 640, elements: !670)
!670 = !{!671, !679, !692, !701, !710, !723, !737, !738, !750}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !669, file: !93, line: 680, baseType: !672, size: 128)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !93, line: 575, size: 128, elements: !673)
!673 = !{!674, !675, !676, !677, !678}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !672, file: !93, line: 576, baseType: !190, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !672, file: !93, line: 576, baseType: !28, size: 8, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !672, file: !93, line: 576, baseType: !28, size: 8, offset: 72)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !672, file: !93, line: 576, baseType: !25, size: 16, offset: 80)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !672, file: !93, line: 576, baseType: !25, size: 16, offset: 96)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !669, file: !93, line: 681, baseType: !680, size: 384)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !93, line: 604, size: 384, elements: !681)
!681 = !{!682, !683, !684, !685, !686, !687, !688, !689, !690, !691}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !680, file: !93, line: 605, baseType: !190, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !680, file: !93, line: 605, baseType: !28, size: 8, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !93, line: 605, baseType: !28, size: 8, offset: 72)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !680, file: !93, line: 605, baseType: !25, size: 16, offset: 80)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !680, file: !93, line: 605, baseType: !25, size: 16, offset: 96)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !680, file: !93, line: 606, baseType: !25, size: 16, offset: 112)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !680, file: !93, line: 607, baseType: !101, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !680, file: !93, line: 608, baseType: !86, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !680, file: !93, line: 609, baseType: !86, size: 64, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !680, file: !93, line: 610, baseType: !22, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !669, file: !93, line: 682, baseType: !693, size: 192)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !93, line: 582, size: 192, elements: !694)
!694 = !{!695, !696, !697, !698, !699, !700}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !693, file: !93, line: 583, baseType: !190, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !693, file: !93, line: 583, baseType: !28, size: 8, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !693, file: !93, line: 583, baseType: !28, size: 8, offset: 72)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !693, file: !93, line: 583, baseType: !25, size: 16, offset: 80)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !693, file: !93, line: 583, baseType: !25, size: 16, offset: 96)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !693, file: !93, line: 584, baseType: !118, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !669, file: !93, line: 683, baseType: !702, size: 192)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !93, line: 616, size: 192, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !709}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !702, file: !93, line: 617, baseType: !190, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !702, file: !93, line: 617, baseType: !28, size: 8, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !702, file: !93, line: 617, baseType: !28, size: 8, offset: 72)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !702, file: !93, line: 617, baseType: !25, size: 16, offset: 80)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !702, file: !93, line: 617, baseType: !25, size: 16, offset: 96)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !702, file: !93, line: 618, baseType: !114, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !669, file: !93, line: 684, baseType: !711, size: 448)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !93, line: 621, size: 448, elements: !712)
!712 = !{!713, !714, !715, !716, !717, !718, !719, !720, !721, !722}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !711, file: !93, line: 622, baseType: !190, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !711, file: !93, line: 622, baseType: !28, size: 8, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !93, line: 622, baseType: !28, size: 8, offset: 72)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !711, file: !93, line: 622, baseType: !25, size: 16, offset: 80)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !711, file: !93, line: 622, baseType: !25, size: 16, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !711, file: !93, line: 623, baseType: !18, size: 32, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !711, file: !93, line: 624, baseType: !101, size: 64, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !711, file: !93, line: 625, baseType: !86, size: 64, offset: 256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !711, file: !93, line: 626, baseType: !86, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !711, file: !93, line: 627, baseType: !18, size: 32, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !669, file: !93, line: 685, baseType: !724, size: 512)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !93, line: 590, size: 512, elements: !725)
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !724, file: !93, line: 591, baseType: !190, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !724, file: !93, line: 591, baseType: !28, size: 8, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !724, file: !93, line: 591, baseType: !28, size: 8, offset: 72)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !724, file: !93, line: 591, baseType: !25, size: 16, offset: 80)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !724, file: !93, line: 591, baseType: !25, size: 16, offset: 96)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !724, file: !93, line: 592, baseType: !18, size: 32, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !724, file: !93, line: 593, baseType: !118, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !724, file: !93, line: 594, baseType: !118, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !724, file: !93, line: 595, baseType: !64, size: 64, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !724, file: !93, line: 596, baseType: !190, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !724, file: !93, line: 597, baseType: !18, size: 32, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !669, file: !93, line: 686, baseType: !229, size: 320)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !669, file: !93, line: 687, baseType: !739, size: 640)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !93, line: 646, size: 640, elements: !740)
!740 = !{!741, !742, !743, !744, !745, !746}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !739, file: !93, line: 647, baseType: !190, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !739, file: !93, line: 647, baseType: !28, size: 8, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !739, file: !93, line: 647, baseType: !28, size: 8, offset: 72)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !739, file: !93, line: 647, baseType: !25, size: 16, offset: 80)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !739, file: !93, line: 647, baseType: !25, size: 16, offset: 96)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !739, file: !93, line: 648, baseType: !747, size: 512, offset: 128)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 512, elements: !748)
!748 = !{!749}
!749 = !DISubrange(count: 8)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !669, file: !93, line: 688, baseType: !751, size: 320)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !93, line: 669, size: 320, elements: !752)
!752 = !{!753, !754, !755, !756, !757, !758, !759, !760, !761}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !751, file: !93, line: 670, baseType: !190, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !751, file: !93, line: 670, baseType: !28, size: 8, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !751, file: !93, line: 670, baseType: !28, size: 8, offset: 72)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !751, file: !93, line: 670, baseType: !25, size: 16, offset: 80)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !751, file: !93, line: 670, baseType: !25, size: 16, offset: 96)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !751, file: !93, line: 671, baseType: !28, size: 8, offset: 112)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !751, file: !93, line: 672, baseType: !114, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !751, file: !93, line: 673, baseType: !118, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !751, file: !93, line: 674, baseType: !762, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !93, line: 660, size: 128, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !763, file: !93, line: 661, baseType: !496, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !763, file: !93, line: 662, baseType: !190, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !92, file: !93, line: 918, baseType: !101, size: 64, offset: 512)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !92, file: !93, line: 919, baseType: !18, size: 32, offset: 576)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !65, file: !66, line: 61, baseType: !18, size: 32, offset: 1088)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !65, file: !66, line: 62, baseType: !18, size: 32, offset: 1120)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !65, file: !66, line: 63, baseType: !25, size: 16, offset: 1152)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !65, file: !66, line: 64, baseType: !28, size: 8, offset: 1168)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !65, file: !66, line: 66, baseType: !774, size: 2688, offset: 1216)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 2688, elements: !775)
!775 = !{!776}
!776 = !DISubrange(count: 7)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !65, file: !66, line: 67, baseType: !778, size: 3072, offset: 3904)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 3072, elements: !748)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !65, file: !66, line: 68, baseType: !780, size: 576, offset: 6976)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 576, elements: !50)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !65, file: !66, line: 69, baseType: !177, size: 64, offset: 7552)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !65, file: !66, line: 71, baseType: !86, size: 64, offset: 7616)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !65, file: !66, line: 72, baseType: !177, size: 64, offset: 7680)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !65, file: !66, line: 73, baseType: !668, size: 64, offset: 7744)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !65, file: !66, line: 74, baseType: !114, size: 64, offset: 7808)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !65, file: !66, line: 75, baseType: !118, size: 64, offset: 7872)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !65, file: !66, line: 76, baseType: !114, size: 64, offset: 7936)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !65, file: !66, line: 77, baseType: !101, size: 64, offset: 8000)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !65, file: !66, line: 78, baseType: !118, size: 64, offset: 8064)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !65, file: !66, line: 79, baseType: !114, size: 64, offset: 8128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !65, file: !66, line: 80, baseType: !152, size: 64, offset: 8192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !65, file: !66, line: 81, baseType: !101, size: 64, offset: 8256)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !65, file: !66, line: 82, baseType: !794, size: 64, offset: 8320)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !93, line: 718, size: 128, elements: !797)
!797 = !{!798, !799, !800, !801, !802, !803}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !796, file: !93, line: 722, baseType: !18, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !796, file: !93, line: 723, baseType: !18, size: 32, offset: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !796, file: !93, line: 724, baseType: !25, size: 16, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !796, file: !93, line: 725, baseType: !28, size: 8, offset: 80)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !796, file: !93, line: 726, baseType: !28, size: 8, offset: 88)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !796, file: !93, line: 727, baseType: !28, size: 8, offset: 96)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !65, file: !66, line: 83, baseType: !101, size: 64, offset: 8384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !65, file: !66, line: 84, baseType: !118, size: 64, offset: 8448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !65, file: !66, line: 85, baseType: !668, size: 64, offset: 8512)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !65, file: !66, line: 86, baseType: !118, size: 64, offset: 8576)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !65, file: !66, line: 87, baseType: !668, size: 64, offset: 8640)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !65, file: !66, line: 88, baseType: !101, size: 64, offset: 8704)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !65, file: !66, line: 89, baseType: !101, size: 64, offset: 8768)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !65, file: !66, line: 90, baseType: !228, size: 64, offset: 8832)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !65, file: !66, line: 91, baseType: !813, size: 64, offset: 8896)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !93, line: 652, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!16, !64, !817}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !65, file: !66, line: 92, baseType: !819, size: 64, offset: 8960)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !93, line: 656, baseType: !210)
!820 = !{!821, !822, !823, !824, !825, !826, !827}
!821 = !DILocalVariable(name: "walk_state", arg: 1, scope: !61, file: !3, line: 176, type: !64)
!822 = !DILocalVariable(name: "operand", scope: !61, file: !3, line: 178, type: !177)
!823 = !DILocalVariable(name: "return_desc", scope: !61, file: !3, line: 179, type: !118)
!824 = !DILocalVariable(name: "status", scope: !61, file: !3, line: 180, type: !16)
!825 = !DILocalVariable(name: "index", scope: !61, file: !3, line: 181, type: !22)
!826 = !DILocalVariable(name: "this_element", scope: !61, file: !3, line: 182, type: !118)
!827 = !DILabel(scope: !61, name: "cleanup", file: !3, line: 284)
!828 = !DILocation(line: 176, column: 61, scope: !61)
!829 = !DILocation(line: 178, column: 2, scope: !61)
!830 = !DILocation(line: 178, column: 30, scope: !61)
!831 = !DILocation(line: 178, column: 41, scope: !61)
!832 = !DILocation(line: 178, column: 53, scope: !61)
!833 = !DILocation(line: 179, column: 2, scope: !61)
!834 = !DILocation(line: 179, column: 29, scope: !61)
!835 = !DILocation(line: 180, column: 2, scope: !61)
!836 = !DILocation(line: 180, column: 14, scope: !61)
!837 = !DILocation(line: 181, column: 2, scope: !61)
!838 = !DILocation(line: 181, column: 6, scope: !61)
!839 = !DILocation(line: 182, column: 2, scope: !61)
!840 = !DILocation(line: 182, column: 29, scope: !61)
!841 = !DILocation(line: 187, column: 10, scope: !61)
!842 = !DILocation(line: 187, column: 22, scope: !61)
!843 = !DILocation(line: 187, column: 2, scope: !61)
!844 = !DILocation(line: 196, column: 8, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 196, column: 7)
!846 = distinct !DILexicalBlock(scope: !61, file: !3, line: 187, column: 30)
!847 = !DILocation(line: 196, column: 28, scope: !845)
!848 = !DILocation(line: 196, column: 34, scope: !845)
!849 = !DILocation(line: 196, column: 56, scope: !845)
!850 = !DILocation(line: 197, column: 8, scope: !845)
!851 = !DILocation(line: 197, column: 28, scope: !845)
!852 = !DILocation(line: 197, column: 34, scope: !845)
!853 = !DILocation(line: 196, column: 7, scope: !846)
!854 = !DILocation(line: 198, column: 4, scope: !855)
!855 = distinct !DILexicalBlock(scope: !845, file: !3, line: 197, column: 57)
!856 = !DILocation(line: 199, column: 11, scope: !855)
!857 = !DILocation(line: 200, column: 4, scope: !855)
!858 = !DILocation(line: 205, column: 11, scope: !846)
!859 = !DILocation(line: 205, column: 31, scope: !846)
!860 = !DILocation(line: 205, column: 9, scope: !846)
!861 = !DILocation(line: 206, column: 7, scope: !862)
!862 = distinct !DILexicalBlock(scope: !846, file: !3, line: 206, column: 7)
!863 = !DILocation(line: 206, column: 16, scope: !862)
!864 = !DILocation(line: 206, column: 36, scope: !862)
!865 = !DILocation(line: 206, column: 13, scope: !862)
!866 = !DILocation(line: 206, column: 7, scope: !846)
!867 = !DILocation(line: 207, column: 4, scope: !868)
!868 = distinct !DILexicalBlock(scope: !862, file: !3, line: 206, column: 43)
!869 = !DILocation(line: 211, column: 11, scope: !868)
!870 = !DILocation(line: 212, column: 4, scope: !868)
!871 = !DILocation(line: 218, column: 17, scope: !846)
!872 = !DILocation(line: 218, column: 15, scope: !846)
!873 = !DILocation(line: 219, column: 8, scope: !874)
!874 = distinct !DILexicalBlock(scope: !846, file: !3, line: 219, column: 7)
!875 = !DILocation(line: 219, column: 7, scope: !846)
!876 = !DILocation(line: 220, column: 11, scope: !877)
!877 = distinct !DILexicalBlock(scope: !874, file: !3, line: 219, column: 21)
!878 = !DILocation(line: 221, column: 4, scope: !877)
!879 = !DILocation(line: 236, column: 3, scope: !846)
!880 = !DILocation(line: 236, column: 10, scope: !881)
!881 = distinct !DILexicalBlock(scope: !882, file: !3, line: 236, column: 3)
!882 = distinct !DILexicalBlock(scope: !846, file: !3, line: 236, column: 3)
!883 = !DILocation(line: 236, column: 18, scope: !881)
!884 = !DILocation(line: 236, column: 38, scope: !881)
!885 = !DILocation(line: 236, column: 16, scope: !881)
!886 = !DILocation(line: 236, column: 3, scope: !882)
!887 = !DILocation(line: 240, column: 19, scope: !888)
!888 = distinct !DILexicalBlock(scope: !881, file: !3, line: 236, column: 54)
!889 = !DILocation(line: 240, column: 39, scope: !888)
!890 = !DILocation(line: 240, column: 48, scope: !888)
!891 = !DILocation(line: 240, column: 17, scope: !888)
!892 = !DILocation(line: 244, column: 9, scope: !893)
!893 = distinct !DILexicalBlock(scope: !888, file: !3, line: 244, column: 8)
!894 = !DILocation(line: 244, column: 8, scope: !888)
!895 = !DILocation(line: 245, column: 5, scope: !896)
!896 = distinct !DILexicalBlock(scope: !893, file: !3, line: 244, column: 23)
!897 = !DILocation(line: 253, column: 32, scope: !898)
!898 = distinct !DILexicalBlock(scope: !888, file: !3, line: 253, column: 8)
!899 = !DILocation(line: 253, column: 52, scope: !898)
!900 = !DILocation(line: 253, column: 26, scope: !898)
!901 = !DILocation(line: 254, column: 12, scope: !898)
!902 = !DILocation(line: 254, column: 26, scope: !898)
!903 = !DILocation(line: 253, column: 9, scope: !898)
!904 = !DILocation(line: 253, column: 8, scope: !888)
!905 = !DILocation(line: 255, column: 5, scope: !906)
!906 = distinct !DILexicalBlock(scope: !898, file: !3, line: 254, column: 39)
!907 = !DILocation(line: 258, column: 32, scope: !908)
!908 = distinct !DILexicalBlock(scope: !888, file: !3, line: 258, column: 8)
!909 = !DILocation(line: 258, column: 52, scope: !908)
!910 = !DILocation(line: 258, column: 26, scope: !908)
!911 = !DILocation(line: 259, column: 12, scope: !908)
!912 = !DILocation(line: 259, column: 26, scope: !908)
!913 = !DILocation(line: 258, column: 9, scope: !908)
!914 = !DILocation(line: 258, column: 8, scope: !888)
!915 = !DILocation(line: 260, column: 5, scope: !916)
!916 = distinct !DILexicalBlock(scope: !908, file: !3, line: 259, column: 39)
!917 = !DILocation(line: 265, column: 33, scope: !888)
!918 = !DILocation(line: 265, column: 4, scope: !888)
!919 = !DILocation(line: 265, column: 25, scope: !888)
!920 = !DILocation(line: 265, column: 31, scope: !888)
!921 = !DILocation(line: 266, column: 4, scope: !888)
!922 = !DILocation(line: 236, column: 50, scope: !881)
!923 = !DILocation(line: 236, column: 3, scope: !881)
!924 = distinct !{!924, !886, !925, !926, !927}
!925 = !DILocation(line: 267, column: 3, scope: !882)
!926 = !{!"llvm.loop.mustprogress"}
!927 = !{!"llvm.loop.unroll.disable"}
!928 = !DILocation(line: 268, column: 3, scope: !846)
!929 = !DILocation(line: 272, column: 34, scope: !846)
!930 = !DILocation(line: 272, column: 12, scope: !846)
!931 = !DILocation(line: 272, column: 10, scope: !846)
!932 = !DILocation(line: 273, column: 3, scope: !846)
!933 = !DILocation(line: 277, column: 3, scope: !846)
!934 = !DILocation(line: 280, column: 10, scope: !846)
!935 = !DILocation(line: 281, column: 3, scope: !846)
!936 = !DILocation(line: 282, column: 2, scope: !846)
!937 = !DILocation(line: 284, column: 1, scope: !61)
!938 = !DILocation(line: 288, column: 6, scope: !939)
!939 = distinct !DILexicalBlock(scope: !61, file: !3, line: 288, column: 6)
!940 = !DILocation(line: 288, column: 6, scope: !61)
!941 = !DILocation(line: 289, column: 28, scope: !942)
!942 = distinct !DILexicalBlock(scope: !939, file: !3, line: 288, column: 28)
!943 = !DILocation(line: 289, column: 3, scope: !942)
!944 = !DILocation(line: 290, column: 2, scope: !942)
!945 = !DILocation(line: 295, column: 28, scope: !946)
!946 = distinct !DILexicalBlock(scope: !939, file: !3, line: 294, column: 7)
!947 = !DILocation(line: 295, column: 3, scope: !946)
!948 = !DILocation(line: 295, column: 15, scope: !946)
!949 = !DILocation(line: 295, column: 26, scope: !946)
!950 = !DILocation(line: 298, column: 2, scope: !61)
!951 = !DILocation(line: 299, column: 1, scope: !61)
!952 = !DISubprogram(name: "acpi_error", scope: !953, file: !953, line: 901, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!953 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!954 = !DISubroutineType(types: !955)
!955 = !{null, !956, !18, !956, null}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!957 = !DISubprogram(name: "acpi_ut_create_integer_object", scope: !958, file: !958, line: 455, type: !959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!958 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!959 = !DISubroutineType(types: !960)
!960 = !{!118, !22}
!961 = distinct !DISubprogram(name: "acpi_ex_do_match", scope: !3, file: !3, line: 63, type: !962, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !964)
!962 = !DISubroutineType(types: !963)
!963 = !{!28, !18, !118, !118}
!964 = !{!965, !966, !967, !968, !969}
!965 = !DILocalVariable(name: "match_op", arg: 1, scope: !961, file: !3, line: 63, type: !18)
!966 = !DILocalVariable(name: "package_obj", arg: 2, scope: !961, file: !3, line: 64, type: !118)
!967 = !DILocalVariable(name: "match_obj", arg: 3, scope: !961, file: !3, line: 65, type: !118)
!968 = !DILocalVariable(name: "logical_result", scope: !961, file: !3, line: 67, type: !28)
!969 = !DILocalVariable(name: "status", scope: !961, file: !3, line: 68, type: !16)
!970 = !DILocation(line: 63, column: 22, scope: !961)
!971 = !DILocation(line: 64, column: 31, scope: !961)
!972 = !DILocation(line: 65, column: 31, scope: !961)
!973 = !DILocation(line: 67, column: 2, scope: !961)
!974 = !DILocation(line: 67, column: 5, scope: !961)
!975 = !DILocation(line: 68, column: 2, scope: !961)
!976 = !DILocation(line: 68, column: 14, scope: !961)
!977 = !DILocation(line: 80, column: 10, scope: !961)
!978 = !DILocation(line: 80, column: 2, scope: !961)
!979 = !DILocation(line: 93, column: 51, scope: !980)
!980 = distinct !DILexicalBlock(scope: !961, file: !3, line: 80, column: 20)
!981 = !DILocation(line: 94, column: 8, scope: !980)
!982 = !DILocation(line: 93, column: 7, scope: !980)
!983 = !DILocation(line: 92, column: 10, scope: !980)
!984 = !DILocation(line: 95, column: 7, scope: !985)
!985 = distinct !DILexicalBlock(scope: !980, file: !3, line: 95, column: 7)
!986 = !DILocation(line: 95, column: 7, scope: !980)
!987 = !DILocation(line: 96, column: 4, scope: !988)
!988 = distinct !DILexicalBlock(scope: !985, file: !3, line: 95, column: 29)
!989 = !DILocation(line: 98, column: 3, scope: !980)
!990 = !DILocation(line: 106, column: 50, scope: !980)
!991 = !DILocation(line: 107, column: 8, scope: !980)
!992 = !DILocation(line: 106, column: 7, scope: !980)
!993 = !DILocation(line: 105, column: 10, scope: !980)
!994 = !DILocation(line: 108, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !980, file: !3, line: 108, column: 7)
!996 = !DILocation(line: 108, column: 7, scope: !980)
!997 = !DILocation(line: 109, column: 4, scope: !998)
!998 = distinct !DILexicalBlock(scope: !995, file: !3, line: 108, column: 29)
!999 = !DILocation(line: 111, column: 27, scope: !980)
!1000 = !DILocation(line: 111, column: 25, scope: !980)
!1001 = !DILocation(line: 111, column: 20, scope: !980)
!1002 = !DILocation(line: 111, column: 18, scope: !980)
!1003 = !DILocation(line: 112, column: 3, scope: !980)
!1004 = !DILocation(line: 120, column: 53, scope: !980)
!1005 = !DILocation(line: 121, column: 8, scope: !980)
!1006 = !DILocation(line: 120, column: 7, scope: !980)
!1007 = !DILocation(line: 119, column: 10, scope: !980)
!1008 = !DILocation(line: 122, column: 7, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !980, file: !3, line: 122, column: 7)
!1010 = !DILocation(line: 122, column: 7, scope: !980)
!1011 = !DILocation(line: 123, column: 4, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 122, column: 29)
!1013 = !DILocation(line: 125, column: 3, scope: !980)
!1014 = !DILocation(line: 133, column: 53, scope: !980)
!1015 = !DILocation(line: 134, column: 8, scope: !980)
!1016 = !DILocation(line: 133, column: 7, scope: !980)
!1017 = !DILocation(line: 132, column: 10, scope: !980)
!1018 = !DILocation(line: 135, column: 7, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !980, file: !3, line: 135, column: 7)
!1020 = !DILocation(line: 135, column: 7, scope: !980)
!1021 = !DILocation(line: 136, column: 4, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 135, column: 29)
!1023 = !DILocation(line: 138, column: 27, scope: !980)
!1024 = !DILocation(line: 138, column: 25, scope: !980)
!1025 = !DILocation(line: 138, column: 20, scope: !980)
!1026 = !DILocation(line: 138, column: 18, scope: !980)
!1027 = !DILocation(line: 139, column: 3, scope: !980)
!1028 = !DILocation(line: 147, column: 50, scope: !980)
!1029 = !DILocation(line: 148, column: 8, scope: !980)
!1030 = !DILocation(line: 147, column: 7, scope: !980)
!1031 = !DILocation(line: 146, column: 10, scope: !980)
!1032 = !DILocation(line: 149, column: 7, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !980, file: !3, line: 149, column: 7)
!1034 = !DILocation(line: 149, column: 7, scope: !980)
!1035 = !DILocation(line: 150, column: 4, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 149, column: 29)
!1037 = !DILocation(line: 152, column: 3, scope: !980)
!1038 = !DILocation(line: 158, column: 3, scope: !980)
!1039 = !DILocation(line: 161, column: 10, scope: !961)
!1040 = !DILocation(line: 161, column: 2, scope: !961)
!1041 = !DILocation(line: 162, column: 1, scope: !961)
!1042 = !DISubprogram(name: "acpi_ex_load_table_op", scope: !1043, file: !1043, line: 234, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1043 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!16, !64, !177}
!1046 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !958, file: !958, line: 369, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !118}
!1049 = !DISubprogram(name: "acpi_ex_do_logical_op", scope: !1043, file: !1043, line: 200, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!16, !25, !118, !118, !86}
