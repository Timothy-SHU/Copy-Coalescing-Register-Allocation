; ModuleID = 'drivers/acpi/acpica/dsutils.c'
source_filename = "drivers/acpi/acpica/dsutils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_parse_obj_common = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%struct.acpi_common_state = type { ptr, i8, i8, i16, i16 }
%struct.acpi_control_state = type { ptr, i8, i8, i16, i16, i16, ptr, ptr, ptr, i64 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }

@acpi_gbl_enable_interpreter_slack = external dso_local global i8, align 1
@_acpi_module_name = internal constant [8 x i8] c"dsutils\00", align 1, !dbg !0
@.str = private unnamed_addr constant [8 x i8] c"Null Op\00", align 1, !dbg !793
@.str.1 = private unnamed_addr constant [28 x i8] c"Unknown parent opcode Op=%p\00", align 1, !dbg !796
@acpi_gbl_root_node = external dso_local global ptr, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Missing or null operand\00", align 1, !dbg !801
@.str.3 = private unnamed_addr constant [22 x i8] c"While creating Arg %u\00", align 1, !dbg !806

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ds_clear_implicit_return(ptr noundef %walk_state) #0 align 16 !dbg !822 {
entry:
  %walk_state.addr = alloca ptr, align 8
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !826, metadata !DIExpression()), !dbg !827
  %0 = load i8, ptr @acpi_gbl_enable_interpreter_slack, align 1, !dbg !828
  %tobool = icmp ne i8 %0, 0, !dbg !828
  br i1 %tobool, label %if.end, label %if.then, !dbg !830

if.then:                                          ; preds = %entry
  br label %if.end5, !dbg !831

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !833
  %implicit_return_obj = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 34, !dbg !835
  %2 = load ptr, ptr %implicit_return_obj, align 8, !dbg !835
  %tobool1 = icmp ne ptr %2, null, !dbg !833
  br i1 %tobool1, label %if.then2, label %if.end5, !dbg !836

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !837
  %implicit_return_obj3 = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 34, !dbg !839
  %4 = load ptr, ptr %implicit_return_obj3, align 8, !dbg !839
  call void @acpi_ut_remove_reference(ptr noundef %4) #5, !dbg !840
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !841
  %implicit_return_obj4 = getelementptr inbounds %struct.acpi_walk_state, ptr %5, i32 0, i32 34, !dbg !842
  store ptr null, ptr %implicit_return_obj4, align 8, !dbg !843
  br label %if.end5, !dbg !844

if.end5:                                          ; preds = %if.then, %if.then2, %if.end
  ret void, !dbg !845
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !846 dso_local void @acpi_ut_remove_reference(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ds_do_implicit_return(ptr noundef %return_desc, ptr noundef %walk_state, i8 noundef zeroext %add_reference) #0 align 16 !dbg !850 {
entry:
  %retval = alloca i8, align 1
  %return_desc.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %add_reference.addr = alloca i8, align 1
  store ptr %return_desc, ptr %return_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_desc.addr, metadata !854, metadata !DIExpression()), !dbg !857
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !855, metadata !DIExpression()), !dbg !858
  store i8 %add_reference, ptr %add_reference.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %add_reference.addr, metadata !856, metadata !DIExpression()), !dbg !859
  %0 = load i8, ptr @acpi_gbl_enable_interpreter_slack, align 1, !dbg !860
  %tobool = icmp ne i8 %0, 0, !dbg !860
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !862

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %return_desc.addr, align 8, !dbg !863
  %tobool1 = icmp ne ptr %1, null, !dbg !863
  br i1 %tobool1, label %if.end, label %if.then, !dbg !864

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 0, ptr %retval, align 1, !dbg !865
  br label %return, !dbg !865

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !867
  %implicit_return_obj = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 34, !dbg !869
  %3 = load ptr, ptr %implicit_return_obj, align 8, !dbg !869
  %tobool2 = icmp ne ptr %3, null, !dbg !867
  br i1 %tobool2, label %if.then3, label %if.end7, !dbg !870

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !871
  %implicit_return_obj4 = getelementptr inbounds %struct.acpi_walk_state, ptr %4, i32 0, i32 34, !dbg !874
  %5 = load ptr, ptr %implicit_return_obj4, align 8, !dbg !874
  %6 = load ptr, ptr %return_desc.addr, align 8, !dbg !875
  %cmp = icmp eq ptr %5, %6, !dbg !876
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !877

if.then5:                                         ; preds = %if.then3
  store i8 1, ptr %retval, align 1, !dbg !878
  br label %return, !dbg !878

if.end6:                                          ; preds = %if.then3
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !880
  call void @acpi_ds_clear_implicit_return(ptr noundef %7) #5, !dbg !881
  br label %if.end7, !dbg !882

if.end7:                                          ; preds = %if.end6, %if.end
  %8 = load ptr, ptr %return_desc.addr, align 8, !dbg !883
  %9 = load ptr, ptr %walk_state.addr, align 8, !dbg !884
  %implicit_return_obj8 = getelementptr inbounds %struct.acpi_walk_state, ptr %9, i32 0, i32 34, !dbg !885
  store ptr %8, ptr %implicit_return_obj8, align 8, !dbg !886
  %10 = load i8, ptr %add_reference.addr, align 1, !dbg !887
  %tobool9 = icmp ne i8 %10, 0, !dbg !887
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !889

if.then10:                                        ; preds = %if.end7
  %11 = load ptr, ptr %return_desc.addr, align 8, !dbg !890
  call void @acpi_ut_add_reference(ptr noundef %11) #5, !dbg !892
  br label %if.end11, !dbg !893

if.end11:                                         ; preds = %if.then10, %if.end7
  store i8 1, ptr %retval, align 1, !dbg !894
  br label %return, !dbg !894

return:                                           ; preds = %if.end11, %if.then5, %if.then
  %12 = load i8, ptr %retval, align 1, !dbg !895
  ret i8 %12, !dbg !895
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !896 dso_local void @acpi_ut_add_reference(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ds_is_result_used(ptr noundef %op, ptr noundef %walk_state) #0 align 16 !dbg !897 {
entry:
  %retval = alloca i8, align 1
  %op.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %parent_info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !901, metadata !DIExpression()), !dbg !906
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !902, metadata !DIExpression()), !dbg !907
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_info) #6, !dbg !908
  call void @llvm.dbg.declare(metadata ptr %parent_info, metadata !903, metadata !DIExpression()), !dbg !909
  %0 = load ptr, ptr %op.addr, align 8, !dbg !910
  %tobool = icmp ne ptr %0, null, !dbg !910
  br i1 %tobool, label %if.end, label %if.then, !dbg !912

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 143, ptr noundef @.str) #5, !dbg !913
  store i8 1, ptr %retval, align 1, !dbg !915
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !915

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !916
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 43, !dbg !917
  %2 = load ptr, ptr %result_obj, align 8, !dbg !917
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !918
  %call = call zeroext i8 @acpi_ds_do_implicit_return(ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1) #5, !dbg !919
  %4 = load ptr, ptr %op.addr, align 8, !dbg !920
  %parent = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %4, i32 0, i32 0, !dbg !922
  %5 = load ptr, ptr %parent, align 8, !dbg !922
  %tobool1 = icmp ne ptr %5, null, !dbg !920
  br i1 %tobool1, label %lor.lhs.false, label %if.then4, !dbg !923

lor.lhs.false:                                    ; preds = %if.end
  %6 = load ptr, ptr %op.addr, align 8, !dbg !924
  %parent2 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %6, i32 0, i32 0, !dbg !925
  %7 = load ptr, ptr %parent2, align 8, !dbg !925
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %7, i32 0, i32 3, !dbg !926
  %8 = load i16, ptr %aml_opcode, align 2, !dbg !926
  %conv = zext i16 %8 to i32, !dbg !924
  %cmp = icmp eq i32 %conv, 16, !dbg !927
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !928

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i8 0, ptr %retval, align 1, !dbg !929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !929

if.end5:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %op.addr, align 8, !dbg !931
  %parent6 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %9, i32 0, i32 0, !dbg !932
  %10 = load ptr, ptr %parent6, align 8, !dbg !932
  %aml_opcode7 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %10, i32 0, i32 3, !dbg !933
  %11 = load i16, ptr %aml_opcode7, align 2, !dbg !933
  %call8 = call ptr @acpi_ps_get_opcode_info(i16 noundef zeroext %11) #5, !dbg !934
  store ptr %call8, ptr %parent_info, align 8, !dbg !935
  %12 = load ptr, ptr %parent_info, align 8, !dbg !936
  %class = getelementptr inbounds %struct.acpi_opcode_info, ptr %12, i32 0, i32 4, !dbg !938
  %13 = load i8, ptr %class, align 1, !dbg !938
  %conv9 = zext i8 %13 to i32, !dbg !936
  %cmp10 = icmp eq i32 %conv9, 10, !dbg !939
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !940

if.then12:                                        ; preds = %if.end5
  %14 = load ptr, ptr %op.addr, align 8, !dbg !941
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 184, ptr noundef @.str.1, ptr noundef %14) #5, !dbg !941
  store i8 0, ptr %retval, align 1, !dbg !943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !943

if.end13:                                         ; preds = %if.end5
  %15 = load ptr, ptr %parent_info, align 8, !dbg !944
  %class14 = getelementptr inbounds %struct.acpi_opcode_info, ptr %15, i32 0, i32 4, !dbg !945
  %16 = load i8, ptr %class14, align 1, !dbg !945
  %conv15 = zext i8 %16 to i32, !dbg !944
  switch i32 %conv15, label %sw.default74 [
    i32 4, label %sw.bb
    i32 1, label %sw.bb29
    i32 3, label %sw.bb30
  ], !dbg !946

sw.bb:                                            ; preds = %if.end13
  %17 = load ptr, ptr %op.addr, align 8, !dbg !947
  %parent16 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %17, i32 0, i32 0, !dbg !949
  %18 = load ptr, ptr %parent16, align 8, !dbg !949
  %aml_opcode17 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %18, i32 0, i32 3, !dbg !950
  %19 = load i16, ptr %aml_opcode17, align 2, !dbg !950
  %conv18 = zext i16 %19 to i32, !dbg !947
  switch i32 %conv18, label %sw.default [
    i32 164, label %sw.bb19
    i32 160, label %sw.bb20
    i32 162, label %sw.bb20
  ], !dbg !951

sw.bb19:                                          ; preds = %sw.bb
  br label %result_used, !dbg !952

sw.bb20:                                          ; preds = %sw.bb, %sw.bb
  %20 = load ptr, ptr %walk_state.addr, align 8, !dbg !954
  %control_state = getelementptr inbounds %struct.acpi_walk_state, ptr %20, i32 0, i32 32, !dbg !956
  %21 = load ptr, ptr %control_state, align 8, !dbg !956
  %state = getelementptr inbounds %struct.acpi_common_state, ptr %21, i32 0, i32 4, !dbg !957
  %22 = load i16, ptr %state, align 4, !dbg !957
  %conv21 = zext i16 %22 to i32, !dbg !954
  %cmp22 = icmp eq i32 %conv21, 194, !dbg !958
  br i1 %cmp22, label %land.lhs.true, label %if.end28, !dbg !959

land.lhs.true:                                    ; preds = %sw.bb20
  %23 = load ptr, ptr %walk_state.addr, align 8, !dbg !960
  %control_state24 = getelementptr inbounds %struct.acpi_walk_state, ptr %23, i32 0, i32 32, !dbg !961
  %24 = load ptr, ptr %control_state24, align 8, !dbg !961
  %predicate_op = getelementptr inbounds %struct.acpi_control_state, ptr %24, i32 0, i32 6, !dbg !962
  %25 = load ptr, ptr %predicate_op, align 8, !dbg !962
  %26 = load ptr, ptr %op.addr, align 8, !dbg !963
  %cmp25 = icmp eq ptr %25, %26, !dbg !964
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !965

if.then27:                                        ; preds = %land.lhs.true
  br label %result_used, !dbg !966

if.end28:                                         ; preds = %land.lhs.true, %sw.bb20
  br label %sw.epilog, !dbg !968

sw.default:                                       ; preds = %sw.bb
  br label %sw.epilog, !dbg !969

sw.epilog:                                        ; preds = %sw.default, %if.end28
  br label %result_not_used, !dbg !970

sw.bb29:                                          ; preds = %if.end13
  br label %result_used, !dbg !971

sw.bb30:                                          ; preds = %if.end13
  %27 = load ptr, ptr %op.addr, align 8, !dbg !972
  %parent31 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %27, i32 0, i32 0, !dbg !974
  %28 = load ptr, ptr %parent31, align 8, !dbg !974
  %aml_opcode32 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %28, i32 0, i32 3, !dbg !975
  %29 = load i16, ptr %aml_opcode32, align 2, !dbg !975
  %conv33 = zext i16 %29 to i32, !dbg !972
  %cmp34 = icmp eq i32 %conv33, 23424, !dbg !976
  br i1 %cmp34, label %if.then72, label %lor.lhs.false36, !dbg !977

lor.lhs.false36:                                  ; preds = %sw.bb30
  %30 = load ptr, ptr %op.addr, align 8, !dbg !978
  %parent37 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %30, i32 0, i32 0, !dbg !979
  %31 = load ptr, ptr %parent37, align 8, !dbg !979
  %aml_opcode38 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %31, i32 0, i32 3, !dbg !980
  %32 = load i16, ptr %aml_opcode38, align 2, !dbg !980
  %conv39 = zext i16 %32 to i32, !dbg !978
  %cmp40 = icmp eq i32 %conv39, 23432, !dbg !981
  br i1 %cmp40, label %if.then72, label %lor.lhs.false42, !dbg !982

lor.lhs.false42:                                  ; preds = %lor.lhs.false36
  %33 = load ptr, ptr %op.addr, align 8, !dbg !983
  %parent43 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %33, i32 0, i32 0, !dbg !984
  %34 = load ptr, ptr %parent43, align 8, !dbg !984
  %aml_opcode44 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %34, i32 0, i32 3, !dbg !985
  %35 = load i16, ptr %aml_opcode44, align 2, !dbg !985
  %conv45 = zext i16 %35 to i32, !dbg !983
  %cmp46 = icmp eq i32 %conv45, 18, !dbg !986
  br i1 %cmp46, label %if.then72, label %lor.lhs.false48, !dbg !987

lor.lhs.false48:                                  ; preds = %lor.lhs.false42
  %36 = load ptr, ptr %op.addr, align 8, !dbg !988
  %parent49 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %36, i32 0, i32 0, !dbg !989
  %37 = load ptr, ptr %parent49, align 8, !dbg !989
  %aml_opcode50 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %37, i32 0, i32 3, !dbg !990
  %38 = load i16, ptr %aml_opcode50, align 2, !dbg !990
  %conv51 = zext i16 %38 to i32, !dbg !988
  %cmp52 = icmp eq i32 %conv51, 17, !dbg !991
  br i1 %cmp52, label %if.then72, label %lor.lhs.false54, !dbg !992

lor.lhs.false54:                                  ; preds = %lor.lhs.false48
  %39 = load ptr, ptr %op.addr, align 8, !dbg !993
  %parent55 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %39, i32 0, i32 0, !dbg !994
  %40 = load ptr, ptr %parent55, align 8, !dbg !994
  %aml_opcode56 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %40, i32 0, i32 3, !dbg !995
  %41 = load i16, ptr %aml_opcode56, align 2, !dbg !995
  %conv57 = zext i16 %41 to i32, !dbg !993
  %cmp58 = icmp eq i32 %conv57, 19, !dbg !996
  br i1 %cmp58, label %if.then72, label %lor.lhs.false60, !dbg !997

lor.lhs.false60:                                  ; preds = %lor.lhs.false54
  %42 = load ptr, ptr %op.addr, align 8, !dbg !998
  %parent61 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %42, i32 0, i32 0, !dbg !999
  %43 = load ptr, ptr %parent61, align 8, !dbg !999
  %aml_opcode62 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %43, i32 0, i32 3, !dbg !1000
  %44 = load i16, ptr %aml_opcode62, align 2, !dbg !1000
  %conv63 = zext i16 %44 to i32, !dbg !998
  %cmp64 = icmp eq i32 %conv63, 55, !dbg !1001
  br i1 %cmp64, label %if.then72, label %lor.lhs.false66, !dbg !1002

lor.lhs.false66:                                  ; preds = %lor.lhs.false60
  %45 = load ptr, ptr %op.addr, align 8, !dbg !1003
  %parent67 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %45, i32 0, i32 0, !dbg !1004
  %46 = load ptr, ptr %parent67, align 8, !dbg !1004
  %aml_opcode68 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %46, i32 0, i32 3, !dbg !1005
  %47 = load i16, ptr %aml_opcode68, align 2, !dbg !1005
  %conv69 = zext i16 %47 to i32, !dbg !1003
  %cmp70 = icmp eq i32 %conv69, 23431, !dbg !1006
  br i1 %cmp70, label %if.then72, label %if.end73, !dbg !1007

if.then72:                                        ; preds = %lor.lhs.false66, %lor.lhs.false60, %lor.lhs.false54, %lor.lhs.false48, %lor.lhs.false42, %lor.lhs.false36, %sw.bb30
  br label %result_used, !dbg !1008

if.end73:                                         ; preds = %lor.lhs.false66
  br label %result_not_used, !dbg !1010

sw.default74:                                     ; preds = %if.end13
  br label %result_used, !dbg !1011

result_used:                                      ; preds = %sw.default74, %if.then72, %sw.bb29, %if.then27, %sw.bb19
  call void @llvm.dbg.label(metadata !904), !dbg !1012
  store i8 1, ptr %retval, align 1, !dbg !1013
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1013

result_not_used:                                  ; preds = %if.end73, %sw.epilog
  call void @llvm.dbg.label(metadata !905), !dbg !1014
  store i8 0, ptr %retval, align 1, !dbg !1015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1015

cleanup:                                          ; preds = %result_not_used, %result_used, %if.then12, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_info) #6, !dbg !1016
  %48 = load i8, ptr %retval, align 1, !dbg !1016
  ret i8 %48, !dbg !1016
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1017 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1022 dso_local ptr @acpi_ps_get_opcode_info(i16 noundef zeroext) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ds_delete_result_if_not_used(ptr noundef %op, ptr noundef %result_obj, ptr noundef %walk_state) #0 align 16 !dbg !1026 {
entry:
  %op.addr = alloca ptr, align 8
  %result_obj.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1030, metadata !DIExpression()), !dbg !1035
  store ptr %result_obj, ptr %result_obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result_obj.addr, metadata !1031, metadata !DIExpression()), !dbg !1036
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1032, metadata !DIExpression()), !dbg !1037
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #6, !dbg !1038
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1033, metadata !DIExpression()), !dbg !1039
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1040
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1034, metadata !DIExpression()), !dbg !1041
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1042
  %tobool = icmp ne ptr %0, null, !dbg !1042
  br i1 %tobool, label %if.end, label %if.then, !dbg !1044

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 312, ptr noundef @.str) #5, !dbg !1045
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1047

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %result_obj.addr, align 8, !dbg !1048
  %tobool1 = icmp ne ptr %1, null, !dbg !1048
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1050

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1051

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %op.addr, align 8, !dbg !1053
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !1055
  %call = call zeroext i8 @acpi_ds_is_result_used(ptr noundef %2, ptr noundef %3) #5, !dbg !1056
  %tobool4 = icmp ne i8 %call, 0, !dbg !1056
  br i1 %tobool4, label %if.end10, label %if.then5, !dbg !1057

if.then5:                                         ; preds = %if.end3
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !1058
  %call6 = call i32 @acpi_ds_result_pop(ptr noundef %obj_desc, ptr noundef %4) #5, !dbg !1060
  store i32 %call6, ptr %status, align 4, !dbg !1061
  %5 = load i32, ptr %status, align 4, !dbg !1062
  %tobool7 = icmp ne i32 %5, 0, !dbg !1062
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !1064

if.then8:                                         ; preds = %if.then5
  %6 = load ptr, ptr %result_obj.addr, align 8, !dbg !1065
  call void @acpi_ut_remove_reference(ptr noundef %6) #5, !dbg !1067
  br label %if.end9, !dbg !1068

if.end9:                                          ; preds = %if.then8, %if.then5
  br label %if.end10, !dbg !1069

if.end10:                                         ; preds = %if.end9, %if.end3
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1070

cleanup:                                          ; preds = %if.end10, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1071
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #6, !dbg !1071
  ret void, !dbg !1071
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1072 dso_local i32 @acpi_ds_result_pop(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_resolve_operands(ptr noundef %walk_state) #0 align 16 !dbg !1076 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1078, metadata !DIExpression()), !dbg !1081
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !1082
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1079, metadata !DIExpression()), !dbg !1083
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1084
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1080, metadata !DIExpression()), !dbg !1085
  store i32 0, ptr %status, align 4, !dbg !1085
  store i32 0, ptr %i, align 4, !dbg !1086
  br label %for.cond, !dbg !1088

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1089
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !1091
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 5, !dbg !1092
  %2 = load i8, ptr %num_operands, align 1, !dbg !1092
  %conv = zext i8 %2 to i32, !dbg !1091
  %cmp = icmp ult i32 %0, %conv, !dbg !1093
  br i1 %cmp, label %for.body, label %for.end, !dbg !1094

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !1095
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 28, !dbg !1097
  %4 = load i32, ptr %i, align 4, !dbg !1098
  %idxprom = zext i32 %4 to i64, !dbg !1095
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 %idxprom, !dbg !1095
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !1099
  %call = call i32 @acpi_ex_resolve_to_value(ptr noundef %arrayidx, ptr noundef %5) #5, !dbg !1100
  store i32 %call, ptr %status, align 4, !dbg !1101
  %6 = load i32, ptr %status, align 4, !dbg !1102
  %tobool = icmp ne i32 %6, 0, !dbg !1102
  br i1 %tobool, label %if.then, label %if.end, !dbg !1104

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !1105

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1107

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !dbg !1108
  %inc = add i32 %7, 1, !dbg !1108
  store i32 %inc, ptr %i, align 4, !dbg !1108
  br label %for.cond, !dbg !1109, !llvm.loop !1110

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load i32, ptr %status, align 4, !dbg !1114
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1115
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !1115
  ret i32 %8, !dbg !1114
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1116 dso_local i32 @acpi_ex_resolve_to_value(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ds_clear_operands(ptr noundef %walk_state) #0 align 16 !dbg !1118 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1120, metadata !DIExpression()), !dbg !1122
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !1123
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1121, metadata !DIExpression()), !dbg !1124
  store i32 0, ptr %i, align 4, !dbg !1125
  br label %for.cond, !dbg !1127

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1128
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !1130
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 5, !dbg !1131
  %2 = load i8, ptr %num_operands, align 1, !dbg !1131
  %conv = zext i8 %2 to i32, !dbg !1130
  %cmp = icmp ult i32 %0, %conv, !dbg !1132
  br i1 %cmp, label %for.body, label %for.end, !dbg !1133

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !1134
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 28, !dbg !1136
  %4 = load i32, ptr %i, align 4, !dbg !1137
  %idxprom = zext i32 %4 to i64, !dbg !1134
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 %idxprom, !dbg !1134
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !1134
  call void @acpi_ut_remove_reference(ptr noundef %5) #5, !dbg !1138
  %6 = load ptr, ptr %walk_state.addr, align 8, !dbg !1139
  %operands2 = getelementptr inbounds %struct.acpi_walk_state, ptr %6, i32 0, i32 28, !dbg !1140
  %7 = load i32, ptr %i, align 4, !dbg !1141
  %idxprom3 = zext i32 %7 to i64, !dbg !1139
  %arrayidx4 = getelementptr [9 x ptr], ptr %operands2, i64 0, i64 %idxprom3, !dbg !1139
  store ptr null, ptr %arrayidx4, align 8, !dbg !1142
  br label %for.inc, !dbg !1143

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !1144
  %inc = add i32 %8, 1, !dbg !1144
  store i32 %inc, ptr %i, align 4, !dbg !1144
  br label %for.cond, !dbg !1145, !llvm.loop !1146

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %walk_state.addr, align 8, !dbg !1148
  %num_operands5 = getelementptr inbounds %struct.acpi_walk_state, ptr %9, i32 0, i32 5, !dbg !1149
  store i8 0, ptr %num_operands5, align 1, !dbg !1150
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !1151
  ret void, !dbg !1151
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_create_operand(ptr noundef %walk_state, ptr noundef %arg, i32 noundef %arg_index) #0 align 16 !dbg !1152 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %arg_index.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %name_string = alloca ptr, align 8
  %name_length = alloca i32, align 4
  %obj_desc = alloca ptr, align 8
  %parent_op = alloca ptr, align 8
  %opcode = alloca i16, align 2
  %interpreter_mode = alloca i32, align 4
  %op_info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1156, metadata !DIExpression()), !dbg !1168
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !1157, metadata !DIExpression()), !dbg !1169
  store i32 %arg_index, ptr %arg_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %arg_index.addr, metadata !1158, metadata !DIExpression()), !dbg !1170
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1171
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1159, metadata !DIExpression()), !dbg !1172
  store i32 0, ptr %status, align 4, !dbg !1172
  call void @llvm.lifetime.start.p0(i64 8, ptr %name_string) #6, !dbg !1173
  call void @llvm.dbg.declare(metadata ptr %name_string, metadata !1160, metadata !DIExpression()), !dbg !1174
  call void @llvm.lifetime.start.p0(i64 4, ptr %name_length) #6, !dbg !1175
  call void @llvm.dbg.declare(metadata ptr %name_length, metadata !1161, metadata !DIExpression()), !dbg !1176
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #6, !dbg !1177
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1162, metadata !DIExpression()), !dbg !1178
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_op) #6, !dbg !1179
  call void @llvm.dbg.declare(metadata ptr %parent_op, metadata !1163, metadata !DIExpression()), !dbg !1180
  call void @llvm.lifetime.start.p0(i64 2, ptr %opcode) #6, !dbg !1181
  call void @llvm.dbg.declare(metadata ptr %opcode, metadata !1164, metadata !DIExpression()), !dbg !1182
  call void @llvm.lifetime.start.p0(i64 4, ptr %interpreter_mode) #6, !dbg !1183
  call void @llvm.dbg.declare(metadata ptr %interpreter_mode, metadata !1165, metadata !DIExpression()), !dbg !1184
  call void @llvm.lifetime.start.p0(i64 8, ptr %op_info) #6, !dbg !1185
  call void @llvm.dbg.declare(metadata ptr %op_info, metadata !1167, metadata !DIExpression()), !dbg !1186
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !1187
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %0, i32 0, i32 3, !dbg !1189
  %1 = load i16, ptr %aml_opcode, align 2, !dbg !1189
  %conv = zext i16 %1 to i32, !dbg !1187
  %cmp = icmp eq i32 %conv, 45, !dbg !1190
  br i1 %cmp, label %land.lhs.true, label %if.else78, !dbg !1191

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %arg.addr, align 8, !dbg !1192
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %2, i32 0, i32 7, !dbg !1193
  %3 = load ptr, ptr %value, align 8, !dbg !1194
  %tobool = icmp ne ptr %3, null, !dbg !1195
  br i1 %tobool, label %land.lhs.true2, label %if.else78, !dbg !1196

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %arg.addr, align 8, !dbg !1197
  %flags = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %4, i32 0, i32 2, !dbg !1198
  %5 = load i8, ptr %flags, align 1, !dbg !1198
  %conv3 = zext i8 %5 to i32, !dbg !1197
  %and = and i32 %conv3, 16, !dbg !1199
  %tobool4 = icmp ne i32 %and, 0, !dbg !1199
  br i1 %tobool4, label %if.else78, label %if.then, !dbg !1200

if.then:                                          ; preds = %land.lhs.true2
  %6 = load ptr, ptr %arg.addr, align 8, !dbg !1201
  %value5 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %6, i32 0, i32 7, !dbg !1203
  %7 = load ptr, ptr %value5, align 8, !dbg !1204
  %call = call i32 @acpi_ex_get_name_string(i32 noundef 0, ptr noundef %7, ptr noundef %name_string, ptr noundef %name_length) #5, !dbg !1205
  store i32 %call, ptr %status, align 4, !dbg !1206
  %8 = load i32, ptr %status, align 4, !dbg !1207
  %tobool6 = icmp ne i32 %8, 0, !dbg !1207
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !1209

if.then7:                                         ; preds = %if.then
  %9 = load i32, ptr %status, align 4, !dbg !1210
  store i32 %9, ptr %retval, align 4, !dbg !1210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1210

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %walk_state.addr, align 8, !dbg !1212
  %deferred_node = getelementptr inbounds %struct.acpi_walk_state, ptr %10, i32 0, i32 33, !dbg !1214
  %11 = load ptr, ptr %deferred_node, align 8, !dbg !1214
  %tobool8 = icmp ne ptr %11, null, !dbg !1215
  br i1 %tobool8, label %land.lhs.true9, label %if.else, !dbg !1216

land.lhs.true9:                                   ; preds = %if.end
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !1217
  %deferred_node10 = getelementptr inbounds %struct.acpi_walk_state, ptr %12, i32 0, i32 33, !dbg !1218
  %13 = load ptr, ptr %deferred_node10, align 8, !dbg !1218
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %13, i32 0, i32 2, !dbg !1219
  %14 = load i8, ptr %type, align 1, !dbg !1219
  %conv11 = zext i8 %14 to i32, !dbg !1217
  %cmp12 = icmp eq i32 %conv11, 14, !dbg !1220
  br i1 %cmp12, label %land.lhs.true14, label %if.else, !dbg !1221

land.lhs.true14:                                  ; preds = %land.lhs.true9
  %15 = load i32, ptr %arg_index.addr, align 4, !dbg !1222
  %16 = load ptr, ptr %walk_state.addr, align 8, !dbg !1223
  %opcode15 = getelementptr inbounds %struct.acpi_walk_state, ptr %16, i32 0, i32 3, !dbg !1224
  %17 = load i16, ptr %opcode15, align 2, !dbg !1224
  %conv16 = zext i16 %17 to i32, !dbg !1223
  %cmp17 = icmp eq i32 %conv16, 23315, !dbg !1225
  %18 = zext i1 %cmp17 to i64, !dbg !1226
  %cond = select i1 %cmp17, i32 3, i32 2, !dbg !1226
  %cmp19 = icmp eq i32 %15, %cond, !dbg !1227
  br i1 %cmp19, label %if.then21, label %if.else, !dbg !1228

if.then21:                                        ; preds = %land.lhs.true14
  %19 = load ptr, ptr %walk_state.addr, align 8, !dbg !1229
  %deferred_node22 = getelementptr inbounds %struct.acpi_walk_state, ptr %19, i32 0, i32 33, !dbg !1229
  %20 = load ptr, ptr %deferred_node22, align 8, !dbg !1229
  %21 = ptrtoint ptr %20 to i64, !dbg !1229
  %22 = inttoptr i64 %21 to ptr, !dbg !1229
  store ptr %22, ptr %obj_desc, align 8, !dbg !1231
  store i32 0, ptr %status, align 4, !dbg !1232
  br label %if.end70, !dbg !1233

if.else:                                          ; preds = %land.lhs.true14, %land.lhs.true9, %if.end
  %23 = load ptr, ptr %arg.addr, align 8, !dbg !1234
  %parent = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %23, i32 0, i32 0, !dbg !1236
  %24 = load ptr, ptr %parent, align 8, !dbg !1236
  store ptr %24, ptr %parent_op, align 8, !dbg !1237
  %25 = load ptr, ptr %parent_op, align 8, !dbg !1238
  %aml_opcode23 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %25, i32 0, i32 3, !dbg !1239
  %26 = load i16, ptr %aml_opcode23, align 2, !dbg !1239
  %call24 = call ptr @acpi_ps_get_opcode_info(i16 noundef zeroext %26) #5, !dbg !1240
  store ptr %call24, ptr %op_info, align 8, !dbg !1241
  %27 = load ptr, ptr %op_info, align 8, !dbg !1242
  %flags25 = getelementptr inbounds %struct.acpi_opcode_info, ptr %27, i32 0, i32 2, !dbg !1244
  %28 = load i16, ptr %flags25, align 4, !dbg !1244
  %conv26 = zext i16 %28 to i32, !dbg !1242
  %and27 = and i32 %conv26, 128, !dbg !1245
  %tobool28 = icmp ne i32 %and27, 0, !dbg !1245
  br i1 %tobool28, label %land.lhs.true29, label %if.else45, !dbg !1246

land.lhs.true29:                                  ; preds = %if.else
  %29 = load ptr, ptr %parent_op, align 8, !dbg !1247
  %aml_opcode30 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %29, i32 0, i32 3, !dbg !1248
  %30 = load i16, ptr %aml_opcode30, align 2, !dbg !1248
  %conv31 = zext i16 %30 to i32, !dbg !1247
  %cmp32 = icmp ne i32 %conv31, 53, !dbg !1249
  br i1 %cmp32, label %land.lhs.true34, label %if.else45, !dbg !1250

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %31 = load ptr, ptr %parent_op, align 8, !dbg !1251
  %aml_opcode35 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %31, i32 0, i32 3, !dbg !1252
  %32 = load i16, ptr %aml_opcode35, align 2, !dbg !1252
  %conv36 = zext i16 %32 to i32, !dbg !1251
  %cmp37 = icmp ne i32 %conv36, 23424, !dbg !1253
  br i1 %cmp37, label %land.lhs.true39, label %if.else45, !dbg !1254

land.lhs.true39:                                  ; preds = %land.lhs.true34
  %33 = load ptr, ptr %parent_op, align 8, !dbg !1255
  %aml_opcode40 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %33, i32 0, i32 3, !dbg !1256
  %34 = load i16, ptr %aml_opcode40, align 2, !dbg !1256
  %conv41 = zext i16 %34 to i32, !dbg !1255
  %cmp42 = icmp ne i32 %conv41, 45, !dbg !1257
  br i1 %cmp42, label %if.then44, label %if.else45, !dbg !1258

if.then44:                                        ; preds = %land.lhs.true39
  store i32 2, ptr %interpreter_mode, align 4, !dbg !1259
  br label %if.end46, !dbg !1261

if.else45:                                        ; preds = %land.lhs.true39, %land.lhs.true34, %land.lhs.true29, %if.else
  store i32 3, ptr %interpreter_mode, align 4, !dbg !1262
  br label %if.end46

if.end46:                                         ; preds = %if.else45, %if.then44
  %35 = load ptr, ptr %walk_state.addr, align 8, !dbg !1264
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, ptr %35, i32 0, i32 46, !dbg !1265
  %36 = load ptr, ptr %scope_info, align 8, !dbg !1265
  %37 = load ptr, ptr %name_string, align 8, !dbg !1266
  %38 = load i32, ptr %interpreter_mode, align 4, !dbg !1267
  %39 = load ptr, ptr %walk_state.addr, align 8, !dbg !1268
  %40 = ptrtoint ptr %obj_desc to i64, !dbg !1269
  %41 = inttoptr i64 %40 to ptr, !dbg !1269
  %call47 = call i32 @acpi_ns_lookup(ptr noundef %36, ptr noundef %37, i32 noundef 0, i32 noundef %38, i32 noundef 3, ptr noundef %39, ptr noundef %41) #5, !dbg !1270
  store i32 %call47, ptr %status, align 4, !dbg !1271
  %42 = load i32, ptr %status, align 4, !dbg !1272
  %cmp48 = icmp eq i32 %42, 5, !dbg !1274
  br i1 %cmp48, label %if.then50, label %if.end65, !dbg !1275

if.then50:                                        ; preds = %if.end46
  %43 = load ptr, ptr %parent_op, align 8, !dbg !1276
  %aml_opcode51 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %43, i32 0, i32 3, !dbg !1279
  %44 = load i16, ptr %aml_opcode51, align 2, !dbg !1279
  %conv52 = zext i16 %44 to i32, !dbg !1276
  %cmp53 = icmp eq i32 %conv52, 23314, !dbg !1280
  br i1 %cmp53, label %if.then55, label %if.else56, !dbg !1281

if.then55:                                        ; preds = %if.then50
  %45 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1282
  %46 = ptrtoint ptr %45 to i64, !dbg !1282
  %47 = inttoptr i64 %46 to ptr, !dbg !1282
  store ptr %47, ptr %obj_desc, align 8, !dbg !1284
  store i32 0, ptr %status, align 4, !dbg !1285
  br label %if.end64, !dbg !1286

if.else56:                                        ; preds = %if.then50
  %48 = load ptr, ptr %parent_op, align 8, !dbg !1287
  %aml_opcode57 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %48, i32 0, i32 3, !dbg !1289
  %49 = load i16, ptr %aml_opcode57, align 2, !dbg !1289
  %conv58 = zext i16 %49 to i32, !dbg !1287
  %cmp59 = icmp eq i32 %conv58, 21, !dbg !1290
  br i1 %cmp59, label %if.then61, label %if.else62, !dbg !1291

if.then61:                                        ; preds = %if.else56
  store i32 12289, ptr %status, align 4, !dbg !1292
  br label %if.end63, !dbg !1294

if.else62:                                        ; preds = %if.else56
  store i32 12302, ptr %status, align 4, !dbg !1295
  br label %if.end63

if.end63:                                         ; preds = %if.else62, %if.then61
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then55
  br label %if.end65, !dbg !1297

if.end65:                                         ; preds = %if.end64, %if.end46
  %50 = load i32, ptr %status, align 4, !dbg !1298
  %tobool66 = icmp ne i32 %50, 0, !dbg !1298
  br i1 %tobool66, label %if.then67, label %if.end69, !dbg !1300

if.then67:                                        ; preds = %if.end65
  %51 = load ptr, ptr %walk_state.addr, align 8, !dbg !1301
  %scope_info68 = getelementptr inbounds %struct.acpi_walk_state, ptr %51, i32 0, i32 46, !dbg !1301
  %52 = load ptr, ptr %scope_info68, align 8, !dbg !1301
  %53 = load ptr, ptr %name_string, align 8, !dbg !1301
  %54 = load i32, ptr %status, align 4, !dbg !1301
  call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 549, ptr noundef %52, ptr noundef %53, i32 noundef %54) #5, !dbg !1301
  br label %if.end69, !dbg !1303

if.end69:                                         ; preds = %if.then67, %if.end65
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then21
  %55 = load ptr, ptr %name_string, align 8, !dbg !1304
  call void @acpi_os_free(ptr noundef %55) #5, !dbg !1304
  %56 = load i32, ptr %status, align 4, !dbg !1305
  %tobool71 = icmp ne i32 %56, 0, !dbg !1305
  br i1 %tobool71, label %if.then72, label %if.end73, !dbg !1307

if.then72:                                        ; preds = %if.end70
  %57 = load i32, ptr %status, align 4, !dbg !1308
  store i32 %57, ptr %retval, align 4, !dbg !1308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1308

if.end73:                                         ; preds = %if.end70
  %58 = load ptr, ptr %obj_desc, align 8, !dbg !1310
  %59 = load ptr, ptr %walk_state.addr, align 8, !dbg !1311
  %call74 = call i32 @acpi_ds_obj_stack_push(ptr noundef %58, ptr noundef %59) #5, !dbg !1312
  store i32 %call74, ptr %status, align 4, !dbg !1313
  %60 = load i32, ptr %status, align 4, !dbg !1314
  %tobool75 = icmp ne i32 %60, 0, !dbg !1314
  br i1 %tobool75, label %if.then76, label %if.end77, !dbg !1316

if.then76:                                        ; preds = %if.end73
  %61 = load i32, ptr %status, align 4, !dbg !1317
  store i32 %61, ptr %retval, align 4, !dbg !1317
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1317

if.end77:                                         ; preds = %if.end73
  %62 = load ptr, ptr %obj_desc, align 8, !dbg !1319
  %63 = load ptr, ptr %walk_state.addr, align 8, !dbg !1320
  call void @acpi_db_display_argument_object(ptr noundef %62, ptr noundef %63) #5, !dbg !1321
  br label %if.end127, !dbg !1322

if.else78:                                        ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %64 = load ptr, ptr %arg.addr, align 8, !dbg !1323
  %aml_opcode79 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %64, i32 0, i32 3, !dbg !1326
  %65 = load i16, ptr %aml_opcode79, align 2, !dbg !1326
  %conv80 = zext i16 %65 to i32, !dbg !1323
  %cmp81 = icmp eq i32 %conv80, 45, !dbg !1327
  br i1 %cmp81, label %land.lhs.true83, label %if.else89, !dbg !1328

land.lhs.true83:                                  ; preds = %if.else78
  %66 = load ptr, ptr %arg.addr, align 8, !dbg !1329
  %flags84 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %66, i32 0, i32 2, !dbg !1330
  %67 = load i8, ptr %flags84, align 1, !dbg !1330
  %conv85 = zext i8 %67 to i32, !dbg !1329
  %and86 = and i32 %conv85, 16, !dbg !1331
  %tobool87 = icmp ne i32 %and86, 0, !dbg !1331
  br i1 %tobool87, label %if.else89, label %if.then88, !dbg !1332

if.then88:                                        ; preds = %land.lhs.true83
  store i16 0, ptr %opcode, align 2, !dbg !1333
  br label %if.end91, !dbg !1335

if.else89:                                        ; preds = %land.lhs.true83, %if.else78
  %68 = load ptr, ptr %arg.addr, align 8, !dbg !1336
  %aml_opcode90 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %68, i32 0, i32 3, !dbg !1338
  %69 = load i16, ptr %aml_opcode90, align 2, !dbg !1338
  store i16 %69, ptr %opcode, align 2, !dbg !1339
  br label %if.end91

if.end91:                                         ; preds = %if.else89, %if.then88
  %70 = load i16, ptr %opcode, align 2, !dbg !1340
  %call92 = call ptr @acpi_ps_get_opcode_info(i16 noundef zeroext %70) #5, !dbg !1341
  store ptr %call92, ptr %op_info, align 8, !dbg !1342
  %71 = load ptr, ptr %op_info, align 8, !dbg !1343
  %object_type = getelementptr inbounds %struct.acpi_opcode_info, ptr %71, i32 0, i32 3, !dbg !1345
  %72 = load i8, ptr %object_type, align 2, !dbg !1345
  %conv93 = zext i8 %72 to i32, !dbg !1343
  %cmp94 = icmp eq i32 %conv93, 30, !dbg !1346
  br i1 %cmp94, label %if.then96, label %if.end97, !dbg !1347

if.then96:                                        ; preds = %if.end91
  store i32 14, ptr %retval, align 4, !dbg !1348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1348

if.end97:                                         ; preds = %if.end91
  %73 = load ptr, ptr %op_info, align 8, !dbg !1350
  %flags98 = getelementptr inbounds %struct.acpi_opcode_info, ptr %73, i32 0, i32 2, !dbg !1352
  %74 = load i16, ptr %flags98, align 4, !dbg !1352
  %conv99 = zext i16 %74 to i32, !dbg !1350
  %and100 = and i32 %conv99, 1024, !dbg !1353
  %tobool101 = icmp ne i32 %and100, 0, !dbg !1353
  br i1 %tobool101, label %if.then106, label %lor.lhs.false, !dbg !1354

lor.lhs.false:                                    ; preds = %if.end97
  %75 = load ptr, ptr %arg.addr, align 8, !dbg !1355
  %flags102 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %75, i32 0, i32 2, !dbg !1356
  %76 = load i8, ptr %flags102, align 1, !dbg !1356
  %conv103 = zext i8 %76 to i32, !dbg !1355
  %and104 = and i32 %conv103, 16, !dbg !1357
  %tobool105 = icmp ne i32 %and104, 0, !dbg !1357
  br i1 %tobool105, label %if.then106, label %if.else111, !dbg !1358

if.then106:                                       ; preds = %lor.lhs.false, %if.end97
  %77 = load ptr, ptr %walk_state.addr, align 8, !dbg !1359
  %call107 = call i32 @acpi_ds_result_pop(ptr noundef %obj_desc, ptr noundef %77) #5, !dbg !1361
  store i32 %call107, ptr %status, align 4, !dbg !1362
  %78 = load i32, ptr %status, align 4, !dbg !1363
  %tobool108 = icmp ne i32 %78, 0, !dbg !1363
  br i1 %tobool108, label %if.then109, label %if.end110, !dbg !1365

if.then109:                                       ; preds = %if.then106
  %79 = load i32, ptr %status, align 4, !dbg !1366
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 609, i32 noundef %79, ptr noundef @.str.2) #5, !dbg !1366
  %80 = load i32, ptr %status, align 4, !dbg !1368
  store i32 %80, ptr %retval, align 4, !dbg !1368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1368

if.end110:                                        ; preds = %if.then106
  br label %if.end122, !dbg !1369

if.else111:                                       ; preds = %lor.lhs.false
  %81 = load ptr, ptr %op_info, align 8, !dbg !1370
  %object_type112 = getelementptr inbounds %struct.acpi_opcode_info, ptr %81, i32 0, i32 3, !dbg !1370
  %82 = load i8, ptr %object_type112, align 2, !dbg !1370
  %conv113 = zext i8 %82 to i32, !dbg !1370
  %call114 = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 618, i32 noundef 64, i32 noundef %conv113) #5, !dbg !1370
  store ptr %call114, ptr %obj_desc, align 8, !dbg !1372
  %83 = load ptr, ptr %obj_desc, align 8, !dbg !1373
  %tobool115 = icmp ne ptr %83, null, !dbg !1373
  br i1 %tobool115, label %if.end117, label %if.then116, !dbg !1375

if.then116:                                       ; preds = %if.else111
  store i32 4, ptr %retval, align 4, !dbg !1376
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1376

if.end117:                                        ; preds = %if.else111
  %84 = load ptr, ptr %walk_state.addr, align 8, !dbg !1378
  %85 = load ptr, ptr %arg.addr, align 8, !dbg !1379
  %86 = load i16, ptr %opcode, align 2, !dbg !1380
  %call118 = call i32 @acpi_ds_init_object_from_op(ptr noundef %84, ptr noundef %85, i16 noundef zeroext %86, ptr noundef %obj_desc) #5, !dbg !1381
  store i32 %call118, ptr %status, align 4, !dbg !1382
  %87 = load i32, ptr %status, align 4, !dbg !1383
  %tobool119 = icmp ne i32 %87, 0, !dbg !1383
  br i1 %tobool119, label %if.then120, label %if.end121, !dbg !1385

if.then120:                                       ; preds = %if.end117
  %88 = load ptr, ptr %obj_desc, align 8, !dbg !1386
  call void @acpi_ut_delete_object_desc(ptr noundef %88) #5, !dbg !1388
  %89 = load i32, ptr %status, align 4, !dbg !1389
  store i32 %89, ptr %retval, align 4, !dbg !1389
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1389

if.end121:                                        ; preds = %if.end117
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.end110
  %90 = load ptr, ptr %obj_desc, align 8, !dbg !1390
  %91 = load ptr, ptr %walk_state.addr, align 8, !dbg !1391
  %call123 = call i32 @acpi_ds_obj_stack_push(ptr noundef %90, ptr noundef %91) #5, !dbg !1392
  store i32 %call123, ptr %status, align 4, !dbg !1393
  %92 = load i32, ptr %status, align 4, !dbg !1394
  %tobool124 = icmp ne i32 %92, 0, !dbg !1394
  br i1 %tobool124, label %if.then125, label %if.end126, !dbg !1396

if.then125:                                       ; preds = %if.end122
  %93 = load i32, ptr %status, align 4, !dbg !1397
  store i32 %93, ptr %retval, align 4, !dbg !1397
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1397

if.end126:                                        ; preds = %if.end122
  %94 = load ptr, ptr %obj_desc, align 8, !dbg !1399
  %95 = load ptr, ptr %walk_state.addr, align 8, !dbg !1400
  call void @acpi_db_display_argument_object(ptr noundef %94, ptr noundef %95) #5, !dbg !1401
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %if.end77
  store i32 0, ptr %retval, align 4, !dbg !1402
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1402

cleanup:                                          ; preds = %if.end127, %if.then125, %if.then120, %if.then116, %if.then109, %if.then96, %if.then76, %if.then72, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %op_info) #6, !dbg !1403
  call void @llvm.lifetime.end.p0(i64 4, ptr %interpreter_mode) #6, !dbg !1403
  call void @llvm.lifetime.end.p0(i64 2, ptr %opcode) #6, !dbg !1403
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_op) #6, !dbg !1403
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #6, !dbg !1403
  call void @llvm.lifetime.end.p0(i64 4, ptr %name_length) #6, !dbg !1403
  call void @llvm.lifetime.end.p0(i64 8, ptr %name_string) #6, !dbg !1403
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1403
  %96 = load i32, ptr %retval, align 4, !dbg !1403
  ret i32 %96, !dbg !1403
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1404 dso_local i32 @acpi_ex_get_name_string(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1410 dso_local i32 @acpi_ns_lookup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1414 dso_local void @acpi_ut_prefixed_namespace_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !1417 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1422, metadata !DIExpression()), !dbg !1423
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1424
  call void @kfree(ptr noundef %0) #5, !dbg !1425
  ret void, !dbg !1426
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1427 dso_local i32 @acpi_ds_obj_stack_push(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_db_display_argument_object(ptr noundef %obj_desc, ptr noundef %walk_state) #4 align 16 !dbg !1430 {
entry:
  %obj_desc.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1435, metadata !DIExpression()), !dbg !1437
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1436, metadata !DIExpression()), !dbg !1437
  ret void, !dbg !1437
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1438 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1441 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1444 dso_local i32 @acpi_ds_init_object_from_op(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1447 dso_local void @acpi_ut_delete_object_desc(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_create_operands(ptr noundef %walk_state, ptr noundef %first_arg) #0 align 16 !dbg !1448 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %first_arg.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %arg = alloca ptr, align 8
  %arguments = alloca [8 x ptr], align 16
  %arg_count = alloca i32, align 4
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1452, metadata !DIExpression()), !dbg !1462
  store ptr %first_arg, ptr %first_arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first_arg.addr, metadata !1453, metadata !DIExpression()), !dbg !1463
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1464
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1454, metadata !DIExpression()), !dbg !1465
  store i32 0, ptr %status, align 4, !dbg !1465
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #6, !dbg !1466
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !1455, metadata !DIExpression()), !dbg !1467
  call void @llvm.lifetime.start.p0(i64 64, ptr %arguments) #6, !dbg !1468
  call void @llvm.dbg.declare(metadata ptr %arguments, metadata !1456, metadata !DIExpression()), !dbg !1469
  call void @llvm.lifetime.start.p0(i64 4, ptr %arg_count) #6, !dbg !1470
  call void @llvm.dbg.declare(metadata ptr %arg_count, metadata !1458, metadata !DIExpression()), !dbg !1471
  store i32 0, ptr %arg_count, align 4, !dbg !1471
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #6, !dbg !1472
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1459, metadata !DIExpression()), !dbg !1473
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1474
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 5, !dbg !1475
  %1 = load i8, ptr %num_operands, align 1, !dbg !1475
  %conv = zext i8 %1 to i32, !dbg !1474
  store i32 %conv, ptr %index, align 4, !dbg !1473
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !1476
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1460, metadata !DIExpression()), !dbg !1477
  %2 = load ptr, ptr %first_arg.addr, align 8, !dbg !1478
  store ptr %2, ptr %arg, align 8, !dbg !1479
  br label %while.cond, !dbg !1480

while.cond:                                       ; preds = %if.end, %entry
  %3 = load ptr, ptr %arg, align 8, !dbg !1481
  %tobool = icmp ne ptr %3, null, !dbg !1480
  br i1 %tobool, label %while.body, label %while.end, !dbg !1480

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %index, align 4, !dbg !1482
  %cmp = icmp uge i32 %4, 8, !dbg !1485
  br i1 %cmp, label %if.then, label %if.end, !dbg !1486

if.then:                                          ; preds = %while.body
  store i32 4100, ptr %retval, align 4, !dbg !1487
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !1487

if.end:                                           ; preds = %while.body
  %5 = load ptr, ptr %arg, align 8, !dbg !1489
  %6 = load i32, ptr %index, align 4, !dbg !1490
  %idxprom = zext i32 %6 to i64, !dbg !1491
  %arrayidx = getelementptr [8 x ptr], ptr %arguments, i64 0, i64 %idxprom, !dbg !1491
  store ptr %5, ptr %arrayidx, align 8, !dbg !1492
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !1493
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %7, i32 0, i32 28, !dbg !1494
  %8 = load i32, ptr %index, align 4, !dbg !1495
  %idxprom2 = zext i32 %8 to i64, !dbg !1493
  %arrayidx3 = getelementptr [9 x ptr], ptr %operands, i64 0, i64 %idxprom2, !dbg !1493
  store ptr null, ptr %arrayidx3, align 8, !dbg !1496
  %9 = load ptr, ptr %arg, align 8, !dbg !1497
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %9, i32 0, i32 5, !dbg !1498
  %10 = load ptr, ptr %next, align 8, !dbg !1498
  store ptr %10, ptr %arg, align 8, !dbg !1499
  %11 = load i32, ptr %arg_count, align 4, !dbg !1500
  %inc = add i32 %11, 1, !dbg !1500
  store i32 %inc, ptr %arg_count, align 4, !dbg !1500
  %12 = load i32, ptr %index, align 4, !dbg !1501
  %inc4 = add i32 %12, 1, !dbg !1501
  store i32 %inc4, ptr %index, align 4, !dbg !1501
  br label %while.cond, !dbg !1480, !llvm.loop !1502

while.end:                                        ; preds = %while.cond
  %13 = load i32, ptr %index, align 4, !dbg !1504
  %dec = add i32 %13, -1, !dbg !1504
  store i32 %dec, ptr %index, align 4, !dbg !1504
  store i32 0, ptr %i, align 4, !dbg !1505
  br label %for.cond, !dbg !1507

for.cond:                                         ; preds = %for.inc, %while.end
  %14 = load i32, ptr %i, align 4, !dbg !1508
  %15 = load i32, ptr %arg_count, align 4, !dbg !1510
  %cmp5 = icmp ult i32 %14, %15, !dbg !1511
  br i1 %cmp5, label %for.body, label %for.end, !dbg !1512

for.body:                                         ; preds = %for.cond
  %16 = load i32, ptr %index, align 4, !dbg !1513
  %idxprom7 = zext i32 %16 to i64, !dbg !1515
  %arrayidx8 = getelementptr [8 x ptr], ptr %arguments, i64 0, i64 %idxprom7, !dbg !1515
  %17 = load ptr, ptr %arrayidx8, align 8, !dbg !1515
  store ptr %17, ptr %arg, align 8, !dbg !1516
  %18 = load i32, ptr %index, align 4, !dbg !1517
  %conv9 = trunc i32 %18 to i8, !dbg !1518
  %19 = load ptr, ptr %walk_state.addr, align 8, !dbg !1519
  %operand_index = getelementptr inbounds %struct.acpi_walk_state, ptr %19, i32 0, i32 6, !dbg !1520
  store i8 %conv9, ptr %operand_index, align 2, !dbg !1521
  %20 = load ptr, ptr %walk_state.addr, align 8, !dbg !1522
  %21 = load ptr, ptr %arg, align 8, !dbg !1523
  %22 = load i32, ptr %index, align 4, !dbg !1524
  %call = call i32 @acpi_ds_create_operand(ptr noundef %20, ptr noundef %21, i32 noundef %22) #5, !dbg !1525
  store i32 %call, ptr %status, align 4, !dbg !1526
  %23 = load i32, ptr %status, align 4, !dbg !1527
  %tobool10 = icmp ne i32 %23, 0, !dbg !1527
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !1529

if.then11:                                        ; preds = %for.body
  br label %cleanup, !dbg !1530

if.end12:                                         ; preds = %for.body
  %24 = load i32, ptr %index, align 4, !dbg !1532
  %dec13 = add i32 %24, -1, !dbg !1532
  store i32 %dec13, ptr %index, align 4, !dbg !1532
  br label %for.inc, !dbg !1533

for.inc:                                          ; preds = %if.end12
  %25 = load i32, ptr %i, align 4, !dbg !1534
  %inc14 = add i32 %25, 1, !dbg !1534
  store i32 %inc14, ptr %i, align 4, !dbg !1534
  br label %for.cond, !dbg !1535, !llvm.loop !1536

for.end:                                          ; preds = %for.cond
  %26 = load i32, ptr %status, align 4, !dbg !1538
  store i32 %26, ptr %retval, align 4, !dbg !1538
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !1538

cleanup:                                          ; preds = %if.then11
  call void @llvm.dbg.label(metadata !1461), !dbg !1539
  %27 = load i32, ptr %arg_count, align 4, !dbg !1540
  %28 = load ptr, ptr %walk_state.addr, align 8, !dbg !1541
  call void @acpi_ds_obj_stack_pop_and_delete(i32 noundef %27, ptr noundef %28) #5, !dbg !1542
  %29 = load i32, ptr %status, align 4, !dbg !1543
  %30 = load i32, ptr %index, align 4, !dbg !1543
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 725, i32 noundef %29, ptr noundef @.str.3, i32 noundef %30) #5, !dbg !1543
  %31 = load i32, ptr %status, align 4, !dbg !1544
  store i32 %31, ptr %retval, align 4, !dbg !1544
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !1544

cleanup15:                                        ; preds = %cleanup, %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !1545
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #6, !dbg !1545
  call void @llvm.lifetime.end.p0(i64 4, ptr %arg_count) #6, !dbg !1545
  call void @llvm.lifetime.end.p0(i64 64, ptr %arguments) #6, !dbg !1545
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #6, !dbg !1545
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1545
  %32 = load i32, ptr %retval, align 4, !dbg !1545
  ret i32 %32, !dbg !1545
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1546 dso_local void @acpi_ds_obj_stack_pop_and_delete(i32 noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_evaluate_name_path(ptr noundef %walk_state) #0 align 16 !dbg !1549 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %op = alloca ptr, align 8
  %operand = alloca ptr, align 8
  %new_obj_desc = alloca ptr, align 8
  %type = alloca i8, align 1
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1551, metadata !DIExpression()), !dbg !1559
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1560
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1552, metadata !DIExpression()), !dbg !1561
  store i32 0, ptr %status, align 4, !dbg !1561
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #6, !dbg !1562
  call void @llvm.dbg.declare(metadata ptr %op, metadata !1553, metadata !DIExpression()), !dbg !1563
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1564
  %op1 = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 40, !dbg !1565
  %1 = load ptr, ptr %op1, align 8, !dbg !1565
  store ptr %1, ptr %op, align 8, !dbg !1563
  call void @llvm.lifetime.start.p0(i64 8, ptr %operand) #6, !dbg !1566
  call void @llvm.dbg.declare(metadata ptr %operand, metadata !1554, metadata !DIExpression()), !dbg !1567
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !1568
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 28, !dbg !1569
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !1568
  store ptr %arrayidx, ptr %operand, align 8, !dbg !1567
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_obj_desc) #6, !dbg !1570
  call void @llvm.dbg.declare(metadata ptr %new_obj_desc, metadata !1555, metadata !DIExpression()), !dbg !1571
  call void @llvm.lifetime.start.p0(i64 1, ptr %type) #6, !dbg !1572
  call void @llvm.dbg.declare(metadata ptr %type, metadata !1556, metadata !DIExpression()), !dbg !1573
  %3 = load ptr, ptr %op, align 8, !dbg !1574
  %parent = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %3, i32 0, i32 0, !dbg !1576
  %4 = load ptr, ptr %parent, align 8, !dbg !1576
  %tobool = icmp ne ptr %4, null, !dbg !1574
  br i1 %tobool, label %if.end, label %if.then, !dbg !1577

if.then:                                          ; preds = %entry
  br label %exit, !dbg !1578

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %op, align 8, !dbg !1580
  %parent2 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %5, i32 0, i32 0, !dbg !1582
  %6 = load ptr, ptr %parent2, align 8, !dbg !1582
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %6, i32 0, i32 3, !dbg !1583
  %7 = load i16, ptr %aml_opcode, align 2, !dbg !1583
  %conv = zext i16 %7 to i32, !dbg !1580
  %cmp = icmp eq i32 %conv, 18, !dbg !1584
  br i1 %cmp, label %if.then15, label %lor.lhs.false, !dbg !1585

lor.lhs.false:                                    ; preds = %if.end
  %8 = load ptr, ptr %op, align 8, !dbg !1586
  %parent4 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %8, i32 0, i32 0, !dbg !1587
  %9 = load ptr, ptr %parent4, align 8, !dbg !1587
  %aml_opcode5 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %9, i32 0, i32 3, !dbg !1588
  %10 = load i16, ptr %aml_opcode5, align 2, !dbg !1588
  %conv6 = zext i16 %10 to i32, !dbg !1586
  %cmp7 = icmp eq i32 %conv6, 19, !dbg !1589
  br i1 %cmp7, label %if.then15, label %lor.lhs.false9, !dbg !1590

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %11 = load ptr, ptr %op, align 8, !dbg !1591
  %parent10 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %11, i32 0, i32 0, !dbg !1592
  %12 = load ptr, ptr %parent10, align 8, !dbg !1592
  %aml_opcode11 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %12, i32 0, i32 3, !dbg !1593
  %13 = load i16, ptr %aml_opcode11, align 2, !dbg !1593
  %conv12 = zext i16 %13 to i32, !dbg !1591
  %cmp13 = icmp eq i32 %conv12, 113, !dbg !1594
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !1595

if.then15:                                        ; preds = %lor.lhs.false9, %lor.lhs.false, %if.end
  br label %exit, !dbg !1596

if.end16:                                         ; preds = %lor.lhs.false9
  %14 = load ptr, ptr %walk_state.addr, align 8, !dbg !1598
  %15 = load ptr, ptr %op, align 8, !dbg !1599
  %call = call i32 @acpi_ds_create_operand(ptr noundef %14, ptr noundef %15, i32 noundef 0) #5, !dbg !1600
  store i32 %call, ptr %status, align 4, !dbg !1601
  %16 = load i32, ptr %status, align 4, !dbg !1602
  %tobool17 = icmp ne i32 %16, 0, !dbg !1602
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !1604

if.then18:                                        ; preds = %if.end16
  br label %exit, !dbg !1605

if.end19:                                         ; preds = %if.end16
  %17 = load ptr, ptr %op, align 8, !dbg !1607
  %flags = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %17, i32 0, i32 2, !dbg !1609
  %18 = load i8, ptr %flags, align 1, !dbg !1609
  %conv20 = zext i8 %18 to i32, !dbg !1607
  %and = and i32 %conv20, 32, !dbg !1610
  %tobool21 = icmp ne i32 %and, 0, !dbg !1610
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !1611

if.then22:                                        ; preds = %if.end19
  %19 = load ptr, ptr %operand, align 8, !dbg !1612
  %20 = load ptr, ptr %19, align 8, !dbg !1614
  store ptr %20, ptr %new_obj_desc, align 8, !dbg !1615
  br label %push_result, !dbg !1616

if.end23:                                         ; preds = %if.end19
  %21 = load ptr, ptr %operand, align 8, !dbg !1617
  %22 = load ptr, ptr %21, align 8, !dbg !1618
  %type24 = getelementptr inbounds %struct.acpi_object_common, ptr %22, i32 0, i32 2, !dbg !1619
  %23 = load i8, ptr %type24, align 1, !dbg !1619
  store i8 %23, ptr %type, align 1, !dbg !1620
  %24 = load ptr, ptr %operand, align 8, !dbg !1621
  %25 = load ptr, ptr %walk_state.addr, align 8, !dbg !1622
  %call25 = call i32 @acpi_ex_resolve_to_value(ptr noundef %24, ptr noundef %25) #5, !dbg !1623
  store i32 %call25, ptr %status, align 4, !dbg !1624
  %26 = load i32, ptr %status, align 4, !dbg !1625
  %tobool26 = icmp ne i32 %26, 0, !dbg !1625
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !1627

if.then27:                                        ; preds = %if.end23
  br label %exit, !dbg !1628

if.end28:                                         ; preds = %if.end23
  %27 = load i8, ptr %type, align 1, !dbg !1630
  %conv29 = zext i8 %27 to i32, !dbg !1630
  %cmp30 = icmp eq i32 %conv29, 1, !dbg !1632
  br i1 %cmp30, label %if.then32, label %if.else, !dbg !1633

if.then32:                                        ; preds = %if.end28
  %28 = load ptr, ptr %operand, align 8, !dbg !1634
  %29 = load ptr, ptr %28, align 8, !dbg !1636
  call void @acpi_ut_remove_reference(ptr noundef %29) #5, !dbg !1637
  %30 = load ptr, ptr %operand, align 8, !dbg !1638
  %31 = load ptr, ptr %30, align 8, !dbg !1639
  %32 = load ptr, ptr %walk_state.addr, align 8, !dbg !1640
  %call33 = call i32 @acpi_ut_copy_iobject_to_iobject(ptr noundef %31, ptr noundef %new_obj_desc, ptr noundef %32) #5, !dbg !1641
  store i32 %call33, ptr %status, align 4, !dbg !1642
  %33 = load i32, ptr %status, align 4, !dbg !1643
  %tobool34 = icmp ne i32 %33, 0, !dbg !1643
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !1645

if.then35:                                        ; preds = %if.then32
  br label %exit, !dbg !1646

if.end36:                                         ; preds = %if.then32
  br label %if.end37, !dbg !1648

if.else:                                          ; preds = %if.end28
  %34 = load ptr, ptr %operand, align 8, !dbg !1649
  %35 = load ptr, ptr %34, align 8, !dbg !1651
  store ptr %35, ptr %new_obj_desc, align 8, !dbg !1652
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.end36
  %36 = load ptr, ptr %walk_state.addr, align 8, !dbg !1653
  %call38 = call i32 @acpi_ds_obj_stack_pop(i32 noundef 1, ptr noundef %36) #5, !dbg !1654
  store i32 %call38, ptr %status, align 4, !dbg !1655
  %37 = load i32, ptr %status, align 4, !dbg !1656
  %tobool39 = icmp ne i32 %37, 0, !dbg !1656
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !1658

if.then40:                                        ; preds = %if.end37
  %38 = load ptr, ptr %new_obj_desc, align 8, !dbg !1659
  %39 = load ptr, ptr %walk_state.addr, align 8, !dbg !1661
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, ptr %39, i32 0, i32 43, !dbg !1662
  store ptr %38, ptr %result_obj, align 8, !dbg !1663
  br label %exit, !dbg !1664

if.end41:                                         ; preds = %if.end37
  br label %push_result, !dbg !1656

push_result:                                      ; preds = %if.end41, %if.then22
  call void @llvm.dbg.label(metadata !1557), !dbg !1665
  %40 = load ptr, ptr %new_obj_desc, align 8, !dbg !1666
  %41 = load ptr, ptr %walk_state.addr, align 8, !dbg !1667
  %result_obj42 = getelementptr inbounds %struct.acpi_walk_state, ptr %41, i32 0, i32 43, !dbg !1668
  store ptr %40, ptr %result_obj42, align 8, !dbg !1669
  %42 = load ptr, ptr %walk_state.addr, align 8, !dbg !1670
  %result_obj43 = getelementptr inbounds %struct.acpi_walk_state, ptr %42, i32 0, i32 43, !dbg !1671
  %43 = load ptr, ptr %result_obj43, align 8, !dbg !1671
  %44 = load ptr, ptr %walk_state.addr, align 8, !dbg !1672
  %call44 = call i32 @acpi_ds_result_push(ptr noundef %43, ptr noundef %44) #5, !dbg !1673
  store i32 %call44, ptr %status, align 4, !dbg !1674
  %45 = load i32, ptr %status, align 4, !dbg !1675
  %tobool45 = icmp ne i32 %45, 0, !dbg !1675
  br i1 %tobool45, label %if.end50, label %if.then46, !dbg !1677

if.then46:                                        ; preds = %push_result
  %46 = load ptr, ptr %op, align 8, !dbg !1678
  %flags47 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %46, i32 0, i32 2, !dbg !1680
  %47 = load i8, ptr %flags47, align 1, !dbg !1681
  %conv48 = zext i8 %47 to i32, !dbg !1681
  %or = or i32 %conv48, 16, !dbg !1681
  %conv49 = trunc i32 %or to i8, !dbg !1681
  store i8 %conv49, ptr %flags47, align 1, !dbg !1681
  br label %if.end50, !dbg !1682

if.end50:                                         ; preds = %if.then46, %push_result
  br label %exit, !dbg !1675

exit:                                             ; preds = %if.end50, %if.then40, %if.then35, %if.then27, %if.then18, %if.then15, %if.then
  call void @llvm.dbg.label(metadata !1558), !dbg !1683
  %48 = load i32, ptr %status, align 4, !dbg !1684
  call void @llvm.lifetime.end.p0(i64 1, ptr %type) #6, !dbg !1685
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_obj_desc) #6, !dbg !1685
  call void @llvm.lifetime.end.p0(i64 8, ptr %operand) #6, !dbg !1685
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #6, !dbg !1685
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1685
  ret i32 %48, !dbg !1684
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1686 dso_local i32 @acpi_ut_copy_iobject_to_iobject(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1689 dso_local i32 @acpi_ds_obj_stack_pop(i32 noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1692 dso_local i32 @acpi_ds_result_push(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1695 dso_local void @kfree(ptr noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!813, !814, !815, !816, !817, !818, !819, !820}
!llvm.ident = !{!821}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !811, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.dsutils.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22dsutils\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/dsutils.ll drivers/acpi/acpica/dsutils.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !792, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dsutils.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9189dcc7c0fac9878889ed0e34d7fd41")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3)
!12 = !{!13, !18, !20, !22, !788, !791, !31}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !14, line: 19, baseType: !15)
!14 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !16, line: 24, baseType: !17)
!16 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!17 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !19, line: 421, baseType: !20)
!19 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !14, line: 21, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !16, line: 27, baseType: !7)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !24, line: 369, size: 576, elements: !25)
!24 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!25 = !{!26, !37, !53, !65, !100, !114, !124, !437, !454, !470, !483, !561, !573, !587, !597, !615, !637, !656, !675, !694, !707, !734, !751, !764, !778, !787}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !23, file: !24, line: 370, baseType: !27, size: 128)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !24, line: 73, size: 128, elements: !28)
!28 = !{!29, !30, !34, !35, !36}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !27, file: !24, line: 74, baseType: !22, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !27, file: !24, line: 74, baseType: !31, size: 8, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !14, line: 17, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !16, line: 21, baseType: !33)
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !27, file: !24, line: 74, baseType: !31, size: 8, offset: 72)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !27, file: !24, line: 74, baseType: !13, size: 16, offset: 80)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !27, file: !24, line: 74, baseType: !31, size: 8, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !23, file: !24, line: 371, baseType: !38, size: 192)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !24, line: 76, size: 192, elements: !39)
!39 = !{!40, !41, !42, !43, !44, !45, !49}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !38, file: !24, line: 77, baseType: !22, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !38, file: !24, line: 77, baseType: !31, size: 8, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !38, file: !24, line: 77, baseType: !31, size: 8, offset: 72)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !38, file: !24, line: 77, baseType: !13, size: 16, offset: 80)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !38, file: !24, line: 77, baseType: !31, size: 8, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !38, file: !24, line: 77, baseType: !46, size: 24, offset: 104)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 24, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 3)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !38, file: !24, line: 78, baseType: !50, size: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !14, line: 23, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !16, line: 31, baseType: !52)
!52 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !23, file: !24, line: 372, baseType: !54, size: 256)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !24, line: 93, size: 256, elements: !55)
!55 = !{!56, !57, !58, !59, !60, !61, !64}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !54, file: !24, line: 94, baseType: !22, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !54, file: !24, line: 94, baseType: !31, size: 8, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !54, file: !24, line: 94, baseType: !31, size: 8, offset: 72)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !54, file: !24, line: 94, baseType: !13, size: 16, offset: 80)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !54, file: !24, line: 94, baseType: !31, size: 8, offset: 96)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !54, file: !24, line: 94, baseType: !62, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !54, file: !24, line: 94, baseType: !20, size: 32, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !23, file: !24, line: 373, baseType: !66, size: 384)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !24, line: 97, size: 384, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !75, !76, !77, !78}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !66, file: !24, line: 98, baseType: !22, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !66, file: !24, line: 98, baseType: !31, size: 8, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !24, line: 98, baseType: !31, size: 8, offset: 72)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !66, file: !24, line: 98, baseType: !13, size: 16, offset: 80)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !24, line: 98, baseType: !31, size: 8, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !66, file: !24, line: 98, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !66, file: !24, line: 98, baseType: !20, size: 32, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !66, file: !24, line: 99, baseType: !20, size: 32, offset: 224)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !66, file: !24, line: 100, baseType: !74, size: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !66, file: !24, line: 101, baseType: !79, size: 64, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !95, !96, !97, !98}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !80, file: !6, line: 134, baseType: !22, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !80, file: !6, line: 135, baseType: !31, size: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !6, line: 136, baseType: !31, size: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !6, line: 137, baseType: !13, size: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !80, file: !6, line: 138, baseType: !87, size: 32, offset: 96)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !88, line: 328, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !87, file: !88, line: 329, baseType: !20, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !87, file: !88, line: 330, baseType: !92, size: 32)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 32, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 4)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !80, file: !6, line: 139, baseType: !79, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !80, file: !6, line: 140, baseType: !79, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !80, file: !6, line: 141, baseType: !79, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !80, file: !6, line: 142, baseType: !99, size: 16, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !19, line: 445, baseType: !13)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !23, file: !24, line: 374, baseType: !101, size: 384)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !24, line: 104, size: 384, elements: !102)
!102 = !{!103, !104, !105, !106, !107, !108, !109, !111, !112, !113}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !101, file: !24, line: 105, baseType: !22, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !101, file: !24, line: 105, baseType: !31, size: 8, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !101, file: !24, line: 105, baseType: !31, size: 8, offset: 72)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !101, file: !24, line: 105, baseType: !13, size: 16, offset: 80)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !101, file: !24, line: 105, baseType: !31, size: 8, offset: 96)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !101, file: !24, line: 105, baseType: !79, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !101, file: !24, line: 106, baseType: !110, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !101, file: !24, line: 107, baseType: !74, size: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !101, file: !24, line: 108, baseType: !20, size: 32, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !101, file: !24, line: 109, baseType: !20, size: 32, offset: 352)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !23, file: !24, line: 375, baseType: !115, size: 192)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !24, line: 118, size: 192, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !115, file: !24, line: 119, baseType: !22, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !115, file: !24, line: 119, baseType: !31, size: 8, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !24, line: 119, baseType: !31, size: 8, offset: 72)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !115, file: !24, line: 119, baseType: !13, size: 16, offset: 80)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !115, file: !24, line: 119, baseType: !31, size: 8, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !115, file: !24, line: 119, baseType: !123, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !23, file: !24, line: 376, baseType: !125, size: 448)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !24, line: 144, size: 448, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !434, !435, !436}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !125, file: !24, line: 145, baseType: !22, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !125, file: !24, line: 145, baseType: !31, size: 8, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !24, line: 145, baseType: !31, size: 8, offset: 72)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !125, file: !24, line: 145, baseType: !13, size: 16, offset: 80)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !24, line: 145, baseType: !31, size: 8, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !125, file: !24, line: 145, baseType: !31, size: 8, offset: 104)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !125, file: !24, line: 146, baseType: !31, size: 8, offset: 112)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !125, file: !24, line: 147, baseType: !31, size: 8, offset: 120)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !125, file: !24, line: 148, baseType: !22, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !125, file: !24, line: 149, baseType: !22, size: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !125, file: !24, line: 150, baseType: !74, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !125, file: !24, line: 154, baseType: !139, size: 64, offset: 320)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !125, file: !24, line: 151, size: 64, elements: !140)
!140 = !{!141, !433}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !139, file: !24, line: 152, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!18, !146}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !148, line: 37, size: 9024, elements: !149)
!148 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !379, !380, !381, !382, !383, !387, !389, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !416, !417, !418, !419, !420, !421, !422, !423, !425, !431}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !147, file: !148, line: 38, baseType: !146, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !147, file: !148, line: 39, baseType: !31, size: 8, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !147, file: !148, line: 40, baseType: !31, size: 8, offset: 72)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !147, file: !148, line: 41, baseType: !13, size: 16, offset: 80)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !147, file: !148, line: 42, baseType: !31, size: 8, offset: 96)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !147, file: !148, line: 43, baseType: !31, size: 8, offset: 104)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !147, file: !148, line: 44, baseType: !31, size: 8, offset: 112)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !147, file: !148, line: 45, baseType: !99, size: 16, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !147, file: !148, line: 46, baseType: !31, size: 8, offset: 144)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !147, file: !148, line: 47, baseType: !31, size: 8, offset: 152)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !147, file: !148, line: 48, baseType: !31, size: 8, offset: 160)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !147, file: !148, line: 49, baseType: !31, size: 8, offset: 168)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !147, file: !148, line: 50, baseType: !31, size: 8, offset: 176)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !147, file: !148, line: 51, baseType: !31, size: 8, offset: 184)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !147, file: !148, line: 52, baseType: !31, size: 8, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !147, file: !148, line: 53, baseType: !31, size: 8, offset: 200)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !147, file: !148, line: 54, baseType: !74, size: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !147, file: !148, line: 55, baseType: !20, size: 32, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !147, file: !148, line: 56, baseType: !20, size: 32, offset: 352)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !147, file: !148, line: 57, baseType: !20, size: 32, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !147, file: !148, line: 58, baseType: !20, size: 32, offset: 416)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !147, file: !148, line: 60, baseType: !172, size: 640, offset: 448)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 909, size: 640, elements: !173)
!173 = !{!174, !175, !176, !177, !178, !179, !260, !261, !377, !378}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !172, file: !6, line: 910, baseType: !74, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !172, file: !6, line: 911, baseType: !74, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !172, file: !6, line: 912, baseType: !74, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !172, file: !6, line: 913, baseType: !74, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !172, file: !6, line: 914, baseType: !74, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !172, file: !6, line: 915, baseType: !180, size: 64, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 891, size: 1600, elements: !182)
!182 = !{!183, !203, !219}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !181, file: !6, line: 892, baseType: !184, size: 448)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 844, size: 448, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !202}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !184, file: !6, line: 845, baseType: !180, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !184, file: !6, line: 845, baseType: !31, size: 8, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !184, file: !6, line: 845, baseType: !31, size: 8, offset: 72)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !184, file: !6, line: 845, baseType: !13, size: 16, offset: 80)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !184, file: !6, line: 845, baseType: !74, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !184, file: !6, line: 845, baseType: !180, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !184, file: !6, line: 845, baseType: !79, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !184, file: !6, line: 845, baseType: !194, size: 64, offset: 320)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 732, size: 64, elements: !195)
!195 = !{!196, !197, !198, !199, !200, !201}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !194, file: !6, line: 733, baseType: !50, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !194, file: !6, line: 734, baseType: !20, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !194, file: !6, line: 735, baseType: !62, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !194, file: !6, line: 736, baseType: !74, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !194, file: !6, line: 737, baseType: !62, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !194, file: !6, line: 738, baseType: !180, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !184, file: !6, line: 845, baseType: !31, size: 8, offset: 384)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !181, file: !6, line: 893, baseType: !204, size: 640)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 851, size: 640, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !204, file: !6, line: 852, baseType: !180, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !204, file: !6, line: 852, baseType: !31, size: 8, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !204, file: !6, line: 852, baseType: !31, size: 8, offset: 72)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !204, file: !6, line: 852, baseType: !13, size: 16, offset: 80)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !204, file: !6, line: 852, baseType: !74, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !204, file: !6, line: 852, baseType: !180, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !204, file: !6, line: 852, baseType: !79, size: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !204, file: !6, line: 852, baseType: !194, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !204, file: !6, line: 852, baseType: !31, size: 8, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !204, file: !6, line: 852, baseType: !62, size: 64, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !204, file: !6, line: 853, baseType: !74, size: 64, offset: 512)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !204, file: !6, line: 854, baseType: !20, size: 32, offset: 576)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !204, file: !6, line: 855, baseType: !20, size: 32, offset: 608)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !181, file: !6, line: 894, baseType: !220, size: 1600)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 862, size: 1600, elements: !221)
!221 = !{!222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !220, file: !6, line: 863, baseType: !180, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !220, file: !6, line: 863, baseType: !31, size: 8, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !220, file: !6, line: 863, baseType: !31, size: 8, offset: 72)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !220, file: !6, line: 863, baseType: !13, size: 16, offset: 80)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !220, file: !6, line: 863, baseType: !74, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !220, file: !6, line: 863, baseType: !180, size: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !220, file: !6, line: 863, baseType: !79, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !220, file: !6, line: 863, baseType: !194, size: 64, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !220, file: !6, line: 863, baseType: !31, size: 8, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !220, file: !6, line: 863, baseType: !180, size: 64, offset: 448)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !220, file: !6, line: 864, baseType: !180, size: 64, offset: 512)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !220, file: !6, line: 865, baseType: !62, size: 64, offset: 576)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !220, file: !6, line: 866, baseType: !31, size: 8, offset: 640)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !220, file: !6, line: 867, baseType: !62, size: 64, offset: 704)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !220, file: !6, line: 868, baseType: !62, size: 64, offset: 768)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !220, file: !6, line: 869, baseType: !62, size: 64, offset: 832)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !220, file: !6, line: 870, baseType: !92, size: 32, offset: 896)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !220, file: !6, line: 871, baseType: !20, size: 32, offset: 928)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !220, file: !6, line: 872, baseType: !20, size: 32, offset: 960)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !220, file: !6, line: 873, baseType: !20, size: 32, offset: 992)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !220, file: !6, line: 874, baseType: !20, size: 32, offset: 1024)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !220, file: !6, line: 875, baseType: !20, size: 32, offset: 1056)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !220, file: !6, line: 876, baseType: !20, size: 32, offset: 1088)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !220, file: !6, line: 877, baseType: !20, size: 32, offset: 1120)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !220, file: !6, line: 878, baseType: !20, size: 32, offset: 1152)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !220, file: !6, line: 879, baseType: !20, size: 32, offset: 1184)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !220, file: !6, line: 880, baseType: !20, size: 32, offset: 1216)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !220, file: !6, line: 881, baseType: !20, size: 32, offset: 1248)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !220, file: !6, line: 882, baseType: !20, size: 32, offset: 1280)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !220, file: !6, line: 883, baseType: !20, size: 32, offset: 1312)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !220, file: !6, line: 884, baseType: !13, size: 16, offset: 1344)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !220, file: !6, line: 885, baseType: !31, size: 8, offset: 1360)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !220, file: !6, line: 886, baseType: !31, size: 8, offset: 1368)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !220, file: !6, line: 887, baseType: !31, size: 8, offset: 1376)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !220, file: !6, line: 888, baseType: !257, size: 160, offset: 1384)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 160, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 20)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !172, file: !6, line: 916, baseType: !79, size: 64, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !172, file: !6, line: 917, baseType: !262, size: 64, offset: 448)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 679, size: 640, elements: !264)
!264 = !{!265, !273, !286, !295, !304, !317, !331, !343, !355}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !263, file: !6, line: 680, baseType: !266, size: 128)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 575, size: 128, elements: !267)
!267 = !{!268, !269, !270, !271, !272}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !6, line: 576, baseType: !123, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !266, file: !6, line: 576, baseType: !31, size: 8, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !6, line: 576, baseType: !31, size: 8, offset: 72)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !266, file: !6, line: 576, baseType: !13, size: 16, offset: 80)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !266, file: !6, line: 576, baseType: !13, size: 16, offset: 96)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !263, file: !6, line: 681, baseType: !274, size: 384)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 604, size: 384, elements: !275)
!275 = !{!276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !6, line: 605, baseType: !123, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !274, file: !6, line: 605, baseType: !31, size: 8, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !274, file: !6, line: 605, baseType: !31, size: 8, offset: 72)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !274, file: !6, line: 605, baseType: !13, size: 16, offset: 80)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !274, file: !6, line: 605, baseType: !13, size: 16, offset: 96)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !274, file: !6, line: 606, baseType: !13, size: 16, offset: 112)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !274, file: !6, line: 607, baseType: !180, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !274, file: !6, line: 608, baseType: !74, size: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !274, file: !6, line: 609, baseType: !74, size: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !274, file: !6, line: 610, baseType: !50, size: 64, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !263, file: !6, line: 682, baseType: !287, size: 192)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 582, size: 192, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !6, line: 583, baseType: !123, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !287, file: !6, line: 583, baseType: !31, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !6, line: 583, baseType: !31, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !6, line: 583, baseType: !13, size: 16, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !287, file: !6, line: 583, baseType: !13, size: 16, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !287, file: !6, line: 584, baseType: !22, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !263, file: !6, line: 683, baseType: !296, size: 192)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 616, size: 192, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !6, line: 617, baseType: !123, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !296, file: !6, line: 617, baseType: !31, size: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !6, line: 617, baseType: !31, size: 8, offset: 72)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !296, file: !6, line: 617, baseType: !13, size: 16, offset: 80)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !296, file: !6, line: 617, baseType: !13, size: 16, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !296, file: !6, line: 618, baseType: !79, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !263, file: !6, line: 684, baseType: !305, size: 448)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 621, size: 448, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314, !315, !316}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !6, line: 622, baseType: !123, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !305, file: !6, line: 622, baseType: !31, size: 8, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !6, line: 622, baseType: !31, size: 8, offset: 72)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !305, file: !6, line: 622, baseType: !13, size: 16, offset: 80)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !305, file: !6, line: 622, baseType: !13, size: 16, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !305, file: !6, line: 623, baseType: !20, size: 32, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !305, file: !6, line: 624, baseType: !180, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !305, file: !6, line: 625, baseType: !74, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !305, file: !6, line: 626, baseType: !74, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !305, file: !6, line: 627, baseType: !20, size: 32, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !263, file: !6, line: 685, baseType: !318, size: 512)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 590, size: 512, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !6, line: 591, baseType: !123, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !318, file: !6, line: 591, baseType: !31, size: 8, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !6, line: 591, baseType: !31, size: 8, offset: 72)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !318, file: !6, line: 591, baseType: !13, size: 16, offset: 80)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !318, file: !6, line: 591, baseType: !13, size: 16, offset: 96)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !318, file: !6, line: 592, baseType: !20, size: 32, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !318, file: !6, line: 593, baseType: !22, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !318, file: !6, line: 594, baseType: !22, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !318, file: !6, line: 595, baseType: !146, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !318, file: !6, line: 596, baseType: !123, size: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !318, file: !6, line: 597, baseType: !20, size: 32, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !263, file: !6, line: 686, baseType: !332, size: 320)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 634, size: 320, elements: !333)
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !6, line: 635, baseType: !123, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !332, file: !6, line: 635, baseType: !31, size: 8, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !6, line: 635, baseType: !31, size: 8, offset: 72)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !332, file: !6, line: 635, baseType: !13, size: 16, offset: 80)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !332, file: !6, line: 635, baseType: !13, size: 16, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !332, file: !6, line: 636, baseType: !31, size: 8, offset: 112)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !332, file: !6, line: 637, baseType: !146, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !332, file: !6, line: 638, baseType: !22, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !332, file: !6, line: 639, baseType: !50, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !263, file: !6, line: 687, baseType: !344, size: 640)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 646, size: 640, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !344, file: !6, line: 647, baseType: !123, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !344, file: !6, line: 647, baseType: !31, size: 8, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !344, file: !6, line: 647, baseType: !31, size: 8, offset: 72)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !344, file: !6, line: 647, baseType: !13, size: 16, offset: 80)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !344, file: !6, line: 647, baseType: !13, size: 16, offset: 96)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !344, file: !6, line: 648, baseType: !352, size: 512, offset: 128)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 8)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !263, file: !6, line: 688, baseType: !356, size: 320)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 669, size: 320, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365, !366}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !6, line: 670, baseType: !123, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !356, file: !6, line: 670, baseType: !31, size: 8, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !356, file: !6, line: 670, baseType: !31, size: 8, offset: 72)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !356, file: !6, line: 670, baseType: !13, size: 16, offset: 80)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !356, file: !6, line: 670, baseType: !13, size: 16, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !356, file: !6, line: 671, baseType: !31, size: 8, offset: 112)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !356, file: !6, line: 672, baseType: !79, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !356, file: !6, line: 673, baseType: !22, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !356, file: !6, line: 674, baseType: !367, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 660, size: 128, elements: !369)
!369 = !{!370, !376}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !368, file: !6, line: 661, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !19, line: 1061, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !375, !20, !123}
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !19, line: 424, baseType: !123)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !368, file: !6, line: 662, baseType: !123, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !172, file: !6, line: 918, baseType: !180, size: 64, offset: 512)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !172, file: !6, line: 919, baseType: !20, size: 32, offset: 576)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !147, file: !148, line: 61, baseType: !20, size: 32, offset: 1088)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !147, file: !148, line: 62, baseType: !20, size: 32, offset: 1120)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !147, file: !148, line: 63, baseType: !13, size: 16, offset: 1152)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !147, file: !148, line: 64, baseType: !31, size: 8, offset: 1168)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !147, file: !148, line: 66, baseType: !384, size: 2688, offset: 1216)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 2688, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 7)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !147, file: !148, line: 67, baseType: !388, size: 3072, offset: 3904)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 3072, elements: !353)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !147, file: !148, line: 68, baseType: !390, size: 576, offset: 6976)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 576, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 9)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !147, file: !148, line: 69, baseType: !110, size: 64, offset: 7552)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !147, file: !148, line: 71, baseType: !74, size: 64, offset: 7616)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !147, file: !148, line: 72, baseType: !110, size: 64, offset: 7680)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !147, file: !148, line: 73, baseType: !262, size: 64, offset: 7744)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !147, file: !148, line: 74, baseType: !79, size: 64, offset: 7808)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !147, file: !148, line: 75, baseType: !22, size: 64, offset: 7872)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !147, file: !148, line: 76, baseType: !79, size: 64, offset: 7936)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !147, file: !148, line: 77, baseType: !180, size: 64, offset: 8000)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !147, file: !148, line: 78, baseType: !22, size: 64, offset: 8064)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !147, file: !148, line: 79, baseType: !79, size: 64, offset: 8128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !147, file: !148, line: 80, baseType: !62, size: 64, offset: 8192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !147, file: !148, line: 81, baseType: !180, size: 64, offset: 8256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !147, file: !148, line: 82, baseType: !406, size: 64, offset: 8320)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 718, size: 128, elements: !409)
!409 = !{!410, !411, !412, !413, !414, !415}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !408, file: !6, line: 722, baseType: !20, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !408, file: !6, line: 723, baseType: !20, size: 32, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !408, file: !6, line: 724, baseType: !13, size: 16, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !408, file: !6, line: 725, baseType: !31, size: 8, offset: 80)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !408, file: !6, line: 726, baseType: !31, size: 8, offset: 88)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !408, file: !6, line: 727, baseType: !31, size: 8, offset: 96)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !147, file: !148, line: 83, baseType: !180, size: 64, offset: 8384)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !147, file: !148, line: 84, baseType: !22, size: 64, offset: 8448)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !147, file: !148, line: 85, baseType: !262, size: 64, offset: 8512)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !147, file: !148, line: 86, baseType: !22, size: 64, offset: 8576)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !147, file: !148, line: 87, baseType: !262, size: 64, offset: 8640)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !147, file: !148, line: 88, baseType: !180, size: 64, offset: 8704)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !147, file: !148, line: 89, baseType: !180, size: 64, offset: 8768)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !147, file: !148, line: 90, baseType: !424, size: 64, offset: 8832)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !147, file: !148, line: 91, baseType: !426, size: 64, offset: 8896)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 652, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!18, !146, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !147, file: !148, line: 92, baseType: !432, size: 64, offset: 8960)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 656, baseType: !143)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !139, file: !24, line: 153, baseType: !22, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !125, file: !24, line: 156, baseType: !20, size: 32, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !125, file: !24, line: 157, baseType: !99, size: 16, offset: 416)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !125, file: !24, line: 158, baseType: !31, size: 8, offset: 432)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !23, file: !24, line: 377, baseType: !438, size: 576)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !24, line: 122, size: 576, elements: !439)
!439 = !{!440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !438, file: !24, line: 123, baseType: !22, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !438, file: !24, line: 123, baseType: !31, size: 8, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !438, file: !24, line: 123, baseType: !31, size: 8, offset: 72)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !438, file: !24, line: 123, baseType: !13, size: 16, offset: 80)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !438, file: !24, line: 123, baseType: !31, size: 8, offset: 96)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !438, file: !24, line: 123, baseType: !31, size: 8, offset: 104)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !438, file: !24, line: 124, baseType: !13, size: 16, offset: 112)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !438, file: !24, line: 125, baseType: !123, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !438, file: !24, line: 126, baseType: !50, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !438, file: !24, line: 127, baseType: !424, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !438, file: !24, line: 128, baseType: !22, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !438, file: !24, line: 129, baseType: !22, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !438, file: !24, line: 130, baseType: !79, size: 64, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !438, file: !24, line: 131, baseType: !31, size: 8, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !23, file: !24, line: 378, baseType: !455, size: 512)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !24, line: 134, size: 512, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !468, !469}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !455, file: !24, line: 135, baseType: !22, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !455, file: !24, line: 135, baseType: !31, size: 8, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !455, file: !24, line: 135, baseType: !31, size: 8, offset: 72)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !455, file: !24, line: 135, baseType: !13, size: 16, offset: 80)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !24, line: 135, baseType: !31, size: 8, offset: 96)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !455, file: !24, line: 135, baseType: !31, size: 8, offset: 104)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !455, file: !24, line: 136, baseType: !79, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !455, file: !24, line: 137, baseType: !22, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !455, file: !24, line: 138, baseType: !22, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !455, file: !24, line: 139, baseType: !467, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !19, line: 129, baseType: !50)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !455, file: !24, line: 140, baseType: !20, size: 32, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !455, file: !24, line: 141, baseType: !123, size: 64, offset: 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !23, file: !24, line: 379, baseType: !471, size: 320)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !24, line: 185, size: 320, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !482}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !471, file: !24, line: 186, baseType: !22, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !471, file: !24, line: 186, baseType: !31, size: 8, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !471, file: !24, line: 186, baseType: !31, size: 8, offset: 72)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !471, file: !24, line: 186, baseType: !13, size: 16, offset: 80)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !471, file: !24, line: 186, baseType: !31, size: 8, offset: 96)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !471, file: !24, line: 186, baseType: !479, size: 128, offset: 128)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 2)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !471, file: !24, line: 186, baseType: !22, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !23, file: !24, line: 380, baseType: !484, size: 384)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !24, line: 188, size: 384, elements: !485)
!485 = !{!486, !487, !488, !489, !490, !491, !492, !493}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !484, file: !24, line: 189, baseType: !22, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !484, file: !24, line: 189, baseType: !31, size: 8, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !484, file: !24, line: 189, baseType: !31, size: 8, offset: 72)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !484, file: !24, line: 189, baseType: !13, size: 16, offset: 80)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !484, file: !24, line: 189, baseType: !31, size: 8, offset: 96)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !484, file: !24, line: 190, baseType: !479, size: 128, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !484, file: !24, line: 190, baseType: !22, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !484, file: !24, line: 190, baseType: !494, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !496)
!496 = !{!497, !498, !499, !500, !508, !523, !555, !556, !557, !558, !559, !560}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !495, file: !6, line: 481, baseType: !79, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !495, file: !6, line: 482, baseType: !494, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !495, file: !6, line: 483, baseType: !494, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !495, file: !6, line: 484, baseType: !501, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !503)
!503 = !{!504, !505, !506, !507}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !502, file: !6, line: 498, baseType: !501, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !502, file: !6, line: 499, baseType: !501, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !502, file: !6, line: 500, baseType: !494, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !502, file: !6, line: 501, baseType: !20, size: 32, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !495, file: !6, line: 485, baseType: !509, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !511)
!511 = !{!512, !517, !518, !519, !520, !521, !522}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !510, file: !6, line: 467, baseType: !513, size: 128)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !513, file: !6, line: 460, baseType: !31, size: 8)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !513, file: !6, line: 461, baseType: !50, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !510, file: !6, line: 468, baseType: !513, size: 128, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !510, file: !6, line: 469, baseType: !13, size: 16, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !510, file: !6, line: 470, baseType: !31, size: 8, offset: 272)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !510, file: !6, line: 471, baseType: !31, size: 8, offset: 280)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !510, file: !6, line: 472, baseType: !31, size: 8, offset: 288)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !510, file: !6, line: 473, baseType: !31, size: 8, offset: 296)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !495, file: !6, line: 486, baseType: !524, size: 64, offset: 320)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !526)
!526 = !{!527, !550, !551, !552, !553, !554}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !525, file: !6, line: 449, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !529)
!529 = !{!530, !531, !544}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !528, file: !6, line: 439, baseType: !79, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !528, file: !6, line: 440, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !534)
!534 = !{!535, !540, !541, !542, !543}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !533, file: !6, line: 420, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !19, line: 1058, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!20, !375, !20, !123}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !533, file: !6, line: 421, baseType: !123, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !533, file: !6, line: 422, baseType: !79, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !533, file: !6, line: 423, baseType: !31, size: 8, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !533, file: !6, line: 424, baseType: !31, size: 8, offset: 200)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !528, file: !6, line: 441, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !547)
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !546, file: !6, line: 430, baseType: !79, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !546, file: !6, line: 431, baseType: !545, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !525, file: !6, line: 450, baseType: !509, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !525, file: !6, line: 451, baseType: !31, size: 8, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !525, file: !6, line: 452, baseType: !31, size: 8, offset: 136)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !525, file: !6, line: 453, baseType: !31, size: 8, offset: 144)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !525, file: !6, line: 454, baseType: !31, size: 8, offset: 152)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !495, file: !6, line: 487, baseType: !50, size: 64, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !495, file: !6, line: 488, baseType: !20, size: 32, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !495, file: !6, line: 489, baseType: !13, size: 16, offset: 480)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !495, file: !6, line: 490, baseType: !13, size: 16, offset: 496)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !495, file: !6, line: 491, baseType: !31, size: 8, offset: 512)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !495, file: !6, line: 492, baseType: !31, size: 8, offset: 520)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !23, file: !24, line: 381, baseType: !562, size: 384)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !24, line: 193, size: 384, elements: !563)
!563 = !{!564, !565, !566, !567, !568, !569, !570, !571, !572}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !562, file: !24, line: 194, baseType: !22, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !562, file: !24, line: 194, baseType: !31, size: 8, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !562, file: !24, line: 194, baseType: !31, size: 8, offset: 72)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !562, file: !24, line: 194, baseType: !13, size: 16, offset: 80)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !562, file: !24, line: 194, baseType: !31, size: 8, offset: 96)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !562, file: !24, line: 194, baseType: !479, size: 128, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !562, file: !24, line: 194, baseType: !22, size: 64, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !562, file: !24, line: 194, baseType: !20, size: 32, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !562, file: !24, line: 195, baseType: !20, size: 32, offset: 352)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !23, file: !24, line: 382, baseType: !574, size: 384)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !24, line: 198, size: 384, elements: !575)
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583, !584, !585}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !574, file: !24, line: 199, baseType: !22, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !574, file: !24, line: 199, baseType: !31, size: 8, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !574, file: !24, line: 199, baseType: !31, size: 8, offset: 72)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !574, file: !24, line: 199, baseType: !13, size: 16, offset: 80)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !574, file: !24, line: 199, baseType: !31, size: 8, offset: 96)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !574, file: !24, line: 201, baseType: !31, size: 8, offset: 104)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !574, file: !24, line: 202, baseType: !31, size: 8, offset: 112)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !574, file: !24, line: 203, baseType: !479, size: 128, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !574, file: !24, line: 203, baseType: !22, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !574, file: !24, line: 203, baseType: !586, size: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !19, line: 128, baseType: !50)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !23, file: !24, line: 383, baseType: !588, size: 320)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !24, line: 206, size: 320, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !588, file: !24, line: 207, baseType: !22, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !588, file: !24, line: 207, baseType: !31, size: 8, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !588, file: !24, line: 207, baseType: !31, size: 8, offset: 72)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !588, file: !24, line: 207, baseType: !13, size: 16, offset: 80)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !588, file: !24, line: 207, baseType: !31, size: 8, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !588, file: !24, line: 207, baseType: !479, size: 128, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !588, file: !24, line: 207, baseType: !22, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !23, file: !24, line: 384, baseType: !598, size: 384)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !24, line: 234, size: 384, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !598, file: !24, line: 235, baseType: !22, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !598, file: !24, line: 235, baseType: !31, size: 8, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !598, file: !24, line: 235, baseType: !31, size: 8, offset: 72)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !598, file: !24, line: 235, baseType: !13, size: 16, offset: 80)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !598, file: !24, line: 235, baseType: !31, size: 8, offset: 96)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !598, file: !24, line: 235, baseType: !31, size: 8, offset: 104)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !598, file: !24, line: 235, baseType: !31, size: 8, offset: 112)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !598, file: !24, line: 235, baseType: !31, size: 8, offset: 120)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !598, file: !24, line: 235, baseType: !79, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !598, file: !24, line: 235, baseType: !20, size: 32, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !598, file: !24, line: 235, baseType: !20, size: 32, offset: 224)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !598, file: !24, line: 235, baseType: !20, size: 32, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !598, file: !24, line: 235, baseType: !31, size: 8, offset: 288)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !598, file: !24, line: 235, baseType: !31, size: 8, offset: 296)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !598, file: !24, line: 235, baseType: !22, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !23, file: !24, line: 385, baseType: !616, size: 576)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !24, line: 238, size: 576, elements: !617)
!617 = !{!618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !616, file: !24, line: 239, baseType: !22, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !616, file: !24, line: 239, baseType: !31, size: 8, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !616, file: !24, line: 239, baseType: !31, size: 8, offset: 72)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !616, file: !24, line: 239, baseType: !13, size: 16, offset: 80)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !616, file: !24, line: 239, baseType: !31, size: 8, offset: 96)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !616, file: !24, line: 239, baseType: !31, size: 8, offset: 104)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !616, file: !24, line: 239, baseType: !31, size: 8, offset: 112)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !616, file: !24, line: 239, baseType: !31, size: 8, offset: 120)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !616, file: !24, line: 239, baseType: !79, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !616, file: !24, line: 239, baseType: !20, size: 32, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !616, file: !24, line: 239, baseType: !20, size: 32, offset: 224)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !616, file: !24, line: 239, baseType: !20, size: 32, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !616, file: !24, line: 239, baseType: !31, size: 8, offset: 288)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !616, file: !24, line: 239, baseType: !31, size: 8, offset: 296)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !616, file: !24, line: 239, baseType: !13, size: 16, offset: 304)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !616, file: !24, line: 240, baseType: !22, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !616, file: !24, line: 241, baseType: !74, size: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !616, file: !24, line: 242, baseType: !13, size: 16, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !616, file: !24, line: 243, baseType: !74, size: 64, offset: 512)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !23, file: !24, line: 386, baseType: !638, size: 384)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !24, line: 263, size: 384, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !638, file: !24, line: 264, baseType: !22, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !638, file: !24, line: 264, baseType: !31, size: 8, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !24, line: 264, baseType: !31, size: 8, offset: 72)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !638, file: !24, line: 264, baseType: !13, size: 16, offset: 80)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !24, line: 264, baseType: !31, size: 8, offset: 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !638, file: !24, line: 264, baseType: !31, size: 8, offset: 104)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !638, file: !24, line: 264, baseType: !31, size: 8, offset: 112)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !638, file: !24, line: 264, baseType: !31, size: 8, offset: 120)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !638, file: !24, line: 264, baseType: !79, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !638, file: !24, line: 264, baseType: !20, size: 32, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !638, file: !24, line: 264, baseType: !20, size: 32, offset: 224)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !638, file: !24, line: 264, baseType: !20, size: 32, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !638, file: !24, line: 264, baseType: !31, size: 8, offset: 288)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !638, file: !24, line: 264, baseType: !31, size: 8, offset: 296)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !638, file: !24, line: 264, baseType: !31, size: 8, offset: 304)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !638, file: !24, line: 265, baseType: !22, size: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !23, file: !24, line: 387, baseType: !657, size: 448)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !24, line: 246, size: 448, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !657, file: !24, line: 247, baseType: !22, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !657, file: !24, line: 247, baseType: !31, size: 8, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !657, file: !24, line: 247, baseType: !31, size: 8, offset: 72)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !657, file: !24, line: 247, baseType: !13, size: 16, offset: 80)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !24, line: 247, baseType: !31, size: 8, offset: 96)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !657, file: !24, line: 247, baseType: !31, size: 8, offset: 104)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !657, file: !24, line: 247, baseType: !31, size: 8, offset: 112)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !657, file: !24, line: 247, baseType: !31, size: 8, offset: 120)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !657, file: !24, line: 247, baseType: !79, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !657, file: !24, line: 247, baseType: !20, size: 32, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !657, file: !24, line: 247, baseType: !20, size: 32, offset: 224)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !657, file: !24, line: 247, baseType: !20, size: 32, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !657, file: !24, line: 247, baseType: !31, size: 8, offset: 288)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !657, file: !24, line: 247, baseType: !31, size: 8, offset: 296)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !657, file: !24, line: 247, baseType: !22, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !657, file: !24, line: 248, baseType: !22, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !23, file: !24, line: 388, baseType: !676, size: 448)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !24, line: 251, size: 448, elements: !677)
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !676, file: !24, line: 252, baseType: !22, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !676, file: !24, line: 252, baseType: !31, size: 8, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !676, file: !24, line: 252, baseType: !31, size: 8, offset: 72)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !676, file: !24, line: 252, baseType: !13, size: 16, offset: 80)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !24, line: 252, baseType: !31, size: 8, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !676, file: !24, line: 252, baseType: !31, size: 8, offset: 104)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !676, file: !24, line: 252, baseType: !31, size: 8, offset: 112)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !676, file: !24, line: 252, baseType: !31, size: 8, offset: 120)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !676, file: !24, line: 252, baseType: !79, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !676, file: !24, line: 252, baseType: !20, size: 32, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !676, file: !24, line: 252, baseType: !20, size: 32, offset: 224)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !676, file: !24, line: 252, baseType: !20, size: 32, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !676, file: !24, line: 252, baseType: !31, size: 8, offset: 288)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !676, file: !24, line: 252, baseType: !31, size: 8, offset: 296)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !676, file: !24, line: 257, baseType: !22, size: 64, offset: 320)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !676, file: !24, line: 258, baseType: !22, size: 64, offset: 384)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !23, file: !24, line: 389, baseType: !695, size: 512)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !24, line: 274, size: 512, elements: !696)
!696 = !{!697, !698, !699, !700, !701, !702, !703, !704, !705, !706}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !695, file: !24, line: 275, baseType: !22, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !695, file: !24, line: 275, baseType: !31, size: 8, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !695, file: !24, line: 275, baseType: !31, size: 8, offset: 72)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !695, file: !24, line: 275, baseType: !13, size: 16, offset: 80)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !695, file: !24, line: 275, baseType: !31, size: 8, offset: 96)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !695, file: !24, line: 275, baseType: !79, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !695, file: !24, line: 276, baseType: !20, size: 32, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !695, file: !24, line: 277, baseType: !371, size: 64, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !695, file: !24, line: 278, baseType: !123, size: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !695, file: !24, line: 279, baseType: !479, size: 128, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !23, file: !24, line: 390, baseType: !708, size: 576)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !24, line: 282, size: 576, elements: !709)
!709 = !{!710, !711, !712, !713, !714, !715, !716, !717, !723, !724, !725, !726, !732, !733}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !708, file: !24, line: 283, baseType: !22, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !708, file: !24, line: 283, baseType: !31, size: 8, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !708, file: !24, line: 283, baseType: !31, size: 8, offset: 72)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !708, file: !24, line: 283, baseType: !13, size: 16, offset: 80)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !708, file: !24, line: 283, baseType: !31, size: 8, offset: 96)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !708, file: !24, line: 283, baseType: !31, size: 8, offset: 104)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !708, file: !24, line: 284, baseType: !31, size: 8, offset: 112)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !708, file: !24, line: 285, baseType: !718, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !19, line: 1093, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!18, !20, !467, !20, !722, !123, !123}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !708, file: !24, line: 286, baseType: !79, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !708, file: !24, line: 287, baseType: !123, size: 64, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !708, file: !24, line: 288, baseType: !123, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !708, file: !24, line: 289, baseType: !727, size: 64, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !19, line: 1126, baseType: !728)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!18, !375, !20, !123, !731}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !708, file: !24, line: 290, baseType: !22, size: 64, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !708, file: !24, line: 291, baseType: !22, size: 64, offset: 512)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !23, file: !24, line: 391, baseType: !735, size: 512)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !24, line: 309, size: 512, elements: !736)
!736 = !{!737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !735, file: !24, line: 310, baseType: !22, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !735, file: !24, line: 310, baseType: !31, size: 8, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !735, file: !24, line: 310, baseType: !31, size: 8, offset: 72)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !735, file: !24, line: 310, baseType: !13, size: 16, offset: 80)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !735, file: !24, line: 310, baseType: !31, size: 8, offset: 96)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !735, file: !24, line: 310, baseType: !31, size: 8, offset: 104)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !735, file: !24, line: 311, baseType: !31, size: 8, offset: 112)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !735, file: !24, line: 312, baseType: !31, size: 8, offset: 120)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !735, file: !24, line: 313, baseType: !123, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !735, file: !24, line: 314, baseType: !79, size: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !735, file: !24, line: 315, baseType: !110, size: 64, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !735, file: !24, line: 316, baseType: !74, size: 64, offset: 320)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !735, file: !24, line: 317, baseType: !74, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !735, file: !24, line: 318, baseType: !20, size: 32, offset: 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !23, file: !24, line: 392, baseType: !752, size: 448)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !24, line: 342, size: 448, elements: !753)
!753 = !{!754, !755, !756, !757, !758, !759, !760, !761, !762, !763}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !752, file: !24, line: 343, baseType: !22, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !752, file: !24, line: 343, baseType: !31, size: 8, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !752, file: !24, line: 343, baseType: !31, size: 8, offset: 72)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !752, file: !24, line: 343, baseType: !13, size: 16, offset: 80)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !752, file: !24, line: 343, baseType: !31, size: 8, offset: 96)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !752, file: !24, line: 343, baseType: !79, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !752, file: !24, line: 344, baseType: !79, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !752, file: !24, line: 345, baseType: !123, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !752, file: !24, line: 346, baseType: !74, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !752, file: !24, line: 347, baseType: !20, size: 32, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !23, file: !24, line: 393, baseType: !765, size: 256)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !24, line: 352, size: 256, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !772, !777}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !765, file: !24, line: 353, baseType: !22, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !765, file: !24, line: 353, baseType: !31, size: 8, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !765, file: !24, line: 353, baseType: !31, size: 8, offset: 72)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !765, file: !24, line: 353, baseType: !13, size: 16, offset: 80)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !765, file: !24, line: 353, baseType: !31, size: 8, offset: 96)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !765, file: !24, line: 353, baseType: !773, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !19, line: 1064, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !375, !123}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !765, file: !24, line: 354, baseType: !123, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !23, file: !24, line: 394, baseType: !779, size: 192)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !24, line: 359, size: 192, elements: !780)
!780 = !{!781, !782, !783, !784, !785, !786}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !779, file: !24, line: 360, baseType: !22, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !779, file: !24, line: 360, baseType: !31, size: 8, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !779, file: !24, line: 360, baseType: !31, size: 8, offset: 72)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !779, file: !24, line: 360, baseType: !13, size: 16, offset: 80)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !779, file: !24, line: 360, baseType: !31, size: 8, offset: 96)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !779, file: !24, line: 360, baseType: !22, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !23, file: !24, line: 401, baseType: !80, size: 384)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !789, line: 42, baseType: !790)
!789 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!790 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!792 = !{!793, !796, !801, !806, !0}
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(scope: null, file: !3, line: 143, type: !795, isLocal: true, isDefinition: true)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 64, elements: !353)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(scope: null, file: !3, line: 184, type: !798, isLocal: true, isDefinition: true)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 224, elements: !799)
!799 = !{!800}
!800 = !DISubrange(count: 28)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(scope: null, file: !3, line: 609, type: !803, isLocal: true, isDefinition: true)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 192, elements: !804)
!804 = !{!805}
!805 = !DISubrange(count: 24)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(scope: null, file: !3, line: 725, type: !808, isLocal: true, isDefinition: true)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 176, elements: !809)
!809 = !{!810}
!810 = !DISubrange(count: 22)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !812, size: 64, elements: !353)
!812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!813 = !{i32 7, !"Dwarf Version", i32 5}
!814 = !{i32 2, !"Debug Info Version", i32 3}
!815 = !{i32 1, !"wchar_size", i32 2}
!816 = !{i32 8, !"cf-protection-branch", i32 1}
!817 = !{i32 4, !"function_return_thunk_extern", i32 1}
!818 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!819 = !{i32 1, !"Code Model", i32 2}
!820 = !{i32 1, !"override-stack-alignment", i32 8}
!821 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!822 = distinct !DISubprogram(name: "acpi_ds_clear_implicit_return", scope: !3, file: !3, line: 34, type: !823, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !825)
!823 = !DISubroutineType(types: !824)
!824 = !{null, !146}
!825 = !{!826}
!826 = !DILocalVariable(name: "walk_state", arg: 1, scope: !822, file: !3, line: 34, type: !146)
!827 = !DILocation(line: 34, column: 60, scope: !822)
!828 = !DILocation(line: 41, column: 7, scope: !829)
!829 = distinct !DILexicalBlock(scope: !822, file: !3, line: 41, column: 6)
!830 = !DILocation(line: 41, column: 6, scope: !822)
!831 = !DILocation(line: 42, column: 3, scope: !832)
!832 = distinct !DILexicalBlock(scope: !829, file: !3, line: 41, column: 42)
!833 = !DILocation(line: 45, column: 6, scope: !834)
!834 = distinct !DILexicalBlock(scope: !822, file: !3, line: 45, column: 6)
!835 = !DILocation(line: 45, column: 18, scope: !834)
!836 = !DILocation(line: 45, column: 6, scope: !822)
!837 = !DILocation(line: 55, column: 28, scope: !838)
!838 = distinct !DILexicalBlock(scope: !834, file: !3, line: 45, column: 39)
!839 = !DILocation(line: 55, column: 40, scope: !838)
!840 = !DILocation(line: 55, column: 3, scope: !838)
!841 = !DILocation(line: 56, column: 3, scope: !838)
!842 = !DILocation(line: 56, column: 15, scope: !838)
!843 = !DILocation(line: 56, column: 35, scope: !838)
!844 = !DILocation(line: 57, column: 2, scope: !838)
!845 = !DILocation(line: 58, column: 1, scope: !822)
!846 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !847, file: !847, line: 369, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!847 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!848 = !DISubroutineType(types: !849)
!849 = !{null, !22}
!850 = distinct !DISubprogram(name: "acpi_ds_do_implicit_return", scope: !3, file: !3, line: 79, type: !851, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !853)
!851 = !DISubroutineType(types: !852)
!852 = !{!31, !22, !146, !31}
!853 = !{!854, !855, !856}
!854 = !DILocalVariable(name: "return_desc", arg: 1, scope: !850, file: !3, line: 79, type: !22)
!855 = !DILocalVariable(name: "walk_state", arg: 2, scope: !850, file: !3, line: 80, type: !146)
!856 = !DILocalVariable(name: "add_reference", arg: 3, scope: !850, file: !3, line: 80, type: !31)
!857 = !DILocation(line: 79, column: 55, scope: !850)
!858 = !DILocation(line: 80, column: 31, scope: !850)
!859 = !DILocation(line: 80, column: 46, scope: !850)
!860 = !DILocation(line: 88, column: 8, scope: !861)
!861 = distinct !DILexicalBlock(scope: !850, file: !3, line: 88, column: 6)
!862 = !DILocation(line: 88, column: 43, scope: !861)
!863 = !DILocation(line: 88, column: 48, scope: !861)
!864 = !DILocation(line: 88, column: 6, scope: !850)
!865 = !DILocation(line: 89, column: 3, scope: !866)
!866 = distinct !DILexicalBlock(scope: !861, file: !3, line: 88, column: 62)
!867 = !DILocation(line: 102, column: 6, scope: !868)
!868 = distinct !DILexicalBlock(scope: !850, file: !3, line: 102, column: 6)
!869 = !DILocation(line: 102, column: 18, scope: !868)
!870 = !DILocation(line: 102, column: 6, scope: !850)
!871 = !DILocation(line: 103, column: 7, scope: !872)
!872 = distinct !DILexicalBlock(scope: !873, file: !3, line: 103, column: 7)
!873 = distinct !DILexicalBlock(scope: !868, file: !3, line: 102, column: 39)
!874 = !DILocation(line: 103, column: 19, scope: !872)
!875 = !DILocation(line: 103, column: 42, scope: !872)
!876 = !DILocation(line: 103, column: 39, scope: !872)
!877 = !DILocation(line: 103, column: 7, scope: !873)
!878 = !DILocation(line: 104, column: 4, scope: !879)
!879 = distinct !DILexicalBlock(scope: !872, file: !3, line: 103, column: 55)
!880 = !DILocation(line: 106, column: 33, scope: !873)
!881 = !DILocation(line: 106, column: 3, scope: !873)
!882 = !DILocation(line: 107, column: 2, scope: !873)
!883 = !DILocation(line: 111, column: 36, scope: !850)
!884 = !DILocation(line: 111, column: 2, scope: !850)
!885 = !DILocation(line: 111, column: 14, scope: !850)
!886 = !DILocation(line: 111, column: 34, scope: !850)
!887 = !DILocation(line: 112, column: 6, scope: !888)
!888 = distinct !DILexicalBlock(scope: !850, file: !3, line: 112, column: 6)
!889 = !DILocation(line: 112, column: 6, scope: !850)
!890 = !DILocation(line: 113, column: 25, scope: !891)
!891 = distinct !DILexicalBlock(scope: !888, file: !3, line: 112, column: 21)
!892 = !DILocation(line: 113, column: 3, scope: !891)
!893 = !DILocation(line: 114, column: 2, scope: !891)
!894 = !DILocation(line: 116, column: 2, scope: !850)
!895 = !DILocation(line: 117, column: 1, scope: !850)
!896 = !DISubprogram(name: "acpi_ut_add_reference", scope: !847, file: !847, line: 367, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!897 = distinct !DISubprogram(name: "acpi_ds_is_result_used", scope: !3, file: !3, line: 133, type: !898, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !900)
!898 = !DISubroutineType(types: !899)
!899 = !{!31, !180, !146}
!900 = !{!901, !902, !903, !904, !905}
!901 = !DILocalVariable(name: "op", arg: 1, scope: !897, file: !3, line: 133, type: !180)
!902 = !DILocalVariable(name: "walk_state", arg: 2, scope: !897, file: !3, line: 134, type: !146)
!903 = !DILocalVariable(name: "parent_info", scope: !897, file: !3, line: 136, type: !406)
!904 = !DILabel(scope: !897, name: "result_used", file: !3, line: 265)
!905 = !DILabel(scope: !897, name: "result_not_used", file: !3, line: 274)
!906 = !DILocation(line: 133, column: 50, scope: !897)
!907 = !DILocation(line: 134, column: 35, scope: !897)
!908 = !DILocation(line: 136, column: 2, scope: !897)
!909 = !DILocation(line: 136, column: 33, scope: !897)
!910 = !DILocation(line: 142, column: 7, scope: !911)
!911 = distinct !DILexicalBlock(scope: !897, file: !3, line: 142, column: 6)
!912 = !DILocation(line: 142, column: 6, scope: !897)
!913 = !DILocation(line: 143, column: 3, scope: !914)
!914 = distinct !DILexicalBlock(scope: !911, file: !3, line: 142, column: 11)
!915 = !DILocation(line: 144, column: 3, scope: !914)
!916 = !DILocation(line: 156, column: 35, scope: !897)
!917 = !DILocation(line: 156, column: 47, scope: !897)
!918 = !DILocation(line: 156, column: 59, scope: !897)
!919 = !DILocation(line: 156, column: 8, scope: !897)
!920 = !DILocation(line: 167, column: 8, scope: !921)
!921 = distinct !DILexicalBlock(scope: !897, file: !3, line: 167, column: 6)
!922 = !DILocation(line: 167, column: 19, scope: !921)
!923 = !DILocation(line: 167, column: 27, scope: !921)
!924 = !DILocation(line: 168, column: 7, scope: !921)
!925 = !DILocation(line: 168, column: 18, scope: !921)
!926 = !DILocation(line: 168, column: 33, scope: !921)
!927 = !DILocation(line: 168, column: 44, scope: !921)
!928 = !DILocation(line: 167, column: 6, scope: !897)
!929 = !DILocation(line: 176, column: 3, scope: !930)
!930 = distinct !DILexicalBlock(scope: !921, file: !3, line: 168, column: 62)
!931 = !DILocation(line: 182, column: 30, scope: !897)
!932 = !DILocation(line: 182, column: 41, scope: !897)
!933 = !DILocation(line: 182, column: 56, scope: !897)
!934 = !DILocation(line: 182, column: 6, scope: !897)
!935 = !DILocation(line: 181, column: 14, scope: !897)
!936 = !DILocation(line: 183, column: 6, scope: !937)
!937 = distinct !DILexicalBlock(scope: !897, file: !3, line: 183, column: 6)
!938 = !DILocation(line: 183, column: 19, scope: !937)
!939 = !DILocation(line: 183, column: 25, scope: !937)
!940 = !DILocation(line: 183, column: 6, scope: !897)
!941 = !DILocation(line: 184, column: 3, scope: !942)
!942 = distinct !DILexicalBlock(scope: !937, file: !3, line: 183, column: 47)
!943 = !DILocation(line: 185, column: 3, scope: !942)
!944 = !DILocation(line: 194, column: 10, scope: !897)
!945 = !DILocation(line: 194, column: 23, scope: !897)
!946 = !DILocation(line: 194, column: 2, scope: !897)
!947 = !DILocation(line: 197, column: 11, scope: !948)
!948 = distinct !DILexicalBlock(scope: !897, file: !3, line: 194, column: 30)
!949 = !DILocation(line: 197, column: 22, scope: !948)
!950 = !DILocation(line: 197, column: 37, scope: !948)
!951 = !DILocation(line: 197, column: 3, scope: !948)
!952 = !DILocation(line: 202, column: 4, scope: !953)
!953 = distinct !DILexicalBlock(scope: !948, file: !3, line: 197, column: 49)
!954 = !DILocation(line: 210, column: 9, scope: !955)
!955 = distinct !DILexicalBlock(scope: !953, file: !3, line: 210, column: 8)
!956 = !DILocation(line: 210, column: 21, scope: !955)
!957 = !DILocation(line: 210, column: 43, scope: !955)
!958 = !DILocation(line: 210, column: 49, scope: !955)
!959 = !DILocation(line: 211, column: 43, scope: !955)
!960 = !DILocation(line: 212, column: 9, scope: !955)
!961 = !DILocation(line: 212, column: 21, scope: !955)
!962 = !DILocation(line: 212, column: 44, scope: !955)
!963 = !DILocation(line: 213, column: 9, scope: !955)
!964 = !DILocation(line: 212, column: 57, scope: !955)
!965 = !DILocation(line: 210, column: 8, scope: !953)
!966 = !DILocation(line: 214, column: 5, scope: !967)
!967 = distinct !DILexicalBlock(scope: !955, file: !3, line: 213, column: 14)
!968 = !DILocation(line: 216, column: 4, scope: !953)
!969 = !DILocation(line: 222, column: 4, scope: !953)
!970 = !DILocation(line: 227, column: 3, scope: !948)
!971 = !DILocation(line: 234, column: 3, scope: !948)
!972 = !DILocation(line: 238, column: 8, scope: !973)
!973 = distinct !DILexicalBlock(scope: !948, file: !3, line: 238, column: 7)
!974 = !DILocation(line: 238, column: 19, scope: !973)
!975 = !DILocation(line: 238, column: 34, scope: !973)
!976 = !DILocation(line: 238, column: 45, scope: !973)
!977 = !DILocation(line: 238, column: 63, scope: !973)
!978 = !DILocation(line: 239, column: 8, scope: !973)
!979 = !DILocation(line: 239, column: 19, scope: !973)
!980 = !DILocation(line: 239, column: 34, scope: !973)
!981 = !DILocation(line: 239, column: 45, scope: !973)
!982 = !DILocation(line: 240, column: 7, scope: !973)
!983 = !DILocation(line: 240, column: 11, scope: !973)
!984 = !DILocation(line: 240, column: 22, scope: !973)
!985 = !DILocation(line: 240, column: 37, scope: !973)
!986 = !DILocation(line: 240, column: 48, scope: !973)
!987 = !DILocation(line: 241, column: 7, scope: !973)
!988 = !DILocation(line: 241, column: 11, scope: !973)
!989 = !DILocation(line: 241, column: 22, scope: !973)
!990 = !DILocation(line: 241, column: 37, scope: !973)
!991 = !DILocation(line: 241, column: 48, scope: !973)
!992 = !DILocation(line: 242, column: 7, scope: !973)
!993 = !DILocation(line: 242, column: 11, scope: !973)
!994 = !DILocation(line: 242, column: 22, scope: !973)
!995 = !DILocation(line: 242, column: 37, scope: !973)
!996 = !DILocation(line: 242, column: 48, scope: !973)
!997 = !DILocation(line: 244, column: 7, scope: !973)
!998 = !DILocation(line: 244, column: 11, scope: !973)
!999 = !DILocation(line: 244, column: 22, scope: !973)
!1000 = !DILocation(line: 244, column: 37, scope: !973)
!1001 = !DILocation(line: 244, column: 48, scope: !973)
!1002 = !DILocation(line: 246, column: 7, scope: !973)
!1003 = !DILocation(line: 246, column: 11, scope: !973)
!1004 = !DILocation(line: 246, column: 22, scope: !973)
!1005 = !DILocation(line: 246, column: 37, scope: !973)
!1006 = !DILocation(line: 246, column: 48, scope: !973)
!1007 = !DILocation(line: 238, column: 7, scope: !948)
!1008 = !DILocation(line: 252, column: 4, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !973, file: !3, line: 247, column: 24)
!1010 = !DILocation(line: 255, column: 3, scope: !948)
!1011 = !DILocation(line: 262, column: 3, scope: !948)
!1012 = !DILocation(line: 265, column: 1, scope: !897)
!1013 = !DILocation(line: 272, column: 2, scope: !897)
!1014 = !DILocation(line: 274, column: 1, scope: !897)
!1015 = !DILocation(line: 281, column: 2, scope: !897)
!1016 = !DILocation(line: 282, column: 1, scope: !897)
!1017 = !DISubprogram(name: "acpi_error", scope: !1018, file: !1018, line: 901, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1018 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null, !1021, !20, !1021, null}
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!1022 = !DISubprogram(name: "acpi_ps_get_opcode_info", scope: !1023, file: !1023, line: 108, type: !1024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1023 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!406, !13}
!1026 = distinct !DISubprogram(name: "acpi_ds_delete_result_if_not_used", scope: !3, file: !3, line: 302, type: !1027, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1029)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !180, !22, !146}
!1029 = !{!1030, !1031, !1032, !1033, !1034}
!1030 = !DILocalVariable(name: "op", arg: 1, scope: !1026, file: !3, line: 302, type: !180)
!1031 = !DILocalVariable(name: "result_obj", arg: 2, scope: !1026, file: !3, line: 303, type: !22)
!1032 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1026, file: !3, line: 304, type: !146)
!1033 = !DILocalVariable(name: "obj_desc", scope: !1026, file: !3, line: 306, type: !22)
!1034 = !DILocalVariable(name: "status", scope: !1026, file: !3, line: 307, type: !18)
!1035 = !DILocation(line: 302, column: 60, scope: !1026)
!1036 = !DILocation(line: 303, column: 34, scope: !1026)
!1037 = !DILocation(line: 304, column: 31, scope: !1026)
!1038 = !DILocation(line: 306, column: 2, scope: !1026)
!1039 = !DILocation(line: 306, column: 29, scope: !1026)
!1040 = !DILocation(line: 307, column: 2, scope: !1026)
!1041 = !DILocation(line: 307, column: 14, scope: !1026)
!1042 = !DILocation(line: 311, column: 7, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 311, column: 6)
!1044 = !DILocation(line: 311, column: 6, scope: !1026)
!1045 = !DILocation(line: 312, column: 3, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 311, column: 11)
!1047 = !DILocation(line: 313, column: 3, scope: !1046)
!1048 = !DILocation(line: 316, column: 7, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 316, column: 6)
!1050 = !DILocation(line: 316, column: 6, scope: !1026)
!1051 = !DILocation(line: 317, column: 3, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 316, column: 19)
!1053 = !DILocation(line: 320, column: 30, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 320, column: 6)
!1055 = !DILocation(line: 320, column: 34, scope: !1054)
!1056 = !DILocation(line: 320, column: 7, scope: !1054)
!1057 = !DILocation(line: 320, column: 6, scope: !1026)
!1058 = !DILocation(line: 324, column: 42, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 320, column: 47)
!1060 = !DILocation(line: 324, column: 12, scope: !1059)
!1061 = !DILocation(line: 324, column: 10, scope: !1059)
!1062 = !DILocation(line: 325, column: 7, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 325, column: 7)
!1064 = !DILocation(line: 325, column: 7, scope: !1059)
!1065 = !DILocation(line: 326, column: 29, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 325, column: 29)
!1067 = !DILocation(line: 326, column: 4, scope: !1066)
!1068 = !DILocation(line: 327, column: 3, scope: !1066)
!1069 = !DILocation(line: 328, column: 2, scope: !1059)
!1070 = !DILocation(line: 330, column: 2, scope: !1026)
!1071 = !DILocation(line: 331, column: 1, scope: !1026)
!1072 = !DISubprogram(name: "acpi_ds_result_pop", scope: !1073, file: !1073, line: 329, type: !1074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1073 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!18, !110, !146}
!1076 = distinct !DISubprogram(name: "acpi_ds_resolve_operands", scope: !3, file: !3, line: 347, type: !144, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1077)
!1077 = !{!1078, !1079, !1080}
!1078 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1076, file: !3, line: 347, type: !146)
!1079 = !DILocalVariable(name: "i", scope: !1076, file: !3, line: 349, type: !20)
!1080 = !DILocalVariable(name: "status", scope: !1076, file: !3, line: 350, type: !18)
!1081 = !DILocation(line: 347, column: 62, scope: !1076)
!1082 = !DILocation(line: 349, column: 2, scope: !1076)
!1083 = !DILocation(line: 349, column: 6, scope: !1076)
!1084 = !DILocation(line: 350, column: 2, scope: !1076)
!1085 = !DILocation(line: 350, column: 14, scope: !1076)
!1086 = !DILocation(line: 359, column: 9, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 359, column: 2)
!1088 = !DILocation(line: 359, column: 7, scope: !1087)
!1089 = !DILocation(line: 359, column: 14, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 359, column: 2)
!1091 = !DILocation(line: 359, column: 18, scope: !1090)
!1092 = !DILocation(line: 359, column: 30, scope: !1090)
!1093 = !DILocation(line: 359, column: 16, scope: !1090)
!1094 = !DILocation(line: 359, column: 2, scope: !1087)
!1095 = !DILocation(line: 361, column: 33, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 359, column: 49)
!1097 = !DILocation(line: 361, column: 45, scope: !1096)
!1098 = !DILocation(line: 361, column: 54, scope: !1096)
!1099 = !DILocation(line: 362, column: 11, scope: !1096)
!1100 = !DILocation(line: 361, column: 7, scope: !1096)
!1101 = !DILocation(line: 360, column: 10, scope: !1096)
!1102 = !DILocation(line: 363, column: 7, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 363, column: 7)
!1104 = !DILocation(line: 363, column: 7, scope: !1096)
!1105 = !DILocation(line: 364, column: 4, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 363, column: 29)
!1107 = !DILocation(line: 366, column: 2, scope: !1096)
!1108 = !DILocation(line: 359, column: 45, scope: !1090)
!1109 = !DILocation(line: 359, column: 2, scope: !1090)
!1110 = distinct !{!1110, !1094, !1111, !1112, !1113}
!1111 = !DILocation(line: 366, column: 2, scope: !1087)
!1112 = !{!"llvm.loop.mustprogress"}
!1113 = !{!"llvm.loop.unroll.disable"}
!1114 = !DILocation(line: 368, column: 2, scope: !1076)
!1115 = !DILocation(line: 369, column: 1, scope: !1076)
!1116 = !DISubprogram(name: "acpi_ex_resolve_to_value", scope: !1117, file: !1117, line: 357, type: !1074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1117 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1118 = distinct !DISubprogram(name: "acpi_ds_clear_operands", scope: !3, file: !3, line: 383, type: !823, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1119)
!1119 = !{!1120, !1121}
!1120 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1118, file: !3, line: 383, type: !146)
!1121 = !DILocalVariable(name: "i", scope: !1118, file: !3, line: 385, type: !20)
!1122 = !DILocation(line: 383, column: 53, scope: !1118)
!1123 = !DILocation(line: 385, column: 2, scope: !1118)
!1124 = !DILocation(line: 385, column: 6, scope: !1118)
!1125 = !DILocation(line: 391, column: 9, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 391, column: 2)
!1127 = !DILocation(line: 391, column: 7, scope: !1126)
!1128 = !DILocation(line: 391, column: 14, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 391, column: 2)
!1130 = !DILocation(line: 391, column: 18, scope: !1129)
!1131 = !DILocation(line: 391, column: 30, scope: !1129)
!1132 = !DILocation(line: 391, column: 16, scope: !1129)
!1133 = !DILocation(line: 391, column: 2, scope: !1126)
!1134 = !DILocation(line: 396, column: 28, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 391, column: 49)
!1136 = !DILocation(line: 396, column: 40, scope: !1135)
!1137 = !DILocation(line: 396, column: 49, scope: !1135)
!1138 = !DILocation(line: 396, column: 3, scope: !1135)
!1139 = !DILocation(line: 397, column: 3, scope: !1135)
!1140 = !DILocation(line: 397, column: 15, scope: !1135)
!1141 = !DILocation(line: 397, column: 24, scope: !1135)
!1142 = !DILocation(line: 397, column: 27, scope: !1135)
!1143 = !DILocation(line: 398, column: 2, scope: !1135)
!1144 = !DILocation(line: 391, column: 45, scope: !1129)
!1145 = !DILocation(line: 391, column: 2, scope: !1129)
!1146 = distinct !{!1146, !1133, !1147, !1112, !1113}
!1147 = !DILocation(line: 398, column: 2, scope: !1126)
!1148 = !DILocation(line: 400, column: 2, scope: !1118)
!1149 = !DILocation(line: 400, column: 14, scope: !1118)
!1150 = !DILocation(line: 400, column: 27, scope: !1118)
!1151 = !DILocation(line: 402, column: 1, scope: !1118)
!1152 = distinct !DISubprogram(name: "acpi_ds_create_operand", scope: !3, file: !3, line: 422, type: !1153, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1155)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!18, !146, !180, !20}
!1155 = !{!1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1167}
!1156 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1152, file: !3, line: 422, type: !146)
!1157 = !DILocalVariable(name: "arg", arg: 2, scope: !1152, file: !3, line: 423, type: !180)
!1158 = !DILocalVariable(name: "arg_index", arg: 3, scope: !1152, file: !3, line: 423, type: !20)
!1159 = !DILocalVariable(name: "status", scope: !1152, file: !3, line: 425, type: !18)
!1160 = !DILocalVariable(name: "name_string", scope: !1152, file: !3, line: 426, type: !62)
!1161 = !DILocalVariable(name: "name_length", scope: !1152, file: !3, line: 427, type: !20)
!1162 = !DILocalVariable(name: "obj_desc", scope: !1152, file: !3, line: 428, type: !22)
!1163 = !DILocalVariable(name: "parent_op", scope: !1152, file: !3, line: 429, type: !180)
!1164 = !DILocalVariable(name: "opcode", scope: !1152, file: !3, line: 430, type: !13)
!1165 = !DILocalVariable(name: "interpreter_mode", scope: !1152, file: !3, line: 431, type: !1166)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_interpreter_mode", file: !6, line: 120, baseType: !5)
!1167 = !DILocalVariable(name: "op_info", scope: !1152, file: !3, line: 432, type: !406)
!1168 = !DILocation(line: 422, column: 48, scope: !1152)
!1169 = !DILocation(line: 423, column: 35, scope: !1152)
!1170 = !DILocation(line: 423, column: 44, scope: !1152)
!1171 = !DILocation(line: 425, column: 2, scope: !1152)
!1172 = !DILocation(line: 425, column: 14, scope: !1152)
!1173 = !DILocation(line: 426, column: 2, scope: !1152)
!1174 = !DILocation(line: 426, column: 8, scope: !1152)
!1175 = !DILocation(line: 427, column: 2, scope: !1152)
!1176 = !DILocation(line: 427, column: 6, scope: !1152)
!1177 = !DILocation(line: 428, column: 2, scope: !1152)
!1178 = !DILocation(line: 428, column: 29, scope: !1152)
!1179 = !DILocation(line: 429, column: 2, scope: !1152)
!1180 = !DILocation(line: 429, column: 27, scope: !1152)
!1181 = !DILocation(line: 430, column: 2, scope: !1152)
!1182 = !DILocation(line: 430, column: 6, scope: !1152)
!1183 = !DILocation(line: 431, column: 2, scope: !1152)
!1184 = !DILocation(line: 431, column: 24, scope: !1152)
!1185 = !DILocation(line: 432, column: 2, scope: !1152)
!1186 = !DILocation(line: 432, column: 33, scope: !1152)
!1187 = !DILocation(line: 438, column: 7, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 438, column: 6)
!1189 = !DILocation(line: 438, column: 19, scope: !1188)
!1190 = !DILocation(line: 438, column: 30, scope: !1188)
!1191 = !DILocation(line: 438, column: 54, scope: !1188)
!1192 = !DILocation(line: 439, column: 7, scope: !1188)
!1193 = !DILocation(line: 439, column: 19, scope: !1188)
!1194 = !DILocation(line: 439, column: 25, scope: !1188)
!1195 = !DILocation(line: 439, column: 6, scope: !1188)
!1196 = !DILocation(line: 439, column: 33, scope: !1188)
!1197 = !DILocation(line: 440, column: 8, scope: !1188)
!1198 = !DILocation(line: 440, column: 20, scope: !1188)
!1199 = !DILocation(line: 440, column: 26, scope: !1188)
!1200 = !DILocation(line: 438, column: 6, scope: !1152)
!1201 = !DILocation(line: 447, column: 8, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 440, column: 52)
!1203 = !DILocation(line: 447, column: 20, scope: !1202)
!1204 = !DILocation(line: 447, column: 26, scope: !1202)
!1205 = !DILocation(line: 446, column: 12, scope: !1202)
!1206 = !DILocation(line: 446, column: 10, scope: !1202)
!1207 = !DILocation(line: 450, column: 7, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 450, column: 7)
!1209 = !DILocation(line: 450, column: 7, scope: !1202)
!1210 = !DILocation(line: 451, column: 4, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 450, column: 29)
!1212 = !DILocation(line: 465, column: 8, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 465, column: 7)
!1214 = !DILocation(line: 465, column: 20, scope: !1213)
!1215 = !DILocation(line: 465, column: 7, scope: !1213)
!1216 = !DILocation(line: 465, column: 35, scope: !1213)
!1217 = !DILocation(line: 466, column: 8, scope: !1213)
!1218 = !DILocation(line: 466, column: 20, scope: !1213)
!1219 = !DILocation(line: 466, column: 35, scope: !1213)
!1220 = !DILocation(line: 466, column: 40, scope: !1213)
!1221 = !DILocation(line: 467, column: 7, scope: !1213)
!1222 = !DILocation(line: 467, column: 11, scope: !1213)
!1223 = !DILocation(line: 468, column: 6, scope: !1213)
!1224 = !DILocation(line: 468, column: 18, scope: !1213)
!1225 = !DILocation(line: 468, column: 25, scope: !1213)
!1226 = !DILocation(line: 468, column: 5, scope: !1213)
!1227 = !DILocation(line: 467, column: 21, scope: !1213)
!1228 = !DILocation(line: 465, column: 7, scope: !1202)
!1229 = !DILocation(line: 470, column: 8, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 468, column: 60)
!1231 = !DILocation(line: 469, column: 13, scope: !1230)
!1232 = !DILocation(line: 472, column: 11, scope: !1230)
!1233 = !DILocation(line: 473, column: 3, scope: !1230)
!1234 = !DILocation(line: 481, column: 16, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 473, column: 10)
!1236 = !DILocation(line: 481, column: 28, scope: !1235)
!1237 = !DILocation(line: 481, column: 14, scope: !1235)
!1238 = !DILocation(line: 483, column: 32, scope: !1235)
!1239 = !DILocation(line: 484, column: 11, scope: !1235)
!1240 = !DILocation(line: 483, column: 8, scope: !1235)
!1241 = !DILocation(line: 482, column: 12, scope: !1235)
!1242 = !DILocation(line: 486, column: 9, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 486, column: 8)
!1244 = !DILocation(line: 486, column: 18, scope: !1243)
!1245 = !DILocation(line: 486, column: 24, scope: !1243)
!1246 = !DILocation(line: 486, column: 38, scope: !1243)
!1247 = !DILocation(line: 487, column: 9, scope: !1243)
!1248 = !DILocation(line: 487, column: 27, scope: !1243)
!1249 = !DILocation(line: 487, column: 38, scope: !1243)
!1250 = !DILocation(line: 489, column: 8, scope: !1243)
!1251 = !DILocation(line: 489, column: 12, scope: !1243)
!1252 = !DILocation(line: 489, column: 30, scope: !1243)
!1253 = !DILocation(line: 489, column: 41, scope: !1243)
!1254 = !DILocation(line: 490, column: 8, scope: !1243)
!1255 = !DILocation(line: 490, column: 12, scope: !1243)
!1256 = !DILocation(line: 490, column: 30, scope: !1243)
!1257 = !DILocation(line: 490, column: 41, scope: !1243)
!1258 = !DILocation(line: 486, column: 8, scope: !1235)
!1259 = !DILocation(line: 495, column: 22, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 491, column: 27)
!1261 = !DILocation(line: 496, column: 4, scope: !1260)
!1262 = !DILocation(line: 499, column: 22, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 496, column: 11)
!1264 = !DILocation(line: 503, column: 23, scope: !1235)
!1265 = !DILocation(line: 503, column: 35, scope: !1235)
!1266 = !DILocation(line: 503, column: 47, scope: !1235)
!1267 = !DILocation(line: 504, column: 24, scope: !1235)
!1268 = !DILocation(line: 506, column: 34, scope: !1235)
!1269 = !DILocation(line: 507, column: 9, scope: !1235)
!1270 = !DILocation(line: 503, column: 8, scope: !1235)
!1271 = !DILocation(line: 502, column: 11, scope: !1235)
!1272 = !DILocation(line: 514, column: 8, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 514, column: 8)
!1274 = !DILocation(line: 514, column: 15, scope: !1273)
!1275 = !DILocation(line: 514, column: 8, scope: !1235)
!1276 = !DILocation(line: 515, column: 9, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 515, column: 9)
!1278 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 514, column: 32)
!1279 = !DILocation(line: 515, column: 27, scope: !1277)
!1280 = !DILocation(line: 515, column: 38, scope: !1277)
!1281 = !DILocation(line: 515, column: 9, scope: !1278)
!1282 = !DILocation(line: 524, column: 10, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 516, column: 36)
!1284 = !DILocation(line: 523, column: 15, scope: !1283)
!1285 = !DILocation(line: 527, column: 13, scope: !1283)
!1286 = !DILocation(line: 528, column: 5, scope: !1283)
!1287 = !DILocation(line: 528, column: 16, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 528, column: 16)
!1289 = !DILocation(line: 528, column: 34, scope: !1288)
!1290 = !DILocation(line: 528, column: 45, scope: !1288)
!1291 = !DILocation(line: 528, column: 16, scope: !1277)
!1292 = !DILocation(line: 537, column: 13, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 529, column: 26)
!1294 = !DILocation(line: 538, column: 5, scope: !1293)
!1295 = !DILocation(line: 543, column: 13, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 538, column: 12)
!1297 = !DILocation(line: 545, column: 4, scope: !1278)
!1298 = !DILocation(line: 547, column: 8, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 547, column: 8)
!1300 = !DILocation(line: 547, column: 8, scope: !1235)
!1301 = !DILocation(line: 548, column: 5, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 547, column: 30)
!1303 = !DILocation(line: 550, column: 4, scope: !1302)
!1304 = !DILocation(line: 555, column: 3, scope: !1202)
!1305 = !DILocation(line: 559, column: 7, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 559, column: 7)
!1307 = !DILocation(line: 559, column: 7, scope: !1202)
!1308 = !DILocation(line: 560, column: 4, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 559, column: 29)
!1310 = !DILocation(line: 565, column: 35, scope: !1202)
!1311 = !DILocation(line: 565, column: 45, scope: !1202)
!1312 = !DILocation(line: 565, column: 12, scope: !1202)
!1313 = !DILocation(line: 565, column: 10, scope: !1202)
!1314 = !DILocation(line: 566, column: 7, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 566, column: 7)
!1316 = !DILocation(line: 566, column: 7, scope: !1202)
!1317 = !DILocation(line: 567, column: 4, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 566, column: 29)
!1319 = !DILocation(line: 570, column: 35, scope: !1202)
!1320 = !DILocation(line: 570, column: 45, scope: !1202)
!1321 = !DILocation(line: 570, column: 3, scope: !1202)
!1322 = !DILocation(line: 571, column: 2, scope: !1202)
!1323 = !DILocation(line: 574, column: 8, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 574, column: 7)
!1325 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 571, column: 9)
!1326 = !DILocation(line: 574, column: 20, scope: !1324)
!1327 = !DILocation(line: 574, column: 31, scope: !1324)
!1328 = !DILocation(line: 574, column: 55, scope: !1324)
!1329 = !DILocation(line: 575, column: 9, scope: !1324)
!1330 = !DILocation(line: 575, column: 21, scope: !1324)
!1331 = !DILocation(line: 575, column: 27, scope: !1324)
!1332 = !DILocation(line: 574, column: 7, scope: !1325)
!1333 = !DILocation(line: 582, column: 11, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 575, column: 53)
!1335 = !DILocation(line: 586, column: 3, scope: !1334)
!1336 = !DILocation(line: 587, column: 13, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 586, column: 10)
!1338 = !DILocation(line: 587, column: 25, scope: !1337)
!1339 = !DILocation(line: 587, column: 11, scope: !1337)
!1340 = !DILocation(line: 592, column: 37, scope: !1325)
!1341 = !DILocation(line: 592, column: 13, scope: !1325)
!1342 = !DILocation(line: 592, column: 11, scope: !1325)
!1343 = !DILocation(line: 593, column: 7, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 593, column: 7)
!1345 = !DILocation(line: 593, column: 16, scope: !1344)
!1346 = !DILocation(line: 593, column: 28, scope: !1344)
!1347 = !DILocation(line: 593, column: 7, scope: !1325)
!1348 = !DILocation(line: 594, column: 4, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 593, column: 50)
!1350 = !DILocation(line: 597, column: 8, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 597, column: 7)
!1352 = !DILocation(line: 597, column: 17, scope: !1351)
!1353 = !DILocation(line: 597, column: 23, scope: !1351)
!1354 = !DILocation(line: 597, column: 41, scope: !1351)
!1355 = !DILocation(line: 598, column: 8, scope: !1351)
!1356 = !DILocation(line: 598, column: 20, scope: !1351)
!1357 = !DILocation(line: 598, column: 26, scope: !1351)
!1358 = !DILocation(line: 597, column: 7, scope: !1325)
!1359 = !DILocation(line: 603, column: 43, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 598, column: 52)
!1361 = !DILocation(line: 603, column: 13, scope: !1360)
!1362 = !DILocation(line: 603, column: 11, scope: !1360)
!1363 = !DILocation(line: 604, column: 8, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 604, column: 8)
!1365 = !DILocation(line: 604, column: 8, scope: !1360)
!1366 = !DILocation(line: 609, column: 5, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 604, column: 30)
!1368 = !DILocation(line: 611, column: 5, scope: !1367)
!1369 = !DILocation(line: 613, column: 3, scope: !1360)
!1370 = !DILocation(line: 617, column: 8, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 613, column: 10)
!1372 = !DILocation(line: 616, column: 13, scope: !1371)
!1373 = !DILocation(line: 619, column: 9, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 619, column: 8)
!1375 = !DILocation(line: 619, column: 8, scope: !1371)
!1376 = !DILocation(line: 620, column: 5, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 619, column: 19)
!1378 = !DILocation(line: 626, column: 36, scope: !1371)
!1379 = !DILocation(line: 626, column: 48, scope: !1371)
!1380 = !DILocation(line: 626, column: 53, scope: !1371)
!1381 = !DILocation(line: 626, column: 8, scope: !1371)
!1382 = !DILocation(line: 625, column: 11, scope: !1371)
!1383 = !DILocation(line: 628, column: 8, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 628, column: 8)
!1385 = !DILocation(line: 628, column: 8, scope: !1371)
!1386 = !DILocation(line: 629, column: 32, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 628, column: 30)
!1388 = !DILocation(line: 629, column: 5, scope: !1387)
!1389 = !DILocation(line: 630, column: 5, scope: !1387)
!1390 = !DILocation(line: 636, column: 35, scope: !1325)
!1391 = !DILocation(line: 636, column: 45, scope: !1325)
!1392 = !DILocation(line: 636, column: 12, scope: !1325)
!1393 = !DILocation(line: 636, column: 10, scope: !1325)
!1394 = !DILocation(line: 637, column: 7, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 637, column: 7)
!1396 = !DILocation(line: 637, column: 7, scope: !1325)
!1397 = !DILocation(line: 638, column: 4, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 637, column: 29)
!1399 = !DILocation(line: 641, column: 35, scope: !1325)
!1400 = !DILocation(line: 641, column: 45, scope: !1325)
!1401 = !DILocation(line: 641, column: 3, scope: !1325)
!1402 = !DILocation(line: 644, column: 2, scope: !1152)
!1403 = !DILocation(line: 645, column: 1, scope: !1152)
!1404 = !DISubprogram(name: "acpi_ex_get_name_string", scope: !1117, file: !1117, line: 399, type: !1405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!18, !1407, !74, !1408, !1409}
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !19, line: 644, baseType: !20)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!1410 = !DISubprogram(name: "acpi_ns_lookup", scope: !1411, file: !1411, line: 118, type: !1412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1411 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!18, !262, !62, !1407, !1166, !20, !146, !791}
!1414 = !DISubprogram(name: "acpi_ut_prefixed_namespace_error", scope: !847, file: !847, line: 728, type: !1415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{null, !1021, !20, !262, !1021, !18}
!1417 = distinct !DISubprogram(name: "acpi_os_free", scope: !1418, file: !1418, line: 60, type: !1419, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1421)
!1418 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1419 = !DISubroutineType(types: !1420)
!1420 = !{null, !123}
!1421 = !{!1422}
!1422 = !DILocalVariable(name: "memory", arg: 1, scope: !1417, file: !1418, line: 60, type: !123)
!1423 = !DILocation(line: 60, column: 39, scope: !1417)
!1424 = !DILocation(line: 62, column: 8, scope: !1417)
!1425 = !DILocation(line: 62, column: 2, scope: !1417)
!1426 = !DILocation(line: 63, column: 1, scope: !1417)
!1427 = !DISubprogram(name: "acpi_ds_obj_stack_push", scope: !1073, file: !1073, line: 289, type: !1428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!18, !123, !146}
!1430 = distinct !DISubprogram(name: "acpi_db_display_argument_object", scope: !1431, file: !1431, line: 184, type: !1432, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1434)
!1431 = !DIFile(filename: "drivers/acpi/acpica/acdebug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a2d892046e641bda42bdda5dae6db1e6")
!1432 = !DISubroutineType(types: !1433)
!1433 = !{null, !22, !146}
!1434 = !{!1435, !1436}
!1435 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1430, file: !1431, line: 184, type: !22)
!1436 = !DILocalVariable(name: "walk_state", arg: 2, scope: !1430, file: !1431, line: 184, type: !146)
!1437 = !DILocation(line: 184, column: 1, scope: !1430)
!1438 = !DISubprogram(name: "acpi_exception", scope: !1018, file: !1018, line: 906, type: !1439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !1021, !20, !18, !1021, null}
!1441 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !847, file: !847, line: 436, type: !1442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!22, !1021, !20, !20, !1407}
!1444 = !DISubprogram(name: "acpi_ds_init_object_from_op", scope: !1073, file: !1073, line: 223, type: !1445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!18, !146, !180, !13, !110}
!1447 = !DISubprogram(name: "acpi_ut_delete_object_desc", scope: !847, file: !847, line: 449, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1448 = distinct !DISubprogram(name: "acpi_ds_create_operands", scope: !3, file: !3, line: 663, type: !1449, scopeLine: 665, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1451)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!18, !146, !180}
!1451 = !{!1452, !1453, !1454, !1455, !1456, !1458, !1459, !1460, !1461}
!1452 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1448, file: !3, line: 663, type: !146)
!1453 = !DILocalVariable(name: "first_arg", arg: 2, scope: !1448, file: !3, line: 664, type: !180)
!1454 = !DILocalVariable(name: "status", scope: !1448, file: !3, line: 666, type: !18)
!1455 = !DILocalVariable(name: "arg", scope: !1448, file: !3, line: 667, type: !180)
!1456 = !DILocalVariable(name: "arguments", scope: !1448, file: !3, line: 668, type: !1457)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 512, elements: !353)
!1458 = !DILocalVariable(name: "arg_count", scope: !1448, file: !3, line: 669, type: !20)
!1459 = !DILocalVariable(name: "index", scope: !1448, file: !3, line: 670, type: !20)
!1460 = !DILocalVariable(name: "i", scope: !1448, file: !3, line: 671, type: !20)
!1461 = !DILabel(scope: !1448, name: "cleanup", file: !3, line: 717)
!1462 = !DILocation(line: 663, column: 49, scope: !1448)
!1463 = !DILocation(line: 664, column: 29, scope: !1448)
!1464 = !DILocation(line: 666, column: 2, scope: !1448)
!1465 = !DILocation(line: 666, column: 14, scope: !1448)
!1466 = !DILocation(line: 667, column: 2, scope: !1448)
!1467 = !DILocation(line: 667, column: 27, scope: !1448)
!1468 = !DILocation(line: 668, column: 2, scope: !1448)
!1469 = !DILocation(line: 668, column: 27, scope: !1448)
!1470 = !DILocation(line: 669, column: 2, scope: !1448)
!1471 = !DILocation(line: 669, column: 6, scope: !1448)
!1472 = !DILocation(line: 670, column: 2, scope: !1448)
!1473 = !DILocation(line: 670, column: 6, scope: !1448)
!1474 = !DILocation(line: 670, column: 14, scope: !1448)
!1475 = !DILocation(line: 670, column: 26, scope: !1448)
!1476 = !DILocation(line: 671, column: 2, scope: !1448)
!1477 = !DILocation(line: 671, column: 6, scope: !1448)
!1478 = !DILocation(line: 677, column: 8, scope: !1448)
!1479 = !DILocation(line: 677, column: 6, scope: !1448)
!1480 = !DILocation(line: 678, column: 2, scope: !1448)
!1481 = !DILocation(line: 678, column: 9, scope: !1448)
!1482 = !DILocation(line: 679, column: 7, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 679, column: 7)
!1484 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 678, column: 14)
!1485 = !DILocation(line: 679, column: 13, scope: !1483)
!1486 = !DILocation(line: 679, column: 7, scope: !1484)
!1487 = !DILocation(line: 680, column: 4, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 679, column: 39)
!1489 = !DILocation(line: 683, column: 22, scope: !1484)
!1490 = !DILocation(line: 683, column: 13, scope: !1484)
!1491 = !DILocation(line: 683, column: 3, scope: !1484)
!1492 = !DILocation(line: 683, column: 20, scope: !1484)
!1493 = !DILocation(line: 684, column: 3, scope: !1484)
!1494 = !DILocation(line: 684, column: 15, scope: !1484)
!1495 = !DILocation(line: 684, column: 24, scope: !1484)
!1496 = !DILocation(line: 684, column: 31, scope: !1484)
!1497 = !DILocation(line: 688, column: 9, scope: !1484)
!1498 = !DILocation(line: 688, column: 21, scope: !1484)
!1499 = !DILocation(line: 688, column: 7, scope: !1484)
!1500 = !DILocation(line: 689, column: 12, scope: !1484)
!1501 = !DILocation(line: 690, column: 8, scope: !1484)
!1502 = distinct !{!1502, !1480, !1503, !1112, !1113}
!1503 = !DILocation(line: 691, column: 2, scope: !1448)
!1504 = !DILocation(line: 699, column: 7, scope: !1448)
!1505 = !DILocation(line: 700, column: 9, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 700, column: 2)
!1507 = !DILocation(line: 700, column: 7, scope: !1506)
!1508 = !DILocation(line: 700, column: 14, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 700, column: 2)
!1510 = !DILocation(line: 700, column: 18, scope: !1509)
!1511 = !DILocation(line: 700, column: 16, scope: !1509)
!1512 = !DILocation(line: 700, column: 2, scope: !1506)
!1513 = !DILocation(line: 701, column: 19, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 700, column: 34)
!1515 = !DILocation(line: 701, column: 9, scope: !1514)
!1516 = !DILocation(line: 701, column: 7, scope: !1514)
!1517 = !DILocation(line: 702, column: 35, scope: !1514)
!1518 = !DILocation(line: 702, column: 31, scope: !1514)
!1519 = !DILocation(line: 702, column: 3, scope: !1514)
!1520 = !DILocation(line: 702, column: 15, scope: !1514)
!1521 = !DILocation(line: 702, column: 29, scope: !1514)
!1522 = !DILocation(line: 704, column: 35, scope: !1514)
!1523 = !DILocation(line: 704, column: 47, scope: !1514)
!1524 = !DILocation(line: 704, column: 52, scope: !1514)
!1525 = !DILocation(line: 704, column: 12, scope: !1514)
!1526 = !DILocation(line: 704, column: 10, scope: !1514)
!1527 = !DILocation(line: 705, column: 7, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 705, column: 7)
!1529 = !DILocation(line: 705, column: 7, scope: !1514)
!1530 = !DILocation(line: 706, column: 4, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 705, column: 29)
!1532 = !DILocation(line: 712, column: 8, scope: !1514)
!1533 = !DILocation(line: 713, column: 2, scope: !1514)
!1534 = !DILocation(line: 700, column: 30, scope: !1509)
!1535 = !DILocation(line: 700, column: 2, scope: !1509)
!1536 = distinct !{!1536, !1512, !1537, !1112, !1113}
!1537 = !DILocation(line: 713, column: 2, scope: !1506)
!1538 = !DILocation(line: 715, column: 2, scope: !1448)
!1539 = !DILocation(line: 717, column: 1, scope: !1448)
!1540 = !DILocation(line: 723, column: 35, scope: !1448)
!1541 = !DILocation(line: 723, column: 46, scope: !1448)
!1542 = !DILocation(line: 723, column: 2, scope: !1448)
!1543 = !DILocation(line: 725, column: 2, scope: !1448)
!1544 = !DILocation(line: 726, column: 2, scope: !1448)
!1545 = !DILocation(line: 727, column: 1, scope: !1448)
!1546 = !DISubprogram(name: "acpi_ds_obj_stack_pop_and_delete", scope: !1073, file: !1073, line: 311, type: !1547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{null, !20, !146}
!1549 = distinct !DISubprogram(name: "acpi_ds_evaluate_name_path", scope: !3, file: !3, line: 745, type: !144, scopeLine: 746, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1550)
!1550 = !{!1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558}
!1551 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1549, file: !3, line: 745, type: !146)
!1552 = !DILocalVariable(name: "status", scope: !1549, file: !3, line: 747, type: !18)
!1553 = !DILocalVariable(name: "op", scope: !1549, file: !3, line: 748, type: !180)
!1554 = !DILocalVariable(name: "operand", scope: !1549, file: !3, line: 749, type: !110)
!1555 = !DILocalVariable(name: "new_obj_desc", scope: !1549, file: !3, line: 750, type: !22)
!1556 = !DILocalVariable(name: "type", scope: !1549, file: !3, line: 751, type: !31)
!1557 = !DILabel(scope: !1549, name: "push_result", file: !3, line: 816)
!1558 = !DILabel(scope: !1549, name: "exit", file: !3, line: 828)
!1559 = !DILocation(line: 745, column: 64, scope: !1549)
!1560 = !DILocation(line: 747, column: 2, scope: !1549)
!1561 = !DILocation(line: 747, column: 14, scope: !1549)
!1562 = !DILocation(line: 748, column: 2, scope: !1549)
!1563 = !DILocation(line: 748, column: 27, scope: !1549)
!1564 = !DILocation(line: 748, column: 32, scope: !1549)
!1565 = !DILocation(line: 748, column: 44, scope: !1549)
!1566 = !DILocation(line: 749, column: 2, scope: !1549)
!1567 = !DILocation(line: 749, column: 30, scope: !1549)
!1568 = !DILocation(line: 749, column: 41, scope: !1549)
!1569 = !DILocation(line: 749, column: 53, scope: !1549)
!1570 = !DILocation(line: 750, column: 2, scope: !1549)
!1571 = !DILocation(line: 750, column: 29, scope: !1549)
!1572 = !DILocation(line: 751, column: 2, scope: !1549)
!1573 = !DILocation(line: 751, column: 5, scope: !1549)
!1574 = !DILocation(line: 755, column: 7, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 755, column: 6)
!1576 = !DILocation(line: 755, column: 18, scope: !1575)
!1577 = !DILocation(line: 755, column: 6, scope: !1549)
!1578 = !DILocation(line: 759, column: 3, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 755, column: 26)
!1580 = !DILocation(line: 762, column: 7, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 762, column: 6)
!1582 = !DILocation(line: 762, column: 18, scope: !1581)
!1583 = !DILocation(line: 762, column: 33, scope: !1581)
!1584 = !DILocation(line: 762, column: 44, scope: !1581)
!1585 = !DILocation(line: 762, column: 63, scope: !1581)
!1586 = !DILocation(line: 763, column: 7, scope: !1581)
!1587 = !DILocation(line: 763, column: 18, scope: !1581)
!1588 = !DILocation(line: 763, column: 33, scope: !1581)
!1589 = !DILocation(line: 763, column: 44, scope: !1581)
!1590 = !DILocation(line: 763, column: 72, scope: !1581)
!1591 = !DILocation(line: 764, column: 7, scope: !1581)
!1592 = !DILocation(line: 764, column: 18, scope: !1581)
!1593 = !DILocation(line: 764, column: 33, scope: !1581)
!1594 = !DILocation(line: 764, column: 44, scope: !1581)
!1595 = !DILocation(line: 762, column: 6, scope: !1549)
!1596 = !DILocation(line: 768, column: 3, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 764, column: 63)
!1598 = !DILocation(line: 771, column: 34, scope: !1549)
!1599 = !DILocation(line: 771, column: 46, scope: !1549)
!1600 = !DILocation(line: 771, column: 11, scope: !1549)
!1601 = !DILocation(line: 771, column: 9, scope: !1549)
!1602 = !DILocation(line: 772, column: 6, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 772, column: 6)
!1604 = !DILocation(line: 772, column: 6, scope: !1549)
!1605 = !DILocation(line: 773, column: 3, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 772, column: 28)
!1607 = !DILocation(line: 776, column: 6, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 776, column: 6)
!1609 = !DILocation(line: 776, column: 17, scope: !1608)
!1610 = !DILocation(line: 776, column: 23, scope: !1608)
!1611 = !DILocation(line: 776, column: 6, scope: !1549)
!1612 = !DILocation(line: 777, column: 19, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 776, column: 46)
!1614 = !DILocation(line: 777, column: 18, scope: !1613)
!1615 = !DILocation(line: 777, column: 16, scope: !1613)
!1616 = !DILocation(line: 778, column: 3, scope: !1613)
!1617 = !DILocation(line: 781, column: 11, scope: !1549)
!1618 = !DILocation(line: 781, column: 10, scope: !1549)
!1619 = !DILocation(line: 781, column: 28, scope: !1549)
!1620 = !DILocation(line: 781, column: 7, scope: !1549)
!1621 = !DILocation(line: 783, column: 36, scope: !1549)
!1622 = !DILocation(line: 783, column: 45, scope: !1549)
!1623 = !DILocation(line: 783, column: 11, scope: !1549)
!1624 = !DILocation(line: 783, column: 9, scope: !1549)
!1625 = !DILocation(line: 784, column: 6, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 784, column: 6)
!1627 = !DILocation(line: 784, column: 6, scope: !1549)
!1628 = !DILocation(line: 785, column: 3, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 784, column: 28)
!1630 = !DILocation(line: 788, column: 6, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 788, column: 6)
!1632 = !DILocation(line: 788, column: 11, scope: !1631)
!1633 = !DILocation(line: 788, column: 6, scope: !1549)
!1634 = !DILocation(line: 792, column: 29, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 788, column: 33)
!1636 = !DILocation(line: 792, column: 28, scope: !1635)
!1637 = !DILocation(line: 792, column: 3, scope: !1635)
!1638 = !DILocation(line: 795, column: 40, scope: !1635)
!1639 = !DILocation(line: 795, column: 39, scope: !1635)
!1640 = !DILocation(line: 796, column: 11, scope: !1635)
!1641 = !DILocation(line: 795, column: 7, scope: !1635)
!1642 = !DILocation(line: 794, column: 10, scope: !1635)
!1643 = !DILocation(line: 797, column: 7, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 797, column: 7)
!1645 = !DILocation(line: 797, column: 7, scope: !1635)
!1646 = !DILocation(line: 798, column: 4, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 797, column: 29)
!1648 = !DILocation(line: 800, column: 2, scope: !1635)
!1649 = !DILocation(line: 805, column: 19, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 800, column: 9)
!1651 = !DILocation(line: 805, column: 18, scope: !1650)
!1652 = !DILocation(line: 805, column: 16, scope: !1650)
!1653 = !DILocation(line: 810, column: 36, scope: !1549)
!1654 = !DILocation(line: 810, column: 11, scope: !1549)
!1655 = !DILocation(line: 810, column: 9, scope: !1549)
!1656 = !DILocation(line: 811, column: 6, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 811, column: 6)
!1658 = !DILocation(line: 811, column: 6, scope: !1549)
!1659 = !DILocation(line: 812, column: 28, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 811, column: 28)
!1661 = !DILocation(line: 812, column: 3, scope: !1660)
!1662 = !DILocation(line: 812, column: 15, scope: !1660)
!1663 = !DILocation(line: 812, column: 26, scope: !1660)
!1664 = !DILocation(line: 813, column: 3, scope: !1660)
!1665 = !DILocation(line: 816, column: 1, scope: !1549)
!1666 = !DILocation(line: 818, column: 27, scope: !1549)
!1667 = !DILocation(line: 818, column: 2, scope: !1549)
!1668 = !DILocation(line: 818, column: 14, scope: !1549)
!1669 = !DILocation(line: 818, column: 25, scope: !1549)
!1670 = !DILocation(line: 820, column: 31, scope: !1549)
!1671 = !DILocation(line: 820, column: 43, scope: !1549)
!1672 = !DILocation(line: 820, column: 55, scope: !1549)
!1673 = !DILocation(line: 820, column: 11, scope: !1549)
!1674 = !DILocation(line: 820, column: 9, scope: !1549)
!1675 = !DILocation(line: 821, column: 6, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 821, column: 6)
!1677 = !DILocation(line: 821, column: 6, scope: !1549)
!1678 = !DILocation(line: 825, column: 3, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 821, column: 28)
!1680 = !DILocation(line: 825, column: 14, scope: !1679)
!1681 = !DILocation(line: 825, column: 20, scope: !1679)
!1682 = !DILocation(line: 826, column: 2, scope: !1679)
!1683 = !DILocation(line: 828, column: 1, scope: !1549)
!1684 = !DILocation(line: 830, column: 2, scope: !1549)
!1685 = !DILocation(line: 831, column: 1, scope: !1549)
!1686 = !DISubprogram(name: "acpi_ut_copy_iobject_to_iobject", scope: !847, file: !847, line: 281, type: !1687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!18, !22, !110, !146}
!1689 = !DISubprogram(name: "acpi_ds_obj_stack_pop", scope: !1073, file: !1073, line: 292, type: !1690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!18, !20, !146}
!1692 = !DISubprogram(name: "acpi_ds_result_push", scope: !1073, file: !1073, line: 333, type: !1693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!18, !22, !146}
!1695 = !DISubprogram(name: "kfree", scope: !1696, file: !1696, line: 227, type: !1697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1696 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!1697 = !DISubroutineType(types: !1698)
!1698 = !{null, !1699}
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
